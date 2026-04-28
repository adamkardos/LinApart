(* ::Package:: *)

(* ========================================================================================= *)
(*                                  LINAPART EXAMPLES DATA                                  *)
(* ========================================================================================= *)
(*
   This file contains only test/example data.
   It is intended to be loaded by:
     - test_correctness.wl
     - test_coverage.wl
     - test_profiling.wl

   Keep the large existing correctness lists unchanged:
     - TestData1D
     - TestDataMVLinear
     - TestDataMVNonLinear
     - TestDataRobust
     - TestDataError
     - TestDataParallel

   The blocks below extend the suite with dedicated method, option,
   error-handling, and robustness examples for the newer multivariate methods.
*)
(* ========================================================================================= *)


(* ::Subsection::Closed:: *)
(*TestData1D*)


TestData1D = {
    (* --- Basic linear denominators --- *)
    {"1D-001: Two linear factors", 1/((x + 1) (x + 2)), x},
    {"1D-002: Three linear factors", 1/((x + 1) (x + 2) (x + 3)), x},
    {"1D-003: Four linear factors", 1/((x + 1) (x + 2) (x + 3) (x + 4)), x},
    {"1D-004: Five linear factors", 1/((x + 1) (x + 2) (x + 3) (x + 4) (x + 5)), x},
    {"1D-005: Six linear factors", 1/Product[(x + i), {i, 1, 6}], x},
    {"1D-006: Seven linear factors", 1/Product[(x + i), {i, 1, 7}], x},
    {"1D-007: Eight linear factors", 1/Product[(x + i), {i, 1, 8}], x},
    {"1D-008: Nine linear factors", 1/Product[(x + i), {i, 1, 9}], x},
    {"1D-009: Ten linear factors", 1/Product[(x + i), {i, 1, 10}], x},

    (* --- Multiplicities --- *)
    {"1D-010: Multiplicity 2", 1/(x + 1)^2, x},
    {"1D-011: Multiplicity 3", 1/(x + 1)^3, x},
    {"1D-012: Multiplicity 4", 1/(x + 1)^4, x},
    {"1D-013: Multiplicity 5", 1/(x + 1)^5, x},
    {"1D-014: Multiplicity 6", 1/(x + 1)^6, x},
    {"1D-015: Multiplicity 10", 1/(x + 1)^10, x},
    {"1D-016: Multiplicity 15", 1/(x + 1)^15, x},
    {"1D-017: Multiplicity 20", 1/(x + 1)^20, x},
    {"1D-018: Multiplicity 25", 1/(x + 1)^25, x},
    {"1D-019: Mixed multiplicities 2,3,1", 1/((x + 1)^2 (x + 2)^3 (x + 3)), x},
    {"1D-020: Mixed multiplicities 1,2,3", 1/((x + 1) (x + 2)^2 (x + 3)^3), x},
    {"1D-021: Double root", 1/((x + 1)^2 (x + 2)), x},

    (* --- Normalization --- *)
    {"1D-022: Normalization 2x+2", 1/((2 x + 2) (x + 3)), x},
    {"1D-023: Normalization 3x+6", 1/((3 x + 6) (2 x + 4)), x},
    {"1D-024: Normalization symbolic", 1/((a x + a) (x + b)), x},
    {"1D-025: Normalization negative", f x^4/((-a x + b) (-d x - c)^2), x},
    {"1D-026: Normalization check 1", 1/((x + y) (a x + 2)^2), x},
    {"1D-027: Normalization check 2", f x^4/((a x + b) (-a x + c)), x},
    {"1D-028: Normalization check 3", f x^4/((a x + b) (d x + c)), x},
    {"1D-029: Normalization check 4", f x^4/((a x + b) (d x + c)^2), x},

    (* --- Improper fractions --- *)
    {"1D-030: Degree 1/1", x/((x + 1) (x + 2)), x},
    {"1D-031: Degree 2/2", x^2/((x + 1) (x + 2)), x},
    {"1D-032: Degree 3/2", x^3/((x + 1) (x + 2)), x},
    {"1D-033: Degree 4/2", x^4/((x + 1) (x + 2)), x},
    {"1D-034: Degree 5/2", x^5/((x + 1) (x + 2)), x},
    {"1D-035: Degree 6/2", x^6/((x + 1) (x + 2)), x},
    {"1D-036: Degree 10/2", x^10/((x + 1) (x + 2)), x},
    {"1D-037: Poly division mixed", x^5/(x^2 + 1) + x^3/((x^3 - 1) (x + 1)), x},
    {"1D-038: Product in numerator", (x (x + 1))/((x + 2) (x + 3)), x},

    (* --- Symbolic coefficients --- *)
    {"1D-039: Symbolic coeff", a/((x + 1) (x + 2)), x},
    {"1D-040: Sum of symbols num", (a + b)/((x + 1) (x + 2)), x},
    {"1D-041: Product of symbols num", (a b c)/((x + 1) (x + 2)), x},
    {"1D-042: Symbol power num", a^2/((x + 1) (x + 2)), x},
    {"1D-043: Indexed constants", 1/((x^3 - a[0]) (x - a[1])), x},
    {"1D-044: Symbolic in denom", 1/((a x + b) (x + 1)), x},
    {"1D-045: Large coefficient", 123456789/((x + 1) (x + 2)), x},
    {"1D-046: Fractional coefficient", (1/2)/((x + 1) (x + 2)), x},
    {"1D-047: Pi coefficient", Pi/((x + 1) (x + 2)), x},
    {"1D-048: Negative constant", -1/((x + 1) (x + 2)), x},
    {"1D-049: Very small coeff", (1/10^10)/((x + 1) (x + 2)), x},

    (* --- Non-linear (irreducible) denominators --- *)
    {"1D-050: Quadratic + linear int", 1/((x^2 + 1) (x + 1)), x},
    {"1D-051: Quadratic + linear int 2", 1/((x^2 + 4) (x + 1)), x},
    {"1D-052: Two quadratics", 1/((x^2 + 1) (x^2 + 4)), x},
    {"1D-053: Quadratic symbolic", 1/((x^2 + a) (x + 1)), x},
    {"1D-054: Quadratic two symbols", 1/((x^2 + a b) (x + c)), x},
    {"1D-055: Quadratic sym coeff", 1/((x^2 + a x + b) (x + 1)), x},
    {"1D-056: Quadratic three symbols", 1/((x^2 + a x + b) (x + c d)), x},
    {"1D-057: Cubic + linear", 1/((x^3 - 1) (x + 1)), x},
    {"1D-058: Cubic irreducible", 1/((x^3 - 2) (x + 1)), x},
    {"1D-059: Two cubics", 1/((x^3 - 1) (x^3 + 1)), x},
    {"1D-060: Cubic + quadratic", 1/((x^3 - 1) (x^2 + 1)), x},
    {"1D-061: Cubic symbolic", 1/((x^3 + a) (x + 1)), x},
    {"1D-062: Quartic + linear", 1/((x^4 - 1) (x + 1)), x},
    {"1D-063: Quartic irreducible", 1/((x^4 + 1) (x + 1)), x},
    {"1D-064: Quartic symbolic", 1/((x^4 + a) (x + 1)), x},
    {"1D-065: Quintic", 1/((x^5 - 1) (x + 1)), x},
    {"1D-066: Sextic", 1/((x^6 - 1) (x + 1)), x},
    {"1D-067: Septic", 1/((x^7 - 1) (x + 1)), x},
    {"1D-068: Octic", 1/((x^8 - 1) (x + 1)), x},
    {"1D-069: Mixed degrees", 1/((x + 1) (x^2 + 1) (x^3 - 1)), x},
    {"1D-070: Mixed degrees sym", 1/((x + a) (x^2 + b) (x^3 + c)), x},
    {"1D-071: Repeated irreducible quad", 1/((x^2 + 1)^2 (x^2 + 2)^2), x},
    {"1D-072: Mixed irreducible/reducible", 1/((x^2 + 1) (x^2 - 1)), x},
    {"1D-073: Cyclotomic 5", 1/((x^5 - 1) (x + 1)), x},
    {"1D-074: Cyclotomic 6", 1/((x^6 - 1) (x + 1)), x},
    {"1D-075: x^2-x+1", 1/((x^2 - x + 1) (x + 1)), x},
    {"1D-076: x^2+x+1", 1/((x^2 + x + 1) (x + 1)), x},

    (* --- High degree numerators with non-linear denoms --- *)
    {"1D-077: Degree 10 / quad+linear", x^10/((x^2 + 1) (x + 1)), x},
    {"1D-078: Degree 12 / cubic+linear", x^12/((x^3 - 1) (x + 1)), x},
    {"1D-079: Degree 15 / cubic+linear", x^15/((x^3 - 1) (x + 1)), x},
    {"1D-080: Degree 20 / quartic+linear", x^20/((x^4 - 1) (x + 1)), x},
    {"1D-081: Degree 50 / quad+linear", x^50/((x^2 + 1) (x + 1)), x},
    {"1D-082: Degree 100 / quad+linear", x^100/((x^2 + 1) (x + 1)), x},

    (* --- Non-integer / complex / symbolic powers --- *)
    {"1D-083: Non-integer power den", 1/((x + 1) (x^2 + 2)^(5/2)), x},
    {"1D-084: Real power den", (x^2 + a)^(-3/2)/((x + b) (x + c)), x},
    {"1D-085: Non-integer power num", x^(5/7)/((x + 1) (x^2 + 4 x + 2) (x + 3)), x},
    {"1D-086: Complex power den", I/((x - 1.2)^1.2 (x^3 + x - b)^(1/2) (x^2 - c)^I), x},
    {"1D-087: Mixed power den", x^1.5/((x - a)^2 (x^3 - b)^(1/2) (x^2 - 2)^1.5), x},
    {"1D-088: Symbolic power den", 1/((x^2 + x - a)^2 (x^4 - b)^(1/2) (x^3 - 2)^pow (x^2 - m)^(a + b)), x},
    {"1D-089: Symbolic power num", x^b/((1 + x^3) (2 - x)), x},
    {"1D-090: Function power den", 1/((1 + x) (2 - x - x^2) (3 + x^3)^(f[x]^x)), x},
    {"1D-091: Complex+Int power den", 1/((1 + x^3) (2 - x - x^2) (6 + 2 x)^(2 + a[2])), x},
    {"1D-092: Complex+Int power den 2", 1/((1 - x^3) (2 + x - x^2) (6 + 2 x)^(2 + I)), x},
    {"1D-093: Rational power num issue", 1/((1 - x^2) (2 + x - x^3) (3 - x)^(-1/2)), x},
    {"1D-094: Sqrt in numerator", Sqrt[x]/((x + 1) (x + 2)), x},
    {"1D-095: Sqrt in denominator", 1/((x + 1) Sqrt[x + 2]), x},
    {"1D-096: Negative frac power", (x + 1)^(-3/2)/(x + 2), x},
    {"1D-097: Symbolic power", 1/((x + 1)^n (x + 2)), x},
    {"1D-098: Complex power", 1/((x + 1)^(2 + I) (x + 2)), x},
    {"1D-099: Negative power", x^2/(x + 1)^(-2), x},
    {"1D-100: Rational+complex power", 1/((x + 1) (x + 2)^(1/2 + I)), x},

    (* --- Transcendental / non-polynomial factors --- *)
    {"1D-101: Log factor", 1/((x + 1) (x^6 + I x^3 + 2 y) Log[x]), x},
    {"1D-102: Log Sqrt factor", 1/((x + 1) (x + 2) Log[Sqrt[x]]), x},
    {"1D-103: Exp[x] in num", Exp[x]/((x^3 + 1) (x^2 + 2)^2), x},
    {"1D-104: 2^x in num", 2^x/((x^3 + 1) (x^2 + 2)^2), x},
    {"1D-105: x^x non-monomial", x^x/((1 - x^2) (2 + x^3)^-0.5), x},
    {"1D-106: G-function", G[0, x/(x^2 + 1)]/((x^3 + 1) (x^2 + x + 2)), x},
    {"1D-107: Log in num", Log[x]/((x + 1) (x + 2)), x},
    {"1D-108: Sin in num", Sin[x]/((x + 1) (x + 2)), x},
    {"1D-109: Exp in num", Exp[x]/((x + 1) (x + 2)), x},
    {"1D-110: Sin in denom", 1/((x + 1) Sin[x]), x},
    {"1D-111: Cos in denom", 1/((x + 1) Cos[x]), x},
    {"1D-112: Log in denom", 1/((x + 1) (x + 2) Log[x]), x},
    {"1D-113: Exp in denom", 1/((x + 1) Exp[x]), x},

    (* --- Non-linear denominators (robustness) --- *)
    {"1D-114: Log in denom struct", 1/((x^3 + Log[x]) (x + 1)), x},
    {"1D-115: Sqrt in denom struct", 1/((x + Sqrt[x]) (x + 1)), x},
    {"1D-116: High poly denom", 1/((x + x^7/2) (x + 1)), x},
    {"1D-117: Sign of x", 1/((-x^3 + 10 x^2 + 1) (x + 2)), x},
    {"1D-118: x^3 / denoms", x^3/((a - x^2) (c + x - x^3)), x},
    {"1D-119: x^(1/2) / denoms", x^(1/2)/((a - x^2) (c + x - x^3)), x},
    {"1D-120: x^I / denoms", x^I/((a - x^2) (c + x - x^3)), x},
    {"1D-121: x^(3+I) / denoms", x^(3 + I)/((a - x^2) (c + x - x^3)), x},

    (* --- Edge cases --- *)
    {"1D-122: Constant", 42, x},
    {"1D-123: Zero", 0, x},
    {"1D-124: Polynomial", x^2 + x + 1, x},
    {"1D-125: Single factor", 1/(x + 1), x},
    {"1D-126: Monomial denom", 1/x/(x + 1), x},
    {"1D-127: Monomial^3 denom", (x - 1)/x^3/(x + 1), x},
    {"1D-128: Independent of x", 1/(a + b), x},
    {"1D-129: Identity", (x + 1)/(x + 1), x},
    {"1D-130: Cancelable", (x^2 - 1)/((x - 1) (x + 1)), x},
    {"1D-131: Nested fraction", 1/(1 + 1/(x + 1)), x},
    {"1D-132: Triple nested", 1/(1 + 1/(1 + 1/(x + 1))), x},
    {"1D-133: Sum of fractions", 1/(x + 1) + 1/(x + 2) + 1/(x + 3), x},
    {"1D-134: Sum duplicates", 1/(x + 1)^2 + 1/(x + 1)^2, x},
    {"1D-135: Mixed sum", a/((x + 1) (x + 2)) + b/((x + 2) (x + 3)), x},
    {"1D-136: Same root diff form", 1/((x - 1) (2 x - 2)), x},
    {"1D-137: Alternating signs", 1/((x - 1) (x - 2) (x + 3) (x + 4)), x},
    {"1D-138: Rational numbers denom", 1/((x + 1/2) (x + 1/3)), x},
    {"1D-139: Large numbers denom", 1/((x + 100) (x + 200)), x},
    {"1D-140: Negative numbers denom", 1/((x - 5) (x - 10)), x},
    {"1D-141: Negative denom coeff", 1/((-1) x + 1)/((-2) x + 1), x},
    {"1D-142: Complex roots", 1/((x + I) (x - I)), x},
    {"1D-143: Complex roots 2", 1/((x + I) (x + 2 I) (x + 3 I)), x},
    {"1D-144: Mixed real/complex", 1/((x + 1) (x + I)), x},
    {"1D-145: Zero denom", 1/x, x},

    (* --- Options --- *)
    {"1D-146: Factor option", 1/(1 - x^2), x, "Factor" -> True},
    {"1D-147: Factor quadratic", 1/(x^4 - 1), x, "Factor" -> True},
    {"1D-148: Factor cubic", 1/(x^6 - 1), x, "Factor" -> True},
    {"1D-149: Factor symbolic", 1/(x^2 - a), x, "Factor" -> True},
    {"1D-150: GaussianIntegers", 1/((1 + x) (1 + x^2)), x,
        "Factor" -> True, "GaussianIntegers" -> True},
    {"1D-151: Extension Sqrt[2]", 1/(x^2 - 2), x,
        "Factor" -> True, "Extension" -> {Sqrt[2]}},
    {"1D-152: Euclidean method", 1/((x + 1) (x + 2) (x + 3)), x, "Method" -> "Euclidean"},
    {"1D-153: Euclidean quadratic", 1/((x^2 + 1) (x + 2)), x, "Method" -> "Euclidean"},
    {"1D-154: Euclidean cubic", 1/((x^3 - 1) (x + 1)), x, "Method" -> "Euclidean"},
    {"1D-155: EquationSystem method", 1/((x + 1) (x + 2) (x + 3)), x, "Method" -> "EquationSystem"},
    {"1D-156: EquationSystem quad", 1/((x^2 + 1) (x + 2)), x, "Method" -> "EquationSystem"},
    {"1D-157: PreCollect", 2/((x + 1) (x + 2)) + 1/((x + 1) (x + 2)), x, "PreCollect" -> True},
    {"1D-158: PreCollect + Factor", a/((x + 1) (x + 2)) + a/((x + 1) (x + 3)), x,
        "PreCollect" -> True, "ApplyAfterPreCollect" -> Factor},
    {"1D-159: PreCollect + Simplify", a/((x + 1) (x + 2)) + a/((x + 1) (x + 3)), x,
        "PreCollect" -> True, "ApplyAfterPreCollect" -> Simplify},
    {"1D-160: PreCollect + Euclidean", a/((x^2 + 1) (x + 2)) + a/((x^2 + 1) (x + 3)), x,
        "PreCollect" -> True, "Method" -> "Euclidean"},
    {"1D-161: Factor False no GI", 1/(x^2 + x + 1), x, "Factor" -> False, "GaussianIntegers" -> False},
    {"1D-162: Irreducible no factor", 1/(x^4 + 1), x, "Factor" -> False, "GaussianIntegers" -> False},
    {"1D-163: Poly part Laurent", x^10/(x + 1), x, "Method" -> "ExtendedLaurentSeries"},
    {"1D-164: Poly part quad denom", x^8/(x^2 + 1), x, "Method" -> "ExtendedLaurentSeries"}
};


