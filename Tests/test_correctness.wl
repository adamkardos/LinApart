(* ::Package:: *)

(* ========================================================================================= *)
(*                                  LINAPART CORRECTNESS TESTS                               *)
(* ========================================================================================= *)
(*
   Main correctness / regression test runner for the LinApart package.

   This file is intended to be the primary CI entry point.

   It:
     1. loads the package,
     2. loads the example data,
     3. loads the test helper functions,
     4. runs all correctness-oriented sections,
     5. prints section summaries and a final summary,
     6. exits with a nonzero status in script mode if any test fails.
*)
(* ========================================================================================= *)


(* ::Subsection::Closed:: *)
(*Loading*)


(* ============================================== *)
(*                 LOAD FILES                     *)
(* ============================================== *)

testDirectory = If[$Notebooks, NotebookDirectory[], Directory[]];

Get[testDirectory <> "../Mathematica/LinApart.m"];
Get[testDirectory <> "examples.m"];
Get[testDirectory <> "tools_test.m"];


(* ::Subsection::Closed:: *)
(*Single-variable*)


(* ============================================== *)
(*           SECTION 1: SINGLE VARIABLE           *)
(* ============================================== *)

Print[""];
Print["============================================"];
Print["  SECTION 1: Single-Variable Tests         "];
Print["============================================"];

Results1D = MapIndexed[
    {TestLinApart1D[#1], First[#2]} &,
    TestData1D
];

Summary1D = SectionSummary["Section 1", Results1D, TestData1D];


(* ::Subsection::Closed:: *)
(*MultivariableResidue*)


(* ============================================== *)
(*      SECTION 2: MULTIVARIATE RESIDUE           *)
(* ============================================== *)

Print[""];
Print["============================================"];
Print["  SECTION 2: Multivariate Linear Denoms    "];
Print["============================================"];

ResultsMVResidue = MapIndexed[
    {TestLinApartMV[#1], First[#2]} &,
    TestDataMVLinear
];

SummaryMVResidue = SectionSummary["Section 2", ResultsMVResidue, TestDataMVLinear];


(* ::Subsection::Closed:: *)
(*Leinartas*)


(* ============================================== *)
(*        SECTION 3: LEINARTAS METHOD             *)
(* ============================================== *)

Print[""];
Print["============================================"];
Print["  SECTION 3: Leinartas Linear Denoms       "];
Print["============================================"];

ResultsLeinartasLinear = MapIndexed[
    {TestLinApartMV[#1], First[#2]} &,
    Map[Append[#, "Method" -> "Leinartas"] &, TestDataMVLinear]
];

SummaryLeinartasLinear = SectionSummary["Section 3", ResultsLeinartasLinear, TestDataMVLinear];

Print[""];
Print["============================================"];
Print["  SECTION 4: Leinartas Non-Linear Denoms   "];
Print["============================================"];

ResultsLeinartasNonLinear = MapIndexed[
    {TestLinApartMV[#1], First[#2]} &,
    Map[Append[#, "Method" -> "Leinartas"] &, TestDataMVNonLinear]
];

SummaryLeinartasNonLinear = SectionSummary["Section 4", ResultsLeinartasNonLinear, TestDataMVNonLinear];


(* ::Subsection::Closed:: *)
(*Groebner*)


(* ============================================== *)
(*         SECTION 5: GROEBNER METHOD             *)
(* ============================================== *)

Print[""];
Print["============================================"];
Print["  SECTION 5: Groebner Linear Denoms        "];
Print["============================================"];

ResultsGroebnerLinear = MapIndexed[
    {TestLinApartMV[#1], First[#2]} &,
    Map[Append[#, "Method" -> "Groebner"] &, TestDataMVLinear]
];

SummaryGroebnerLinear = SectionSummary["Section 5", ResultsGroebnerLinear, TestDataMVLinear];

Print[""];
Print["============================================"];
Print["  SECTION 6: Groebner Non-Linear Denoms    "];
Print["============================================"];

ResultsGroebnerNonLinear = MapIndexed[
    {TestLinApartMV[#1], First[#2]} &,
    Map[Append[#, "Method" -> "Groebner"] &, TestDataMVNonLinear]
];

SummaryGroebnerNonLinear = SectionSummary["Section 6", ResultsGroebnerNonLinear, TestDataMVNonLinear];


(* ::Subsection::Closed:: *)
(*Options*)


(* ============================================== *)
(*         SECTION 7: METHOD / OPTION TESTS       *)
(* ============================================== *)

Print[""];
Print["============================================"];
Print["  SECTION 7: Method and Option Tests       "];
Print["============================================"];

ResultsMethods = MapIndexed[
    Module[
        {
            test = #1,
            idx = First[#2]
        },
        {
            Which[
                MatchQ[test[[3]], _Symbol],
                    TestLinApart1D[test],
                MatchQ[test[[3]], _List],
                    TestLinApartMV[test],
                True,
                    0
            ],
            idx
        }
    ] &,
    TestDataMethodsAll
];

SummaryMethods = SectionSummary["Section 7", ResultsMethods, TestDataMethodsAll];


(* ::Subsection::Closed:: *)
(*Robustness*)


(* ============================================== *)
(*         SECTION 8: ROBUSTNESS TESTS            *)
(* ============================================== *)

Print[""];
Print["============================================"];
Print["  SECTION 8: Robustness Tests              "];
Print["============================================"];

ResultsRobust = MapIndexed[
    {TestLinApartRobust[#1], First[#2]} &,
    TestDataRobust
];

SummaryRobust = SectionSummary["Section 8", ResultsRobust, TestDataRobust];


(* ::Subsection::Closed:: *)
(*Errors*)


(* ============================================== *)
(*         SECTION 9: ERROR HANDLING              *)
(* ============================================== *)

Print[""];
Print["============================================"];
Print["  SECTION 9: Error Handling                "];
Print["============================================"];

ResultsError = MapIndexed[
    {TestLinApartError[#1], First[#2]} &,
    TestDataError
];

SummaryError = SectionSummary["Section 9", ResultsError, TestDataError];


(* ::Subsection::Closed:: *)
(*Parallel*)


(* ============================================== *)
(*         SECTION 10: PARALLEL TESTS             *)
(* ============================================== *)

Print[""];
Print["============================================"];
Print["  SECTION 10: Parallel Tests               "];
Print["============================================"];

If[Length[Kernels[]] === 0,
    Print["  Launching 2 kernels..."];
    LaunchKernels[2];
];

ResultsParallel = MapIndexed[
    {TestLinApartParallel[#1], First[#2]} &,
    TestDataParallel
];

SummaryParallel = SectionSummary["Section 10", ResultsParallel, TestDataParallel];

CloseKernels[];



