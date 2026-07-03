#include- declare-formapart.h
*
***************************
* PREPROCESSOR VARIABLES: *
***************************
*{{{ ApartIncrementPreprocCounter
#procedure ApartIncrementPreprocCounter(PreprocVar)
  #redefine `PreprocVar' "{``PreprocVar''+1}"
#endprocedure
*}}}
*
*{{{ ApartCountItemsInPreprocList
#procedure ApartCountItemsInPreprocList(PreprocListID,CountVar)
  #redefine `CountVar' "0"
  #Do item={``PreprocListID'',}
    #If ("`item'" != "")
      #redefine `CountVar' "{``CountVar''+1}"
    #EndIf
  #EndDo
#endprocedure
*}}}
*
*{{{ ApartNumericCheck
#procedure ApartNumericCheck(DiffExprID,Expr1ID,Expr2ID,DenFuncID,Variables,Parameters,Sym1)
  local `DiffExprID' = `Expr1ID' - `Expr2ID';
  .sort
  #Define NumberOfVariables ""
  #call ApartCountItemsInPreprocList(`Variables',NumberOfVariables)
  #Define NumberOfExtraParameters ""
  #call ApartCountItemsInPreprocList(`Parameters',NumberOfExtraParameters)
  #Define iVar "0"
  #Do Var={``Variables'',``Parameters''}
    #If ("`Var'" != "")
      #Redefine iVar "{`iVar'+1}"
      multiply replace_(`Var',prime_(`iVar'));
      Argument;
        id `DenFuncID'(`Sym1'?number_) = 1/`Sym1';
      EndArgument;
      id `DenFuncID'(`Sym1'?number_) = 1/`Sym1';
      .sort:`Var' substituted;
    #EndIf
  #EndDo
#endprocedure
*}}}
*
**********************
* VARIABLE PRESENCE: *
**********************
*{{{ ApartGetPresentVariablesWithPowersFromSet
#procedure ApartGetPresentVariablesWithPowersFromSet(VarFuncID,PowFuncID,SetID,FirstIndex,LastIndex,Sym1)
  Multiply `VarFuncID'*`PowFuncID';
  If (match(`Sym1'?`SetID') > 0);
    Do $cnt=`FirstIndex',`LastIndex';
      $pow = count_(`SetID'[$cnt],1);
      If ($pow > 0);
        id `VarFuncID'(?a)*`PowFuncID'(?b) = `VarFuncID'(?a,$cnt)*`PowFuncID'(?b,$pow);
      EndIf;
    EndDo;
    ModuleOption,Local,$pow,$cnt;
  EndIf;
#endprocedure
*}}}
*
*{{{ ApartZeroPadFunctionArgumentsWithSymbolList
#procedure ApartZeroPadFunctionArgumentsWithSymbolList(FuncID,AuxFuncID,Sym1,?symbols)
  If (count(`FuncID',1) > 0) Multiply `AuxFuncID';
  #Do Sym={`?symbols',}
    #If ("`Sym'" != "")
      id `AuxFuncID'(?a)*`FuncID'(`Sym',?b) = `AuxFuncID'(?a,`Sym')*`FuncID'(?b);
      also `AuxFuncID'(?a)*`FuncID'(`Sym1'?!{`Sym',},?b) = `AuxFuncID'(?a,0)*`FuncID'(`Sym1',?b);
      also `AuxFuncID'(?a)*`FuncID' = `AuxFuncID'(?a,0)*`FuncID';
    #EndIf
  #EndDo
  If (match(`FuncID'(`Sym1'?,?a)) > 0);
    Print "Term still contains non-zero arged `FuncID': %t";
    Print "ApartZeroPadFunctionArgumentsWithSymbolList";
    exit;
  EndIf;
  id `FuncID'*`AuxFuncID'(?a) = `FuncID'(?a);
#endprocedure
*}}}
*
*{{{ ApartCollectSymbolDependence
#procedure ApartCollectSymbolDependence(ExprID,CollectFuncID,?symbols)
  CreateSpectator,SymbolsExpr,"SymbolsExpr.spec";
  .sort:SymbolsExpr spec created;
  Bracket `?symbols';
  .sort
  Keep brackets;
  $TMP = 1;
  ModuleOption,Local,$TMP;
  #Do Sym={`?symbols',}
    #If ("`Sym'" != "")
      If (occurs(`Sym'));
        Inside $TMP;
          If (count(`CollectFuncID',1) == 0);
            Multiply `CollectFuncID'(`Sym');
          Else;
            id `CollectFuncID'(?a) = `CollectFuncID'(?a,`Sym');
          EndIf;
        EndInside;
      EndIf;
    #EndIf
  #EndDo
  Inside $TMP;
    If (count(`CollectFuncID',1) > 0) ToSpectator SymbolsExpr;
  EndInside;
  .sort:Syms collected;
  CopySpectator `ExprID' = SymbolsExpr;
  .sort:`ExprID' created;
  RemoveSpectator SymbolsExpr;
  .sort
  If (Expression(`ExprID')) DropCoefficient;
  .sort
#endprocedure
*}}}
*
*****************
* DENOMINATORS: *
*****************
*{{{ ApartConstructExtendedCoefficientMatrix
#procedure ApartConstructExtendedCoefficientMatrix(VectorID,TableID,FirstIndex,LastIndex,ListOfVariablesVar)
  #Do indx=`FirstIndex',`LastIndex'
    #$TMP = `VectorID'(`indx');
    #Define iVar "0"
    #Do var={``ListOfVariablesVar'',}
      #If ("`var'" != "")
        #call ApartIncrementPreprocCounter(iVar)
        #$div = div_(`$TMP',`var');
        Fill `TableID'(`indx',`iVar') = `$div';
        #$TMP = rem_(`$TMP',`var');
      #EndIf
    #EndDo
    Fill `TableID'(`indx',{`iVar'+1}) = `$TMP';
  #EndDo
#endprocedure
*}}}
*
*{{{ ApartOrderArgumentsAscendingIndex
#procedure ApartOrderArgumentsAscendingIndex(FuncID,IndexFuncID,OrderFuncID,ArgFuncID,Sym1,...,Sym4)
* This implement quick sort in a FORM specific way:
  If (match(`FuncID'(`Sym1'?,?a)) > 0);
    id,once `IndexFuncID'(`Sym1'?,?a)*`FuncID'(`Sym2'?,?b) = `IndexFuncID'(`ArgFuncID'(`Sym1',1,`Sym2'),?a)*`FuncID'(?b)
    ;
    Repeat;
      id `IndexFuncID'(?a,`ArgFuncID'(?b,`Sym1'?,`Sym2'?),`Sym3'?number_,?c)*`FuncID'(`Sym4'?,?d) = 
      `IndexFuncID'(?a,`ArgFuncID'(?b,`Sym1',`Sym2'),`ArgFuncID'(`Sym3',`Sym1'+1,`Sym4'),?c)*`FuncID'(?d)
    ;
    EndRepeat;
    Symmetrize `IndexFuncID';
    id `IndexFuncID'(?a) = `IndexFuncID'*`OrderFuncID'(?a);
    Repeat;
      id `OrderFuncID'(`ArgFuncID'(`Sym1'?,`Sym2'?,`Sym3'?),?a)*`IndexFuncID'(?b)*`FuncID'(?c) =
        `OrderFuncID'(?a)*`IndexFuncID'(?b,`Sym1')*`FuncID'(?c,`Sym3')
      ;
    EndRepeat;
    id `OrderFuncID' = 1;
  EndIf;
#endprocedure
*}}}
*
*{{{ ApartOrderFunctionsByLeadingZeros
#procedure ApartOrderFunctionsByLeadingZeros(SetID,FirstIndex,LastIndex,PresentFuncID,IndexFuncID,OrderFuncID,ArgFuncID,<Aux1FuncID>,...,<Aux4FuncID>,Sym1,...,Sym4)
  Multiply `IndexFuncID'*`PresentFuncID';
  #Do indx=`FirstIndex',`LastIndex'
    If (match(`SetID'[`indx'](?a)) > 0);
      id `SetID'[`indx'](?a)*`IndexFuncID'(?b)*`PresentFuncID'(?c) = 
        `SetID'[`indx'](?a)*`IndexFuncID'(?b,`ArgFuncID'(?a))*`PresentFuncID'(?c,`SetID'[`indx'])
      ;
    EndIf;
  #EndDo
  Argument `IndexFuncID';
    Repeat;
      id `ArgFuncID'(?a,`Sym1'?!{0,},?b) = `ArgFuncID'(?a);
    EndRepeat;
    Multiply replace_(`ArgFuncID',nargs_);
  EndArgument;
  #call ApartOrderArgumentsAscendingIndex(`PresentFuncID',`IndexFuncID',`OrderFuncID',`ArgFuncID',`Sym1',...,`Sym4')
#endprocedure
*}}}
*
*{{{ ApartGetBestDenominatorToReplace
#procedure ApartGetBestDenominatorToReplace(SetID,DensFuncID,MultFuncID,<Aux1FuncID>,...,<Aux6FuncID>,Sym1,...,Sym4)
  #If (("`APnumberOfDenominators'" == "") || (`APnumberOfDenominators' < 0))
    #write "For this we need to set the APnumberOfDenominators preproc variable!"
    #write "APnumberOfDenominators is >>>>`APnumberOfDenominators'<<<<"
    #terminate
  #EndIf
  #If (`APglobalOrder' == 0)
* Original approach with denominators ordered using local term-wise multiplicity:
    If ((count(`DensFuncID',1) == 0) && (count(`MultFuncID',1) == 0));
      #call ApartGetPresentVariablesWithPowersFromSet(`DensFuncID',`MultFuncID',`SetID',1,`APnumberOfDenominators',`Sym1')
      Repeat id `DensFuncID'(?a,`Sym1'?number_,?b) = `DensFuncID'(?a,`SetID'[`Sym1'],?b);
      #call ApartOrderArgumentsAscendingIndex(`DensFuncID',`MultFuncID',`Aux1FuncID',`Aux2FuncID',`Sym1',...,`Sym4')
      id `MultFuncID'(?a) = 1;
    Else;
    EndIf;
  #Else
    If (count(`DensFuncID',1) == 0);
      #call ApartGetPresentVariablesWithPowersFromSet(`Aux1FuncID',`MultFuncID',`SetID',1,`APnumberOfDenominators',`Sym1')
      id `MultFuncID'(?a) = 1;
      Multiply `Aux2FuncID'(<APpermTbl(1)>,...,<APpermTbl(`APnumberOfDenominators')>);
      id `Aux1FuncID'(?a)*`Aux2FuncID'(?b) = `Aux1FuncID'(?a,?b)*`Aux2FuncID'(?b);
      Repeat id `Aux1FuncID'(?a,`Sym1'?,?b,`Sym1'?,?c) = `Aux1FuncID'(?a,?b,?c);
      Repeat id `Aux1FuncID'(`Sym1'?,?a)*`Aux2FuncID'(?b,`Sym1'?,?c) = `Aux1FuncID'(?a)*`Aux2FuncID'(?b,?c);
      id `Aux1FuncID' = 1;
      Multiply replace_(`Aux2FuncID',`DensFuncID');
      Repeat id `DensFuncID'(?a,`Sym1'?number_,?b) = `DensFuncID'(?a,`SetID'[`Sym1'],?b);
    EndIf;
  #EndIf
#endprocedure
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix
#procedure ApartFromDenominatorsToExtendedCoeffMatrix(DensFuncID,DenSetID,RowFuncID,ColFuncID,ListOfVariablesVar,Sym1,Sym2)
  id `DensFuncID'(?a) = `DensFuncID'(?a)*`RowFuncID'(?a);
  Repeat id `RowFuncID'(?a,`Sym1'?`DenSetID'[`Sym2'?],?b) = `RowFuncID'(?a,`Sym2',?b);
  #Define nVar ""
  #call ApartCountItemsInPreprocList(`ListOfVariablesVar',nVar)
  Multiply `ColFuncID'(1,...,{`nVar'+1});
#endprocedure
*}}}
*
*{{{ ApartUpdateActiveDenominators
#procedure ApartUpdateActiveDenominators(FuncID,CollectFuncID,AuxFuncID,DenSetID,Sym1,Sym2)
* Dropping non-present denominators from the argument of `FuncID', if a `CollectFuncID'
* is also present the corresponding canonical position is flipped from one to zero:
  If (count(`FuncID',1) == 1);
    Multiply `AuxFuncID';
    Repeat;
      If (count(`FuncID',1) == 1);
        id `FuncID'(`Sym1'?$TMPden,?a) = `FuncID'(?a);
        If (match($TMPden) > 0);
          id `AuxFuncID'(?a) = `AuxFuncID'(?a,$TMPden);
        ElseIf (count(`CollectFuncID',1) > 0);
          $Position = `AuxFuncID'($TMPden);
          Inside $Position;
            id `AuxFuncID'(`Sym1'?`DenSetID'[`Sym2']) = `Sym2';
          EndInside;
          ModuleOption,Local,$Position;
          Transform,`CollectFuncID',replace($Position,$Position)=(1,0);
        EndIf;
      EndIf;
      id `FuncID' = 1;
    EndRepeat;
    Multiply replace_(`AuxFuncID',`FuncID');
    ModuleOption,local,$TMPden;
  ElseIf (count(`FuncID',1) > 1);
    Print "Only one `FuncID' is allowed...";
    Print "Term: %t";
    Print "ApartUpdateActiveDenominators";
    Exit;
  EndIf;
#endprocedure
*}}}
*
*{{{ ApartResolveDenominators
#procedure ApartResolveDenominators(UserDenFuncID)
  Repeat;
    id 1/APn1?APdensSet[APn2] = APdenTbl(APn2);
    id APn1?APdensSet[APn2] = `UserDenFuncID'(APdenTbl(APn2));
    Argument;
      id APn1?APdensSet[APn2] = `UserDenFuncID'(APdenTbl(APn2));
    EndArgument;
  EndRepeat;
  Multiply Replace_(APden,`UserDenFuncID');
#endprocedure
*}}}
*
*************
* MATRICES: *
*************
*{{{ ApartAdjugateMatrix
#procedure ApartAdjugateMatrix(dMat,SepChar,MatrixDimension,RowFuncID,ColFuncID,AuxFuncID,TableID,Sym1,...,Sym4)
  id `RowFuncID'(?a)*`ColFuncID'(?b) = `AuxFuncID'(`RowFuncID'(?a)*`ColFuncID'(?b));
  id `AuxFuncID'(`Sym1'?$RowsAndColumns) = `Sym1';
  ModuleOption,Local,$RowsAndColumns;
  #Do iRow=1,`MatrixDimension'
    #Do jCol=1,`MatrixDimension'
      $`dMat'`iRow'`SepChar'`jCol' = $RowsAndColumns;
      Inside $`dMat'`iRow'`SepChar'`jCol';
        Multiply (-1)^(`iRow'+`jCol');
        Transform,`RowFuncID',dropargs(`jCol',`jCol');
        Transform,`ColFuncID',dropargs(`iRow',`iRow');
        #call ApartDeterminantThruCofactorExpansion(`RowFuncID',`ColFuncID',`TableID',`AuxFuncID',`Sym1',`Sym2',`Sym3',`Sym4')
      EndInside;
      ModuleOption,Local,$`dMat'`iRow'`SepChar'`jCol';
    #EndDo
  #EndDo
#endprocedure
*}}}
*
*{{{ ApartInvertMatrix
#procedure ApartInvertMatrix(dMat,SepChar,MatrixDimension,dDeterminant,RowFuncID,ColFuncID,DenFuncID,AuxFuncID,TableID,Sym1,...,Sym4)
* `dDeterminant' holds the determinant to calculate the inverse we have to multiply
* by the inverse, in case of a multi-term determinant we need the `DenFuncID' wrapper!
  $NumTerms = nterms_($`dDeterminant');
  If ($NumTerms > 1);
    $InvDet = `DenFuncID'($`dDeterminant');
  ElseIf ($NumTerms == 1);
    $InvDet = 1/$`dDeterminant';
  Else;
    print "Zero determinant: %$",$`dDeterminant';
    print "ApartInvertMatrix";
    exit;
  EndIf;
  ModuleOption,Local,$NumTerms,$InvDet;
  #call ApartAdjugateMatrix(`dMat',`SepChar',`MatrixDimension',`RowFuncID',`ColFuncID',`AuxFuncID',`TableID',`Sym1',...,`Sym4')
  #Do iRow=1,`MatrixDimension'
    #Do jCol=1,`MatrixDimension'
      Inside $`dMat'`iRow'`SepChar'`jCol';
        Multiply $InvDet;
      EndInside;
    #EndDo
  #EndDo
#endprocedure
*}}}
*
*{{{ ApartFillLocalDollarMatrixWithTableElements
#procedure ApartFillLocalDollarMatrixWithTableElements(dMat,SepChar,RowFuncID,ColFuncID,TableID,AuxFuncID,MaxNumberOfRows,MaxNumberOfColumns,RestoreRowAndColumnFuncs,Sym1)
  If ((count(`RowFuncID',1) == 1) && (count(`ColFuncID',1) == 1));
* Getting numbers of rows and columns:
    id `RowFuncID'(?a) = `RowFuncID'(nargs_(?a),?a);
    id `ColFuncID'(?a) = `ColFuncID'(nargs_(?a),?a);
    id `RowFuncID'(`Sym1'?$nrows,?a) = `RowFuncID'(?a);
    id `ColFuncID'(`Sym1'?$ncols,?a) = `ColFuncID'(?a);
    ModuleOption,Local,$nrows,$ncols;
    #Do iRow=1,`MaxNumberOfRows'
      If (`iRow' <= $nrows);
        id `RowFuncID'(`Sym1'?$row`iRow',?a) = `RowFuncID'(?a);
        ModuleOption,Local,$row`iRow';
        #Do jCol=1,`MaxNumberOfColumns'
          If (`jCol' <= $ncols);
            #If (`iRow' == 1)
              id `ColFuncID'(`Sym1'?$col`jCol',?a) = `ColFuncID'(?a);
              ModuleOption,Local,$col`jCol';
            #EndIf
            $`dMat'`iRow'`SepChar'`jCol' = 1;
            ModuleOption,Local,$`dMat'`iRow'`SepChar'`jCol';
            Inside $`dMat'`iRow'`SepChar'`jCol';
              Multiply `TableID'($row`iRow',$col`jCol');
            EndInside;
          EndIf;
        #EndDo
      EndIf;
    #EndDo
    #If (`RestoreRowAndColumnFuncs' == 0)
      id `RowFuncID' = 1;
      id `ColFuncID' = 1;
    #Else
      #Do iRow=1,`MaxNumberOfRows'
        If (`iRow' <= $nrows);
          id,once `RowFuncID'(?a) = `RowFuncID'(?a,$row`iRow');
        EndIf;
      #EndDo
      #Do jCol=1,`MaxNumberOfColumns'
        If (`jCol' <= $ncols);
          id,once `ColFuncID'(?a) = `ColFuncID'(?a,$col`jCol');
        EndIf;
      #EndDo
    #EndIf
  EndIf;
#endprocedure
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows
#procedure ApartSwapLocalDollarMatrixRows(dMat,SepChar,dRowI,dRowJ,dFirstColumn,dLastColumn,MaxNumberOfRows,MaxNumberOfColumns)
* Only bother if the rows are genuinely different:
  If ($`dRowI' != $`dRowJ');
* Fixing the affected rows:
    #Do iRow=1,`MaxNumberOfRows'
      If (`iRow' == $`dRowI');
        #Do jRow=1,`MaxNumberOfRows'
          If (`jRow' == $`dRowJ');
            #Do kCol=1,`MaxNumberOfColumns'
* Restrict to a subrange of columns:
              If ((`kCol' >= $`dFirstColumn') && (`kCol' <= $`dLastColumn'));
                $TMP = $`dMat'`iRow'`SepChar'`kCol';
                $`dMat'`iRow'`SepChar'`kCol' = $`dMat'`jRow'`SepChar'`kCol';
                $`dMat'`jRow'`SepChar'`kCol' = $TMP;
              EndIf;
            #EndDo
          EndIf;
        #EndDo
      EndIf;
    #EndDo
    ModuleOption,Local,$TMP;
  EndIf;
#endprocedure
*}}}
*
*{{{ ApartBareissDeterminant
#procedure ApartBareissDeterminant(dDeterminant,RowFuncID,ColFuncID,AuxFuncID,TableID,MaxDimension,Sym1)
  id `RowFuncID'(?a) = `RowFuncID'(nargs_(?a),?a);
  id `RowFuncID'(`Sym1'?$nitems,?a) = `RowFuncID'(?a);
*  Print "Calculating determinant for a %$ x %$ matrix",$nitems,$nitems;
  ModuleOption,Local,$nitems;
  #call ApartFillLocalDollarMatrixWithTableElements(Mat,s,`RowFuncID',`ColFuncID',`TableID',`AuxFuncID',`MaxDimension',`MaxDimension',0,`Sym1')
* Initial value for the Determinant (needed also to keep track of sign flips due to pivoting):
  $`dDeterminant' = 1;
  $FirstCol = 1;
  $LastCol = $nitems;
  $PreviousPivot = 1;
  ModuleOption,Local,$FirstCol,$LastCol,$PreviousPivot,$`dDeterminant';
* Checking for possible pivoting first:
  #Do k=1,`MaxDimension'
    If ((`k' < $nitems) && ($`dDeterminant' != 0));
      $nterms = nterms_($Mat`k's`k');
      ModuleOption,Local,$nterms;
* If normalizing term is zero, we need pivoting:
      If ($nterms == 0);
        $found = 0;
        ModuleOption,Local,$found;
        #Do kpr={`k'+1},`MaxDimension'
          If (($found == 0) && (`kpr' <= $nitems));
            $nterms = nterms_($Mat`kpr's`k');
            If ($nterms > 0);
              $found = 1;
              $kRow = `k';
              $kprRow = `kpr';
              ModuleOption,Local,$kRow,$kprRow;
              #call ApartSwapLocalDollarMatrixRows(Mat,s,kRow,kprRow,FirstCol,LastCol,`MaxDimension',`MaxDimension')
              Inside $`dDeterminant';
                Multiply -1;
              EndInside;
            EndIf;
          EndIf;
        #EndDo
* Could t found correct pivot -> determinant is zero:
        If ($found == 0);
          $`dDeterminant' = 0;
        EndIf;
      EndIf;
      If ($`dDeterminant' != 0);
        #Do iRow={`k'+1},`MaxDimension'
          If (`iRow' <= $nitems);
            #Do jCol={`k'+1},`MaxDimension'
              If (`jCol' <= $nitems);
*                Print "item: `iRow' `jCol': ";
                $Mat`iRow's`jCol' = div_($Mat`k's`k'*$Mat`iRow's`jCol' - $Mat`iRow's`k'*$Mat`k's`jCol',$PreviousPivot);
*                Print "`k' `iRow', `jCol', new element: %$",$Mat`iRow's`jCol';
              EndIf;
            #EndDo
          EndIf;
        #EndDo
        $PreviousPivot = $Mat`k's`k';
      EndIf;
    EndIf;
    If (`k' == $nitems);
      Inside $`dDeterminant';
        Multiply $Mat`k's`k';
      EndInside;
    EndIf;
  #EndDo
*  Print "Determinant becomes: %$",$`dDeterminant';
#endprocedure
*}}}
*
*******************
* NULL RELATIONS: *
*******************
*{{{ ApartGetOneOperatorPower
#procedure ApartGetOneOperatorPower(DensFuncID,SelNullFuncID,SelDenFuncID,dPowVar,<Aux1FuncID>,...,<Aux3FuncID>,Sym1,Sym2)
* Considering terms with null relations:
  If (count(`SelNullFuncID',1) == 1);
* First we collect those denominators which are actually present in the selected
* null relation, and also dropping the one in denominator of the One operator:
    id `SelNullFuncID'(?a) = `SelNullFuncID'(?a)*`Aux2FuncID'(?a);
    Transform,`Aux2FuncID',replace(1,last)=(xarg_,`Aux1FuncID'(xarg_));
    Argument `Aux2FuncID';
      Multiply Replace_(`Aux1FuncID',nterms_);
      Multiply 1/coeff_;
    EndArgument;
    id `DensFuncID'(?a) = `DensFuncID'(?a)*`Aux1FuncID'(?a);
    Multiply `Aux3FuncID';
    Repeat;
      id `Aux3FuncID'(?a)*`Aux1FuncID'(`Sym1'?,?b)*`Aux2FuncID'(`Sym2'?,?c) =
        `Aux3FuncID'(?a,`Sym1'*`Sym2')*`Aux1FuncID'(?b)*`Aux2FuncID'(?c)
      ;
      id `Aux1FuncID'?{`Aux1FuncID',`Aux2FuncID'} = 1;
    EndRepeat;
    Repeat id `Aux3FuncID'(?a,0,?b) = `Aux3FuncID'(?a,?b);
    id `Aux3FuncID'(?a,`Sym1'?,?b)*`SelDenFuncID'(`Sym1'?) = 
    `Aux3FuncID'(?a,?b)*`SelDenFuncID'(`Sym1');
    $`dPowVar' = 99;
    Repeat;
      id `Aux3FuncID'(`Sym1'?$den,?a) = `Aux3FuncID'(?a);
      id `Aux3FuncID' = 1;
      $pow = count_($den,1);
      If ($pow < $`dPowVar') $`dPowVar' = $pow;
    EndRepeat;
* SANITY CHECK:
    If ($`dPowVar' < 1);
      print "Power cannot be non-positive!!!!";
      print "Term: %t";
      print "Power: %$",$`dPowVar';
      print "ApartGetOneOperatorPower";
      exit;
    EndIf;
    ModuleOption,Local,$`dPowVar',$den,$pow;
  EndIf;
#endprocedure
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance
#procedure ApartPutFunctionArgumentToNextSetInstance(FuncID,SetID,Aux1FuncID,Aux2FuncID,Sym1,Sym2,AlwaysFillAfterLast)
  Multiply `Aux1FuncID';
  id `FuncID'?`SetID'[`Sym1'](?a) = `FuncID'(?a)*`Aux1FuncID'(`Sym1');
  ChainIn `Aux1FuncID';
  id `Aux1FuncID'(?a) = `Aux1FuncID'(nargs_(?a),?a);
  id `Aux1FuncID'(0) = `Aux1FuncID'(0,0);
  Repeat;
    If ((match(`Aux1FuncID'(`Sym1'?,?a,`Sym1'?)) > 0) || `AlwaysFillAfterLast');
      id `Aux1FuncID'(?a,`Sym1'?$LastPosition) = 1;
      ModuleOption,local,$LastPosition;
      Repeat;
        $LastPosition = $LastPosition + 1;
        id,once `FuncID'(?a) = `SetID'[$LastPosition](?a);
      EndRepeat;
    Else;
      id `Aux1FuncID'(?a,`Sym1'?$LastPosition) = `Aux1FuncID'(?a,`Sym1');
      Do $Pos=1,$LastPosition;
        If ((match(`Aux1FuncID'(`Sym1'?,?a,$Pos,?b)) == 0) && (count(`FuncID',1) > 0));
          id,once `FuncID'(?a)*`Aux1FuncID'(`Sym1'?,?b,`Sym2'?) =
            `SetID'[$Pos](?a)*`Aux1FuncID'(`Sym1'+1,?b,$Pos,`Sym2')
          ;
        EndIf;
      EndDo;
      If (count(`FuncID',1) == 0) id `Aux1FuncID'(?a) = 1;
      ModuleOption,local,$Pos;
    EndIf;
  EndRepeat;
#endprocedure
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion
#procedure ApartDeterminantThruCofactorExpansion(RowFuncID,ColFuncID,TableID,AuxFuncID,Sym1,...,Sym4)
  id `RowFuncID'(`Sym1'?)*`ColFuncID'(`Sym2'?) = `TableID'(`Sym1',`Sym2');
  id `RowFuncID'(`Sym1'?,`Sym2'?)*`ColFuncID'(`Sym3'?,`Sym4'?) = 
    `TableID'(`Sym1',`Sym3')*`TableID'(`Sym2',`Sym4')
    -
    `TableID'(`Sym1',`Sym4')*`TableID'(`Sym2',`Sym3')
  ;
  If (count(`RowFuncID',1) > 0);
    Repeat;
      id `RowFuncID'(`Sym1'?,?a)*`ColFuncID'(?b) = 
        `TableID'(`Sym1')*`RowFuncID'(?a)*
        distrib_(-1,1,`AuxFuncID',`ColFuncID',?b)
      ;
      id `TableID'(`Sym1'?)*`AuxFuncID'(`Sym2'?) = `TableID'(`Sym1',`Sym2');
    EndRepeat;
    id `AuxFuncID'?{`RowFuncID',`ColFuncID'} = 1;
  EndIf;
#endprocedure
*}}}
*
*{{{ ApartDetermineRankWithBasis
#procedure ApartDetermineRankWithBasis(RowFuncID,ColFuncID,TableID,SelectRowFuncID,SelectColFuncID,AvailableRowFuncID,AvailableColFuncID,TryRowFuncID,TryColFuncID,DetFuncID,RankFuncID,AuxFuncID,MaxRank,Sym1,...,Sym4)
  multiply `SelectRowFuncID'*`SelectColFuncID';
  id `RowFuncID'(?a) = `RowFuncID'(?a)*`AvailableRowFuncID'(?a);
  id `ColFuncID'(?a) = `ColFuncID'(?a)*`AvailableColFuncID'(?a);
  Repeat;
    id `SelectRowFuncID'(?a)*`AvailableRowFuncID'(`Sym1'?,?b) = 
      `SelectRowFuncID'(?a)*`TryRowFuncID'(?a,`Sym1')*`AvailableRowFuncID'(?b)
    ;
    id `AvailableColFuncID'(?a)*`TryRowFuncID'(?b) = 
      `AvailableColFuncID'(?a)*`TryColFuncID'(distrib_(1,nargs_(?b),`SelectColFuncID',`AuxFuncID',?a))*`TryRowFuncID'(?b)
    ;
    Argument `TryColFuncID';
      id `AuxFuncID'(?a) = 1;
    EndArgument;
    SplitArg `TryColFuncID';
    Repeat;
      id `TryRowFuncID'(?a)*`TryColFuncID'(`Sym1'?,?b) = 
        `DetFuncID'(`TryRowFuncID'(?a)*`Sym1')*`TryRowFuncID'(?a)*`TryColFuncID'(`Sym1',?b)
      ;
      Argument `DetFuncID';
        #If (`APuseBareiss' == 0)
          #call ApartDeterminantThruCofactorExpansion(`TryRowFuncID',`SelectColFuncID',`TableID',`AuxFuncID',`Sym1',...,`Sym4')
        #Else
          #call ApartBareissDeterminant(Determinant,`TryRowFuncID',`SelectColFuncID',`AuxFuncID',`TableID',`MaxRank',`Sym1')
          Multiply $Determinant;
        #EndIf
      EndArgument;
* Found non-zero determinant, store the actual row and the column order:
      If (match(`DetFuncID'(`Sym1'?!{0,})) > 0);
        id `SelectRowFuncID'(?a)*`TryRowFuncID'(?b) = `SelectRowFuncID'(?b);
        id `SelectColFuncID'(?a)*`TryColFuncID'(`Sym1'?,?b) = `Sym1';
        id `SelectColFuncID'(?a)*`AvailableColFuncID'(?b) = 
          `SelectColFuncID'(?a)*`AvailableColFuncID'(?a,?b);
        Transform,`AvailableColFuncID',dedup(first,last);
      Else;
* The actual column gave zero determinant:
        Transform,`TryColFuncID',dropargs(first,first);
* If this was the last column config, we should continue with the next row:
        If (match(`TryColFuncID') > 0);
          id `TryColFuncID' = 1;
          id `TryRowFuncID'(?a) = 1;
        EndIf;
      EndIf;
      id `DetFuncID'(?a) = 1;
* All the rows are exhausted, delete functions not needed afterwards:
      If (match(`AvailableRowFuncID') > 0);
        id `AvailableRowFuncID' = 1;
        id `AvailableColFuncID'(?a) = 1;
      EndIf;
    EndRepeat;
  EndRepeat;
  id `SelectRowFuncID'(?a) = `RankFuncID'(nargs_(?a))*`SelectRowFuncID'(?a);
* Ordering the contributing columns:
  Symmetrize `SelectColFuncID';
#endprocedure
*}}}
*
*{{{ ApartDetermineNullRelations
#procedure ApartDetermineNullRelations(RowFuncID,ColFuncID,TableID,RankFuncID,NullSpaceFuncID,BasisRowFuncID,BasisColFuncID,NonBasisRowFuncID,SubmatrixRowFuncID,DetFuncID,NullVectorSetID,<Aux1FuncID>,...,<Aux5FuncID>,MaxRank,Sym1,...,Sym4)
* SelectRowFuncID -> BasisRowFuncID
* SelectColFuncID -> BasisColFuncID
* AvailableRowFuncID -> Aux1FuncID
* AvailableColFuncID -> Aux2FuncID
* TryRowFuncID -> Aux3FuncID
* TryColFuncID -> Aux4FuncID
* DetFuncID -> DetFuncID
  #call ApartDetermineRankWithBasis(`RowFuncID',`ColFuncID',`TableID',`BasisRowFuncID',`BasisColFuncID',<`Aux1FuncID'>,...,<`Aux4FuncID'>,`DetFuncID',`RankFuncID',`Aux5FuncID',`MaxRank',`Sym1',...,`Sym4')
* Storing the first non-zero minor corresponding to:
* I = BasisRowFuncID, J = BasisColFuncID:
* CREATING THE NON-BASIS ROWS:
  id `RowFuncID'(?a) = `RowFuncID'(?a)*`NonBasisRowFuncID'(?a);
  Repeat;
    id `NonBasisRowFuncID'(?a,`Sym1'?,?b)*`BasisRowFuncID'(?c,`Sym1'?,?d) = 
    `NonBasisRowFuncID'(?a,?b)*`BasisRowFuncID'(?c,`Sym1',?d);
  EndRepeat;
  Repeat;
    id `NonBasisRowFuncID' = 1;
    If (count(`NonBasisRowFuncID',1) > 0);
* GENERATING THE SUBMATRIX ROWS WITH CORRECT ORDERING:
      id `RowFuncID'(?a)*`BasisRowFuncID'(?b)*`NonBasisRowFuncID'(`Sym1'?,?c) =
        `RowFuncID'(?a)*`BasisRowFuncID'(?b)*`NonBasisRowFuncID'(?c)*
        `SubmatrixRowFuncID'(?a,?b,`Sym1');
      ;
      Repeat;
        id `SubmatrixRowFuncID'(?a,`Sym1'?,?b,`Sym1'?,?c) = 
          `SubmatrixRowFuncID'(?a,`Aux1FuncID'(`Sym1'),?b,?c)
        ;
      EndRepeat;
      Repeat id `SubmatrixRowFuncID'(?a,`Sym1'?number_,?b) = `SubmatrixRowFuncID'(?a,?b);
      Argument `SubmatrixRowFuncID';
        id `Aux1FuncID'(`Sym1'?) = `Sym1';
      EndArgument;
* CONSTRUCT THE VARIOUS SUBMATRICES:
      id `SubmatrixRowFuncID'(?a) = `Aux1FuncID'(distrib_(-1,1,`Aux2FuncID',`SubmatrixRowFuncID',?a));
      Splitarg `Aux1FuncID';
      id `RowFuncID'(?a) = `RowFuncID'(?a)*`NullSpaceFuncID'(?a);
      Repeat;
        id `NullSpaceFuncID'(?a,`Sym1'?,?b)*`Aux1FuncID'(?c,`Aux2FuncID'(`Sym1'?)*`SubmatrixRowFuncID'(?d),?e) =
          `NullSpaceFuncID'(?a,`SubmatrixRowFuncID'(?d),?b)*`Aux1FuncID'(?c,?e)
        ;
        id `NullSpaceFuncID'(?a,`Sym1'?,?b)*`Aux1FuncID'(?c,-`Aux2FuncID'(`Sym1'?)*`SubmatrixRowFuncID'(?d),?e) =
          `NullSpaceFuncID'(?a,-`SubmatrixRowFuncID'(?d),?b)*`Aux1FuncID'(?c,?e)
        ;
        id `Aux1FuncID' = 1;
      EndRepeat;
      Argument `NullSpaceFuncID';
        If (count(`SubmatrixRowFuncID',1) == 0) discard;
        Multiply `BasisColFuncID';
      EndArgument;
      Repeat;
        id `BasisColFuncID'(?a)*`NullSpaceFuncID'(?b,`SubmatrixRowFuncID'(?c)*`BasisColFuncID',?d) =
          `BasisColFuncID'(?a)*`NullSpaceFuncID'(?b,`SubmatrixRowFuncID'(?c)*`BasisColFuncID'(?a),?d)
        ;
        id `BasisColFuncID'(?a)*`NullSpaceFuncID'(?b,-`SubmatrixRowFuncID'(?c)*`BasisColFuncID',?d) =
          `BasisColFuncID'(?a)*`NullSpaceFuncID'(?b,-`SubmatrixRowFuncID'(?c)*`BasisColFuncID'(?a),?d)
        ;
      EndRepeat;
      Argument `NullSpaceFuncID';
        #If (`APuseBareiss' == 0)
          #call ApartDeterminantThruCofactorExpansion(`SubmatrixRowFuncID',`BasisColFuncID',`TableID',`Aux1FuncID',`Sym1',...,`Sym4')
        #Else
          #call ApartBareissDeterminant(Determinant,`SubmatrixRowFuncID',`BasisColFuncID',`Aux1FuncID',`TableID',`MaxRank',`Sym1')
          Multiply $Determinant;
        #EndIf
      EndArgument;
      #call ApartPutFunctionArgumentToNextSetInstance(`NullSpaceFuncID',`NullVectorSetID',`Aux1FuncID',`Aux2FuncID',`Sym1',`Sym2',0)
    EndIf;
  EndRepeat;
#endprocedure
*}}}
*
*{{{ ApartOneOperator
#procedure ApartOneOperator(dOneOp,SelectedNullFuncID,SelectedDenFuncID,OrderedDensFuncID,DenFuncID,Sym1,Sym2)
  id `OrderedDensFuncID'(?a)*`SelectedNullFuncID'(?b) = 
    `SelectedNullFuncID'(`OrderedDensFuncID'(?a)*`SelectedNullFuncID'(?b))
  ;
  id `SelectedNullFuncID'(`Sym1'?$`dOneOp') = $`dOneOp';
  Inside $`dOneOp';
* Killing leading zeros:
    Repeat id `OrderedDensFuncID'(`Sym1'?,?a)*`SelectedNullFuncID'(0,?b) = 
      `OrderedDensFuncID'(?a)*`SelectedNullFuncID'(?b)
    ;
* First non-zero is the denominator which should be on the positive power:
    Transform,`OrderedDensFuncID',replace(2,last)=(xarg_,1/xarg_);
* The left-most denominator should be on the LHS, hence we include a negative
* sign for all the others:
    Transform,`SelectedNullFuncID',replace(2,last)=(xarg_,-xarg_);
    Transform,`SelectedNullFuncID',replace(1,1)=(xarg_,`DenFuncID'(xarg_));
    Argument `SelectedNullFuncID',1;
      id `DenFuncID'(`Sym1'?number_) = 1/`Sym1';
      id `DenFuncID'(`Sym1'?symbol_) = 1/`Sym1';
      id `DenFuncID'(`Sym1'?) = `DenFuncID'(nterms_(`Sym1'),`Sym1');
      id `DenFuncID'(1,`Sym1'?) = 1/`Sym1';
      id `DenFuncID'(`Sym1'?number_,`Sym2'?) = `DenFuncID'(`Sym2');
      If (match(`DenFuncID'(`Sym1'?,`Sym2'?,?a)) > 0);
        Print "`DenFuncID' with many arguments survive...";
        Print "Term: %t";
        Print "ApartOneOperator";
        exit;
      EndIf;
    EndArgument;
    Repeat id `OrderedDensFuncID'(`Sym1'?,?a)*`SelectedNullFuncID'(`Sym2'?,?b) =
      `OrderedDensFuncID'(?a,`Sym1'*`Sym2')*`SelectedNullFuncID'(?b)
    ;
    id `SelectedDenFuncID'(`Sym1'?) = 1;
    id `SelectedNullFuncID' = 1;
    Repeat id `OrderedDensFuncID'(`Sym1'?,`Sym2'?,?a) = `OrderedDensFuncID'(`Sym1',?a) + `Sym2'*`Sym1';
    id `OrderedDensFuncID'(`Sym1'?) = 0;
  EndInside;
  id `SelectedNullFuncID'(?a) = 1;
  id `SelectedDenFuncID'(`Sym1'?) = 1;
#endprocedure
*}}}
*
*{{{ ApartSelectBestNullRelation
#procedure ApartSelectBestNullRelation(NullSetID,NumberOfMaximumPropagators,PresentFuncID,IndexFuncID,OrderFuncID,ArgFuncID,SelectedNullFuncID,SelectedDenFuncID,OrderedDensFuncID,<Aux1FuncID>,...,<Aux4FuncID>,Sym1,...,Sym4)
  #call ApartOrderFunctionsByLeadingZeros(`NullSetID',1,`NumberOfMaximumPropagators',`PresentFuncID',`IndexFuncID',`OrderFuncID',`ArgFuncID',<`Aux1FuncID'>,...,<`Aux4FuncID'>,`Sym1',...,`Sym4')
  id `Aux1FuncID'?`NullSetID'(?a)*`PresentFuncID'(`Aux1FuncID'?`NullSetID',?b) =
    `SelectedNullFuncID'(?a)
  ;
  id `Aux1FuncID'?`NullSetID'(?a) = 1;
  id `IndexFuncID'(`Sym1'?,?a)*`OrderedDensFuncID'(?b) =
    `OrderedDensFuncID'(?b)*PutFirst_(`SelectedDenFuncID',`Sym1'+1,?b)
  ;
  Transform,`SelectedDenFuncID',SelectArgs(1,1);
#endprocedure
*}}}
*
*{{{ ApartEliminateSingleNullRelation
#procedure ApartEliminateSingleNullRelation(DensFuncID,RowFuncID,ColFuncID,RankFuncID,NullSpaceFuncID,BasisRowFuncID,BasisColFuncID,NonBasisRowFuncID,SubmatrixRowFuncID,DetFuncID,SelectedNullFuncID,SelectedDenFuncID,DenFuncID,CollectFuncID,NullVectorSetID,DenSetID,CoeffTableID,DenSymbolID,ListOfVariablesVar,<Aux1FuncID>,...,<Aux8FuncID>,Sym1,...,Sym4)
  #Define NumVars "0"
  #call ApartCountItemsInPreprocList(`ListOfVariablesVar',NumVars)
  #If (`APuseGlobalNullRelations' == 0)
* Only needed if we determine null relations anew:
    #call ApartFromDenominatorsToExtendedCoeffMatrix(`DensFuncID',`DenSetID',`RowFuncID',`ColFuncID',`ListOfVariablesVar',`Sym1',`Sym2')
    #call ApartDetermineNullRelations(`RowFuncID',`ColFuncID',`CoeffTableID',`RankFuncID',`NullSpaceFuncID',`BasisRowFuncID',`BasisColFuncID',`NonBasisRowFuncID',`SubmatrixRowFuncID',`DetFuncID',`NullVectorSetID',<`Aux1FuncID'>,...,<`Aux5FuncID'>,{`NumVars'+1},`Sym1',...,`Sym4')
  #Else
    #call ApartDeriveSubsetNullRelations(`DensFuncID',`NullSpaceFuncID',`Aux1FuncID',APbasis,APsubBasis,`SelectedDenFuncID',APtoEliminate,APtoReduce,`Aux2FuncID',APn,`DenSymbolID',`DenSetID',APnullTbl,`APnumberOfDenominators')
    .sort:Before bracket;
    Bracket `DensFuncID',`DenSetID',`CollectFuncID';
    .sort:After bracket;
    Keep brackets;
    #call ApartFetchSubsetNullRelations(`DensFuncID',`CollectFuncID',`Aux1FuncID',APnullTbl,`DenSetID',APn,`DenSymbolID',APnumberOfDenominators)
    #call ApartPermuteNullArgumentsToActiveOrder(`NullSpaceFuncID',`DensFuncID',`Aux1FuncID',APn,`DenSymbolID',APnumberOfDenominators)
    #call ApartAssignNullIndices(`NullSpaceFuncID',`NullVectorSetID',`Aux1FuncID',`Aux2FuncID',`Aux3FuncID',APn)
  #EndIf
* NO NULL VECTOR IS FOUND, RANK EQUALS NUMBER OF DISTINCT PROPAGATORS:
  If (match(`Aux1FuncID'?`NullVectorSetID'(?a)) == 0);
    id `Aux1FuncID'?{`DensFuncID'}(?a) = 1;
  Else;
    #call ApartSelectBestNullRelation(`NullVectorSetID',`APnumberOfDenominators',<`Aux1FuncID'>,...,<`Aux4FuncID'>,`SelectedNullFuncID',`SelectedDenFuncID',`DensFuncID',<`Aux5FuncID'>,...,<`Aux8FuncID'>,`Sym1',...,`Sym4')
    #call ApartGetOneOperatorPower(`DensFuncID',`SelectedNullFuncID',`SelectedDenFuncID',OneOpPow,<`Aux1FuncID'>,...,<`Aux3FuncID'>,`Sym1',`Sym2')
    #call ApartOneOperator(OneOp,`SelectedNullFuncID',`SelectedDenFuncID',`DensFuncID',`DenFuncID',`Sym1',`Sym2')
    Multiply ($OneOp)^($OneOpPow);
    ModuleOption,Local,$OneOp,$OneOpPow;
  EndIf;
  id `Aux1FuncID'?{`RowFuncID',`ColFuncID',`RankFuncID',`BasisRowFuncID',`BasisColFuncID',`Aux2FuncID'}(?a) = 1;
  #If (0)
  #EndIf
#endprocedure
*}}}
*
*{{{ ApartEliminateNullRelations
#procedure ApartEliminateNullRelations()
  #If ((`APglobalOrder' == 1) || (`APuseGlobalNullRelations' == 1))
    #Define NumColumns "{`APnumberOfVariables'+1}"
    .sort
    #call ApartDetermineGlobalNullRelations(APnumberOfDenominators,NumColumns,AProw,APcol,APcoeffTbl,APrank,APnull,APbasisRow,APbasisCol,APnonBasisRow,APsubRow,APdet,APnullSet,<APaux1>,...,<APaux5>,TMP,APtempCounter,NumberOfNulls,NullRelation,APn1,...,APn4)
    .sort
    #If (`APglobalOrder' == 1)
      #call ApartBuildGlobalDenominatorOrder(APnull,APpermTbl,NumberOfNulls,NullRelation,APnumberOfDenominators,APn)
      .sort
    #EndIf
    #if (`APuseGlobalNullRelations' == 1)
* This branch is to store the global null relations in the corresponding table:
      ctable,sparse,APnullTbl(`APnumberOfDenominators');
      .sort
      #call ApartStoreGlobalNullRelations(APtempPrefix,APtempCounter,NumberOfNulls,NullRelation,`APnumberOfDenominators',APdens,APnullTbl)
    #EndIf
  #EndIf
* CONSTRUCTION OF DENOMINATOR LIST WITH MULTIPLICITIES IN ASCENDING ORDER:
  #call ApartGetBestDenominatorToReplace(APdensSet,APdens,APdensMult,APaux1,...,APaux6,APn1,APn2,APn3,APn4)
  .sort
  #Do EliminateLoop=1,1
    #If (`APuseGlobalNullRelations' == 0)
      Bracket APdens,APdensSet,APcollect;
      .sort:Bracket to eliminate;
      Keep brackets;
    #EndIf
    #$EliminateLoop = 1;
    #call ApartEliminateSingleNullRelation(APdens,AProw,APcol,APrank,APnull,APbasisRow,APbasisCol,APnonBasisRow,APsubRow,APdet,APselNull,APselDen,APden,APcollect,APnullSet,APdensSet,APcoeffTbl,APd,APvariables,APaux1,...,APaux8,APn1,...,APn4)
    #call ApartUpdateActiveDenominators(APdens,APcollect,APaux1,APdensSet,APn1,APn2)
    If (count(APdens,1) > 0);
      $EliminateLoop = 0;
    Else;
      id APcollect(?a) = 1;
    EndIf;
    ModuleOption,Minimum,$EliminateLoop;
    .sort:Eliminate iter is over;
    #Redefine EliminateLoop "`$EliminateLoop'"
  #EndDo
#endprocedure
*}}}
*
*{{{ ApartDetermineGlobalNullRelations
#procedure ApartDetermineGlobalNullRelations(NumberOfRowsVar,NumberOfColumnsVar,RowFuncID,ColFuncID,TableID,RankFuncID,NullSpaceFuncID,BasisRowFuncID,BasisColFuncID,NonBasisRowFuncID,SubmatrixRowFuncID,DetFuncID,NullVectorSetID,<Aux1FuncID>,...,<Aux5FuncID>,TempExprPrefixVar,TempExprCountVar,dNumNullRelations,dNullRelation,Sym1,...,Sym4)
  PushHide;
  #call ApartIncrementPreprocCounter(`TempExprCountVar')
  local `TempExprPrefixVar'``TempExprCountVar'' = 
    `RowFuncID'(1,...,``NumberOfRowsVar'')* `ColFuncID'(1,...,``NumberOfColumnsVar'')
  ;
  #call ApartDetermineNullRelations(`RowFuncID',`ColFuncID',`TableID',`RankFuncID',`NullSpaceFuncID',`BasisRowFuncID',`BasisColFuncID',`NonBasisRowFuncID',`SubmatrixRowFuncID',`DetFuncID',`NullVectorSetID',<`Aux1FuncID'>,...,<`Aux5FuncID'>,``NumberOfColumnsVar'',`Sym1',...,`Sym4')
  .sort:`TempExprPrefixVar'``TempExprCountVar'' created;
  id `Aux1FuncID'?{`RowFuncID',`ColFuncID',`RankFuncID',`BasisRowFuncID',`BasisColFuncID'}(?a) = 1;
  id `Aux1FuncID'?`NullVectorSetID'(?a) = `NullSpaceFuncID'(?a);
  If (count(`NullSpaceFuncID',1) == 0) Discard;
  PutInside `NullSpaceFuncID';
  FactArg `NullSpaceFuncID';
  Repeat id `NullSpaceFuncID'(`NullSpaceFuncID'(?a),`NullSpaceFuncID'(?b),?c) = `NullSpaceFuncID'(?a) + `NullSpaceFuncID'(`NullSpaceFuncID'(?b),?c);
  id `NullSpaceFuncID'(`NullSpaceFuncID'(?a)) = `NullSpaceFuncID'(?a);
  .sort:Nulls flatten;
  #$`dNumNullRelations' = nterms_(`TempExprPrefixVar'``TempExprCountVar'');
  #If (TermsIn(`TempExprPrefixVar'``TempExprCountVar''))
    #Define iRelation "0"
    #Do NullRelation=`TempExprPrefixVar'``TempExprCountVar''
      #call ApartIncrementPreprocCounter(iRelation)
      #$`dNullRelation'`iRelation' = `NullRelation';
    #EndDo
  #EndIf
  .sort
  Drop `TempExprPrefixVar'``TempExprCountVar'';
  PopHide;
#endprocedure
*}}}
*
*{{{ ApartBuildGlobalDenominatorOrder
#procedure ApartBuildGlobalDenominatorOrder(NullSpaceFuncID,PermutationTableID,dNumNullRelations,dNullRelation,NumberOfDenominatorsVar,Sym)
* Note: `Sym' is a collection of symbols all starting with the prefix of `Sym', like: n1,n2,...
  #If (`$`dNumNullRelations'' > 0)
    #Do iDen=1,``NumberOfDenominatorsVar''
      #$perm`iDen' = `iDen';
    #EndDo
    #Do iDeg=1,{``NumberOfDenominatorsVar''}
      #$deg`iDeg' = 0;
    #EndDo
    #Do iRel=1,`$`dNumNullRelations''
      #Inside $`dNullRelation'`iRel'
        id `NullSpaceFuncID'(<`Sym'1?$degTMP1>,...,<`Sym'``NumberOfDenominatorsVar''?$degTMP``NumberOfDenominatorsVar''>) = `NullSpaceFuncID'(<$degTMP1>,...,<$degTMP``NumberOfDenominatorsVar''>);
      #EndInside
      #Do iDeg=1,``NumberOfDenominatorsVar''
        #$deg`iDeg' = `$deg`iDeg'' + thetap_(nterms_(`$degTMP`iDeg''));
      #EndDo
    #EndDo
    #Do iDen=1,``NumberOfDenominatorsVar''
      #$SwapPosition = `iDen';
      #$SwapValue = `$deg`iDen'';
      #Do jDen={`iDen'+1},``NumberOfDenominatorsVar''
* We can swap in three diferrent cases:
* 1: when descending order is requested and lower power precedes a higher one
* 2: when ascending order is requested and a higher power precedes a lower one
* 3: when two denominators have the same power but the ordinal number of the preceding
* one is higher than the second
        #If (((`APorderDescending' == 1) && (`$SwapValue' < `$deg`jDen'')) || ((`APorderDescending' == 0) && (`$SwapValue' > `$deg`jDen'')) || ((`$perm`$SwapPosition'' > `$perm`jDen'') && (`$SwapValue' == `$deg`jDen'')))
          #$SwapPosition = `jDen';
          #$SwapValue = `$deg`jDen'';
        #EndIf
      #EndDo
      #If (`$SwapPosition' != `iDen')
*        #write "swapping `iDen' with %$",$SwapPosition;
        #$TMP = `$deg`iDen'';
        #$deg`iDen' = `$deg`$SwapPosition'';
        #$deg`$SwapPosition' = `$TMP';
        #$TMP = `$perm`iDen'';
        #$perm`iDen' = `$perm`$SwapPosition'';
        #$perm`$SwapPosition' = `$TMP';
      #EndIf
    #EndDo
    #Do iDen=1,``NumberOfDenominatorsVar''
      Fill `PermutationTableID'(`iDen') = `$perm`iDen'';
    #EndDo
*    #write "Final ordering: "
*    #Do iDen=1,``NumberOfDenominatorsVar''
*      #write "Denominator: %$, power: %$",$perm`iDen',$deg`iDen';
*    #EndDo
  #Else
    #Do iDen=1,``NumberOfDenominatorsVar''
      Fill `PermutationTableID'(`iDen') = `iDen';
    #EndDo
  #EndIf
#endprocedure
*}}}
*
*{{{ ApartFillNullRelationTable
#procedure ApartFillNullRelationTable(ExprID,CollectFuncID,NullTableID)
  Bracket `CollectFuncID';
  .sort
  FillExpression `NullTableID' = `ExprID'(`CollectFuncID');
#endprocedure
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations
#procedure ApartRemoveDenominatorFromNullRelations(SelectedDenFuncID,NullFuncID,ToEliminateFuncID,ToReduceFuncID,AuxFuncID,NumberOfArgs,SymbolID)
  id `SelectedDenFuncID'(`SymbolID'1?$Selected) = 1;
*
*  print "Eliminating %$",$Selected;
  ModuleOption,Local,$Selected;
* Flag affected null relations:
  Transform,`NullFuncID',Permute(1,$Selected);
  id `NullFuncID'(`SymbolID'1?!{0,},?a) = `ToReduceFuncID'(`SymbolID'1,?a);
  id `NullFuncID'(0,?a) = `NullFuncID'(0,?a);
* Selecting the first one and storing its coefficients:
  id,once `ToReduceFuncID'(<`SymbolID'1?$a1>,...,<`SymbolID'`NumberOfArgs'?$a`NumberOfArgs'>) = 1;
  Repeat;
    id,once `ToReduceFuncID'(<`SymbolID'1?$b1>,...,<`SymbolID'`NumberOfArgs'?$b`NumberOfArgs'>) = 
      `NullFuncID'(<$a1*$b1-$b1*$a1>,...,<$a1*$b`NumberOfArgs'-$b1*$a`NumberOfArgs'>)
    ;
  EndRepeat;
  ModuleOption,Local
  #Do iArg=1,`NumberOfArgs'
    ,$a`iArg',$b`iArg'
  #EndDo
  ;
* Removing higher multiplicity relations:
  Repeat id `NullFuncID'(?a)*`NullFuncID'(?a) = `NullFuncID'(?a);
* Dropping all zero relations:
  #Define ZeroList "0"
  id `NullFuncID'(`ZeroList') = 1;
  #Do iZero=1,{`NumberOfArgs'-1}
    #Redefine ZeroList "`ZeroList',0"
    id `NullFuncID'(`ZeroList') = 1;
  #EndDo
  Transform,`NullFuncID',Permute(1,$Selected);
  id `NullFuncID'(?a) = `NullFuncID'(gcd_(?a),?a);
  id `NullFuncID'(`SymbolID'1?number_,<`SymbolID'2?>,...,<`SymbolID'{`NumberOfArgs'+1}?>) = 
    `NullFuncID'(<`SymbolID'2/`SymbolID'1>,...,<`SymbolID'{`NumberOfArgs'+1}/`SymbolID'1>)
  ;
  also `NullFuncID'(`SymbolID'1?symbol_,<`SymbolID'2?>,...,<`SymbolID'{`NumberOfArgs'+1}?>) = 
    `NullFuncID'(<`SymbolID'2/`SymbolID'1>,...,<`SymbolID'{`NumberOfArgs'+1}/`SymbolID'1>)
  ;
  also `NullFuncID'(`SymbolID'1?,<`SymbolID'2?>,...,<`SymbolID'{`NumberOfArgs'+1}?>) = 
    `NullFuncID'(<div_(`SymbolID'2,`SymbolID'1)>,...,<div_(`SymbolID'{`NumberOfArgs'+1},`SymbolID'1)>)
  ;
* Removing higher multiplicity relations:
  Repeat id `NullFuncID'(?a)*`NullFuncID'(?a) = `NullFuncID'(?a);
#endprocedure
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations
#procedure ApartRemoveAbsentDenominatorsFromNullRelations(NullBasisFuncID,NullFuncID,PresentElementsFuncID,SelectedToEliminateFuncID,ToEliminateFuncID,ToReduceFuncID,AuxFuncID,NumberOfArgs,SymbolID)
* Only collect missing of the corresponding functionhead is still not present:
  If (count(`SelectedToEliminateFuncID',1) == 0);
* Eliminate overlap between old and new basis:
    Repeat id `NullBasisFuncID'(?a,`SymbolID'1?,?b)*`PresentElementsFuncID'(?c,`SymbolID'1?,?d) = `NullBasisFuncID'(?a,?b)*`PresentElementsFuncID'(?c,`SymbolID'1,?d);
*  If left with zero remnant basis element, there is nothing to do:
    If (match(`NullBasisFuncID') == 1);
      id `NullBasisFuncID' = 1;
    EndIf;
  Else;
    ChainIn `SelectedToEliminateFuncID';
    Multiply Replace_(`SelectedToEliminateFuncID',`NullBasisFuncID');
  EndIf;
* We digest one by one the missing denominators:
  Repeat;
    If (match(`NullBasisFuncID'(`SymbolID'1?,?a)) > 0);
      id `NullBasisFuncID'(`SymbolID'1?,?a) = `NullBasisFuncID'(?a)*`SelectedToEliminateFuncID'(`SymbolID'1);
      id `NullBasisFuncID' = 1;
      #call ApartRemoveDenominatorFromNullRelations(`SelectedToEliminateFuncID',`NullFuncID',`ToEliminateFuncID',`ToReduceFuncID',`AuxFuncID',`NumberOfArgs',`SymbolID')
    EndIf;
  EndRepeat;
#endprocedure
*}}}
*
*{{{ ApartStoreGlobalNullRelations
#procedure ApartStoreGlobalNullRelations(TempExprPrefixVar,TempExprCountVar,dNumNullRelations,dNullRelation,NumberOfArgs,BasisFuncID,NullTableID)
  #If (`NumberOfArgs' > 0)
    PushHide;
    #call ApartIncrementPreprocCounter(`TempExprCountVar')
    local ``TempExprPrefixVar''``TempExprCountVar'' =
      `BasisFuncID'(2^`NumberOfArgs'-1)
      #Do iNull=1,`$`dNumNullRelations''
        *`$`dNullRelation'`iNull''
      #EndDo
    ;
    .sort
    Transform,`BasisFuncID',decode(1,`NumberOfArgs'):base=2;
    .sort
    Bracket `BasisFuncID';
    .sort:``TempExprPrefixVar''``TempExprCountVar'' bracketed;
    FillExpression `NullTableID' = ``TempExprPrefixVar''``TempExprCountVar''(`BasisFuncID');
    .sort:`NullTableID' filled;
    Drop ``TempExprPrefixVar''``TempExprCountVar'';
    PopHide;
  #EndIf
#endprocedure
*}}}
*
*{{{ ApartDeriveSubsetNullRelations
#procedure ApartDeriveSubsetNullRelations(DensFuncID,NullFuncID,CollectFuncID,BasisFuncID,SubBasisFuncID,SelectedDenFuncID,ToEliminateFuncID,ToReduceFuncID,AuxFuncID,SymbolID,DenSymbolID,DenSetID,NullTableID,NumberOfDens)
  #Define Dens "<`DenSymbolID'1>,...,<`DenSymbolID'`NumberOfDens'>"
  #call ApartIncrementPreprocCounter(APtempCounter)
* Fetching the different denominator configs (multiplicity is ignored!)
  #call ApartCollectSymbolDependence(TMP`APtempCounter',`CollectFuncID',`Dens')
  PushHide;
  nHide TMP`APtempCounter';
  .sort
  NotInParallel TMP`APtempCounter';
* Second copy to be used calling in the higher-level null relations:
  id `CollectFuncID'(?a) = `CollectFuncID'(?a)*`SubBasisFuncID'(?a);
  #call ApartZeroPadFunctionArgumentsWithSymbolList(`CollectFuncID',`AuxFuncID',`SymbolID'1,`Dens')
* From denominator symbols to positional numbers:
  Repeat id `CollectFuncID'?{`CollectFuncID',`SubBasisFuncID'}(?a,`SymbolID'1?`DenSetID'[`SymbolID'2],?b) = `CollectFuncID'(?a,`SymbolID'2,?b);
* Only needing a bit-mask:
  Argument `CollectFuncID';
    PutInside thetap_;
  EndArgument;
* Substitute already available null relations:
  Multiply Replace_(`CollectFuncID',`NullTableID'); 
* If the null relations are resolved no action is needed:
  If (count(`NullTableID',1) == 0) Discard;
* If no substitution took place we do not have the table element:
  Multiply Replace_(`NullTableID',`CollectFuncID'); 
* Creating two copies: one is used to jump Hamming distance, while the other 
* will be used to book-keep:
  id `CollectFuncID'(?a) = `CollectFuncID'(?a)*`SubBasisFuncID'(?a);
  #call ApartFindCachedCover(`SubBasisFuncID',`SelectedDenFuncID',`AuxFuncID',`NullTableID')
  #call ApartRemoveAbsentDenominatorsFromNullRelations(`BasisFuncID',`NullFuncID',`SubBasisFuncID',`SelectedDenFuncID',`ToEliminateFuncID',`ToReduceFuncID',`AuxFuncID',`NumberOfDens',`SymbolID')
* `SubBasisFuncID' was only used to pull in the higher-level relations:
  id `SubBasisFuncID'(?a) = 1;
  .sort
  NotInParallel TMP`APtempCounter';
  #call ApartFillNullRelationTable(TMP`APtempCounter',`CollectFuncID',`NullTableID')
  Drop TMP`APtempCounter';
  PopHide;
#endprocedure
*}}}
*
*{{{ ApartPermuteNullArgumentsToActiveOrder
#procedure ApartPermuteNullArgumentsToActiveOrder(NullFuncID,DensFuncID,AuxFuncID,SymbolID,DenSymbolID,NumberOfDenominatorsVar)
  If (count(`DensFuncID',1) > 0);
    id `DensFuncID'(?a) = `AuxFuncID'(`DensFuncID'(?a));
    id `AuxFuncID'(`SymbolID'1?$RHS) = $RHS;
    ModuleOption,Local,$RHS;
    Inside $RHS;
      Multiply replace_(`DensFuncID',`NullFuncID');
      Multiply replace_(<`DenSymbolID'1,`SymbolID'1>,...,<`DenSymbolID'``NumberOfDenominatorsVar'',`SymbolID'``NumberOfDenominatorsVar''>);
    EndInside;
    Multiply replace_(`NullFuncID',`AuxFuncID');
    Repeat;
      If (count(`AuxFuncID',1) > 0);
        id,once `AuxFuncID'(<`DenSymbolID'1?>,...,<`DenSymbolID'``NumberOfDenominatorsVar''?>) = $RHS*replace_(<`SymbolID'1,`DenSymbolID'1>,...,<`SymbolID'``NumberOfDenominatorsVar'',`DenSymbolID'``NumberOfDenominatorsVar''>);
      EndIf;
    EndRepeat;
  EndIf;
#endprocedure
*}}}
*
*{{{ ApartAssignNullIndices
#procedure ApartAssignNullIndices(NullFuncID,NullSetID,Aux1FuncID,Aux2FuncID,Aux3FuncID,SymbolID)
  If (count(`NullFuncID',1) > 0);
    $NullCount = 0;
*    Repeat;
*      id,once `NullFuncID'(?a) = `Aux1FuncID'(?a)*`Aux2FuncID'(?a);
*      Repeat id `Aux2FuncID'(?a,0,?b) = `Aux2FuncID'(?a,?b);
*      id `Aux1FuncID'(?a)*`Aux2FuncID'(?b) = `Aux3FuncID'(-nterms_(?b) + nterms_(?a),?a);
*    EndRepeat;
    ModuleOption,Local,$NullCount;
    Repeat;
      $NullCount = $NullCount + 1;
*      id,once `Aux3FuncID'(`SymbolID'1?,?a) = `NullSetID'[$NullCount](?a);
      id,once `NullFuncID'(?a) = `NullSetID'[$NullCount](?a);
    EndRepeat;
  EndIf;
#endprocedure
*}}}
*
*{{{ ApartFetchSubsetNullRelations
#procedure ApartFetchSubsetNullRelations(DensFuncID,CollectFuncID,AuxFuncID,NullTableID,DenSetID,SymbolID,DenSymbolID,NumberOfDenominatorsVar)
  If (count(`CollectFuncID',1) == 0);
* Creating a local copy of active denominators, ordering them, substitute zero
* for absent one and one for all present and replace with corresponding null relations
    id `DensFuncID'(?a) = `DensFuncID'(?a)*`CollectFuncID'(?a);
    Symmetrize `CollectFuncID';
    #call ApartZeroPadFunctionArgumentsWithSymbolList(`CollectFuncID',`AuxFuncID',`SymbolID'1,<`DenSymbolID'1>,...,<`DenSymbolID'``NumberOfDenominatorsVar''>)
    Repeat id `CollectFuncID'(?a,`SymbolID'1?symbol_,?b) = `CollectFuncID'(?a,1,?b);
  EndIf;
  id `CollectFuncID'(?a) = `CollectFuncID'(?a)*`NullTableID'(?a);
#endprocedure
*}}}
*
*{{{ ApartFindCachedCover
#procedure ApartFindCachedCover(FuncID,FlippedFuncID,AuxFuncID,TableID)
  Repeat;
    If (match(`FuncID'(?a,0,?b)) > 0);
      id,once `FuncID'(?a,0,?b) = `FuncID'(?a,`FlippedFuncID'(0),?b)*`AuxFuncID'(?a,1,?b)*`FlippedFuncID'(nargs_(?a)+1);
      Argument `AuxFuncID';
        id `FlippedFuncID'(0) = 0;
      EndArgument;
      Multiply Replace_(`AuxFuncID',`TableID');
      If (count(`TableID',1) == 1);
        id `TableID'(?a) = 1;
        id `FlippedFuncID'(?a) = 1;
      Else;
        id `FuncID'(?a) = 1;
      EndIf;
    EndIf;
  EndRepeat;
  If (count(`FuncID',1) > 0);
    Argument `FuncID';
      id `FlippedFuncID'(0) = 0;
    EndArgument;
    id `FlippedFuncID'(?a) = 1;
  EndIf;
#endprocedure
*}}}
*
**********
* BASES: *
**********
*{{{ ApartFindBases
#procedure ApartFindBases()
  Bracket APdensSet;
  .sort:Dens collected;
  Keep brackets;
* GETTING PRESENT DENOMINATORS: 
  #call ApartGetPresentVariablesWithPowersFromSet(APdens,APaux1,APdensSet,1,`APnumberOfDenominators',APn1)
  id APaux1(?a) = 1;
  id APdens(?a) = APdens(nargs_(?a),?a);
  id APdens(APn1?$NumDens,?a) = APdens(?a);
  ModuleOption,Local,$NumDens;
  If ($NumDens < `APnumberOfVariables');
    id APdens(?a) = 1;
  Else;
    id APdens(?a) = APaux(APdens(?a));
    id APaux(APn1?$Bases) = $Bases;
* Calculating the determinants for all (k n) combinations, we do not care about
* the determinant, only interested in those combinations where the det. is non-zero:
    Inside $Bases;
      id APdens(?a) = distrib_(1,`APnumberOfVariables',AProw,APaux,?a);
      id APaux(?a) = 1;
      id AProw(?a) = APdet(AProw(?a))*APbasis(?a);
      Argument APdet;
        Multiply APcol(1,...,`APnumberOfVariables');
        #call ApartDeterminantThruCofactorExpansion(AProw,APcol,APcoeffTbl,APaux,APn1,...,APn4)
      EndArgument;
      If (match(APdet(0)) > 0);
        Discard;
      Else;
        id APdet(APn1?)*APbasis(?a) = APbasis(APdet(APn1),?a);
      EndIf;
    EndInside;
* SANITY CHECK on having at least one basis:
    $NumTerms = nterms_($Bases);
* Only needed if we want to have the dynamic variable set approach:
*    If ($NumTerms == 0);
*      Print "No basis is found...";
*      Print "Term: %t";
*      Print "ApartFindBases";
*      exit;
*    EndIf;
    ModuleOption,Local,$Bases,$NumTerms;
    If ($NumTerms > 0);
      Multiply APaux($Bases/coeff_);
      SplitArg,APaux;
      ChainOut APaux;
      id APaux(APn1?) = APn1;
    EndIf;
    id APdens(?a) = 1;
  EndIf;
#endprocedure
*}}}
*
*{{{ ApartExpandBases
#procedure ApartExpandBases(BasisFuncID,AuxFuncID,Sym1)
  If (count(`BasisFuncID',1) > 1);
    id `BasisFuncID'(?a) = `AuxFuncID'(`BasisFuncID'(?a));
    ChainIn `AuxFuncID';
    Transform,`AuxFuncID',AddArgs(1,last);
    id `AuxFuncID'(`Sym1'?) = `Sym1';
  EndIf;
#endprocedure
*}}}
*
*{{{ ApartSetBasisVecDollarsFromBasis
#procedure ApartSetBasisVecDollarsFromBasis(BasisFuncID,DenSetID,AuxFuncID,CoeffTableID,dBasisVector,NumberOfVariables,SymbolID)
  If (count(`BasisFuncID',1) > 0);
    id `BasisFuncID'(<`SymbolID'1?$`dBasisVector'1>,...,<`SymbolID'`NumberOfVariables'?$`dBasisVector'`NumberOfVariables'>) = 
      `BasisFuncID'(<$`dBasisVector'1>,...,<$`dBasisVector'`NumberOfVariables'>)
    ;
    ModuleOption,Local,<$`dBasisVector'1>,...,<$`dBasisVector'`NumberOfVariables'>;
* Turning positional numbers to actual propagators and including the constant terms:
    Inside <$`dBasisVector'1>,...,<$`dBasisVector'`APnumberOfVariables'>;
      PutInside `AuxFuncID';
      id `AuxFuncID'(`SymbolID'1?number_) = `DenSetID'[`SymbolID'1] - `CoeffTableID'(`SymbolID'1,{`APnumberOfVariables'+1});
    EndInside;
  EndIf;
#endprocedure
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords
#procedure ApartConvertNumeratorToBasisCoords(dAdjMat,SepChar,dDeterminant,dBasisVector,BasisFuncID,DenFuncID,DenSetID,CoeffTableID,ListOfVariablesVar,NumberOfVariables,SymbolID)
* Only execute if having numerator structure:
  If ((count(`BasisFuncID',1) > 0) && (match(`SymbolID'1?{``ListOfVariablesVar''}) > 0));
    #Define ivar "0"
    #Do var={``ListOfVariablesVar'',}
      #If ("`var'" != "")
        #call ApartIncrementPreprocCounter(ivar)
        If (count(`var',1) > 0);
          $RHS = 
            `DenFuncID'($`dDeterminant')*
            (
            #Do jCol=1,`NumberOfVariables'
              + $`dAdjMat'`ivar'`SepChar'`jCol'*$`dBasisVector'`jCol'
            #EndDo
            )
          ;
          Inside $RHS;
            id `SymbolID'1?`DenSetID' = 1/`SymbolID'1;
          EndInside;
          id `var' = $RHS;
        EndIf;
      #EndIf
    #EndDo
    ModuleOption,Local,$RHS;
    id `DenFuncID'(`SymbolID'1?number_) = 1/`SymbolID'1;
    id `DenFuncID'(`SymbolID'1?symbol_) = 1/`SymbolID'1;
    id `DenFuncID'(`SymbolID'1?) = `DenFuncID'(nterms_(`SymbolID'1),`SymbolID'1);
    id `DenFuncID'(1,`SymbolID'1?) = 1/`SymbolID'1;
    id `DenFuncID'(`SymbolID'2?,`SymbolID'1?) = `DenFuncID'(`SymbolID'1);
  EndIf;
#endprocedure
*}}}
*
*{{{ ApartLoadBasisDenominatorsToDollars
#procedure ApartLoadBasisDenominatorsToDollars(dBasisDen,BasisFuncID,AuxFuncID,DenSetID,SymbolID,NumberOfVariables)
  If (count(`BasisFuncID',1) > 0);
    id `BasisFuncID'(<`SymbolID'1?$`dBasisDen'1>,...,<`SymbolID'`NumberOfVariables'?$`dBasisDen'`NumberOfVariables'>) = 
      `BasisFuncID'(<$`dBasisDen'1>,...,<$`dBasisDen'`NumberOfVariables'>)
    ;
    Inside <$`dBasisDen'1>,...,<$`dBasisDen'`NumberOfVariables'>;
      PutInside `AuxFuncID';
      id `AuxFuncID'(`SymbolID'1?number_) = `DenSetID'[`SymbolID'1];
    EndInside;
    ModuleOption,Local,<$`dBasisDen'1>,...,<$`dBasisDen'`NumberOfVariables'>;
  EndIf;
#endprocedure
*}}}
*
*{{{ ApartLoadMultiplicitiesToDollars
#procedure ApartLoadMultiplicitiesToDollars(dBasisDen,dMultiplicity,NumberOfVariables)
  #Do ivar=1,`NumberOfVariables'
    $`dMultiplicity'`ivar' = count_($`dBasisDen'`ivar',1);
    ModuleOption,Local,$`dMultiplicity'`ivar';
  #EndDo
#endprocedure
*}}}
*
*{{{ ApartBuildGeneratingFunction
#procedure ApartBuildGeneratingFunction(dAdjMat,SepChar,dDeterminant,dBasisVector,BasisFuncID,NonBasisFuncID,GenFuncID,CoeffFuncID,AuxFuncID,DenSetID,CoeffTableID,Sym1,Sym2)
  If (count(`BasisFuncID',1) == 1);
    #call ApartGetPresentVariablesWithPowersFromSet(`NonBasisFuncID',`AuxFuncID',APdensSet,1,`APnumberOfDenominators',`Sym1')
    id `AuxFuncID'(?a) = 1;
    Repeat;
      id `BasisFuncID'(?a,`Sym1'?,?b)*`NonBasisFuncID'(?c,`Sym1'?,?d) = 
        `BasisFuncID'(?a,`Sym1',?b)*`NonBasisFuncID'(?c,?d);
      id `NonBasisFuncID' = 1;
    EndRepeat;
    id `BasisFuncID'(?a) = 1;
* SANITY CHECK:
  ElseIf (count(`BasisFuncID',1) > 1);
    Print "Only one `BasisFuncID' is allowed, but we have a problematic term: %t";
    Print "ApartBuildGeneratingFunction";
    exit;
  EndIf;
  If (count(`NonBasisFuncID',1) > 0);
    ChainOut `NonBasisFuncID';
    #Do iDen=1,`APnumberOfDenominators'
      If (match(`NonBasisFuncID'(`iDen')) > 0);
        $NonBasisMultiplicity = count_(`DenSetID'[`iDen'],1);
        ModuleOption,Local,$NonBasisMultiplicity;
        id `NonBasisFuncID'(`iDen')*`DenSetID'[`iDen']^$NonBasisMultiplicity =
          `GenFuncID'(
            #Do iRow=1,`APnumberOfVariables'
              #Do jCol=1,`APnumberOfVariables'
                + `CoeffTableID'(`iDen',`iRow')*
                  $`dAdjMat'`iRow'`SepChar'`jCol'*
                  $`dBasisVector'`jCol'
              #EndDo
            #EndDo
            + $`dDeterminant'*`CoeffTableID'(`iDen',`APnumberOfVariables'+1)
          )^$NonBasisMultiplicity*
          `CoeffFuncID'($`dDeterminant')^$NonBasisMultiplicity
        ;
      EndIf;
    #EndDo
* OPTIMIZATION TRY:
*    id `CoeffFuncID'(`Sym1'?) = `Sym1';
* Massaging to simplify the generating functions as much as possible:
    FactArg `CoeffFuncID';
    ChainOut `CoeffFuncID';
    id `CoeffFuncID'(`Sym1'?symbol_) = `Sym1';
    id `CoeffFuncID'(`Sym1'?number_) = `Sym1';
    id `CoeffFuncID'(`Sym1'?) = `CoeffFuncID'(nterms_(`Sym1'),`Sym1');
    id `CoeffFuncID'(1,`Sym1'?) = `Sym1';
    id `CoeffFuncID'(`Sym1'?number_,`Sym2'?) = `CoeffFuncID'(`Sym2');
    If (match(`CoeffFuncID'(`Sym1'?,`Sym2'?,?a)) > 0);
      Print "`CoeffFuncID' with many arguments survive...";
      Print "Term: %t";
      Print "ApartBuildGeneratingFunction";
      exit;
    EndIf;
  EndIf;
#endprocedure
*}}}
*
**************
* EXPANSION: *
**************
*{{{ ApartSingleTaylorExpand
#procedure ApartSingleTaylorExpand(DenFuncID,OrdoFuncID,AuxFuncID,ExpansionSign,Sym1,...,Sym3)
* `OrdoFuncID'(w,n) : we expand in w and n gives the maximum multiplicity we keep
* in the output:
  If (count(`OrdoFuncID',1) > 0);
    If (match(`DenFuncID'(`Sym1'?$a,`Sym2'?$alpha)) > 0);
      id `DenFuncID'($a,$alpha) = `AuxFuncID'($a,$alpha);
      $pow = count_(`AuxFuncID',1);
      id,once `AuxFuncID'($a,$alpha)^$pow*`OrdoFuncID'(`Sym1'?,`Sym2'?) =
        sum_(
          `Sym3',0,`Sym2',
          (-$alpha)^`Sym3'*
          `DenFuncID'($a)^($pow+`Sym3')*
          binom_($pow+`Sym3'-1,`Sym3')*
          `Sym1'^(`ExpansionSign'*(`Sym3'))*
          `OrdoFuncID'(`Sym1',`Sym2'-`Sym3')
        )
      ;
      id `OrdoFuncID'(`Sym1'?,0) = 1;
      ModuleOption,Local,$a,$alpha,$pow;
    Else;
      id `OrdoFuncID'(?a) = 1;
    EndIf;
  EndIf;
#endprocedure
*}}}
*
*{{{ ApartTaylorExpand
#procedure ApartTaylorExpand(DenFuncID,OrdoFuncID,AuxFuncID,ExpansionSign,Sym1,...,Sym3)
  #Do it=1,1
    Bracket `DenFuncID',`OrdoFuncID';
    .sort
    Keep Brackets;
    #$it = 1;
    #call ApartSingleTaylorExpand(`DenFuncID',`OrdoFuncID',`AuxFuncID',`ExpansionSign',`Sym1',...,`Sym3')
* Iterations will continue as far as we have an Ordo function present:
    If (count(`OrdoFuncID',1) > 0);
      $it = 0;
    Else;
* Without the Ordo function we substitute zero for the expansion parameter:
      Transform,`DenFuncID',DropArgs(2,2);
    EndIf;
    ModuleOption,Minimum,$it;
    .sort:TaylorExpand iteration is over;
    #Redefine it "`$it'"
  #EndDo
#endprocedure
*}}}
*
************
* RESIDUE: *
************
*{{{ ApartResidueExtraction
#procedure ApartResidueExtraction()
  If (count(APgenDen,1) > 0);
    #call ApartGetPresentVariablesWithPowersFromSet(APdens,APdensMult,APdensSet,1,`APnumberOfDenominators',APn1)
    id APdens(?a) = APdens(?a)*APaux(nargs_(?a));
    id APaux(APn1?{<`APnumberOfVariables'}) = 0;
    id APaux(APn1?) = 1;
    id APdensMult(?a,APn1?{<1},?b) = 0;
    Repeat id APdens(?a,APn1?number_,?b) = APdens(?a,APdensSet[APn1],?b);
  EndIf;
  #Do DenIt=1,1
    #$DenIt = 1;
    id APdens(APn1?$den,?a) = APdens(?a);
    id APdensMult(APn1?$mult,?a) = APdensMult(?a);
    id APdens?{APdens,APdensMult} = 1;
    If (count(APgenDen,1) > 0);
      id APgenDen(APn1?) = APgenDen(rem_(APn1,$den),div_(APn1,$den));
      id APgenDen(APn1?,0) = APgenDen(APn1);
      If (match(APgenDen(APn1?,APn2?)) > 0);
        Multiply APordo($den,$mult-1);
      EndIf;
      ModuleOption,Local,$den,$mult;
    EndIf;
    #call ApartTaylorExpand(APgenDen,APordo,APaux,-1,APn1,...,APn3)
    id APgenDen(APn1?number_) = 1/APn1;
    id APgenDen(APn1?symbol_) = 1/APn1;
    If (count(APdens,1) > 0) $DenIt = 0;
    ModuleOption,Minimum,$DenIt;
    .sort:Den expansion iteration;
    #Redefine DenIt "`$DenIt'"
  #EndDo
  If (match(APaux(0)) > 0) Discard;
  id APaux(APgenDen(APn1?)) = APgenDen(APn1);
  id APgenDen(APn1?) = APden(nterms_(APn1),APn1);
  id APden(1,APn1?) = 1/APn1;
  id APden(APn1?number_,APn2?) = APden(APn2);
  If (match(APden(APn1?,APn2?,?a)) > 0);
    Print "APden with many arguments survive...";
    Print "Term: %t";
    Print "ApartResidueExtraction";
    exit;
  EndIf;
#endprocedure
*}}}
*
***********
* PARSER: *
***********
*{{{ ApartTagVarDepFunctionHeads
#procedure ApartTagVarDepFunctionHeads(FuncID,WrapFuncID,FoundFuncID,?variables)
  id `FuncID'(?a) = `FuncID'(`WrapFuncID'(?a));
  Argument `FuncID';
    #Do var={`?variables',}
      #If ("`var'" != "")
        If (Occurs(`var') > 0) Multiply replace_(`WrapFuncID',`FoundFuncID');
      #EndIf
    #EndDo
  EndArgument;
  id `FuncID'(`FoundFuncID'(?a)) = `FoundFuncID'(?a);
  id `FuncID'(`WrapFuncID'(?a)) = `FuncID'(?a);
#endprocedure
*}}}
*
*{{{ ApartParser
#procedure ApartParser(UserDenFuncID,?variables)
* Have two possible paths: the automatic and the manual discovery,
* all these depend on the value of APnumberOfDenominators!
  #Redefine APvariables "`?variables'"
  #call ApartCountItemsInPreprocList(APvariables,APnumberOfVariables)
  #If (`APnumberOfDenominators' == 0)
*******************
* AUTOMATIC MODE: *
*******************
    #Define OldNumberOfExtras "`ExtraSymbols_'"
    #call ApartTagVarDepFunctionHeads(`UserDenFuncID',APaux,APden,`?variables')
    ArgToExtraSymbol,ToNumber,APden;
    id APden(APn1?number_) = APdensSet[APn1];
    .sort
    #Define ActiveExpressions "`ActiveExprNames_'"
    Hide `ActiveExpressions';
    #Redefine APnumberOfDenominators "{`ExtraSymbols_'-`OldNumberOfExtras'}"
    #write "Number of denominators is set to: `APnumberOfDenominators'"
    local APtempDens = 
      #Do iDen=1,`APnumberOfDenominators'
        + ExtraSymbol_({`iDen'+`OldNumberOfExtras'})*APaux(`iDen')
      #EndDo
    ;
    .sort
    Bracket APaux;
    .sort
    FillExpression APdenTbl = APtempDens(APaux);
    .sort
    Drop APtempDens;
    #If (`OldNumberOfExtras' > 0);
      Delete,ExtraSymbols>`OldNumberOfExtras';
    #Else
      Delete,ExtraSymbols;
    #EndIf
  #Else
****************
* MANUAL MODE: *
****************
    #Do iDen=1,`APnumberOfDenominators'
      #$TempDen = APdenTbl(`iDen');
      id `UserDenFuncID'(`$TempDen') = APdensSet[`iDen'];
    #EndDo
  #EndIf
  .sort
  #call ApartConstructExtendedCoefficientMatrix(APdenTbl,APcoeffTbl,1,`APnumberOfDenominators',APvariables)
  .sort
  #IfDef `ActiveExpressions'
    Unhide `ActiveExpressions';
    .sort
  #EndIf
  PrintTable APcoeffTbl;
#endprocedure
*}}}
*
**************
* TOP-LEVEL: *
**************
*{{{ ApartMultiLinApart
#procedure ApartMultiLinApart(UserDenFuncID,?variables)
  .sort:Starting ApartMultiLinApart;
  #call ApartParser(`UserDenFuncID',`?variables')
  .sort
  #if (`APnumberOfDenominators' > 0)
    #message PHASEMARK PARSEEND
    #call ApartEliminateNullRelations()
    .sort
    #message PHASEMARK PHASE1END
    #call ApartFindBases()
    #call ApartExpandBases(APbasis,APaux,APn1)
    .sort
    If (count(APbasis,1) > 0);
      If (count(APbasis,1) > 1);
        print "Term with multiple APbasis factors...";
        print "Term: %t";
        print "ApartMultiLinApart";
        exit;
      EndIf;
      id APbasis(APdet(APn1?$Determinant),?a) = APbasis(?a);
      ModuleOption,Local,$Determinant;
      Multiply APcol(1,...,`APnumberOfVariables');
      #call ApartAdjugateMatrix(AdjMat,c,`APnumberOfVariables',APbasis,APcol,APaux,APcoeffTbl,APn1,...,APn4)
      id APcol(?a) = 1;
      #call ApartSetBasisVecDollarsFromBasis(APbasis,APdensSet,APaux,APcoeffTbl,BasisVector,`APnumberOfVariables',APn)
      #call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVector,APbasis,APnonBasis,APgenDen,APcoeff,APaux,APdensSet,APcoeffTbl,APn1,APn2)
    EndIf;
    .sort
    #call ApartResidueExtraction()
    .sort
    #message PHASEMARK PHASE2END
*
    #call ApartAbsorbNumerators()
*
    #call ApartResolveDenominators(APden)
    .sort:Resolved dens;
    id APcoeff(APn1?) = APn1;
  #EndIf
  Multiply replace_(APden,`UserDenFuncID');
#endprocedure
*}}}
*
*******************
* SIMPLIFICATION: *
*******************
*{{{ ApartAbsorbNumerators
#procedure ApartAbsorbNumerators()
* This routine expresses the variables present in the numerator with denominator
* functions, the denominator function can happen to show up with negative power ->
* that particular denominator is not only fully cancelled but turns into a polynomial!
  .sort:Bracketing dens;
  Bracket APdensSet;
  .sort:Bracketed wrt dens;
  Keep Brackets;
  Multiply APbasis;
  #Do iDen=1,`APnumberOfDenominators'
    If (Occurs(APd`iDen') > 0);
      id APbasis(?a) = APbasis(?a,`iDen');
    EndIf;
  #EndDo
  id APbasis(?a) = APbasis(nargs_(?a),?a);
  If (match(APbasis(`APnumberOfVariables',?a)) > 0);
    id APbasis(APn1?,?a) = APbasis(?a);
    Multiply APcol(1,...,`APnumberOfVariables');
    PutInside APdet,APbasis,APcol;
    id APdet(APn1?) = APdet(APn1)*APn1;
* CALCULATING THE DETERMINANT:
    Argument APdet;
      #If (`APuseBareiss' == 1)
        #call ApartBareissDeterminant(Determinant,APbasis,APcol,APaux,APcoeffTbl,`APnumberOfVariables',APn1)
      #Else
        #call ApartDeterminantThruCofactorExpansion(APbasis,APcol,APcoeffTbl,APaux,APn1,...,APn4)
      #EndIf
    EndArgument;
  Else;
    id APbasis(?a) = 1;
  EndIf;
* Only keeping the determinant and constructs for the adjugate matrix when active
* variables are present:
  If (count(
    #Define Nvars "0"
    #Do var={`APvariables',}
      #If ("`var'" != "")
        #call ApartIncrementPreprocCounter(Nvars)
        `var',1
        #If (`Nvars' < `APnumberOfVariables')
          ,
        #EndIf
      #EndIf
    #EndDo
    ) == 0) id APden(APn1?)*APcol(?a)*APbasis(?b) = 1;
  .sort:Determinant calculated;
  If (count(APdet,1) > 0);
    #call ApartAdjugateMatrix(AdjMat,c,`APnumberOfVariables',APbasis,APcol,APaux,APcoeffTbl,APn1,...,APn4)
    id APcol(?a) = 1;
    #call ApartSetBasisVecDollarsFromBasis(APbasis,APdensSet,APaux,APcoeffTbl,BasisVector,`APnumberOfVariables',APn)
    id APdet(APn1?$Determinant) = 1;
    ModuleOption,Local,$Determinant;
    #call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,APbasis,APden,APdensSet,APcoeffTbl,APvariables,`APnumberOfVariables',APn)
    id APbasis(?a) = 1;
  EndIf;
  .sort:Numerators substituted;
#endprocedure
*}}}
