# LinApart

LinApart is a Wolfram Mathematica package for efficient partial fraction decomposition of symbolic expressions arising in perturbative Quantum Field Theory.

The package provides three methods:

- **LinApart** (univariate): closed-form residue formula for denominators factorized into linear factors. Described in [arXiv:2405.20130](https://arxiv.org/abs/2405.20130).
- **LinApart2** (univariate): extension to irreducible polynomial denominators of arbitrary degree using elements of Galois theory. Described in [arXiv:2511.15735](https://arxiv.org/abs/2511.15735).
- **LinApart3** (multivariate): partial fraction decomposition for rational functions with linear denominators in multiple variables via null-space elimination and basis residues. Paper in preparation.

Additionally, two general-purpose multivariate methods are available:
- **Leinartas**: Leinartas' decomposition using polynomial ideal reduction.
- **Gröbner**: Gröbner basis approach for general polynomial denominators.

A C language implementation of the univariate linear-denominator algorithm is also provided (standalone executable and linkable library).

If you find this package useful in your research, please cite the relevant article(s).

## Installation

1. Clone the repository:
    ```
    git clone https://github.com/fekeshazy/LinApart.git
    ```

2. Navigate to the project directory:
    ```
    cd LinApart
    ```

### Mathematica

Copy the contents of the `Mathematica/` directory to a location on your Mathematica `$Path`, or add the directory to `$Path` manually. The package is loaded with:

```mathematica
Needs["LinApart`"]
```

The package requires no external dependencies beyond a standard Mathematica installation.

### C

See the `C/` directory for build instructions. Requires GCC, GNU Make, and the [GMP library](https://gmplib.org/).

## Usage

### Univariate decomposition

```mathematica
LinApart[expr, x]
```

Decomposes `expr` into partial fractions with respect to the variable `x`.

```mathematica
(* Basic example *)
LinApart[1/((x + 1)(x + 2)(x + 3)), x]

(* With factoring enabled *)
LinApart[1/(x^4 - 1), x, "Factor" -> True]

(* With Gaussian integers *)
LinApart[1/((1 + x)(1 + x^2)), x, "Factor" -> True, "GaussianIntegers" -> True]

(* Choosing method explicitly *)
LinApart[1/((x^2 + 1)(x + 2)), x, "Method" -> "Euclidean"]
```

### Multivariate decomposition

```mathematica
LinApart[expr, {x, y, ...}]
```

Decomposes `expr` into partial fractions with respect to all specified variables simultaneously. Each term in the result contains at most $n$ distinct linear denominator factors for $n$ variables, with no spurious denominators introduced.

```mathematica
(* Basic 2D example *)
LinApart[1/(x y (x + y - 1)), {x, y}]

(* 3D with symbolic coefficients *)
LinApart[1/((s - x)(t - y)(s + t - x - y - 1)), {x, y}]

(* Non-linear denominators via Leinartas method *)
LinApart[1/((x^2 + y^2)(x^2 + y^2 + 1)), {x, y}, "Method" -> "Leinartas"]

(* Gröbner basis method *)
LinApart[1/(x y (x + y)), {x, y}, "Method" -> "Groebner"]
```

### Options

| Option | Default | Description |
|--------|---------|-------------|
| `"Factor"` | `True` | Factor each additive term before decomposition |
| `"GaussianIntegers"` | `True` | Factor over Gaussian integers (requires `"Factor" -> True`) |
| `"Extension"` | `{}` | Algebraic extensions for factoring (e.g., `{Sqrt[2]}`) |
| `"Method"` | `Automatic` | Decomposition method (see below) |
| `"Parallel"` | `{False, 2, $TemporaryDirectory}` | Parallelize residue computation: `{True/False, nCores, path}` |
| `"PreCollect"` | `False` | Gather terms by variable-dependent structure before decomposition |
| `"ApplyAfterPreCollect"` | `None` | Function applied to collected coefficients (e.g., `Factor`) |
| `"IterativeGroebner"` | `True` | Use iterative Gröbner basis computation (Gröbner method only) |

### Available methods

**Univariate** (variable is a `Symbol`):
- `"ExtendedLaurentSeries"` — closed-form residue formula (default for linear denominators)
- `"Euclidean"` — extended GCD / Bézout's identity
- `"EquationSystem"` — falls back to Mathematica's `Apart`

**Multivariate** (variable is a `List`):
- `"MultivariateResidue"` — null-space elimination + basis residues (default, linear denominators only)
- `"Leinartas"` — Leinartas' decomposition via polynomial ideal reduction (general denominators)
- `"Groebner"` — Gröbner basis approach (general denominators)

For more examples, see the `Examples/` directory.

## Testing

The package includes a comprehensive test suite in the `Tests/` directory. See [`Tests/README.md`](Tests/README.md) for details.

Quick start:
```bash
# Run correctness tests from the command line
cd Tests
math -script test_correctness.wl
```

Or open `test_correctness.wl` in a Mathematica notebook and evaluate all cells.

## Repository structure

```
LinApart/
├── Mathematica/          Wolfram Mathematica package source
├── C/                    C standalone executable and library
├── Examples/             Usage examples (Mathematica notebooks)
├── Tests/                Test suite (correctness, coverage, profiling)
├── .gitignore
└── README.md
```

See [`Mathematica/README.md`](Mathematica/README.md) and [`Tests/README.md`](Tests/README.md) for details on each directory.

## Contributing

Contributions are welcome. If you find any issues or have suggestions for improvement, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License.