(* ::Subsection::Closed:: *)
(*TestDataMVLinear*)


TestDataMVLinear = {
    (* --- Basic 2D --- *)
    {"MV-001: 3 non-central", 1/(x y (x + y - 1)), {x, y}},
    {"MV-002: 3 central", 1/(x y (x + y)), {x, y}},
    {"MV-003: 4 non-central", 1/(x y (x + y - 1) (x - y + 2)), {x, y}},
    {"MV-004: 5 non-central", 1/(x y (x + y - 1) (x - y + 2) (2 x + y - 3)), {x, y}},
    {"MV-005: 4 central", 1/(x y (x + y) (x - y)), {x, y}},
    {"MV-006: 6 central", 1/(x y (x + y) (x - y) (2 x + y) (x + 2 y)), {x, y}},

    (* --- Higher powers 2D --- *)
    {"MV-007: Power on x", 1/(x^2 y (x + y - 1)), {x, y}},
    {"MV-008: Power on y", 1/(x y^2 (x + y - 1)), {x, y}},
    {"MV-009: Power on non-central", 1/(x y (x + y - 1)^2), {x, y}},
    {"MV-010: Multiple powers", 1/(x^3 y^2 (x + y - 1)^2), {x, y}},
    {"MV-011: 5 denoms powers", 1/(x^2 y (x + y - 1)^2 (x - y + 2)), {x, y}},
    {"MV-012: Central with powers", 1/(x^2 y (x + y)^2), {x, y}},

    (* --- Mixed central/non-central --- *)
    {"MV-013: Mixed 6 denoms", 1/(x y (x + y) (x - y) (x + y - 1) (x - y + 1)), {x, y}},
    {"MV-014: Mixed 4 denoms", 1/(x y (x + y) (x + y - 1)), {x, y}},

    (* --- Symbolic coefficients --- *)
    {"MV-015: Symbolic 4 denoms", 1/(x y (a x + y - 1) (x + b y - 1)), {x, y}},
    {"MV-016: Mandelstam-style", 1/((s - x) (t - y) (s + t - x - y - 1)), {x, y}},
    {"MV-017: Symbolic 4 denoms heavy", 1/(x y (s x + t y - 1) (u x - v y + 1)), {x, y}},

    (* --- 3D tests --- *)
    {"MV-018: 3D 4 non-central", 1/(x y z (x + y + z - 1)), {x, y, z}},
    {"MV-019: 3D 6 non-central", 1/(x y z (x + y - 1) (y + z - 2) (x + z - 3)), {x, y, z}},
    {"MV-020: 3D 6 symmetric", 1/(x y z (x + y - 1) (y + z - 1) (x + z - 1)), {x, y, z}},
    {"MV-021: 3D higher powers", 1/(x^2 y z^2 (x + y + z - 1)), {x, y, z}},
    {"MV-022: 3D 4 central", 1/(x y z (x + y + z)), {x, y, z}},
    {"MV-023: 3D 5 denoms", 1/(x y z (x + y - 1) (y + z - 1)), {x, y, z}},

    (* --- 4D tests --- *)
    {"MV-024: 4D 5 non-central", 1/(x y z w (x + y + z + w - 1)), {x, y, z, w}},

    (* --- Stress tests 2D --- *)
    {"MV-025: 7 denoms mixed",
        1/(x y (x + y) (x - y) (x + y - 1) (x - y + 1) (2 x + 3 y - 5)), {x, y}},
    {"MV-026: High powers 4 denoms",
        1/(x^3 y^3 (x + y - 1)^3 (x - y + 1)^2), {x, y}},
    {"MV-027: 6 non-central denoms",
        1/(x y (x + y - 1) (x - y + 1) (2 x + y - 3) (x + 3 y - 2)), {x, y}},
    {"MV-028: Near-degenerate",
        1/(x (x + y) (x + y - 1) (x + 2 y) (x + 2 y - 1)), {x, y}},

    (* --- Stress tests 3D --- *)
    {"MV-029: 3D 7 denoms mixed",
        1/(x y z (x + y) (y + z - 1) (x + z - 2) (x + y + z - 3)), {x, y, z}},
    {"MV-030: 3D 5 denoms powers",
        1/(x^2 y^2 z (x + y + z - 1)^2 (x - y + z + 1)), {x, y, z}},
    {"MV-031: 3D 8 denoms",
        1/(x y z (x + y - 1) (y + z - 1) (x + z - 1) (x + y + z - 2) (x - y + z + 1)), {x, y, z}},

    (* --- Stress tests 4D --- *)
    {"MV-032: 4D 6 denoms", 1/(x y z w (x + y - 1) (z + w - 1)), {x, y, z, w}},
    {"MV-033: 4D 7 denoms",
        1/(x y z w (x + y + z - 1) (y + z + w - 2) (x + w - 1)), {x, y, z, w}},

    (* --- Extreme tests --- *)
    {"MV-034: 2D 8 denoms",
        1/(x y (x + y - 1) (x - y + 2) (2 x + y - 3) (x + 3 y - 4) (3 x - y + 5) (x + y - 7)), {x, y}},
    {"MV-035: 2D 10 denoms",
        1/(x y (x + y - 1) (x - y + 2) (2 x + y - 3) (x + 3 y - 4) (3 x - y + 5) (x + y - 7) (2 x - 3 y + 1) (4 x + y - 2)), {x, y}},
    {"MV-036: 2D 9 denoms moderate extreme",
        1/(x y (x + y - 1) (x - y + 2) (2 x + y - 3) (x + 3 y - 4) (3 x - y + 5) (2 x - 3 y + 1) (4 x + y - 2)), {x, y}},

    (* --- Very high powers --- *)
    {"MV-037: Powers (5,4,3)", 1/(x^5 y^4 (x + y - 1)^3), {x, y}},
    {"MV-038: Powers (6,5,4)", 1/(x^6 y^5 (x + y - 1)^4), {x, y}},
    {"MV-039: Powers (7,6,5)", 1/(x^7 y^6 (x + y - 1)^5), {x, y}},
    {"MV-040: 4 denoms powers (4,3,3,3)",
        1/(x^4 y^3 (x + y - 1)^3 (x - y + 2)^3), {x, y}},
    {"MV-041: 3D powers (4,3,3,3)", 1/(x^4 y^3 z^3 (x + y + z - 1)^3), {x, y, z}},
    {"MV-042: 3D powers (5,4,4,3)", 1/(x^5 y^4 z^4 (x + y + z - 1)^3), {x, y, z}},

    (* --- Many variables --- *)
    {"MV-043: 5D 6 denoms",
        1/(x1 x2 x3 x4 x5 (x1 + x2 + x3 + x4 + x5 - 1)), {x1, x2, x3, x4, x5}},
    {"MV-044: 6D 7 denoms",
        1/(x1 x2 x3 x4 x5 x6 (x1 + x2 + x3 + x4 + x5 + x6 - 1)), {x1, x2, x3, x4, x5, x6}},
    {"MV-045: 7D 8 denoms",
        1/(x1 x2 x3 x4 x5 x6 x7 (x1 + x2 + x3 + x4 + x5 + x6 + x7 - 1)), {x1, x2, x3, x4, x5, x6, x7}},

    (* --- Complex symbolic coefficients --- *)
    {"MV-046: Epsilon dim-reg 5 denoms",
        1/(x y ((2 - epsilon) x + (1 + epsilon) y - 1) ((3 + 2 epsilon) x - (1 - epsilon) y + epsilon) ((1 + epsilon^2) x + epsilon y - (2 - epsilon))), {x, y}},
    {"MV-047: Sqrt/Pi coefficients",
        1/(x y (Sqrt[2] x + Sqrt[3] y - Pi) (Sqrt[5] x - Sqrt[7] y + EulerGamma)), {x, y}},
    {"MV-048: Complex number coefficients",
        1/(x y ((2 + 3 I) x + (1 - I) y - (5 + 2 I)) ((1 + 4 I) x - (3 - 2 I) y + (7 - I))), {x, y}},

    (* --- Combined extremes --- *)
    {"MV-049: 2D 6 denoms moderate powers",
        1/(x^2 y^2 (x + y - 1)^2 (x - y + 1)^2 (2 x + y - 3) (x + 2 y - 5)), {x, y}},
    {"MV-050: 4D 10 denoms mixed",
        1/(x y z w (x + y) (z + w) (x + y - 1) (z + w - 1) (x + z - 2) (y + w - 3)), {x, y, z, w}},
    {"MV-051: 3D 6 denoms moderate powers",
        1/(x^2 y^2 z^2 (x + y - 1)^2 (y + z - 2)^2 (x + z - 3)), {x, y, z}},
    {"MV-052: 5D 9 denoms",
        1/(x1 x2 x3 x4 x5 (x1 + x2 - 1) (x2 + x3 - 2) (x3 + x4 - 3) (x4 + x5 - 4)), {x1, x2, x3, x4, x5}},

    (* --- Edge cases MV --- *)
    {"MV-053: Already decomposed", 1/(x (x + y - 1)), {x, y}},
    {"MV-054: Single denom", 1/(x + y - 1), {x, y}},
    {"MV-055: Constant numerator", (a + b)/(x y (x + y - 1)), {x, y}},
    {"MV-056: Minimal affine 2D", 1/((x - 1) (x + y + 1)), {x, y}},
    {"MV-057: Minimal 2 denoms", 1/(x y), {x, y}},
    {"MV-058: Minimal 3 denoms", 1/(x y z), {x, y, z}},

    (* --- Numerator tests 2D --- *)
    {"MV-059: 2D linear num", x/((x - y) y (x + y - 1) (x + y)), {x, y}},
    {"MV-060: 2D quadratic num", x^2/((x - y) y (x + y - 1) (x + y)), {x, y}},
    {"MV-061: 2D cubic num", x^3/((x - y) y (x + y - 1) (x + y)), {x, y}},
    {"MV-062: 2D mixed num xy", x y/((x - y) (x + y - 1) (x + y)), {x, y}},
    {"MV-063: 2D mixed num x^2 y", x^2 y/((x - y) y (x + y - 1) (x + y)), {x, y}},
    {"MV-064: 2D mixed num x y^2", x y^2/((x - y) y (x + y - 1) (x + y)), {x, y}},
    {"MV-065: 2D high power num", x^3 y^4/((x - y) y (x + y - 1) (x + y)), {x, y}},
    {"MV-066: 2D sum num", (x + y)/((x - y) y (x + y - 1)), {x, y}},
    {"MV-067: 2D sum num squared", (x + y)^2/((x - y) y (x + y - 1) (x + y)), {x, y}},

    (* --- Numerator tests 3D --- *)
    {"MV-068: 3D linear num x", x/(x y z (x + y + z - 1)), {x, y, z}},
    {"MV-069: 3D linear num y", y/(x y z (x + y + z - 1)), {x, y, z}},
    {"MV-070: 3D quadratic num", x^2/(x y z (x + y + z - 1)), {x, y, z}},
    {"MV-071: 3D mixed num xy", x y/(x z (x + y - 1) (y + z - 1)), {x, y, z}},
    {"MV-072: 3D mixed num xyz", x y z/((x + y) (y + z) (x + z) (x + y + z - 1)), {x, y, z}},
    {"MV-073: 3D cubic num", x^3/(x y z (x + y - 1) (y + z - 1)), {x, y, z}},
    {"MV-074: 3D sum num", (x + y + z)/(x y z (x + y + z - 1)), {x, y, z}},

    (* --- Numerator tests 4D --- *)
    {"MV-075: 4D linear num", x/(x y z w (x + y + z + w - 1)), {x, y, z, w}},
    {"MV-076: 4D quadratic num", x^2/(x y z w (x + y + z + w - 1)), {x, y, z, w}},
    {"MV-077: 4D mixed num xy", x y/(x z w (x + y - 1) (z + w - 1)), {x, y, z, w}},
    {"MV-078: 4D mixed num xyzw", x y z w/((x + y) (z + w) (x + y - 1) (z + w - 1) (x + z)), {x, y, z, w}},

    (* --- Numerator tests 5D --- *)
    {"MV-079: 5D linear num", x1/(x1 x2 x3 x4 x5 (x1 + x2 + x3 + x4 + x5 - 1)), {x1, x2, x3, x4, x5}},
    {"MV-080: 5D quadratic num", x1^2/(x1 x2 x3 x4 x5 (x1 + x2 + x3 + x4 + x5 - 1)), {x1, x2, x3, x4, x5}},
    {"MV-081: 5D mixed num", x1 x2/(x1 x3 x4 x5 (x1 + x2 - 1) (x3 + x4 + x5 - 1)), {x1, x2, x3, x4, x5}},
    {"MV-082: 5D sum num", (x1 + x2 + x3)/(x1 x2 x3 x4 x5 (x4 + x5 - 1)), {x1, x2, x3, x4, x5}},

    (* --- Numerator with higher multiplicities --- *)
    {"MV-083: 2D num with mult", x^2/((x - y)^2 y^2 (x + y - 1)), {x, y}},
    {"MV-084: 2D num with high mult", x^3/((x - y)^3 y^2 (x + y - 1)^2), {x, y}},
    {"MV-085: 3D num with mult", x y/((x - y)^2 z (x + y + z - 1)^2), {x, y, z}},

    (* --- Redundant numerator --- *)
    {"MV-086: Num equals denom factor", (x - y)/((x - y) y (x + y - 1)), {x, y}},
    {"MV-087: Num cancels partially", (x - y)^2/((x - y)^3 y (x + y - 1)), {x, y}},
    {"MV-088: Num is product of denoms", (x - y) y/((x - y)^2 y^2 (x + y - 1)), {x, y}},
    
    (* --- Same but not the same denominators --- *)
    {"MV-089: 3D prism configuration", 1/((x + y - 1) (x - y + 1) (x + y + 1) (x - y - 1) z), {x, y, z}},
    {"MV-090: 2D five lines in general position", 1/((x + y) (x - y) (2 x + 3 y - 1) (3 x - 2 y + 2) (x + y + 1)), {x, y}},
    {"MV-091: 3D intersecting planes", 1/((x + y + z) (x - y) (y - z) (x - z) (x + y - z + 1)), {x, y, z}},
    
    (* --- High degrees and multiplicities combined --- *)
    {"MV-092: 2D high degree num + high mult", x^5/((x + y)^3 (x - y)^3 (x + 2 y - 1)^2), {x, y}},
    {"MV-093: 3D high degree num + high mult", (x^2 + y^2 + z^2)/((x + y)^2 (y + z)^2 (x + z)^2 (x + y + z - 1)), {x, y, z}},

    (* --- Parametric coefficients --- *)
    {"MV-094: Parametric affine shift", 1/(x y (x + y - c)), {x, y}},
    {"MV-095: Parametric cross term", 1/(x y (a x + b y + c)), {x, y}},
    {"MV-096: Rational coeff inside", 1/(x y (x/2 + y/3 - 1/4)), {x, y}}
};


