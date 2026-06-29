*=====================================================================
* LinApart3 benchmark suite -- double-pentagon dlog-basis IBP
* coefficient matrix, entry (14,75).  Runs the determinant branch.
*
* INPUT SOURCE (the rational function below is entry (14,75) of the
* analytic IBP coefficient matrix produced in:
*   D. Bendle, J. Boehm, W. Decker, A. Georgoudis, F.-J. Pfreundt,
*   M. Rahn, P. Wasser, Y. Zhang, "Integration-by-parts reductions of
*   Feynman integrals using Singular and GPI-Space",
*   JHEP 02 (2020) 079, arXiv:1908.04301 [hep-th]; Section 6, the
*   two-loop nonplanar five-point double-pentagon worked example.
* Coordinates are Bendle's rescaled Mandelstams (s12 -> 1): the active
* variables are eps, c2 = s23/s12, c3 = s34/s12, c4 = s45/s12,
* c5 = s15/s12.  The parity-odd Levi-Civita prefactor eps5 follows
*   J. Boehm, M. Wittmann, Z. Wu, Y. Xu, Y. Zhang, "IBP reduction
*   coefficients made simple", JHEP 12 (2020) 054, arXiv:2008.13194
*   [hep-ph], Eq. (4.7); it rides through the decomposition unchanged.
* Please cite Bendle et al. (arXiv:1908.04301) if you use this input.
*
* ENTRY STRUCTURE: 15 distinct linear denominators, maximum
* multiplicity 4 (benchmark power index sum_m = 28).
*
* TIMING (this entry; AMD Ryzen 9 5900XT, FORM 5.0.0, tform -w16,
* wall-clock.  Phase 1 = null-relation elimination, Phase 2 = basis
* identification + residues):
*   determinant branch : 29.15 s  (Phase 1 21.10 s, Phase 2 7.25 s)
*   cover-first cache   : 23.78 s  (Phase 1 12.17 s, Phase 2 10.41 s)
* This file runs the determinant branch (APuseGlobalNullRelations = 0).
*
* SELF-CHECK (no check.rb needed): the program substitutes large primes
* for all variables and verifies the round-trip inside FORM. If the
* residual NumDiff is nonzero it prints ROUNDTRIP FAILED and #terminates
* (nonzero exit code); otherwise it prints ROUNDTRIP OK. Run directly:
*   tform -w16 entry_14_075_det.frm
* The library header formapart.h, and the declare-formapart.h that
* it #includes, must both be on the FORM include path (copy both
* into this folder, or pass -I <path-to-src>).
*=====================================================================
#include formapart.h
*
#Redefine APglobalOrder "0"
#Redefine APuseGlobalNullRelations "0"
*
#define Vars "eps,c2,c3,c4,c5"
#define Params "eps5"
*
cfunction den;
symbols eps,c2,c3,c4,c5,eps5;
symbol aux1;
*
local Finput =
    den(c2)^2 *
    den(1 + c2)^2 *
    den(c3)^2 *
    den(1 + c2 - c4)^2 *
    den(-1 + c4)^4 *
    den(c4) *
    den(-1 + c3 + c4)^2 *
    den(c3 + c4)^2 *
    den(-1 + c3 - c5)^2 *
    den(c2 + c3 - c5) *
    den(c2 - c4 - c5)^2 *
    den(-1 + eps) *
    den(-1 + 2*eps)^2 *
    den(-1 + 3*eps) *
    den(-1 + 4*eps);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#message PHASEMARK START
#call ApartMultiLinApart(den,eps,c2,c3,c4,c5)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
* --- in-FORM self-check: the round-trip residual must vanish ---
* --- (no check.rb needed; (t)form alone reports pass/fail) ---
#$residual = nterms_(NumDiff);
#if ( `$residual' != 0 )
  #message ROUNDTRIP FAILED -- dpentagon entry (14,75) determinant: NumDiff has `$residual' surviving term(s)
  #terminate
#endif
#message ROUNDTRIP OK -- dpentagon entry (14,75) determinant (NumDiff = 0)
print +ss;
.end
