(* ::Package:: *)

(* ========================================================================================= *)
(*                                   LINAPART TEST TOOLS                                     *)
(* ========================================================================================= *)
(*
   This file contains reusable helper functions for the LinApart test suite.

   It is intended to be loaded by:
     - test_correctness.wl
     - test_coverage.wl
     - test_profiling.wl

   Contents:
     - environment detection
     - numerical and symbolic equivalence checks
     - structural verification helpers
     - test runners for 1D, multivariate, robustness, error, and parallel tests
     - section summary helpers
*)
(* ========================================================================================= *)


(* ::Subsection::Closed:: *)
(*Setup*)


(* ============================================== *)
(*           TEST FRAMEWORK SETUP                 *)
(* ============================================== *)

$LinApartTestScriptMode = Length[Cases[$CommandLine, "-script"]] > 0;
$LinApartTestTimeout = 10.0;
$LinApartSymbolicFallbackTimeout = 5.0;
$LinApartNumericTrials = 3;

ClearAll[TestError]

TestError[msg__] := If[$LinApartTestScriptMode,
    Print["ERROR: ", msg];
    Exit[1],
    Print[Style["ERROR: ", Red, Bold], msg];
    Throw[$Failed]
];


(* ::Subsection::Closed:: *)
(*Helper functions*)


(* ============================================== *)
(*           BASIC HELPER FUNCTIONS               *)
(* ============================================== *)

(*
  Terms[expr]

  Returns the additive terms of an expression as a flat list.
*)
ClearAll[Terms]

Terms[expr_List] := Terms /@ expr
Terms[expr_Plus] := List @@ expr
Terms[0] := {}
Terms[expr_] := {expr}

(*
  MaxPowerOf[expr, x]

  Returns the maximal rational power of x appearing in expr.
  This is used in the structural check for the 1D partial fraction form.
*)
ClearAll[MaxPowerOf]