(* ::Subsection::Closed:: *)
(*TestDataMVNonLinear*)


TestDataMVNonLinear = {
    (* --- Basic inhomogeneous shift relations in 2D --- *)
    {"MVN-001: radial pair", 
        1/((x^2 + y^2) (x^2 + y^2 + 1)), {x, y}},
    {"MVN-002: radial triple", 
        1/((x^2 + y^2) (x^2 + y^2 + 1) (x^2 + y^2 + 2)), {x, y}},
    {"MVN-003: shifted pair", 
        1/((1 + x^2 + y^2) (2 + x^2 + y^2)), {x, y}},
    {"MVN-004: powers on radial pair", 
        1/((x^2 + y^2)^2 (1 + x^2 + y^2)), {x, y}},
    {"MVN-005: powers on shifted pair", 
        1/((x^2 + y^2)^2 (1 + x^2 + y^2)^2), {x, y}},

    (* --- Homogeneous algebraic relations --- *)
    {"MVN-006: x^2-y^2 relation", 
        1/((x^2 - y^2) (x - y) (x + y)), {x, y}},
    {"MVN-007: x^2-y^2 with powers", 
        1/((x^2 - y^2)^2 (x - y) (x + y)), {x, y}},
    {"MVN-008: x^2-y^2 all powered", 
        1/((x^2 - y^2)^2 (x - y)^2 (x + y)^2), {x, y}},
    {"MVN-009: x^3-y^3 relation", 
        1/((x^3 - y^3) (x - y) (x^2 + x y + y^2)), {x, y}},
    {"MVN-010: x^4-y^4 relation", 
        1/((x^4 - y^4) (x^2 - y^2) (x^2 + y^2)), {x, y}},

    (* --- Mixed linear / non-linear --- *)
    {"MVN-011: linear times radial pair", 
        1/(x (x^2 + y^2) (1 + x^2 + y^2)), {x, y}},
    {"MVN-012: linear+affine times radial pair", 
        1/((x + y - 1) (x^2 + y^2) (1 + x^2 + y^2)), {x, y}},
    {"MVN-013: two linear and one non-linear", 
        1/(x y (x^2 + y^2 + 1)), {x, y}},
    {"MVN-014: mixed product relation", 
        1/(x (x^2 - y^2) (x - y) (x + y)), {x, y}},

    (* --- Symbolic coefficients --- *)
    {"MVN-015: symbolic quadratic pair", 
        1/((a x^2 + b y^2) (1 + a x^2 + b y^2)), {x, y}},
    {"MVN-016: symbolic shifted pair", 
        1/((s x^2 + t y^2 + u) (s x^2 + t y^2 + u + 1)), {x, y}},
    {"MVN-017: symbolic mixed quartic", 
        1/((a x^2 + b x y + c y^2) (1 + a x^2 + b x y + c y^2)), {x, y}},

    (* --- 3D radial / shifted relations --- *)
    {"MVN-018: 3D radial pair", 
        1/((x^2 + y^2 + z^2) (1 + x^2 + y^2 + z^2)), {x, y, z}},
    {"MVN-019: 3D radial triple", 
        1/((x^2 + y^2 + z^2) (1 + x^2 + y^2 + z^2) (2 + x^2 + y^2 + z^2)), {x, y, z}},
    {"MVN-020: 3D mixed linear/radial", 
        1/(x (x^2 + y^2 + z^2) (1 + x^2 + y^2 + z^2)), {x, y, z}},
    {"MVN-021: 3D powers on radial pair", 
        1/((x^2 + y^2 + z^2)^2 (1 + x^2 + y^2 + z^2)), {x, y, z}},

    (* --- Numerator tests in 2D --- *)
    {"MVN-022: radial numerator cancels partially", 
        (x^2 + y^2)/((x^2 + y^2) (1 + x^2 + y^2)), {x, y}},
    {"MVN-023: linear numerator on radial pair", 
        x/((x^2 + y^2) (1 + x^2 + y^2)), {x, y}},
    {"MVN-024: mixed numerator on shifted pair", 
        x y/((x^2 + y^2) (1 + x^2 + y^2)), {x, y}},
    {"MVN-025: numerator equals algebraic factor", 
        (x^2 - y^2)/((x^2 - y^2) (x - y) (x + y)), {x, y}},

    (* --- Numerator tests in 3D --- *)
    {"MVN-026: 3D linear numerator", 
        x/((x^2 + y^2 + z^2) (1 + x^2 + y^2 + z^2)), {x, y, z}},
    {"MVN-027: 3D quadratic numerator", 
        x^2/((x^2 + y^2 + z^2) (1 + x^2 + y^2 + z^2)), {x, y, z}},
    {"MVN-028: 3D mixed numerator", 
        x y z/((x^2 + y^2 + z^2) (1 + x^2 + y^2 + z^2)), {x, y, z}},

    (* --- Edge cases --- *)
    {"MVN-029: single non-linear denominator", 
        1/(1 + x^2 + y^2), {x, y}},
    {"MVN-030: already simple mixed pair", 
        1/(x (1 + x^2 + y^2)), {x, y}},
    {"MVN-031: one denominator powered", 
        1/(1 + x^2 + y^2)^3, {x, y}},
    {"MVN-032: quartic pair", 
        1/((x^4 + y^4) (1 + x^4 + y^4)), {x, y}},

    (* --- Extensions: More algebraic factorization identities --- *)
    {"MVN-033: x^6-y^6 relation", 
        1/((x^6 - y^6) (x^3 - y^3) (x^3 + y^3)), {x, y}},
    {"MVN-034: x^4-y^4 full factor relation", 
        1/((x^4 - y^4) (x - y) (x + y) (x^2 + y^2)), {x, y}},
    {"MVN-035: x^3+y^3 relation", 
        1/((x^3 + y^3) (x + y) (x^2 - x y + y^2)), {x, y}},

    (* --- Extensions: Additional shift-family examples --- *)
    {"MVN-036: quadratic shift tower", 
        1/((x^2 + y^2 + a) (x^2 + y^2 + a + 1) (x^2 + y^2 + a + 2)), {x, y}},
    {"MVN-037: quartic shift pair", 
        1/((x^4 + y^4) (1 + x^4 + y^4)), {x, y}},
    {"MVN-038: quartic shift triple", 
        1/((x^4 + y^4) (1 + x^4 + y^4) (2 + x^4 + y^4)), {x, y}},

    (* --- Extensions: Mixed linear and symbolic polynomial denominators --- *)
    {"MVN-039: symbolic mixed linear/quadratic", 
        1/((x + y - 1) (a x^2 + b y^2 + c)), {x, y}},
    {"MVN-040: symbolic mixed two quadratics", 
        1/((a x^2 + b x y + c y^2 + d) (a x^2 + b x y + c y^2 + d + 1)), {x, y}},

    (* --- Extensions: 3D polynomial families --- *)
    {"MVN-041: 3D quartic shift pair", 
        1/((x^2 + y^2 + z^2)^2 (1 + (x^2 + y^2 + z^2)^2)), {x, y, z}},
    {"MVN-042: 3D algebraic numerator match", 
        (x^2 + y^2 + z^2)/((x^2 + y^2 + z^2) (1 + x^2 + y^2 + z^2)), {x, y, z}},
    {"MVN-043: 3D mixed symbolic radial", 
        1/((a (x^2 + y^2 + z^2) + b) (a (x^2 + y^2 + z^2) + b + 1)), {x, y, z}},

    (* --- Extensions: Higher powers and mixed support --- *)
    {"MVN-044: radial pair both cubed", 
        1/((x^2 + y^2)^3 (1 + x^2 + y^2)^3), {x, y}},
    {"MVN-045: mixed linear/quadratic powers", 
        1/(x^2 (x^2 + y^2)^2 (1 + x^2 + y^2)), {x, y}},
    {"MVN-046: mixed affine/algebraic powers", 
        1/((x + y - 1)^2 (x^2 - y^2)^2 (x - y) (x + y)), {x, y}},
        
    (* --- Additional numerator tests: proper fractions --- *)
    {"MVN-047: proper linear numerator on quadratic pair",
        x/((x^2 + y^2) (1 + x^2 + y^2)), {x, y}},
    {"MVN-048: proper quadratic numerator on quartic pair",
        x^2/((x^4 + y^4) (1 + x^4 + y^4)), {x, y}},
    {"MVN-049: proper mixed numerator on cubic relation",
        x y/((x^3 - y^3) (x - y) (x^2 + x y + y^2)), {x, y}},
    {"MVN-050: proper 3D linear numerator",
        x/((x^2 + y^2 + z^2) (1 + x^2 + y^2 + z^2)), {x, y, z}},
    {"MVN-051: proper 3D mixed numerator",
        x y z/((x^2 + y^2 + z^2) (1 + x^2 + y^2 + z^2)), {x, y, z}},

    (* --- Additional numerator tests: improper fractions --- *)
    {"MVN-052: improper quadratic numerator on quadratic pair",
        x^2/((x^2 + y^2) (1 + x^2 + y^2)), {x, y}},
    {"MVN-053: improper cubic numerator on quadratic pair",
        x^3/((x^2 + y^2) (1 + x^2 + y^2)), {x, y}},
    {"MVN-054: improper radial numerator",
        (x^2 + y^2)/((x^2 + y^2) (1 + x^2 + y^2)), {x, y}},
    {"MVN-055: improper quartic numerator on quartic pair",
        x^4/((x^4 + y^4) (1 + x^4 + y^4)), {x, y}},
    {"MVN-056: improper 3D quadratic numerator",
        x^2/((x^2 + y^2 + z^2) (1 + x^2 + y^2 + z^2)), {x, y, z}},
    {"MVN-057: improper 3D radial numerator",
        (x^2 + y^2 + z^2)/((x^2 + y^2 + z^2) (1 + x^2 + y^2 + z^2)), {x, y, z}},

    (* --- Additional numerator tests: cancellation / partial cancellation --- *)
    {"MVN-058: exact cancellation against quadratic factor",
        (x^2 + y^2)/((x^2 + y^2)^2 (1 + x^2 + y^2)), {x, y}},
    {"MVN-059: partial cancellation against quartic factor",
        (x^4 + y^4)/((x^4 + y^4)^2 (1 + x^4 + y^4)), {x, y}},
    {"MVN-060: exact cancellation in 3D radial case",
        (x^2 + y^2 + z^2)/((x^2 + y^2 + z^2)^2 (1 + x^2 + y^2 + z^2)), {x, y, z}}
};


