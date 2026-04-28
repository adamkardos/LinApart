# Tests

This directory contains the complete test suite for the LinApart package, organized into three runners that share common test data and helper functions.

## Quick start

```bash
# Run correctness tests (CI mode, exits with nonzero status on failure)
math -script test_correctness.wl

# Or open any .wl file in a Mathematica notebook and evaluate all cells
```

## File structure

### Test runners

- **`test_correctness.wl`** — Main correctness and regression test runner. Intended as the primary CI entry point. Runs all test sections sequentially and prints per-section summaries. Exits with nonzero status in script mode if any test fails.

- **`test_coverage.wl`** — Code coverage runner. Uses the `Instrumentation` package to instrument the LinApart source, runs all tests inside `CoverageEvaluate`, and generates an lcov/genhtml HTML report with line-by-line coverage data. Requires `lcov` and `genhtml` to be installed.

- **`test_profiling.wl`** — Profiling runner. Uses the `Instrumentation` package to instrument the LinApart source, runs all tests inside `ProfileEvaluate` with per-example timing, and generates a `ProfileReport` notebook. Also prints a sorted timing summary showing the most expensive examples and per-section totals.

### Shared modules

- **`examples.m`** — All test data definitions. Contains the following test data lists:
  - `TestData1D` — 164 univariate examples covering linear/non-linear denominators, multiplicities, normalization, improper fractions, symbolic coefficients, non-integer powers, transcendental factors, edge cases, and option combinations.
  - `TestDataMVLinear` — 96 multivariate examples with linear denominators in 2D through 7D, including stress tests, symbolic coefficients, numerator tests, and edge cases.
  - `TestDataMVNonLinear` — 60 multivariate examples with non-linear denominators (radial pairs, algebraic relations, mixed linear/non-linear, symbolic coefficients).
  - `TestDataMethodsAll` — 11 examples testing explicit method selection and option combinations.
  - `TestDataRobust` — 53 robustness examples covering degenerate structures, numerical extremes, symbolic conditionals, nested fractions, and method-specific edge cases.
  - `TestDataError` — 54 error handling examples testing invalid inputs, option validation, and special cases.
  - `TestDataParallel` — 17 parallel computation examples for both univariate and multivariate methods.

- **`tools_test.m`** — Reusable test helper functions:
  - `TestLinApart1D` — Univariate test with numerical equivalence and structural verification (numerator degree < denominator degree for each term).
  - `TestLinApartMV` — Multivariate test with numerical equivalence and structural verification (at most $n$ distinct linear denominator factors per term for the residue method, at most $n$ distinct denominator factors for Leinartas/Gröbner).
  - `TestLinApartRobust` — Dispatches to 1D or MV tester based on variable type.
  - `TestLinApartError` — Tests expected failure modes (`$Failed`, warnings, unchanged output, valid output).
  - `TestLinApartParallel` — Runs with explicit parallel options and checks correctness.
  - `SectionSummary` / `FinalSummary` — Formatted summary output.
  - `NumericalZeroQ` / `EquivalentExpressionsQ` — Hybrid numerical+symbolic equivalence checking.
  - `ProperPartialFraction1DQ` / `ProperPartialFractionMVQ` — Structural verification of partial fraction form.

## Test sections

The correctness runner executes the following sections in order:

| Section | Data | Method | Count |
|---------|------|--------|-------|
| 1. Single-Variable | `TestData1D` | Automatic | 164 |
| 2. MV Residue | `TestDataMVLinear` | MultivariateResidue | 96 |
| 3. Leinartas Linear | `TestDataMVLinear` | Leinartas | 96 |
| 4. Leinartas Non-Linear | `TestDataMVNonLinear` | Leinartas | 60 |
| 5. Gröbner Linear | `TestDataMVLinear` | Groebner | 96 |
| 6. Gröbner Non-Linear | `TestDataMVNonLinear` | Groebner | 60 |
| 7. Methods / Options | `TestDataMethodsAll` | Various | 11 |
| 8. Robustness | `TestDataRobust` | Various | 53 |
| 9. Error Handling | `TestDataError` | Various | 54 |
| 10. Parallel | `TestDataParallel` | Various | 17 |

The coverage and profiling runners execute sections 1–9 (parallel tests are excluded from coverage due to the difficulty of running subkernels inside `CoverageEvaluate`/`ProfileEvaluate`).

## Verification strategy

The test suite uses hybrid verification:

1. **Numerical equivalence**: The difference `(input - output)` is evaluated at random large prime substitutions for all variables. If the result is zero, the expressions are mathematically equivalent (Schwartz–Zippel lemma).

2. **Structural verification**: Beyond mathematical equivalence, the output must be in proper partial fraction form:
   - *Univariate*: for each non-polynomial term, the numerator degree is strictly less than the denominator degree.
   - *Multivariate (residue method)*: each term contains at most $n$ distinct linear denominator factors.
   - *Multivariate (Leinartas/Gröbner)*: each term contains at most $n$ distinct variable-dependent denominator factors.

## Coverage reports

After running `test_coverage.wl`, the HTML report is generated at:
```
Tests/coverageInstrumented/LinApart_coverage/LinApart/report/index.html
```

The report shows line-by-line hit counts for every source file, function-level coverage, and overall statistics.

## Profiling reports

After running `test_profiling.wl`, a `ProfileReport` notebook is opened automatically with per-function call counts and cumulative timing. The console output includes a sorted table of the 30 most expensive examples and per-section timing totals.

## Adding new tests

1. Add test data to the appropriate list in `examples.m` following the naming convention (`1D-NNN`, `MV-NNN`, `MVN-NNN`, `ROB-NNN`, `ERR-NNN`, `OPT-NNN`, `PAR-NNN`).
2. The test runners pick up new entries automatically — no changes needed to the runner files.
3. For new test *categories*, add a dispatcher and section to `test_correctness.wl`, `test_coverage.wl`, and `test_profiling.wl`.