MaxPowerOf[expr_, x_Symbol] /; FreeQ[expr, x] := 0
MaxPowerOf[x_, x_Symbol] := 1
MaxPowerOf[(expr_)^n_, x_Symbol] /; FreeQ[n, x] := MaxPowerOf[expr, x] * Re[n]
MaxPowerOf[(expr_)^n_, x_Symbol] /; !FreeQ[n, x] := 0
MaxPowerOf[items_List, x_Symbol] := MaxPowerOf[#, x] & /@ items // Max
MaxPowerOf[items_Plus, x_Symbol] := MaxPowerOf[#, x] & /@ (List @@ items) // Max
MaxPowerOf[items_Times, x_Symbol] := MaxPowerOf[#, x] & /@ (List @@ items) // Total
MaxPowerOf[(Log | Sin | Cos | Csc | Sec | Exp | G)[__], x_Symbol] := 0

(*
  NumericalZeroQ[expr]

  Checks whether expr vanishes numerically by substituting several random
  large primes for all symbolic variables.
*)
ClearAll[NumericalZeroQ]

NumericalZeroQ[expr_] := Module[
    {
        allSymbols,
        tmp,
        values
    },

    allSymbols = Select[Variables[expr], Head[#] === Symbol &];

    (* No symbols left: try direct numerical evaluation. *)
    If[Length[allSymbols] === 0,
        tmp = Quiet[N[expr, 50]];
        Return[
            If[NumericQ[tmp],
                Abs[tmp] < 10^-20,
                expr === 0
            ],
            Module
        ]
    ];

    (* Substitute random primes and test numerically. *)
    values = Table[
        tmp = Thread[allSymbols -> RandomPrime[{10^4, 10^5}, Length[allSymbols]]];
        Quiet[N[Together[expr /. tmp], 50]],
        {3}
    ];

    And @@ Map[
        NumericQ[#] && Abs[#] < 10^-20 &,
        values
    ]
]

(*
  EquivalentExpressionsQ[input, output]

  Hybrid equivalence test used throughout the suite:
    1. Try numerical zero tests.
    2. Fall back to a short symbolic simplification attempt.
*)
ClearAll[EquivalentExpressionsQ]

EquivalentExpressionsQ[input_, output_] := Module[
    {diff, symDiff},

    diff = Together[input - output];

    If[diff === 0,
        Return[True, Module]
    ];

    If[NumericalZeroQ[diff],
        Return[True, Module]
    ];

    symDiff = TimeConstrained[
        Factor[Together[input - output]],
        $LinApartSymbolicFallbackTimeout,
        $Failed
    ];

    TrueQ[symDiff === 0]
]

(*
  ResolveLinApartMethod[varOrVars, opts]

  Resolves the effective method, taking Automatic into account.
*)
ClearAll[ResolveLinApartMethod]

ResolveLinApartMethod[var_Symbol, opts_List] := Module[
    {method},

    method = "Method" /. Append[opts, "Method" -> "Automatic"];

    If[method === "Automatic",
        "ExtendedLaurentSeries",
        method
    ]
]

ResolveLinApartMethod[vars_List, opts_List] := Module[
    {method},

    method = "Method" /. Append[opts, "Method" -> "Automatic"];

    If[method === "Automatic",
        If[Length[vars] === 1, "ExtendedLaurentSeries", "MultivariateResidue"],
        method
    ]
]


(* ============================================== *)
(*       STRUCTURAL CHECKING: DENOMINATORS        *)
(* ============================================== *)

(*
  GetBareDenominatorFactors[expr, vars]

  Returns the distinct variable-dependent bare denominator factors of expr,
  with powers removed.
*)
ClearAll[GetBareDenominatorFactors]

GetBareDenominatorFactors[expr_, vars_List] := Module[
    {den, factors, varPat},

    varPat = Alternatives @@ vars;
    den = Denominator[expr];

    If[den === 1,
        Return[{}, Module]
    ];

    factors = If[Head[den] === Times, List @@ den, {den}];
    factors = factors /. Power[base_, _] :> base;
    factors = Select[factors, !FreeQ[#, varPat] &];
    DeleteDuplicates[factors]
]

(*
  GetLinearBareDenominatorFactors[expr, vars]

  Returns the distinct variable-dependent denominator factors that are
  linear polynomials in vars.
*)
ClearAll[GetLinearBareDenominatorFactors]

GetLinearBareDenominatorFactors[expr_, vars_List] := Module[
    {factors},

    factors = GetBareDenominatorFactors[expr, vars];

    Select[
        factors,
        PolynomialQ[#, vars] && Max[Exponent[#, vars]] <= 1 &
    ]
]

(*
  ProperPartialFraction1DQ[result, var]

  Structural check for univariate partial fractions:
  for each non-polynomial term, deg(numerator) < deg(denominator).
*)
ClearAll[ProperPartialFraction1DQ]

ProperPartialFraction1DQ[result_, var_Symbol] := Module[
    {terms, ok, hasUnsupportedPower, num, den, enum, eden},

    terms = Terms[Expand[result]];

    ok = And @@ (Module[
        {
            term = #
        },

        hasUnsupportedPower = !FreeQ[
            term,
            Power[b_, e_] /; !FreeQ[b, var] && !IntegerQ[e]
        ];

        If[hasUnsupportedPower,
            Return[True, Module]
        ];

        num = Numerator[term];
        den = Denominator[term];
        enum = MaxPowerOf[num, var];
        eden = MaxPowerOf[den, var];

        (eden == 0) || (enum < eden)
    ] & /@ terms);

    TrueQ[ok]
]

(*
  ProperPartialFractionMVQ[result, vars, method]

  Structural check for multivariate output.

  For method "MultivariateResidue":
    each term may contain at most Length[vars] distinct linear denominator factors.

  For methods "Leinartas" and "Groebner":
    each term may contain at most Length[vars] distinct variable-dependent
    denominator factors, regardless of linearity.
*)
ClearAll[ProperPartialFractionMVQ]

ProperPartialFractionMVQ[result_, vars_List, method_String] := Module[
    {terms, maxAllowed, counts},

    terms = Terms[result];
    maxAllowed = Length[vars];

    counts = Switch[method,
        "MultivariateResidue",
            Length[GetLinearBareDenominatorFactors[#, vars]] & /@ terms,

        "Leinartas" | "Groebner",
            Length[GetBareDenominatorFactors[#, vars]] & /@ terms,

        _,
            ConstantArray[0, Length[terms]]
    ];

    And @@ ( # <= maxAllowed & /@ counts )
]


(* ============================================== *)
(*           RESULT PRINTING HELPERS              *)
(* ============================================== *)

ClearAll[PrintTestPass, PrintTestFail]

PrintTestPass[timing_, testName_] :=
    Print[{timing, "\[Checkmark] "}, "  " <> testName]

PrintTestFail[timing_, testName_] :=
    Print[{timing, "\[Cross] "}, "  " <> testName]


(* ::Subsection::Closed:: *)
(*Test functions*)


(* ============================================== *)
(*           TEST FUNCTIONS                       *)
(* ============================================== *)

(*
  TestLinApart1D[{testName, expr, var, opts...}]

  Checks:
    1. mathematical equivalence
    2. univariate partial fraction structure
*)
ClearAll[TestLinApart1D]

TestLinApart1D[{testName_String, expr_, var_Symbol, opts___}] := Module[
    {tmp, timing, result, ok, structOK},

    tmp = TimeConstrained[
        AbsoluteTiming[LinApart[expr, var, opts]],
        $LinApartTestTimeout,
        $Aborted
    ];

    If[tmp === $Aborted,
        PrintTestFail["timeout", testName <> " has run out of time."];
        Return[0, Module]
    ];

    {timing, result} = tmp;

    ok = EquivalentExpressionsQ[expr, result];

    If[!TrueQ[ok],
        PrintTestFail[timing, testName];
        Print["  Input:  ", expr];
        Print["  Output: ", result];
        Return[0, Module]
    ];

    structOK = ProperPartialFraction1DQ[result, var];

    If[!TrueQ[structOK],
        PrintTestFail[timing, testName <> " is not in PF form."];
        Print["  Input:  ", expr];
        Print["  Output: ", result];
        Return[0, Module]
    ];

    PrintTestPass[timing, testName];
    1
]

(*
  TestLinApartMV[{testName, expr, vars, opts...}]

  Checks:
    1. mathematical equivalence
    2. multivariate structural criterion, depending on the chosen method
*)
ClearAll[TestLinApartMV]

TestLinApartMV[{testName_String, expr_, vars_List, opts___}] := Module[
    {tmp, timing, result, ok, structOK, method, optsList},

    optsList = {opts};
    method = ResolveLinApartMethod[vars, optsList];

    tmp = TimeConstrained[
        AbsoluteTiming[LinApart[expr, vars, Sequence @@ optsList]],
        $LinApartTestTimeout,
        $Aborted
    ];

    If[tmp === $Aborted,
        PrintTestFail["timeout", testName <> " has run out of time."];
        Return[0, Module]
    ];

    {timing, result} = tmp;

    ok = EquivalentExpressionsQ[expr, result];

    If[!TrueQ[ok],
        PrintTestFail[timing, testName];
        Print["  Input:  ", expr];
        Print["  Output: ", result];
        Return[0, Module]
    ];

    structOK = ProperPartialFractionMVQ[result, vars, method];

    If[!TrueQ[structOK],
        PrintTestFail[timing, testName <> " is not in PF form."];
        Print["  Method: ", method];
        Print["  Input:  ", expr];
        Print["  Output: ", result];
        Return[0, Module]
    ];

    PrintTestPass[timing, testName];
    1
]

(*
  TestLinApartRobust dispatches automatically between the 1D and MV testers.
*)
ClearAll[TestLinApartRobust]

TestLinApartRobust[{testName_String, expr_, var_Symbol, opts___}] :=
    TestLinApart1D[{testName, expr, var, opts}]

TestLinApartRobust[{testName_String, expr_, vars_List, opts___}] :=
    TestLinApartMV[{testName, expr, vars, opts}]

(*
  TestLinApartError[{testName, expr, varOrVars, opts..., expectedBehavior}]

  expectedBehavior:
    "$Failed"   -> the call should return $Failed
    "Warning"   -> the call should emit at least one message and not return $Failed
    "Unchanged" -> the call should return an equivalent unchanged result
    "Valid"     -> the call should return a valid result
*)
ClearAll[TestLinApartError]

TestLinApartError[args_List] := Module[
    {testName, expr, varOrVars, expectedBehavior, opts, timing, result, messages, passed},

    testName = args[[1]];
    expr = args[[2]];
    varOrVars = args[[3]];
    expectedBehavior = Last[args];
    opts = args[[4 ;; -2]];

    {timing, {result, messages}} = AbsoluteTiming[
        Quiet[
            Reap[
                Internal`HandlerBlock[
                    {"Message", Sow[#] &},
                    LinApart[expr, varOrVars, Sequence @@ opts]
                ]
            ],
            {LinApart::droppingVars}
        ]
    ];

    messages = Flatten[messages];

    passed = Switch[expectedBehavior,
        "$Failed",
            result === $Failed,

        "Warning",
            Length[messages] > 0 && result =!= $Failed,

        "Unchanged",
            result =!= $Failed && EquivalentExpressionsQ[expr, result],

        "Valid",
            result =!= $Failed,

        _,
            False
    ];

    If[passed,
        PrintTestPass[timing, testName <> " -> " <> expectedBehavior];
        1,
        PrintTestFail[timing, testName];
        Print["  Expected: ", expectedBehavior];
        Print["  Got:      ", Short[result, 2]];
        Print["  Messages: ", Short[messages, 2]];
        0
    ]
]

(*
  TestLinApartParallel[{testName, expr, varOrVars, opts...}]

  Runs the test with explicit parallel options and checks only correctness.
*)
ClearAll[TestLinApartParallel]

TestLinApartParallel[{testName_String, expr_, varOrVars_, opts___}] := Module[
    {tmp, timing, result, ok},

    tmp = TimeConstrained[
        AbsoluteTiming[
            LinApart[
                expr,
                varOrVars,
                opts,
                "Parallel" -> {True, 2, $TemporaryDirectory <> "/"}
            ]
        ],
        $LinApartTestTimeout,
        $Aborted
    ];

    If[tmp === $Aborted,
        PrintTestFail["timeout", testName <> " ; Out of time."];
        Return[0, Module]
    ];

    {timing, result} = tmp;

    ok = EquivalentExpressionsQ[expr, result];

    If[!TrueQ[ok],
        PrintTestFail[timing, testName];
        Print["  Input:  ", expr];
        Print["  Output: ", result];
        Return[0, Module]
    ];

    PrintTestPass[timing, testName];
    1
]


(* ::Subsection::Closed:: *)
(*Summary*)


(* ============================================== *)
(*                   SUMMARY                      *)
(* ============================================== *)

ClearAll[SectionSummary]

SectionSummary[sectionName_String, results_List, testData_List] := Module[
    {passed, failed, failedIndices, failedTests},

    passed = Count[results, {1, _}];
    failed = Count[results, {0, _}];
    failedIndices = Cases[results, {0, idx_} :> idx];
    failedTests = testData[[failedIndices, 1]];

    Print[""];
    Print["--------------------------------------------"];
    Print["  ", sectionName, " Summary:"];
    Print["  Total:  ", Length[testData]];
    Print["  Passed: ", passed];
    Print["  Failed: ", failed];
    If[failedTests =!= {},
        Print["  Failed tests: ", failedTests]
    ];
    Print["--------------------------------------------"];

    <|
        "Passed" -> passed,
        "Failed" -> failed,
        "FailedIndices" -> failedIndices,
        "FailedTests" -> failedTests
    |>
]

ClearAll[FinalSummary]

FinalSummary[summaries_Association] := Module[
    {totalPassed, totalFailed, totalTests, allFailedTests},

    totalPassed = Total[summaries[[All, "Passed"]]];
    totalFailed = Total[summaries[[All, "Failed"]]];
    totalTests = totalPassed + totalFailed;

    allFailedTests = Flatten[summaries[[All, "FailedTests"]], 1];

    Print[""];
    Print["============================================"];
    Print["  FINAL TEST SUMMARY                        "];
    Print["============================================"];
    Print["  Total Tests: ", totalTests];
    Print["  Passed:      ", totalPassed];
    Print["  Failed:      ", totalFailed];

    If[allFailedTests =!= {},
        Print[""];
        Print["  FAILED TESTS:"];
        Scan[Print["    - ", #] &, allFailedTests]
    ];

    Print["============================================"];

    If[$LinApartTestScriptMode && totalFailed > 0,
        Exit[1]
    ];

    <|
        "TotalTests" -> totalTests,
        "Passed" -> totalPassed,
        "Failed" -> totalFailed,
        "FailedTests" -> allFailedTests
    |>
]
