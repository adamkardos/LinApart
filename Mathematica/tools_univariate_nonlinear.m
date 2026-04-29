(* ::Package:: *)

(* ::Subsection::Closed:: *)
(*MakeCoefficientsSymbolic*)


	(*
	  MakeCoefficientsSymbolic[expr, var, dummyFunction]
	
	  Replaces the coefficients of a polynomial (or polynomial-like expression) 
	  with symbolic placeholders, returning both the symbolic expression and 
	  the rules to restore the original coefficients.
	
	  Motivation:
	    Many Mathematica functions (Expand, PolynomialRemainder, etc.) are 
	    significantly slower when coefficients are large or complicated 
	    expressions. By temporarily replacing coefficients with simple symbols, 
	    we can perform the algebraic operation quickly, then substitute back.
	
	    The tradeoff: no cancellation occurs in intermediate stages since 
	    Mathematica doesn't know that dummyF[1] + dummyF[2] might simplify.
	
	  Parameters:
	    expr          - The expression whose coefficients should be made symbolic.
	    var           - The variable with respect to which coefficients are identified.
	    dummyFunction - A symbol to use as the placeholder head (use Unique[] for safety).
	
	  Returns:
	    {symbolicExpr, rules} where:
	      - symbolicExpr has coefficients replaced by dummyFunction[1], dummyFunction[2], ...
	      - rules is a list of Rule objects to restore original coefficients.
	    
	    Applying rules to symbolicExpr recovers the original expression.
	
	  Examples:
	    MakeCoefficientsSymbolic[a x^2 + b x + c, x, f]
	      -> {f[1] x^2 + f[2] x + f[3], {f[1]->a, f[2]->b, f[3]->c}}
	
	    MakeCoefficientsSymbolic[bigExpr, x, Unique[dummy]]
	      -> {symbolic version, restoration rules}
	
	  Notes:
	    - If expr is free of var, the entire expression becomes a single coefficient.
	    - Uses GatherByDependency internally to identify unique var-dependent structures.
	*)

ClearAll[MakeCoefficientsSymbolic]



MakeCoefficientsSymbolic[args___] := Null /; !CheckArguments[MakeCoefficientsSymbolic[args], 3]

MakeCoefficientsSymbolic[expr_, var_, dummyFunction_] := (
    Message[MakeCoefficientsSymbolic::notSymbol, var, 2];
    $Failed
) /; !MatchQ[var, _Symbol]

MakeCoefficientsSymbolic[expr_, var_, dummyFunction_] := (
    Message[MakeCoefficientsSymbolic::notSymbol, dummyFunction, 3];
    $Failed
) /; !MatchQ[dummyFunction, _Symbol]



(* Expression is free of var: wrap the whole thing as a single coefficient. *)
MakeCoefficientsSymbolic[expr_, var_Symbol, dummyFunction_Symbol] := 
    {dummyFunction[1], {dummyFunction[1] -> expr}} /; FreeQ[expr, var]

(* Expression is a single monomial c*var^pow: wrap coefficient only. *)
MakeCoefficientsSymbolic[c_. var_Symbol^pow_., var_Symbol, dummyFunction_Symbol] := 
    {dummyFunction[1] var^pow, {dummyFunction[1] -> c}}

(* General case: use GatherByDependency to identify all unique structures. *)
MakeCoefficientsSymbolic[expr_, var_Symbol, dummyFunction_Symbol] := Module[
    {tmp = expr, rules},

    (* Gather terms by var-dependence, wrapping coefficients with dummyFunction. *)
    tmp = GatherByDependency[tmp, var, dummyFunction];

    (* If result is free of var, everything became a coefficient. *)
    If[FreeQ[tmp, var], 
        Return[
            {dummyFunction[1], {dummyFunction[1] -> (tmp /. dummyFunction[a_] :> a)}}, 
            Module
        ]
    ];

    (* Convert to list of terms. *)
    tmp = If[Head[tmp] === Plus, List @@ tmp, {tmp}];

    (* Extract rules: dummyFunction[i] -> original coefficient for term i. *)
    rules = Table[
        tmp[[i]] /. c_. dummyFunction[a_] :> Rule[dummyFunction[i], a],
        {i, 1, Length[tmp]}
    ];

    (* Replace dummyFunction[original] with dummyFunction[index]. *)
    tmp = Table[
        tmp[[i]] /. c_. dummyFunction[a_] :> c dummyFunction[i],
        {i, 1, Length[tmp]}
    ];

    {Plus @@ tmp, rules}
]