(* ::Subsection::Closed:: *)
(*TestDataMethodsAll*)


TestDataMethodsAll = {
    {"OPT-001: Automatic 1D", 1/((x + 1) (x + 2)), x},
    {"OPT-002: Explicit Euclidean", 1/((x + 1) (x + 2) (x + 3)), x, "Method" -> "Euclidean"},
    {"OPT-003: Explicit EquationSystem", 1/((x + 1) (x + 2)), x, "Method" -> "EquationSystem"},
    {"OPT-004: Automatic MV", 1/(x y (x + y - 1)), {x, y}},
    {"OPT-005: Explicit MultivariateResidue", 1/(x y (x + y) (x - y)), {x, y}, "Method" -> "MultivariateResidue"},
    {"OPT-006: Explicit Leinartas", 1/((x^2 + y^2) (x^2 + y^2 + 1)), {x, y}, "Method" -> "Leinartas"},
    {"OPT-007: Explicit Groebner iterative", 1/(x y (x + y)), {x, y}, "Method" -> "Groebner", "IterativeGroebner" -> True},
    {"OPT-008: Explicit Groebner one-shot", 1/(x y (x + y)), {x, y}, "Method" -> "Groebner", "IterativeGroebner" -> False},
    {"OPT-009: Factor False", 1/(x^4 - 1), x, "Factor" -> False},
    {"OPT-010: PreCollect", a/((x + 1) (x + 2)) + a/((x + 1) (x + 3)), x, "PreCollect" -> True},
    {"OPT-011: PreCollect with function", a/((x + 1) (x + 2)) + a/((x + 1) (x + 3)), x,
        "PreCollect" -> True, "ApplyAfterPreCollect" -> Factor}
};


