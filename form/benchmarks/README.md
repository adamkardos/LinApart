# Double-Pentagon Benchmark Suite

A small, self-checking subset of the two-loop nonplanar five-point
**double-pentagon** dlog-basis IBP coefficient matrix. Six matrix 
entries, each provided for both decomposition branches (12 `.frm` files), 
chosen to span complexity and exercise both branch regimes while staying 
**fast**. The whole suite runs in about a minute and a half; the heaviest 
single entry is ~30 s.

## Source and citation

The rational functions are entries of the analytic IBP coefficient
matrix produced in:

> D. Bendle, J. Böhm, W. Decker, A. Georgoudis, F.-J. Pfreundt,
> M. Rahn, P. Wasser, Y. Zhang, *"Integration-by-parts reductions of
> Feynman integrals using Singular and GPI-Space"*, JHEP **02** (2020)
> 079, [arXiv:1908.04301](https://arxiv.org/abs/1908.04301) [hep-th],
> Section 6.

**Please cite Bendle et al. if you use these inputs.** Coordinates are
Bendle's rescaled Mandelstams ($s_{12}\to 1$): the active variables are
`eps`, `c2 = s23/s12`, `c3 = s34/s12`, `c4 = s45/s12`, `c5 = s15/s12`.
The parity-odd Levi-Civita prefactor `eps5` follows J. Böhm, M. Wittmann,
Z. Wu, Y. Xu, Y. Zhang, *"IBP reduction coefficients made simple"*, JHEP
**12** (2020) 054, [arXiv:2008.13194](https://arxiv.org/abs/2008.13194)
[hep-ph], Eq. (4.7); it is a spectator.

## The cells

| Cell | Tier | #den | max mult | determinant | cover-first cache | what it shows |
|---|---|---:|---:|---:|---:|---|
| (17,27) | smoke | 2 | 1 | 0.01 s | 0.02 s | minimal partial fraction |
| (12,22) | smoke | 9 | 2 | 0.06 s | 0.07 s | the median matrix entry |
| (3,89) | smoke | 11 | 3 | 1.6 s | 0.5 s | cleanest cache win (~3×) |
| (6,81) | crossover | 12 | 3 | 2.3 s | 3.6 s | determinant branch wins (~1.6×) |
| (5,82) | scaling | 13 | 3 | 7.9 s | 6.2 s | cache wins, sum_m 24 |
| (14,75) | scaling | 15 | 4 | 29 s | 24 s | heaviest here; cache wins ~20% |

Timings are wall-clock on an AMD Ryzen 9 5900XT (FORM 5.0.0,
`tform -w16`); each file's header carries its own determinant/cache and
Phase 1/Phase 2 breakdown.

Together the six exercise both branch regimes: the cover-first cache
wins cheaply on `(3,89)`, moderately on `(5,82)`, and by ~20% on the
heavier `(14,75)`, while the crossover entry `(6,81)` is faster under the
determinant branch.

## Running

Each file is a **self-contained, self-checking FORM program** — no
`check.rb` (or any other external test harness) is needed. It substitutes
large primes for all variables and verifies the round-trip inside FORM:
on success it prints `ROUNDTRIP OK` and exits 0; on a mismatch it prints
`ROUNDTRIP FAILED …` and exits nonzero (`#terminate`).

The library header `formapart.h` and `declare-formapart.h`, that it `#include`s,
must be on the FORM include path or copy it into this directory.

- Run one entry directly:

  ```
  tform -w16 entry_03_089_cache.frm
  ```

- Run the whole suite (or a chosen subset) with the bundled script, which
  reports pass/fail per file from the exit codes:

  ```
  ./run.sh                                          # all 12 files
  ./run.sh entry_17_027_*.frm entry_03_089_*.frm    # a subset
  FORM=form THREADS=1 ./run.sh                       # serial FORM
  ```

  The heaviest entry, `entry_14_075_*`, is ~30 s per branch;
  `entry_05_082_*` ~8 s, `entry_06_081_*` ~4 s, and the three smoke cells
  finish in well under a second. The whole suite is ~1.5 min.

The determinant branch is selected by `APuseGlobalNullRelations 0`
(cofactor expansion); the cover-first cache by `APuseGlobalNullRelations
1`. Both flags are set in-file, so the `_det_` and `_cache_` variants of
a cell differ only in that one line.

## Full data

`all_cell_timings.csv` in this directory holds the determinant and cache
wall time plus the Phase 1 / Phase 2 split and peak term count for **all
2743 in-scope cells** of the matrix.