MakeCoefficientsSymbolic::notSymbol = "Argument `1` at position `2` is not a Symbol.";


(* ::Subsection::Closed:: *)
(*ReducePolynomialForResidue*)


(*
  ReducePolynomialForResidue[expr, polynomial, var]

  Reduces an expression modulo a polynomial, preparing it for residue 
  calculation at roots of the polynomial.

  Motivation:
    When computing residues at roots of an irreducible polynomial (not 
    factored to linear factors), we work in the quotient ring 
    K[var]/(polynomial). All powers of var >= degree(polynomial) can be 
    reduced using the relation polynomial(var) = 0.

    This function handles various expression types:
      - Pure polynomials: reduced via precomputed dispatch table
      - Products: coefficients made symbolic, product expanded, then reduced
      - Negative powers (denominators): inverted via PolynomialExtendedGCD
      - Powers of polynomials: base reduced first, then expanded and reduced

  Parameters:
    expr       - The expression to reduce. Can be polynomial, product, 
                 power, or sum of such.
    polynomial - The modulus polynomial. Reduction uses polynomial = 0.
    var        - The variable.

  Returns:
    The reduced expression, a polynomial in var of degree < degree(polynomial).

  Algorithm overview:
    - Lists: map over elements
    - Free of var: return unchanged
    - Sums of non-polynomials: map over terms
    - Polynomials below degree: return unchanged
    - Polynomials at/above degree: reduce via precomputed dispatch table
    - Products: make coefficients symbolic, multiply, collect, reduce, restore
    - Negative powers: use extended GCD to find modular inverse
    - Positive powers of polynomials: reduce base, expand, reduce via dispatch

  Notes:
    - Uses MakeCoefficientsSymbolic for products to avoid coefficient explosion
      when coefficients are rational functions of other variables.
    - The extended GCD gives the modular inverse: if gcd(p, q) = 1, then 
      a*p + b*q = 1, so b*q \[Congruent] 1 (mod p), meaning b = q^(-1) mod p.
    - Reduction via precomputed dispatch tables (MakeReductionRule) is 
      preferred over PolynomialRemainder for power expressions because 
      PolynomialRemainder performs expensive GCD operations on the 
      coefficients when they are rational functions of other variables.
      The dispatch table approach reduces via pattern matching, avoiding 
      this overhead entirely.
*)


(* ::Subsubsection:: *)
(*GetMaxOrderForReduction*)


(*
  GetMaxOrderForReduction[expr, polynomial, var]

  Computes the maximum power of var that can appear in expr after 
  expansion but before reduction. This is needed to precompute the 
  correct number of entries in the dispatch table.

  The result depends on the structure of expr:
    - var^power: the max order is simply power
    - poly^power: the max order is (deg(polynomial)-1) * |power|, 
      since after reduction each factor has degree at most deg(poly)-1
    - product of terms: sum of numerator degree and denominator 
      contribution (each inverse factor contributes deg(poly)-1)
    - polynomial sum: the degree of the polynomial

  Parameters:
    expr       - The expression whose max order is needed.
    polynomial - The modulus polynomial.
    var        - The variable.

  Returns:
    An integer: the maximum power of var that needs a reduction rule.
*)

ClearAll[GetMaxOrderForReduction]

(* Pure power of the variable itself. *)
GetMaxOrderForReduction[Power[var_Symbol, power_Integer], polynomial_Plus, var_Symbol] :=
    power /; PolynomialQ[polynomial, var]

(* Power of a polynomial expression. *)
GetMaxOrderForReduction[Power[expr_, power_], polynomial_Plus, var_Symbol] :=
    Module[{maxOrderOfPolyomial},
        maxOrderOfPolyomial = Exponent[polynomial, var];
        (maxOrderOfPolyomial - 1) * Abs[power]
    ] /; PolynomialQ[expr, var] && PolynomialQ[polynomial, var]

(* Product of terms (may include inverse powers). *)
GetMaxOrderForReduction[expr_Times, polynomial_Plus, var_Symbol] :=
    Module[{tmpNumerator, tmpDenominator, maxOrderOfNumerator, maxOrderOfDenominator, maxOrderOfPolyomial},
        tmpNumerator = Numerator[expr];
        tmpDenominator = Denominator[expr];
        maxOrderOfPolyomial = Exponent[polynomial, var];
        maxOrderOfNumerator = Exponent[tmpNumerator, var];
        maxOrderOfDenominator = (maxOrderOfPolyomial - 1) * (Length[tmpDenominator]);
        maxOrderOfNumerator + maxOrderOfDenominator
    ] /; PolynomialQ[polynomial, var]