(* ::Subsection::Closed:: *)
(*TestDataRobust*)


TestDataRobust = {
    (* --- Degenerate structures --- *)
    {"ROB-001: All identical bases", 1/(x^2 y^3), {x, y}},
    {"ROB-002: Collinear denoms", 1/(x y (x + y) (2 x + 2 y)), {x, y}},
    {"ROB-003: Parallel x-y denoms", 1/((x - 1) (x - 2) (y - 1) (y - 2)), {x, y}},
    {"ROB-004: Only one var-dep denom", 1/((x + y) z), {x, y}},
    {"ROB-005: Two var-dep < n vars", 1/((x + y) (x - y)), {x, y, z}},

    (* --- Numerical extremes --- *)
    {"ROB-006: Huge coefficients", 1/(x y (10^50 x + y - 1)), {x, y}},
    {"ROB-007: Tiny coefficients", 1/(x y (10^-50 x + y - 1)), {x, y}},
    {"ROB-008: Near-singular", 1/(x y (x + y) (x + (1 + 10^-14) y)), {x, y}},
    {"ROB-009: Zero constant term", 1/(x y (x + y) (2 x + 3 y)), {x, y}},

    (* --- Symbolic conditionals --- *)
    {"ROB-010: Conditional null", 1/(x y (a x + b y) (c x + d y)), {x, y}},
    {"ROB-011: Parameter-dependent basis", 1/(x y (x + y) (a x + y)), {x, y}},
    {"ROB-012: Epsilon-dependent", 1/(x y ((1 + eps) x + y - 1)), {x, y}},

    (* --- Mixed dependencies --- *)
    {"ROB-013: Each denom missing var", 1/((x + y) (x + z) (y + z)), {x, y, z}},
    {"ROB-014: Disconnected groups", 1/((x + y) (w + u)), {x, y, w, u}},
    {"ROB-015: Extra var as constant", 1/(x y (x + y) z), {x, y}},
    {"ROB-016: Multiple extra vars", 1/(x y (x + y) z w), {x, y}},
    {"ROB-017: Var in num only", x z/((x + y) (x - y)), {x, y}},

    (* --- Preprocessing --- *)
    {"ROB-018: Common factor", (x + 1)/((x + 1)^2 (x + 2)), x},
    {"ROB-019: MV common factor", (x + y)/((x + y)^2 (x - y)), {x, y}},
    {"ROB-020: Already simplified", 1/(x + 1), x},
    {"ROB-021: Already simplified MV", 1/(x + y), {x, y}},
    {"ROB-022: Polynomial input", x^2 + x + 1, x},
    {"ROB-023: Polynomial input MV", x y + x + y, {x, y}},
    {"ROB-024: Constant input", 42, x},
    {"ROB-025: Constant input MV", 42, {x, y}},

    (* --- Power edge cases --- *)
    {"ROB-026: Zero exponent", 1/((x + 1)^0 (x + 2)), x},
    {"ROB-027: Mixed int+frac powers", 1/((x + 1)^2 (x + 1)^(1/2)), x},

    (* --- Non-polynomial denominators MV --- *)
    {"ROB-028: Sin in denom MV", 1/((x + y) (x - y) Sin[x]), {x, y}},
    {"ROB-029: Exp in denom MV", 1/(x y (x + y) Exp[x + y]), {x, y}},
    {"ROB-030: G-function denom MV", 1/((x + y) (x - y) G[0, x]), {x, y}},

    (* --- Basis explosion --- *)
    {"ROB-031: 15 denoms 2D", 1/Product[x + i y - i, {i, 1, 15}], {x, y}},

    (* --- Recursion attacks --- *)
    {"ROB-032: Sequential nulls", 1/(x y Product[x + y - i, {i, 1, 8}]), {x, y}},
    {"ROB-033: Many central denoms", 
        1/(x y (x + y) (x - y) (2 x + y) (x + 2 y) (3 x + y)), {x, y}},

    (* --- Unicode --- *)
    {"ROB-034: Greek symbols", 1/(\[Alpha] \[Beta] (\[Alpha] + \[Beta])), {\[Alpha], \[Beta]}},

    (* --- Improper fractions MV --- *)
    {"ROB-035: 1D num > denom", x^5/((x + 1) (x + 2)), x},
    {"ROB-036: MV num polynomial", (x^2 y + x y^2)/(x y (x + y - 1)), {x, y}},

    (* --- Single denominator --- *)
    {"ROB-037: One denom 1D", 1/(x + 1), x},
    {"ROB-038: One denom MV", 1/(x + y), {x, y}},
    {"ROB-039: One denom power", 1/(x + 1)^3, x},
    {"ROB-040: One var-dep + const", a/((x + y) b), {x, y}},

    (* --- Nested fractions --- *)
    {"ROB-041: Nested fractions", 1/(1/(x + 1) + 1/(x + 2)), x},
    {"ROB-042: Deeply nested MV", 1/(x/(y + 1) + y/(x + 1)), {x, y}},

    (* --- Zero/Identity --- *)
    {"ROB-043: Zero expression", 0, x},
    {"ROB-044: Zero expression MV", 0, {x, y}},
    {"ROB-045: Identity fraction", x/x, x},
    
    (* ============================================== *)
    (*          EXTENDED ROBUSTNESS EXAMPLES          *)
    (* ============================================== *)

    {"ROB-046: Leinartas fewer denoms than vars", 1/(x (x z - 1)), {x, y, z}, "Method" -> "Leinartas"},
    {"ROB-047: Groebner fewer denoms than vars", 1/(x (x z - 1)), {x, y, z}, "Method" -> "Groebner"},
    {"ROB-048: Groebner parameter-heavy", 1/(x1 x2 (a x1 + x2 - Sqrt[c] Log[x]) (x1 + b x2 - 1)), {x1, x2},
        "Method" -> "Groebner", "IterativeGroebner" -> True},
    {"ROB-049: Groebner parameter-heavy one-shot", 1/(x1 x2 (a x1 + x2 - Sqrt[c] Log[x]) (x1 + b x2 - 1)), {x1, x2},
        "Method" -> "Groebner", "IterativeGroebner" -> False},
    {"ROB-050: Leinartas radial triple", 1/((x^2 + y^2) (x^2 + y^2 + 1) (x^2 + y^2 + 2)), {x, y},
        "Method" -> "Leinartas"},
    {"ROB-051: Groebner radial triple", 1/((x^2 + y^2) (x^2 + y^2 + 1) (x^2 + y^2 + 2)), {x, y},
        "Method" -> "Groebner"},
    {"ROB-052: Groebner 3D linear", 1/(x y z (x + y + z)), {x, y, z},
        "Method" -> "Groebner", "IterativeGroebner" -> True},
    {"ROB-053: Groebner 3D linear one-shot", 1/(x y z (x + y + z)), {x, y, z},
        "Method" -> "Groebner", "IterativeGroebner" -> False}
};


