# Mathematica package

This directory contains the Wolfram Mathematica implementation of LinApart.

## Loading

```mathematica
Needs["LinApart`"]
```

Ensure this directory is on your Mathematica `$Path`, or copy the files to a standard package location.

## File structure

The package is split into a main entry point and several modules loaded automatically by `LinApart.m`.

### Entry point

- **`LinApart.m`** — Package declaration, public interface, option definitions, input validation, and method dispatch. This is the file loaded by `Needs["LinApart`"]`. It loads all other modules via `Get`.

### Preprocessing

- **`preprocessor.m`** — Four-stage preprocessing pipeline that normalizes expressions before dispatching to the core algorithms. Handles factoring, dependency separation, non-integer powers, non-linear denominator detection, and improper fraction extraction.

### Core algorithms

- **`partial_fraction_algorithms.m`** — The main `mathematicaPartialFraction` function implementing three univariate methods (Extended Laurent Series, Euclidean, EquationSystem) and dispatching multivariate decomposition.

### Univariate tools

- **`tools_univariate_nonlinear.m`** — Functions for handling non-linear (irreducible polynomial) denominators in the univariate case. Includes `ReducePolynomialForResidue` for modular polynomial arithmetic, `MakeCoefficientsSymbolic` for preventing coefficient blowup, and `DistributeAll` for efficient expansion.

### Multivariate tools

- **`tools_multivariate_linear.m`** — Core multivariate linear algebra functions: `ExtendedCoefficientMatrix` and `ExtendedCoefficientVector` for encoding linear denominators, `FindSafeNullRelations` for detecting linear dependencies, `EliminateNullRelations` for recursive null-space elimination using one-operators, `FindBases` for enumerating linearly independent denominator subsets, `ExpandNumeratorInDenomSpace` for reducing variable-dependent numerators via coordinate transformation, and denominator extraction utilities (`GetDenoms`, `GetBareDenoms`, `GetDenomData`, `CountBareDenoms`).

- **`tools_residue_method.m`** — Multivariate residue computation: `GetDataForResidue` for extracting basis/non-basis denominator data, `CalculateResidueInDenominatorSpace` for computing Grothendieck residues via Taylor expansion at the origin, and `ResidueForBasis` for assembling the partial fraction contribution from a single basis.

- **`tools_Leinartas_method.m`** — Implementation of Leinartas' decomposition for general polynomial denominators via polynomial ideal reduction.

- **`tools_Groebner_method.m`** — Gröbner basis approach for multivariate partial fraction decomposition of general polynomial denominators. Supports both iterative and one-shot computation modes.

### Utility modules

- **`tools_general.m`** — Shared utility functions used throughout the package: `GetExponent` (base/exponent extraction), `SeparateDependency` / `GatherByDependency` (splitting expressions into variable-free and variable-dependent parts), `VarPattern` / `IsPolynomialInVars` (variable handling), `SeparateFrac` (separating non-integer powers), `NormalizeDenominators` (making denominators monic), `GetIntOrRatPower` (power classification), and `GatherByDenominator` (grouping terms by denominator structure).

- **`tools_parallel.m`** — Parallelization infrastructure via file-based inter-kernel communication. `ComputeParallel` distributes independent computations (residue evaluations or basis contributions) across Mathematica subkernels using disk-based `.mx` file exchange for efficiency with large symbolic expressions.

## Algorithm overview

### Univariate

For a rational function with factorized denominators $\prod (x - a_i)^{m_i}$, LinApart computes residues at each pole via derivatives of a generating function (Extended Laurent Series method). For irreducible polynomial denominators, LinApart2 extends this using polynomial remainder arithmetic modulo the irreducible factor (Euclidean method).

### Multivariate (LinApart3)

For linear denominators in $n$ variables, the algorithm proceeds in three steps:

1. **Null-space elimination**: Linear dependencies among denominators are found via null spaces of the extended coefficient matrix. One-operators constructed from these relations recursively reduce the number of denominators per term until all remaining denominators are linearly independent.

2. **Numerator expansion**: Variable-dependent numerators are eliminated by expanding in denominator coordinates (the coordinate system defined by each basis of $n$ linearly independent denominators).

3. **Basis residues**: For each $n$-element basis, a coordinate transformation maps the intersection point to the origin, and partial fraction coefficients are extracted via the multivariate Grothendieck residue formula — the direct generalization of the univariate Laurent series residues.

For non-linear denominators, the Leinartas and Gröbner methods provide general-purpose alternatives.