(* Polynomial sum. *)
GetMaxOrderForReduction[expr_Plus, polynomial_Plus, var_Symbol] :=
    Exponent[expr, var] /; PolynomialQ[expr, var] && PolynomialQ[polynomial, var]


(* ::Subsubsection:: *)
(*MakeReductionRule*)


(*
  MakeReductionRule[polynomial, var, maxOrder]

  Precomputes a dispatch table of reduction rules for powers of var 
  modulo the given polynomial.

  The key idea: instead of calling PolynomialRemainder at runtime 
  (which performs expensive GCD operations on coefficients), we 
  precompute var^k mod polynomial for each k from degree(polynomial) 
  up to maxOrder, and store the results as pattern-matching rules.

  At runtime, reduction is a single rule application via Dispatch \[LongDash] 
  pure structural pattern matching with no polynomial arithmetic.

  Algorithm:
    1. Solve for the leading monomial: var^d = -(polynomial - var^d).
    2. Iteratively compute var^(d+1), var^(d+2), ..., var^maxOrder by 
       multiplying by var and applying the reduction rule, collecting 
       by var with Together on coefficients at each step.
    3. Package the results as a Dispatch table for fast lookup.

  Parameters:
    polynomial - The modulus polynomial (must be polynomial in var).
    var        - The variable.
    maxOrder   - The highest power of var that needs a reduction rule.

  Returns:
    A Dispatch table mapping var^k -> reduced form for 
    k = degree(polynomial), ..., maxOrder.

  Notes:
    - Collect[#, var, Together]& at each step keeps the coefficients 
      simplified, preventing intermediate expression swell. This is 
      crucial when coefficients are rational functions of other variables.
    - The dispatch table is computed once and reused for all reductions 
      within a single residue computation.
*)

ClearAll[MakeReductionRule]

MakeReductionRule[polynomial_, var_Symbol, maxOrder_Integer] :=
    Module[{tmp, order, tmpRuleReduction, redcutionorder, tableOfRules},

        (* Get the degree of the polynomial. *)
        order = Exponent[polynomial, var];

        (* 
          Solve for the leading monomial: var^order = -(lower terms).
          This is the fundamental reduction identity.
        *)
        tmpRuleReduction = With[
            {leftHandSide = var^order, rightHandSide = -polynomial + var^order},
            leftHandSide -> rightHandSide
        ];

        (* 
          Iteratively build the reduction table.
          
          Starting from var^(order-1), multiply by var to get var^order, 
          apply the reduction rule, collect, and record the result. 
          Repeat up to var^maxOrder.
          
          The Collect[#, var, Together]& at each step is essential: it 
          keeps coefficients in simplified form, preventing the kind of 
          expression swell that makes PolynomialRemainder slow when 
          coefficients are rational functions.
        *)
        tmp = var^(order - 1);
        redcutionorder = maxOrder - order;
        tableOfRules = Table[
            tmp = tmp * var // Collect[#, var] &;
            tmp = tmp /. tmpRuleReduction // Collect[#, var, Together] &;
            {var^(i + order), tmp},
            {i, 0, redcutionorder}
        ];

        (* 
          Package as Dispatch table for O(1) lookup.
          Each rule maps var^k -> (reduced polynomial of degree < order).
        *)
        Table[
            With[
                {leftHandSide = tableOfRules[[i, 1]], rightHandSide = tableOfRules[[i, 2]]},
                leftHandSide -> rightHandSide
            ],
            {i, 1, Length[tableOfRules]}
        ] // Dispatch
    ]


(* ::Subsubsection:: *)
(*ReducePolynomialForResidue*)


ClearAll[ReducePolynomialForResidue]

(* Input validation. *)
ReducePolynomialForResidue[args___] := Null /; !CheckArguments[ReducePolynomialForResidue[args], 3]

ReducePolynomialForResidue[Power[expr_, -1], polynomial_, var_Symbol] := (
    Message[ReducePolynomialForResidue::notPolynomialExpr, expr, var];
    $Failed
) /; !PolynomialQ[expr, var]

ReducePolynomialForResidue[expr_, polynomial_, var_] := (
    Message[ReducePolynomialForResidue::notSymbol, var];
    $Failed
) /; !MatchQ[var, _Symbol]

ReducePolynomialForResidue[expr_, polynomial_, var_] := (
    Message[ReducePolynomialForResidue::notPolynomial, polynomial, var];
    $Failed
) /; !PolynomialQ[polynomial, var]

(* Map over lists. *)
ReducePolynomialForResidue[expr_List, polynomial_, var_Symbol] :=
    ReducePolynomialForResidue[#, polynomial, var] & /@ expr

(* Expression free of var: nothing to reduce. *)
ReducePolynomialForResidue[expr_, polynomial_, var_Symbol] :=
    expr /; FreeQ[expr, var]

(* Sum of non-polynomial terms: map over each term independently. *)
ReducePolynomialForResidue[expr_Plus, polynomial_, var_Symbol] :=
    ReducePolynomialForResidue[#, polynomial, var] & /@ expr /; !PolynomialQ[expr, var]

(* Polynomial already below the reduction threshold: return unchanged. *)
ReducePolynomialForResidue[expr_, polynomial_, var_Symbol] :=
    expr /; PolynomialQ[expr, var] && (Exponent[expr, var] <= Exponent[polynomial, var] - 1)

(* 
  Product of terms: reduce each factor, make coefficients symbolic to 
  avoid blowup during multiplication, then reduce the collected result 
  via precomputed dispatch table, and restore original coefficients.
  
  The MakeCoefficientsSymbolic step is crucial: without it, multiplying 
  factors with rational-function coefficients (e.g., from Mandelstam 
  invariants, masses) causes massive expression growth. By replacing 
  coefficients with dummy symbols, the multiplication and reduction 
  operate on simple polynomials, and the original coefficients are 
  restored only at the end.
*)
ReducePolynomialForResidue[expr_Times, polynomial_, var_Symbol] := Module[
    {tmp, dummyVar, maxOrder, ruleReduction, tmpSybmolically, rulesCoeff},

    (* Precompute the dispatch table for this reduction. *)
    maxOrder = GetMaxOrderForReduction[expr, polynomial, var];
    ruleReduction = MakeReductionRule[polynomial, var, maxOrder];

    (* Reduce each factor of the product independently. *)
    tmp = List @@ expr;
    tmp = ReducePolynomialForResidue[#, polynomial, var] & /@ tmp;

    (* Replace coefficients with dummy symbols. *)
    tmp = Table[
        MakeCoefficientsSymbolic[tmp[[i]], var, Unique[dummyVar]],
        {i, 1, Length[tmp]}
    ];

    (* Separate symbolic expressions and coefficient restoration rules. *)
    {tmpSybmolically, rulesCoeff} = {tmp[[All, 1]], tmp[[All, 2]] // Flatten // Dispatch};

    (* Multiply the symbolized factors and collect by var. *)
    tmp = Times @@ tmpSybmolically;
    tmp = tmp // Collect[#, var] &;

    (* Reduce via dispatch table (fast pattern matching, no GCD). *)
    tmp = tmp /. ruleReduction // Collect[#, var] &;

    (* Restore original coefficients. *)
    tmp = tmp /. rulesCoeff;

    tmp
]

(* 
  Polynomial (as sum) or pure power of var at or above reduction threshold.
  Precompute dispatch table and apply directly.
*)
ReducePolynomialForResidue[
    expr_Plus | expr : Power[var_Symbol, power_Integer],
    polynomial_,
    var_Symbol
] := Module[{tmp, maxOrder, ruleReduction},

    maxOrder = GetMaxOrderForReduction[expr, polynomial, var];
    ruleReduction = MakeReductionRule[polynomial, var, maxOrder];
    tmp = expr /. ruleReduction;

    tmp
] /; PolynomialQ[expr, var] && (
    (Exponent[expr, var] >= Exponent[polynomial, var]) ||
    power >= Exponent[polynomial, var]
)

(* 
  Simple inverse: expr^(-1) where expr is polynomial.
  
  Use extended GCD: if gcd(polynomial, expr) = 1, then 
  a*polynomial + b*expr = 1, so b \[Congruent] expr^(-1) (mod polynomial).
  The result is already a polynomial of degree < degree(polynomial), 
  so no further reduction is needed.
*)
ReducePolynomialForResidue[Power[expr_, -1], polynomial_, var_Symbol] :=
    PolynomialExtendedGCD[polynomial, expr, var][[2, 2]] /; PolynomialQ[expr, var]

(* 
  Positive power of polynomial expression: reduce base first, then 
  raise to power and reduce via dispatch table.
  
  The base is reduced recursively (giving degree < degree(polynomial)), 
  then raised to the specified power. The result can have degree up to 
  (degree(polynomial)-1) * power, which is reduced back using the 
  precomputed dispatch table.
  
  Collect[#, var]& is applied after each step to keep the expression 
  in canonical collected form, preventing spurious term proliferation.
*)
ReducePolynomialForResidue[Power[expr_, power_Integer], polynomial_, var_Symbol] := Module[
    {tmp, maxOrder, ruleReduction},

    maxOrder = GetMaxOrderForReduction[expr^power, polynomial, var];
    ruleReduction = MakeReductionRule[polynomial, var, maxOrder];

    (* Reduce the base expression first. *)
    tmp = ReducePolynomialForResidue[#, polynomial, var] & /@ expr;

    (* Raise reduced base to power and collect. *)
    tmp = Collect[tmp, var]^power // Collect[#, var] &;

    (* Reduce via dispatch table. *)
    tmp = tmp /. ruleReduction;

    tmp
] /; PolynomialQ[expr, var] && power > 0

(* 
  Negative power (beyond -1) of polynomial expression.
  
  First find the modular inverse using extended GCD (giving a polynomial 
  of degree < degree(polynomial)), then raise to the positive power 
  and reduce via dispatch table.
  
  This is the most expensive case: the inverse can have complicated 
  rational-function coefficients, and raising it to a high power 
  produces many cross-terms. The dispatch table approach handles this 
  efficiently because it reduces via pattern matching rather than 
  polynomial GCD operations on the coefficients.
*)
ReducePolynomialForResidue[Power[expr_, power_Integer], polynomial_, var_Symbol] := Module[
    {tmp, maxOrder, ruleReduction},

    maxOrder = GetMaxOrderForReduction[expr^power, polynomial, var];
    ruleReduction = MakeReductionRule[polynomial, var, maxOrder];

    (* Get modular inverse of expr. *)
    tmp = PolynomialExtendedGCD[polynomial, expr, var][[2, 2]];

    (* Raise inverse to positive power and collect. *)
    tmp = Collect[tmp, var]^-power // Collect[#, var] &;

    (* Reduce via dispatch table. *)
    tmp = tmp /. ruleReduction;

    tmp
] /; PolynomialQ[expr, var] && power < -1

ReducePolynomialForResidue::notSymbol = "Third argument `1` is not a Symbol.";
ReducePolynomialForResidue::notPolynomial = "Second argument `1` is not a polynomial in `2`.";
ReducePolynomialForResidue::notPolynomialExpr = "Expression `1` in denominator is not a polynomial in `2`.";


(* ::Subsection::Closed:: *)
(*LinApartU*)


(*
  LinApartU[n, var, polynomial, {orderOfPolynomial, listOfConstants}]

  Computes the U_n function (called S in the article), which appears in 
  the partial fraction decomposition formula for non-linear denominators.

  This function constructs polynomial expressions that arise when computing 
  residues at roots of irreducible polynomials of degree > 1.

  Parameters:
    n                 - The index. Can be 0, positive, or negative integer.
    var               - The variable.
    polynomial        - The irreducible polynomial whose roots we're expanding around.
    orderOfPolynomial - The degree of the polynomial.
    listOfConstants   - List of constants derived from the polynomial coefficients,
                        used in Newton's identities to compute power sums.

  Returns:
    - n = 0: Returns orderOfPolynomial (the degree).
    - n < 0: Returns the (\[Minus]n\[Minus]1)-th derivative of Log[polynomial], scaled by 
             (-1)^(-n+1)/(-n-1)!. This corresponds to negative powers in 
             the Laurent expansion.
    - n > 0: Returns a polynomial in var constructed using Newton's identities 
             and binomial coefficients. This encodes the symmetric functions 
             of the roots.

  Mathematical background:
    For a polynomial p(x) = (x - r_1)(x - r_2)...(x - r_d), the function U_n 
    relates to the power sums of roots: S_k = r_1^k + r_2^k + ... + r_d^k.
    Newton's identities connect these power sums to the elementary symmetric 
    polynomials (i.e., the coefficients of p).

  Examples:
    LinApartU[0, x, x^2 + 1, {2, {-1, 0}}]  -> 2
    LinApartU[1, x, x^2 + 1, {2, {-1, 0}}]  -> (polynomial in x)
    LinApartU[-1, x, x^2 + 1, {2, {...}}]   -> involves D[Log[x^2+1], x]

  Notes:
    - Requires NewtonsIdentity function to compute power sums from coefficients.
    - The n < 0 case uses symbolic differentiation of Log[polynomial].
*)

ClearAll[LinApartU]



LinApartU[args___] := Null /; !CheckArguments[LinApartU[args], 4]

LinApartU[n_, var_, polynomial_, {orderOfPolynomial_, listOfConstants_}] := (
    Message[LinApartU::notInteger, n];
    $Failed
) /; !IntegerQ[n]

LinApartU[n_, var_, polynomial_, {orderOfPolynomial_, listOfConstants_}] := (
    Message[LinApartU::notSymbol, var];
    $Failed
) /; !MatchQ[var, _Symbol]

LinApartU[n_, var_, polynomial_, {orderOfPolynomial_, listOfConstants_}] := (
    Message[LinApartU::notList, listOfConstants];
    $Failed
) /; !ListQ[listOfConstants]



(* n = 0: Return the degree of the polynomial. *)
LinApartU[0, var_, polynomial_, {orderOfPolynomial_, listOfConstants_List}] := 
    orderOfPolynomial

(* 
  n < 0: Negative index corresponds to derivatives of Log[polynomial].
  The formula: (-1)^(-n+1) / (-n-1)! * D[Log[polynomial], {var, -n}]
*)
LinApartU[n_Integer, var_Symbol, polynomial_, {orderOfPolynomial_, listOfConstants_List}] :=
    (-1)^(-n + 1) / (-n - 1)! D[Log[polynomial], {var, -n}] /; n < 0

(* 
  n > 0: Construct polynomial using Newton's identities.
  Uses power sums of roots computed via NewtonsIdentity, combined with 
  binomial coefficients to build the result.
*)
LinApartU[n_Integer, var_Symbol, polynomial_, {orderOfPolynomial_, listOfConstants_List}] :=
    Module[{tmp},

        (* Prepend degree to Newton's identity results for indexing. *)
        tmp = Join[{orderOfPolynomial}, NewtonsIdentity[n, listOfConstants]];

        (* Sum over binomial expansion. *)
        Sum[
            Binomial[n, i] var^i tmp[[n - i + 1]],
            {i, 0, n}
        ]

    ] /; n > 0



LinApartU::notInteger = "First argument `1` must be an integer.";
LinApartU::notSymbol = "Second argument `1` must be a Symbol.";
LinApartU::notList = "The listOfConstants `1` must be a List.";


(* ::Subsection::Closed:: *)
(*NewtonsIdentity*)


	(*
	  NewtonsIdentity[maxDegree, constants]
	
	  Computes power sums of polynomial roots using Newton's identities.
	
	  Given a polynomial with roots x_1, x_2, ..., x_n, the k-th power sum is:
	    p_k = x_1^k + x_2^k + ... + x_n^k
	
	  Newton's identities express these power sums in terms of the elementary 
	  symmetric polynomials (i.e., the polynomial coefficients), avoiding the 
	  need to compute the roots explicitly.
	
	  Reference:
	    https://en.wikipedia.org/wiki/Newton%27s_identities
	    (Section: Mathematical statement / Formulation in terms of symmetric polynomials)
	
	  Parameters:
	    maxDegree - The highest power sum degree to compute (positive integer).
	    constants - List of elementary symmetric polynomials {e_1, e_2, ..., e_n},
	                derived from polynomial coefficients. Length determines 
	                polynomial degree.
	
	  Returns:
	    List {p_1, p_2, ..., p_maxDegree} of power sums.
	
	  Mathematical background:
	    For polynomial p(x) = x^n - e_1 x^(n-1) + e_2 x^(n-2) - ... + (-1)^n e_n,
	    the elementary symmetric polynomials e_k relate to roots by:
	      e_1 = sum of roots
	      e_2 = sum of products of pairs
	      ...
	      e_n = product of all roots
	
	    Newton's identities give recurrence relations:
	      For k <= n:  p_k = (-1)^(k-1) k e_k + sum_{i=1}^{k-1} (-1)^(k-1+i) e_{k-i} p_i
	      For k > n:   p_k = sum_{i=k-n}^{k-1} (-1)^(k-1+i) e_{k-i} p_i
	
	  Examples:
	    For polynomial x^2 - 5x + 6 = (x-2)(x-3), constants = {5, 6}:
	      NewtonsIdentity[3, {5, 6}]
	      -> {5, 13, 35}  (i.e., 2+3=5, 2^2+3^2=13, 2^3+3^3=35)
	
	    For polynomial x^3 - 6x^2 + 11x - 6 = (x-1)(x-2)(x-3), constants = {6, 11, 6}:
	      NewtonsIdentity[2, {6, 11, 6}]
	      -> {6, 14}  (i.e., 1+2+3=6, 1+4+9=14)
	
	  Notes:
	    - Both arguments must be valid: maxDegree >= 1, constants non-empty.
	    - Returns power sums in order from p_1 to p_maxDegree.
	*)

ClearAll[NewtonsIdentity]



NewtonsIdentity[args___] := Null /; !CheckArguments[NewtonsIdentity[args], 2]

NewtonsIdentity[maxDegree_, constants_] := (
    Message[NewtonsIdentity::notInteger, maxDegree];
    $Failed
) /; !IntegerQ[maxDegree]

NewtonsIdentity[maxDegree_, constants_] := (
    Message[NewtonsIdentity::notList, constants];
    $Failed
) /; !ListQ[constants]

NewtonsIdentity[maxDegree_Integer, constants_List] := (
    Message[NewtonsIdentity::degreeTooSmall, maxDegree];
    $Failed
) /; maxDegree < 1

NewtonsIdentity[maxDegree_Integer, constants_List] := (
    Message[NewtonsIdentity::emptyConstants];
    $Failed
) /; Length[constants] == 0



(* Main implementation. *)
NewtonsIdentity[maxDegree_Integer, constants_List] := Module[
    {
        powerSum,
        orderOfPolynomial = Length[constants]
    },

    Table[
        (* 
          Two cases based on Newton's identities:
            k <= order: includes the k*e_k term
            k > order:  sum only over available coefficients
        *)
        If[orderOfPolynomial >= k,

            (* Case k <= n: full formula with e_k term. *)
            powerSum[k] = (-1)^(k - 1) k constants[[k]] +
                Sum[(-1)^(k - 1 + i) constants[[k - i]] powerSum[i], {i, 1, k - 1}],

            (* Case k > n: recurrence without e_k term. *)
            powerSum[k] = 
                Sum[(-1)^(k - 1 + i) constants[[k - i]] powerSum[i], {i, k - orderOfPolynomial, k - 1}]
        ],

        {k, 1, maxDegree}
    ]

] /; maxDegree >= 1 && Length[constants] >= 1



NewtonsIdentity::usage = "NewtonsIdentity[maxDegree_Integer, constants_List]

Computes power sums of polynomial roots using Newton's identities.

The k-th power sum is p_k = x_1^k + x_2^k + ... + x_n^k, where x_i are 
the roots. The function returns {p_1, p_2, ..., p_maxDegree}.

Arguments:
  maxDegree - Highest power sum degree (positive integer).
  constants - Elementary symmetric polynomials {e_1, ..., e_n} from coefficients.

Example:
  NewtonsIdentity[3, {5, 6}] for x^2 - 5x + 6 = (x-2)(x-3)
  -> {5, 13, 35}
";

NewtonsIdentity::notInteger = "First argument `1` must be an integer.";
NewtonsIdentity::notList = "Second argument `1` must be a list.";
NewtonsIdentity::degreeTooSmall = "First argument `1` must be >= 1.";
NewtonsIdentity::emptyConstants = "Second argument must be a non-empty list.";


(* ::Subsection::Closed:: *)
(*DistributeAll*)


	(*
	  DistributeAll[expr]
	  DistributeAll[expr, var]
	
	  Fully distributes multiplication over addition throughout an expression, 
	  essentially performing complete expansion.
	
	  Motivation:
	    Mathematica's Distribute function only works on a single level. 
	    DistributeAll repeatedly applies distribution until no further 
	    simplification is possible, ensuring full expansion of products of sums.
	
	  The two-argument form restricts distribution to only occur between 
	  factors that both depend on var, avoiding unnecessary expansion of 
	  variable-free terms.
	
	  Parameters:
	    expr - The expression to expand.
	    var  - (Optional) If provided, distribution only occurs between 
	           factors that both contain var.
	
	  Returns:
	    The fully distributed/expanded expression.
	
	  Examples:
	    DistributeAll[(a + b)(c + d)]
	      -> a c + a d + b c + b d
	
	    DistributeAll[(a + b)(c + d)(e + f)]
	      -> a c e + a c f + a d e + a d f + b c e + b c f + b d e + b d f
	
	    DistributeAll[(a + b)(c + d) k, x]  where a,b,c,d are free of x
	      -> (a + b)(c + d) k  (unchanged, nothing depends on x)
	
	    DistributeAll[(x + 1)(x + 2) k, x]
	      -> k x^2 + 3 k x + 2 k  (only x-dependent factors distributed)
	
	  Algorithm:
	    - Lists and sums: map recursively over elements.
	    - Single-argument form: repeatedly apply Distribute to all Times 
	      expressions until fixed point.
	    - Two-argument form: only distribute between adjacent factors that 
	      both depend on var, leaving var-free products untouched.
	
	  Notes:
	    - Uses ReplaceRepeated (//.)) to reach fixed point.
	    - The two-argument form is useful when you want to expand only the 
	      "interesting" part of an expression while keeping coefficients factored.
	*)

ClearAll[DistributeAll]



DistributeAll[args___] := Null /; !CheckArguments[DistributeAll[args], {1, 2}]

(* Map over lists. *)
DistributeAll[expr_List] := DistributeAll[#] & /@ expr

(* Map over sums. *)
DistributeAll[expr_Plus] := DistributeAll[#] & /@ expr

(* 
  Single-argument form: distribute all products of sums.
  ReplaceRepeated ensures we reach a fixed point where no 
  Times[sum, ...] patterns remain.
*)
DistributeAll[expr_] := 
    expr //. Times[a_, b__] :> Distribute[Times[a, b], Plus, Times]

(* Two-argument form: only distribute between var-dependent factors. *)
DistributeAll[expr_, var_] := (
    Message[DistributeAll::notSymbol, var];
    $Failed
) /; !MatchQ[var, _Symbol]



(* 
  Map over lists (two-argument form).
*)
DistributeAll[expr_List, var_Symbol] := DistributeAll[#, var] & /@ expr

(* 
  Map over sums (two-argument form).
*)
DistributeAll[expr_Plus, var_Symbol] := DistributeAll[#, var] & /@ expr

(*
  Two-argument form: only distribute between adjacent factors 
  that both depend on var. This preserves factored coefficients 
  while expanding the var-dependent structure.
  
  The pattern Times[a_, b_, c__] with conditions !FreeQ[a,var] && !FreeQ[b,var]
  ensures we only distribute when both first factors depend on var.
  The remaining factors c__ are kept separate until next iteration.
*)
DistributeAll[expr_, var_Symbol] := 
    expr //. Times[a_, b_, c__] /; !FreeQ[a, var] && !FreeQ[b, var] :> 
        Times[Distribute[Times[a, b], Plus, Times], c]



DistributeAll::notSymbol = "Second argument `1` must be a Symbol.";


(* ::Subsection::Closed:: *)
(*CheckNumericallyIfZero*)


	(*
	  CheckNumericallyIfZero[expr]
	
	  Checks if an expression is symbolically zero by evaluating it at random 
	  prime values for all variables.
	
	  Motivation:
	    Mathematica sometimes cannot recognize that a complicated symbolic 
	    expression simplifies to zero. Full simplification (Simplify, FullSimplify) 
	    can be extremely slow for large expressions. 
	    
	    A quick numerical check with random values can identify likely zeros 
	    almost instantly. If the expression evaluates to 0 at random points, 
	    it's almost certainly identically zero (for rational expressions).
	
	  Parameters:
	    expr - The expression to check.
	
	  Returns:
	    - 0 if the expression evaluates to 0 at the random point.
	    - The original expression otherwise.
	
	  Algorithm:
	    1. Extract all variables from the expression.
	    2. Substitute each variable with a random prime < 10^6.
	    3. If the result is exactly 0, return 0; otherwise return original.
	
	  Why random primes?
	    - Primes avoid accidental cancellations that might occur with small 
	      integers or special values.
	    - Large primes make false positives extremely unlikely.
	    - Exact arithmetic (no floating point errors).
	
	  Examples:
	    CheckNumericallyIfZero[(x + y)^2 - x^2 - 2 x y - y^2]
	      -> 0
	
	    CheckNumericallyIfZero[x + y]
	      -> x + y
	
	  Notes:
	    - This is a probabilistic check, not a proof. In theory, a non-zero 
	      polynomial could vanish at the chosen point, but this is extremely 
	      unlikely with random large primes.
	    - For rational expressions, if the denominator vanishes at the test 
	      point, the result won't be 0, so the original expression is returned.
	    - Does not handle expressions with functions like Sin, Exp, etc. well \[LongDash] 
	      those won't simplify to integers.
	*)

ClearAll[CheckNumericallyIfZero]

CheckNumericallyIfZero[args___] := Null /; !CheckArguments[CheckNumericallyIfZero[args], 1]

CheckNumericallyIfZero[expr_] := Module[
    {tmp, vars, ruleVars},

    (* Extract all symbolic variables. *)
    vars = Variables[expr];

    (* Substitute each variable with a random prime. *)
    ruleVars = Table[
        vars[[i]] -> RandomPrime[10^6], 
        {i, 1, Length[vars]}
    ] // Dispatch;

    tmp = expr /. ruleVars;

    (* If evaluates to exactly 0, expression is (almost certainly) zero. *)
    If[tmp === 0,
        0,
        expr
    ]
]