(* ::Subsection::Closed:: *)
(*TestDataError*)


TestDataError = {
    (* ============================================== *)
    (*      INVALID VARIABLE SPECIFICATION            *)
    (* ============================================== *)

    {"ERR-001: Var not symbol string", 1/((x - 1) (x + 2)), "x", "$Failed"},
    {"ERR-002: Var is number", 1/(x y), 5, "$Failed"},
    {"ERR-003: Var is expression", 1/((x - 1) (x + 2)), x + y, "$Failed"},
    {"ERR-004: Empty variable list", 1/(x y), {}, "$Failed"},
    {"ERR-005: Vars contain number", 1/(x y), {x, 1, y}, "$Failed"},
    {"ERR-006: Vars contain string", 1/(x y), {x, "y"}, "$Failed"},
    {"ERR-007: Vars contain expression", 1/(x y), {x, y + z}, "$Failed"},
    {"ERR-008: Vars contain Subscript", 1/(Subscript[x, 1] Subscript[x, 2]), {Subscript[x, 1], Subscript[x, 2]}, "$Failed"},

    (* ============================================== *)
    (*      METHOD VALIDATION                         *)
    (* ============================================== *)

    {"ERR-009: Invalid method univariate", 1/((x - 1) (x + 2)), x, "Method" -> "Magic", "$Failed"},
    {"ERR-010: Invalid method multivariate", 1/(x y (x + y)), {x, y}, "Method" -> "Magic", "$Failed"},
    {"ERR-011: Multivariate method on 1D input", 1/((x - 1) (x + 2)), x, "Method" -> "Groebner", "$Failed"},
    {"ERR-012: Leinartas on 1D input", 1/((x - 1) (x + 2)), x, "Method" -> "Leinartas", "$Failed"},
    {"ERR-013: MultivariateResidue on 1D input", 1/((x - 1) (x + 2)), x, "Method" -> "MultivariateResidue", "$Failed"},
    {"ERR-014: Groebner on one-element list", 1/((x - 1) (x + 2)), {x}, "Method" -> "Groebner", "$Failed"},
    {"ERR-015: Leinartas on one-element list", 1/((x - 1) (x + 2)), {x}, "Method" -> "Leinartas", "$Failed"},
    {"ERR-016: MultivariateResidue on one-element list", 1/((x - 1) (x + 2)), {x}, "Method" -> "MultivariateResidue", "$Failed"},

    (* ============================================== *)
    (*      BOOLEAN OPTION VALIDATION                 *)
    (* ============================================== *)

    {"ERR-017: Factor not boolean", 1/((x - 1) (x + 2)), x, "Factor" -> maybe, "$Failed"},
    {"ERR-018: GaussianIntegers not boolean", 1/(x^2 + 1), x, "GaussianIntegers" -> maybe, "$Failed"},
    {"ERR-019: PreCollect not boolean", 1/((x - 1) (x + 2)), x, "PreCollect" -> maybe, "$Failed"},
    {"ERR-020: IterativeGroebner not boolean", 1/(x y (x + y)), {x, y},
        "Method" -> "Groebner", "IterativeGroebner" -> maybe, "$Failed"},

    (* ============================================== *)
    (*      DEPENDENT OPTION CONSISTENCY             *)
    (* ============================================== *)

    {"ERR-021: GaussianIntegers without Factor", 1/(x^2 + 1), x,
        "Factor" -> False, "GaussianIntegers" -> True, "$Failed"},
    {"ERR-022: Extension without Factor", 1/(x^2 - 2), x,
        "Factor" -> False, "Extension" -> {Sqrt[2]}, "$Failed"},
    {"ERR-023: ApplyAfterPreCollect without PreCollect", 1/((x - 1) (x + 2)), x,
        "ApplyAfterPreCollect" -> Factor, "$Failed"},

    (* ============================================== *)
    (*      EXTENSION VALIDATION                      *)
    (* ============================================== *)

    {"ERR-024: Extension not list", 1/(x^2 - 2), x,
        "Factor" -> True, "Extension" -> Sqrt[2], "$Failed"},
    {"ERR-025: Extension bad entry symbol", 1/(x^2 - 2), x,
        "Factor" -> True, "Extension" -> {a}, "$Failed"},
    {"ERR-026: Extension bad mixed entries", 1/(x^2 - 2), x,
        "Factor" -> True, "Extension" -> {Sqrt[2], foo}, "$Failed"},

    (* ============================================== *)
    (*      PARALLEL OPTION VALIDATION                *)
    (* ============================================== *)

    {"ERR-027: Parallel not list", 1/((x - 1) (x + 2)), x,
        "Parallel" -> True, "$Failed"},
    {"ERR-028: Parallel wrong length", 1/((x - 1) (x + 2)), x,
        "Parallel" -> {True, 2}, "$Failed"},
    {"ERR-029: Parallel bad first entry", 1/((x - 1) (x + 2)), x,
        "Parallel" -> {maybe, 2, $TemporaryDirectory <> "/"}, "$Failed"},
    {"ERR-030: Parallel bad second entry", 1/((x - 1) (x + 2)), x,
        "Parallel" -> {True, 2.5, $TemporaryDirectory <> "/"}, "$Failed"},
    {"ERR-031: Parallel bad third entry", 1/((x - 1) (x + 2)), x,
        "Parallel" -> {True, 2, 5}, "$Failed"},

    (* ============================================== *)
    (*      WARNING / AUTO-CORRECTION CASES           *)
    (* ============================================== *)

    {"ERR-032: Unused variable dropped", 1/(x y), {x, y, z}, "Warning"},
    {"ERR-033: Numerator-only variable dropped", x z/(y (x + y)), {x, y, z}, "Warning"},
    {"ERR-034: Duplicate variables removed", 1/(x y (x + y)), {x, y, x, y}, "Valid"},
    {"ERR-035: No denominator variables left", x + y + z, {x, y}, "Valid"},

    (* ============================================== *)
    (*      SPECIAL INPUTS THAT SHOULD NOT FAIL       *)
    (* ============================================== *)

    {"ERR-036: Zero expression 1D", 0, x, "Valid"},
    {"ERR-037: Zero expression MV", 0, {x, y}, "Valid"},
    {"ERR-038: Constant expression 1D", 42, x, "Valid"},
    {"ERR-039: Constant expression MV", 42, {x, y}, "Valid"},
    {"ERR-040: Polynomial expression 1D", x^2 + x + 1, x, "Valid"},
    {"ERR-041: Polynomial expression MV", x y + x + y, {x, y}, "Valid"},
    {"ERR-042: Identity fraction", x/x, x, "Valid"},
    {"ERR-043: No chosen var in denominator", x/(a + b), x, "Unchanged"},

    (* ============================================== *)
    (*      NON-LINEAR DENOMINATOR HANDLING           *)
    (* ============================================== *)

    {"ERR-044: Non-linear denom with MultivariateResidue", 1/((x^2 + y) (x + 1)), {x, y},
        "Method" -> "MultivariateResidue", "Warning"},
    {"ERR-045: Single non-linear denom with Leinartas", 1/(1 + x^2 + y^2), {x, y},
        "Method" -> "Leinartas", "Valid"},
    {"ERR-046: Single non-linear denom with Groebner", 1/(1 + x^2 + y^2), {x, y},
        "Method" -> "Groebner", "Valid"},

    (* ============================================== *)
    (*      PATHOLOGICAL / SPECIAL SYMBOLIC INPUTS    *)
    (* ============================================== *)

    {"ERR-047: Indeterminate numerator", Indeterminate/(x + 1), x, "Unchanged"},
    {"ERR-048: ComplexInfinity numerator", ComplexInfinity/(x y), {x, y}, "Unchanged"},
    {"ERR-049: Protected symbol Pi as var", 1/(x y), Pi, "$Failed"},

    (* ============================================== *)
    (*      GROEBNER-SPECIFIC OPTION BEHAVIOR         *)
    (* ============================================== *)

    {"ERR-050: IterativeGroebner on non-Groebner method", 1/((x - 1) (x + 2)), x,
        "IterativeGroebner" -> True, "Valid"},
    {"ERR-051: Groebner explicit iterated true", 1/(x y (x + y)), {x, y},
        "Method" -> "Groebner", "IterativeGroebner" -> True, "Valid"},
    {"ERR-052: Groebner explicit iterated false", 1/(x y (x + y)), {x, y},
        "Method" -> "Groebner", "IterativeGroebner" -> False, "Valid"},

    (* ============================================== *)
    (*      AUTOMATIC METHOD DISPATCH                 *)
    (* ============================================== *)

    {"ERR-053: Automatic method 1D", 1/((x - 1) (x + 2)), x,
        "Method" -> Automatic, "Valid"},
    {"ERR-054: Automatic method MV", 1/(x y (x + y - 1)), {x, y},
        "Method" -> Automatic, "Valid"}
};


