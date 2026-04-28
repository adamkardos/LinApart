(* ::Package:: *)

(* ========================================================================================= *)
(*                                   LINAPART COVERAGE TESTS                                 *)
(* ========================================================================================= *)
(*
   Coverage-oriented test runner for the LinApart package.

   This file:
     1. loads the Instrumentation` package,
     2. creates an instrumented copy of the Mathematica source tree,
     3. loads the instrumented LinApart package inside CoverageEvaluate,
     4. runs ALL correctness tests to exercise as many code paths as possible,
     5. prints section and final summaries,
     6. generates an lcov coverage report with line-by-line detail.

   Important:
     - ALL code that references LinApart (including test helpers, dispatchers,
       and the test data definitions) must be loaded INSIDE CoverageEvaluate,
       AFTER Needs["LinApart`"]. Otherwise Global`LinApart is created and
       shadows LinApart`LinApart.
     - The CoverageData variables are just aliases for the TestData variables
       defined in examples.m, created inside CoverageEvaluate after loading.
*)
(* ========================================================================================= *)


(* ::Subsection:: *)
(*Instrumentation setup*)


(* ============================================== *)
(*           LOAD INSTRUMENTATION PACKAGE         *)
(* ============================================== *)

Needs["Instrumentation`"]

(* ============================================== *)
(*              DEFINE DIRECTORIES                *)
(* ============================================== *)

testDirectory = If[$Notebooks, NotebookDirectory[], Directory[]];
sourceDirectory = ExpandFileName[
    FileNameJoin[{testDirectory, "..", "Mathematica"}]];

instrumentedDirectory = FileNameJoin[{testDirectory, "coverageInstrumented"}];
originalDirectory = FileNameJoin[{instrumentedDirectory, "LinApart_original", "LinApart"}];
coverageDirectory = FileNameJoin[{instrumentedDirectory, "LinApart_coverage", "LinApart"}];

(* ============================================== *)
(*        CLEAN AND CREATE DIRECTORIES            *)
(* ============================================== *)

Quiet[If[DirectoryQ[instrumentedDirectory],
    DeleteDirectory[instrumentedDirectory, DeleteContents -> True]]];

CreateDirectory[originalDirectory, CreateIntermediateDirectories -> True];

(* ============================================== *)
(*              COPY ALL SOURCE FILES             *)
(* ============================================== *)

sourceFiles = FileNames["*.m", sourceDirectory];

Do[
    CopyFile[f, FileNameJoin[{originalDirectory, FileNameTake[f]}]],
    {f, sourceFiles}
];

Print["Source files: ", FileNameTake /@ sourceFiles];
Print["Copied files: ", FileNameTake /@ FileNames["*.m", originalDirectory]];

(* ============================================== *)
(*              INSTRUMENT ALL FILES              *)
(* ============================================== *)

baselineData = CoverageInstrument[originalDirectory, coverageDirectory];

(* ============================================== *)
(*       SET UP $Path FOR INSTRUMENTED CODE       *)
(* ============================================== *)

PrependTo[$Path, coverageDirectory];

Print["FindFile: ", FindFile["LinApart`"]];


(* ::Subsection:: *)
(*Run all tests under CoverageEvaluate*)


(* ============================================== *)
(*        ALL TESTS INSIDE CoverageEvaluate       *)
(* ============================================== *)

{AllResults, CoverageDataAll} = CoverageEvaluate[

    (* ---------------------------------------------- *)
    (*  Load package, examples, and test tools        *)
    (* ---------------------------------------------- *)

    Needs["LinApart`"];
    Get[FileNameJoin[{testDirectory, "examples.m"}]];
    Get[FileNameJoin[{testDirectory, "tools_test.m"}]];


    (* ---------------------------------------------- *)
    (*  Section 1: Single-Variable                    *)
    (* ---------------------------------------------- *)

    Print[""];
    Print["============================================"];
    Print["  COVERAGE SECTION 1: Single-Variable      "];
    Print["============================================"];

    Results1D = MapIndexed[
        {TestLinApart1D[#1], First[#2]} &,
        TestData1D
    ];

    Summary1D = SectionSummary["Coverage Section 1", Results1D, TestData1D];


    (* ---------------------------------------------- *)
    (*  Section 2: Multivariate Residue               *)
    (* ---------------------------------------------- *)

    Print[""];
    Print["============================================"];
    Print["  COVERAGE SECTION 2: MV Residue           "];
    Print["============================================"];

    ResultsMVResidue = MapIndexed[
        {TestLinApartMV[#1], First[#2]} &,
        TestDataMVLinear
    ];

    SummaryMVResidue = SectionSummary["Coverage Section 2", ResultsMVResidue, TestDataMVLinear];


    (* ---------------------------------------------- *)
    (*  Section 3: Leinartas Linear                   *)
    (* ---------------------------------------------- *)

    Print[""];
    Print["============================================"];
    Print["  COVERAGE SECTION 3: Leinartas Linear     "];
    Print["============================================"];

    ResultsLeinartasLinear = MapIndexed[
        {TestLinApartMV[#1], First[#2]} &,
        Map[Append[#, "Method" -> "Leinartas"] &, TestDataMVLinear]
    ];

    SummaryLeinartasLinear = SectionSummary["Coverage Section 3", ResultsLeinartasLinear, TestDataMVLinear];


    (* ---------------------------------------------- *)
    (*  Section 4: Leinartas Non-Linear               *)
    (* ---------------------------------------------- *)

    Print[""];
    Print["============================================"];
    Print["  COVERAGE SECTION 4: Leinartas Non-Linear "];
    Print["============================================"];

    ResultsLeinartasNonLinear = MapIndexed[
        {TestLinApartMV[#1], First[#2]} &,
        Map[Append[#, "Method" -> "Leinartas"] &, TestDataMVNonLinear]
    ];

    SummaryLeinartasNonLinear = SectionSummary["Coverage Section 4", ResultsLeinartasNonLinear, TestDataMVNonLinear];


    (* ---------------------------------------------- *)
    (*  Section 5: Groebner Linear                    *)
    (* ---------------------------------------------- *)

    Print[""];
    Print["============================================"];
    Print["  COVERAGE SECTION 5: Groebner Linear      "];
    Print["============================================"];

    ResultsGroebnerLinear = MapIndexed[
        {TestLinApartMV[#1], First[#2]} &,
        Map[Append[#, "Method" -> "Groebner"] &, TestDataMVLinear]
    ];

    SummaryGroebnerLinear = SectionSummary["Coverage Section 5", ResultsGroebnerLinear, TestDataMVLinear];


    (* ---------------------------------------------- *)
    (*  Section 6: Groebner Non-Linear                *)
    (* ---------------------------------------------- *)

    Print[""];
    Print["============================================"];
    Print["  COVERAGE SECTION 6: Groebner Non-Linear  "];
    Print["============================================"];

    ResultsGroebnerNonLinear = MapIndexed[
        {TestLinApartMV[#1], First[#2]} &,
        Map[Append[#, "Method" -> "Groebner"] &, TestDataMVNonLinear]
    ];

    SummaryGroebnerNonLinear = SectionSummary["Coverage Section 6", ResultsGroebnerNonLinear, TestDataMVNonLinear];


    (* ---------------------------------------------- *)
    (*  Section 7: Method / Option Tests              *)
    (* ---------------------------------------------- *)

    Print[""];
    Print["============================================"];
    Print["  COVERAGE SECTION 7: Methods / Options    "];
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

    SummaryMethods = SectionSummary["Coverage Section 7", ResultsMethods, TestDataMethodsAll];


    (* ---------------------------------------------- *)
    (*  Section 8: Robustness                         *)
    (* ---------------------------------------------- *)

    Print[""];
    Print["============================================"];
    Print["  COVERAGE SECTION 8: Robustness           "];
    Print["============================================"];

    ResultsRobust = MapIndexed[
        {TestLinApartRobust[#1], First[#2]} &,
        TestDataRobust
    ];

    SummaryRobust = SectionSummary["Coverage Section 8", ResultsRobust, TestDataRobust];


    (* ---------------------------------------------- *)
    (*  Section 9: Error Handling                     *)
    (* ---------------------------------------------- *)

    Print[""];
    Print["============================================"];
    Print["  COVERAGE SECTION 9: Error Handling       "];
    Print["============================================"];

    ResultsError = MapIndexed[
        {TestLinApartError[#1], First[#2]} &,
        TestDataError
    ];

    SummaryError = SectionSummary["Coverage Section 9", ResultsError, TestDataError];


    (* ---------------------------------------------- *)
    (*  Final Summary                                 *)
    (* ---------------------------------------------- *)

    FinalSummary[<|
        "1D"                  -> Summary1D,
        "MV Residue"          -> SummaryMVResidue,
        "Leinartas Linear"    -> SummaryLeinartasLinear,
        "Leinartas NonLinear" -> SummaryLeinartasNonLinear,
        "Groebner Linear"     -> SummaryGroebnerLinear,
        "Groebner NonLinear"  -> SummaryGroebnerNonLinear,
        "Methods/Options"     -> SummaryMethods,
        "Robustness"          -> SummaryRobust,
        "Error Handling"      -> SummaryError
    |>];

];


(* ::Subsection:: *)
(*Coverage Report Generation*)


(* ============================================== *)
(*           GENERATE LCOV REPORT                 *)
(* ============================================== *)

Print[""];
Print["============================================"];
Print["  Generating coverage report...             "];
Print["============================================"];

(* Write baseline and run lcov files *)
CoverageProcess[baselineData, coverageDirectory, "coverage-baseline.lcov"];
CoverageProcess[CoverageDataAll, coverageDirectory, "coverage-run.lcov"];

(* Verify the lcov files were created *)
Print["Baseline lcov exists: ", FileExistsQ[FileNameJoin[{coverageDirectory, "coverage-baseline.lcov"}]]];
Print["Run lcov exists: ", FileExistsQ[FileNameJoin[{coverageDirectory, "coverage-run.lcov"}]]];

(* Combine baseline and run data *)
lcovResult = RunProcess[{
    "lcov",
    "-a", FileNameJoin[{coverageDirectory, "coverage-baseline.lcov"}],
    "-a", FileNameJoin[{coverageDirectory, "coverage-run.lcov"}],
    "-o", FileNameJoin[{coverageDirectory, "coverage-combined.lcov"}]
}];

Print["lcov exit code: ", lcovResult["ExitCode"]];
If[lcovResult["StandardError"] =!= "",
    Print["lcov stderr: ", lcovResult["StandardError"]]
];

(* Generate HTML report *)
genhtmlResult = RunProcess[{
    "genhtml",
    "--num-spaces", "4",
    FileNameJoin[{coverageDirectory, "coverage-combined.lcov"}],
    "-o", FileNameJoin[{coverageDirectory, "report"}]
}];

Print["genhtml exit code: ", genhtmlResult["ExitCode"]];
If[genhtmlResult["StandardError"] =!= "",
    Print["genhtml stderr: ", genhtmlResult["StandardError"]]
];

(* Report location *)
Print[""];
Print["============================================"];
Print["  COVERAGE OUTPUT                          "];
Print["============================================"];
Print["  Instrumented source directory:"];
Print["    ", instrumentedDirectory];
Print["  Coverage report:"];
Print["    ", FileNameJoin[{coverageDirectory, "report", "index.html"}]];
Print["  Report exists: ", FileExistsQ[FileNameJoin[{coverageDirectory, "report", "index.html"}]]];
Print["============================================"];