(* ::Subsection::Closed:: *)
(*TestDataParallel*)


TestDataParallel = {
    (* --- Univariate Laurent-series parallel tests --- *)
    {"PAR-001: Parallel 10 linear factors",
        1/Product[(x + i), {i, 1, 10}], x,
        "Method" -> "ExtendedLaurentSeries"},

    {"PAR-002: Parallel high multiplicity",
        1/(x + 1)^20, x,
        "Method" -> "ExtendedLaurentSeries"},

    {"PAR-003: Parallel quadratics",
        1/((x^2 + 1) (x^2 + 4) (x^2 + 9) (x^2 + 16)), x,
        "Method" -> "ExtendedLaurentSeries"},

    {"PAR-004: Parallel mixed multiplicities",
        1/((x + 1)^8 (x + 2)^6 (x + 3)^4), x,
        "Method" -> "ExtendedLaurentSeries"},

    {"PAR-005: Parallel high-degree numerator",
        x^40/((x^2 + 1) (x + 1)^6), x,
        "Method" -> "ExtendedLaurentSeries"},

    {"PAR-006: Parallel symbolic coefficients",
        a/((x + 1)^10 (x + 2)^8), x,
        "Method" -> "ExtendedLaurentSeries"},

    {"PAR-007: Parallel irreducible cubic",
        1/((x^3 - 2) (x + 1)^7), x,
        "Method" -> "ExtendedLaurentSeries"},

    (* --- Multivariate residue-method parallel tests --- *)
    {"PAR-008: Multivariate residue 2D central",
        1/(x y (x + y) (x - y) (2 x + y) (x + 2 y)), {x, y},
        "Method" -> "MultivariateResidue"},

    {"PAR-009: Multivariate residue 2D symbolic",
        1/(x y (a x + y - 1) (x + b y - 1) (x - y + 2)), {x, y},
        "Method" -> "MultivariateResidue"},

    {"PAR-010: Multivariate residue 3D basic",
        1/(x y z (x + y + z) (x + y - 1) (y + z - 1)), {x, y, z},
        "Method" -> "MultivariateResidue"},

    {"PAR-011: Multivariate residue 3D mixed",
        1/(x y z (x + y) (y + z - 1) (x + z - 2) (x + y + z - 3)), {x, y, z},
        "Method" -> "MultivariateResidue"},

    {"PAR-012: Multivariate residue 4D",
        1/(x y z w (x + y + z - 1) (y + z + w - 2) (x + w - 1)), {x, y, z, w},
        "Method" -> "MultivariateResidue"},

    {"PAR-013: Multivariate residue with powers",
        1/(x^2 y z^2 (x + y + z - 1) (x - y + z + 1)), {x, y, z},
        "Method" -> "MultivariateResidue"},

    (* --- Cases where parallel should gracefully fall back --- *)
    {"PAR-014: Parallel Euclidean fallback",
        1/((x + 1) (x + 2) (x + 3)), x,
        "Method" -> "Euclidean"},

    {"PAR-015: Parallel EquationSystem fallback",
        1/((x + 1) (x + 2)), x,
        "Method" -> "EquationSystem"},

    {"PAR-016: Parallel Leinartas fallback",
        1/((x^2 + y^2) (x^2 + y^2 + 1)), {x, y},
        "Method" -> "Leinartas"},

    {"PAR-017: Parallel Groebner fallback",
        1/(x y (x + y) (x - y)), {x, y},
        "Method" -> "Groebner", "IterativeGroebner" -> True}
};
