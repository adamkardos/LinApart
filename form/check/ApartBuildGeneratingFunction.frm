*{{{ ApartBuildGeneratingFunction_1 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = APd1*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - APd1*APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_2 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
*
local F = APd1*APd2*APd3*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - APd1*APd2*GenFunc(APd1+APd2+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_3 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
*
local F = APd1*APd2*APd3*Basis(1,3);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = -1;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - APd1*APd3*GenFunc(-1-APd1+APd3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_4 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
*
local F = APd1*APd2*APd3*Basis(2,3);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = -1;
$AdjMat2c1 = -1;
$AdjMat2c2 = 0;
*
$Determinant = -1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F + APd2*APd3*GenFunc(APd2-APd3+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_5 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = -1;
*
local F = APd1^2*APd2*APd3*Basis(2,3);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = -1;
$AdjMat2c1 = -1;
$AdjMat2c2 = 0;
*
$Determinant = -1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - APd2*APd3*GenFunc(-1+APd2-APd3)^2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_6 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = -1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 2;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 1;
*
local F = APd1*APd2*APd3*Basis(1,2);
.sort
*
$AdjMat1c1 = -1;
$AdjMat1c2 = -1;
$AdjMat2c1 = -1;
$AdjMat2c2 = 1;
*
$Determinant = -2;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F + 2*GenFunc(-2-2*APd2-2*APd1)*APd1*APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_7 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 1;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 2;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 4;
*
local F = APd1*APd2*APd3*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - APd1*APd2*GenFunc(APd1+APd2+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_8 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = -1;
Fill APcoeffTbl(4,3) = 2;
*
local F = APd1*APd2*APd3*APd4*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - APd1*APd2*GenFunc(APd1+APd2+1)*GenFunc(APd1-APd2+2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_9 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = -1;
*
local F = APd1^2*APd3^2*APd4*Basis(1,3);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = -1;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - APd1^2*APd3^2*GenFunc(-1+APd3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_10 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = -1;
*
local F = APd1^2*APd3^2*APd4*Basis(1,4);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = -1;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - APd1^2*APd4*GenFunc(APd4+1)^2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_11 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 2;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 3;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
*
local F = APd1*APd2*APd3*Basis(1,2);
.sort
*
$AdjMat1c1 = 3;
$AdjMat1c2 = -1;
$AdjMat2c1 = -1;
$AdjMat2c2 = 2;
*
$Determinant = 5;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - APd1*APd2*5*GenFunc(2*APd1+APd2+5);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_12 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = APd1^3*APd2^2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - APd1^3*APd2^2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_13 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(1,4) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(2,4) = 0;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(3,4) = 0;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 1;
Fill APcoeffTbl(4,4) = 1;
*
local F = APd1*APd2*APd3*APd4*Basis(1,2,3);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat1c3 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$AdjMat2c3 = 0;
$AdjMat3c1 = 0;
$AdjMat3c2 = 0;
$AdjMat3c3 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,3,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat1c3,$AdjMat2c1,$AdjMat2c2,$AdjMat2c3,$AdjMat3c1,$AdjMat3c2,$AdjMat3c3,$Determinant;
*
.sort
*
local diff = F - APd1*APd2*APd3*GenFunc(APd1+APd2+APd3+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_14 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x"
*
symbols x;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 1;
*
local F = APd1*APd2*Basis(1);
.sort
*
$AdjMat1c1 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,1,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$Determinant;
*
.sort
*
local diff = F - APd1*GenFunc(APd1+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_15 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x"
*
symbols x;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 1;
*
local F = APd1*APd2*Basis(2);
.sort
*
$AdjMat1c1 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,1,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$Determinant;
*
.sort
*
local diff = F - GenFunc(-1+APd2)*APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_16 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "7"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 0;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(5,1) = 0;
Fill APcoeffTbl(5,2) = 1;
Fill APcoeffTbl(5,3) = 0;
Fill APcoeffTbl(7,1) = 1;
Fill APcoeffTbl(7,2) = 1;
Fill APcoeffTbl(7,3) = 1;
*
local F = APd2*APd5*APd7*Basis(2,5);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - APd2*APd5*GenFunc(APd2+APd5+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_17 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
*
local F = 3*APd1*APd2*APd3*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - 3*APd1*APd2*GenFunc(APd1+APd2+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_18 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = -1;
Fill APcoeffTbl(4,3) = 2;
*
local F = APd1*APd2*APd3^2*APd4^3*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - APd1*APd2*GenFunc(APd1+APd2+1)^2*GenFunc(APd1-APd2+2)^3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_19 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "5"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = -1;
Fill APcoeffTbl(4,3) = 2;
Fill APcoeffTbl(5,1) = 2;
Fill APcoeffTbl(5,2) = 1;
Fill APcoeffTbl(5,3) = 3;
*
local F = APd1*APd2*APd3*APd4*APd5*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - APd1*APd2*GenFunc(APd1+APd2+1)*GenFunc(APd1-APd2+2)*GenFunc(2*APd1+APd2+3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_20 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(1,4) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 1;
Fill APcoeffTbl(2,4) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(3,4) = 0;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 1;
Fill APcoeffTbl(4,4) = 1;
*
local F = APd1*APd2*APd3*APd4*Basis(1,2,3);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = -1;
$AdjMat1c3 = 1;
$AdjMat2c1 = 1;
$AdjMat2c2 = 1;
$AdjMat2c3 = -1;
$AdjMat3c1 = -1;
$AdjMat3c2 = 1;
$AdjMat3c3 = 1;
*
$Determinant = 2;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,3,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat1c3,$AdjMat2c1,$AdjMat2c2,$AdjMat2c3,$AdjMat3c1,$AdjMat3c2,$AdjMat3c3,$Determinant;
*
.sort
*
local diff = F - 2*APd1*APd2*APd3*GenFunc(APd1+APd2+APd3+2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_21 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
*
local F = APd1*Basis(1);
.sort
*
$AdjMat1c1 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,1,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$Determinant;
*
.sort
*
local diff = F - APd1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_22 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,s;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
*
local F = s*APd1*APd2*APd3*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - s*APd1*APd2*GenFunc(APd1+APd2+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_23 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
*
local F = -APd1*APd2*APd3*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F + APd1*APd2*GenFunc(APd1+APd2+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_24 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
*
local F = 1/3*APd1*APd2*APd3*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - 1/3*APd1*APd2*GenFunc(APd1+APd2+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_25 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x"
*
symbols x;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 2;
Fill APcoeffTbl(1,2) = 3;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 0;
*
local F = APd1*APd2*Basis(1);
.sort
*
$AdjMat1c1 = 1;
*
$Determinant = 2;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,1,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$Determinant;
*
.sort
*
local diff = F - 2*GenFunc(-3+APd1)*APd1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_26 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(1,4) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(2,4) = 0;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(3,4) = 0;
*
local F = APd1^2*APd2^3*APd3*Basis(1,2,3);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat1c3 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$AdjMat2c3 = 0;
$AdjMat3c1 = 0;
$AdjMat3c2 = 0;
$AdjMat3c3 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,3,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat1c3,$AdjMat2c1,$AdjMat2c2,$AdjMat2c3,$AdjMat3c1,$AdjMat3c2,$AdjMat3c3,$Determinant;
*
.sort
*
local diff = F - APd1^2*APd2^3*APd3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_27 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,s;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = s;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = s;
*
$Determinant = s;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - s*APd1*APd2*GenFunc(APd1+s*APd2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_28 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,s;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = s;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
*
local F = APd1*APd2*APd3*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = s;
*
$Determinant = s;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - s*APd1*APd2*GenFunc(APd1+s*APd2+s);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_29 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,s,t;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = s;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = t;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
*
local F = APd1*APd2*APd3*Basis(1,2);
.sort
*
$AdjMat1c1 = t;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = s;
*
$Determinant = s*t;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - s*t*APd1*APd2*GenFunc(t*APd1+s*APd2+s*t);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_30 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,s,t;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = s;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = t;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
*
local F = APd1*APd2*APd3*Basis(1,2);
.sort
*
$AdjMat1c1 = t;
$AdjMat1c2 = -1;
$AdjMat2c1 = -1;
$AdjMat2c2 = s;
*
$Determinant = s*t-1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff =
  F
  -
  APd1*APd2*Coeff(-1+s*t)*GenFunc(-1+s*t-APd2+APd2*s-APd1+APd1*t)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_31 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,s;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = s;
*
local F = APd1*APd2*APd3*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - APd1*APd2*GenFunc(APd1+APd2+s);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_32 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,s,t;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = s+t;
*
local F = APd1*APd2*APd3*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - APd1*APd2*GenFunc(APd1+APd2+s+t);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_33 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y,s;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = s;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = -1;
Fill APcoeffTbl(4,3) = 1;
*
local F = APd1*APd2*APd3*APd4*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = s;
*
$Determinant = s;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - s^2*APd1*APd2*GenFunc(APd1+s*APd2)*GenFunc(APd1-s*APd2+s);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_34 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,s;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = s;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
*
local F = APd1*APd2*APd3^4*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = s;
*
$Determinant = s;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - s^4*APd1*APd2*GenFunc(APd1+s*APd2+s)^4;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_35 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "4"
#Redefine APnumberOfDenominators "5"
#Redefine APvariables "x,y,z,w"
*
symbols x,y,z,w;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(1,4) = 0;
Fill APcoeffTbl(1,5) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(2,4) = 0;
Fill APcoeffTbl(2,5) = 0;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(3,4) = 0;
Fill APcoeffTbl(3,5) = 0;
Fill APcoeffTbl(4,1) = 0;
Fill APcoeffTbl(4,2) = 0;
Fill APcoeffTbl(4,3) = 0;
Fill APcoeffTbl(4,4) = 1;
Fill APcoeffTbl(4,5) = 0;
Fill APcoeffTbl(5,1) = 1;
Fill APcoeffTbl(5,2) = 1;
Fill APcoeffTbl(5,3) = 1;
Fill APcoeffTbl(5,4) = 1;
Fill APcoeffTbl(5,5) = 1;
*
local F = APd1*APd2*APd3*APd4*APd5*Basis(1,2,3,4);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat1c3 = 0;
$AdjMat1c4 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$AdjMat2c3 = 0;
$AdjMat2c4 = 0;
$AdjMat3c1 = 0;
$AdjMat3c2 = 0;
$AdjMat3c3 = 1;
$AdjMat3c4 = 0;
$AdjMat4c1 = 0;
$AdjMat4c2 = 0;
$AdjMat4c3 = 0;
$AdjMat4c4 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,4,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat1c3,$AdjMat1c4,$AdjMat2c1,$AdjMat2c2,$AdjMat2c3,$AdjMat2c4,$AdjMat3c1,$AdjMat3c2,$AdjMat3c3,$AdjMat3c4,$AdjMat4c1,
    $AdjMat4c2,$AdjMat4c3,$AdjMat4c4,$Determinant;
*
.sort
*
local diff = F - APd1*APd2*APd3*APd4*GenFunc(APd1+APd2+APd3+APd4+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_36 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x"
*
symbols x,s,t;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = s+t;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 1;
*
local F = APd1*APd2*Basis(1);
.sort
*
$AdjMat1c1 = 1;
*
$Determinant = s+t;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,1,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$Determinant;
*
.sort
*
local diff = F - Coeff(s+t)*APd1*GenFunc(APd1+s+t);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_37 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
*
local F = APd1*APd2*APd3^5*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - APd1*APd2*GenFunc(APd1+APd2+1)^5;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_38 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 10;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 10;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
*
local F = APd1*APd2*APd3*Basis(1,2);
.sort
*
$AdjMat1c1 = 10;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 10;
*
$Determinant = 100;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - 100*GenFunc(100+10*APd2+10*APd1)*APd1*APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_39 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "6"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 2;
Fill APcoeffTbl(5,1) = 1;
Fill APcoeffTbl(5,2) = 1;
Fill APcoeffTbl(5,3) = 3;
Fill APcoeffTbl(6,1) = 1;
Fill APcoeffTbl(6,2) = 2;
Fill APcoeffTbl(6,3) = -1;
*
local F = APd1*APd2*APd3*APd4*APd5*APd6*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff =
  F
  -
  APd1*APd2
    *GenFunc(-1+2*APd2+APd1)*GenFunc(1+APd2+APd1)
    *GenFunc(2+APd2+APd1)*GenFunc(3+APd2+APd1)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_40 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "11"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 0;
Fill APcoeffTbl(7,1) = 1;
Fill APcoeffTbl(7,2) = 1;
Fill APcoeffTbl(7,3) = 1;
Fill APcoeffTbl(11,1) = 0;
Fill APcoeffTbl(11,2) = 1;
Fill APcoeffTbl(11,3) = 0;
*
local F = APd3*APd7*APd11*Basis(3,11);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - APd3*APd11*GenFunc(APd3+APd11+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_41 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,s,t;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = s+t;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
*
local F = APd1*APd2*APd3*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = s+t;
*
$Determinant = s+t;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - Coeff(s+t)*APd1*APd2*GenFunc(APd1+(s+t)*APd2+s+t);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_42 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,s;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = s;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
*
local F = -1/7*APd1^2*APd2*APd3^4*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = s;
*
$Determinant = s;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F + 1/7*s^4*APd1^2*APd2*GenFunc(APd1+s*APd2+s)^4;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_43 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "5"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 2;
Fill APcoeffTbl(5,1) = 1;
Fill APcoeffTbl(5,2) = 1;
Fill APcoeffTbl(5,3) = 3;
*
local F = APd1*APd2*APd3*APd4*APd5*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - APd1*APd2*GenFunc(APd1+APd2+1)*GenFunc(APd1+APd2+2)*GenFunc(APd1+APd2+3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_44 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = -1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = -1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
*
local F = APd1*APd2*APd3*Basis(1,2);
.sort
*
$AdjMat1c1 = -1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = -1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - APd1*APd2*GenFunc(1-APd1-APd2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_45 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y,z"
*
symbols x,y,z,s;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = s+1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(1,4) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(2,4) = 0;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(3,4) = 0;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 1;
Fill APcoeffTbl(4,4) = 1;
*
local F = APd1*APd2*APd3*APd4*Basis(1,2,3);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat1c3 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = s+1;
$AdjMat2c3 = 0;
$AdjMat3c1 = 0;
$AdjMat3c2 = 0;
$AdjMat3c3 = s+1;
*
$Determinant = s+1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,3,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat1c3,$AdjMat2c1,$AdjMat2c2,$AdjMat2c3,$AdjMat3c1,$AdjMat3c2,$AdjMat3c3,$Determinant;
*
.sort
*
local diff = F - Coeff(s+1)*APd1*APd2*APd3*GenFunc(APd1+(s+1)*APd2+(s+1)*APd3+s+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_46 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y,s,t;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = s;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = t;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = -1;
Fill APcoeffTbl(4,3) = 2;
*
local F = APd1*APd2*APd3*APd4*Basis(1,2);
.sort
*
$AdjMat1c1 = t;
$AdjMat1c2 = -1;
$AdjMat2c1 = -1;
$AdjMat2c2 = s;
*
$Determinant = s*t-1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff =
  F
  -
  Coeff(-1+s*t)^2
    *GenFunc(-1+s*t-APd2+APd2*s-APd1+APd1*t)
    *GenFunc(-2+2*s*t-APd2-APd2*s+APd1+APd1*t)
    *APd1*APd2
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_47 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y,z"
*
symbols x,y,z,s,t,u;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = s;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 1;
Fill APcoeffTbl(1,4) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = t;
Fill APcoeffTbl(2,3) = 1;
Fill APcoeffTbl(2,4) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = u;
Fill APcoeffTbl(3,4) = 0;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 1;
Fill APcoeffTbl(4,4) = 1;
*
local F = APd1*APd2*APd3*APd4*Basis(1,2,3);
.sort
*
$AdjMat1c1 = t*u-1;
$AdjMat1c2 = 1-u;
$AdjMat1c3 = 1-t;
$AdjMat2c1 = 1-u;
$AdjMat2c2 = s*u-1;
$AdjMat2c3 = 1-s;
$AdjMat3c1 = 1-t;
$AdjMat3c2 = 1-s;
$AdjMat3c3 = s*t-1;
*
$Determinant = s*t*u-s-t-u+2;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,3,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat1c3,$AdjMat2c1,$AdjMat2c2,$AdjMat2c3,$AdjMat3c1,$AdjMat3c2,$AdjMat3c3,$Determinant;
*
.sort
*
local diff =
  F
  -
  Coeff(s*t*u-s-t-u+2)*APd1*APd2*APd3
    *GenFunc((t*u-t-u+1)*APd1+(s*u-s-u+1)*APd2+(s*t-s-t+1)*APd3+s*t*u-s-t-u+2)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_48 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y,z"
*
symbols x,y,z,s,t,u;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = s;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(1,4) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = t;
Fill APcoeffTbl(2,3) = 1;
Fill APcoeffTbl(2,4) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = u;
Fill APcoeffTbl(3,4) = 0;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 1;
Fill APcoeffTbl(4,4) = 1;
*
local F = APd1*APd2*APd3*APd4*Basis(1,2,3);
.sort
*
$AdjMat1c1 = t*u;
$AdjMat1c2 = -u;
$AdjMat1c3 = 1;
$AdjMat2c1 = 1;
$AdjMat2c2 = s*u;
$AdjMat2c3 = -s;
$AdjMat3c1 = -t;
$AdjMat3c2 = 1;
$AdjMat3c3 = s*t;
*
$Determinant = s*t*u+1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,3,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat1c3,$AdjMat2c1,$AdjMat2c2,$AdjMat2c3,$AdjMat3c1,$AdjMat3c2,$AdjMat3c3,$Determinant;
*
.sort
*
local diff =
  F
  -
  Coeff(s*t*u+1)*APd1*APd2*APd3
    *GenFunc((t*u-t+1)*APd1+(s*u-u+1)*APd2+(s*t-s+1)*APd3+s*t*u+1)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_49 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "5"
#Redefine APvariables "x,y,z"
*
symbols x,y,z,s,t;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = s;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(1,4) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = t;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(2,4) = 0;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(3,4) = 0;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 1;
Fill APcoeffTbl(4,4) = 1;
Fill APcoeffTbl(5,1) = 1;
Fill APcoeffTbl(5,2) = -1;
Fill APcoeffTbl(5,3) = 1;
Fill APcoeffTbl(5,4) = 2;
*
local F = APd1*APd2*APd3*APd4*APd5*Basis(1,2,3);
.sort
*
$AdjMat1c1 = t;
$AdjMat1c2 = -1;
$AdjMat1c3 = 0;
$AdjMat2c1 = -1;
$AdjMat2c2 = s;
$AdjMat2c3 = 0;
$AdjMat3c1 = 0;
$AdjMat3c2 = 0;
$AdjMat3c3 = s*t-1;
*
$Determinant = s*t-1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,3,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat1c3,$AdjMat2c1,$AdjMat2c2,$AdjMat2c3,$AdjMat3c1,$AdjMat3c2,$AdjMat3c3,$Determinant;
*
.sort
*
local diff =
  F
  -
  Coeff(-1+s*t)^2*APd1*APd2*APd3
    *GenFunc(-1+s*t-APd3+APd3*s*t-APd2+APd2*s-APd1+APd1*t)
    *GenFunc(-2+2*s*t-APd3+APd3*s*t-APd2-APd2*s+APd1+APd1*t)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_50 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "4"
#Redefine APnumberOfDenominators "6"
#Redefine APvariables "x,y,z,w"
*
symbols x,y,z,w,s,t;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = s;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(1,4) = 0;
Fill APcoeffTbl(1,5) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = t;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(2,4) = 0;
Fill APcoeffTbl(2,5) = 0;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(3,4) = 0;
Fill APcoeffTbl(3,5) = 0;
Fill APcoeffTbl(4,1) = 0;
Fill APcoeffTbl(4,2) = 0;
Fill APcoeffTbl(4,3) = 0;
Fill APcoeffTbl(4,4) = 1;
Fill APcoeffTbl(4,5) = 0;
Fill APcoeffTbl(5,1) = 1;
Fill APcoeffTbl(5,2) = 1;
Fill APcoeffTbl(5,3) = 1;
Fill APcoeffTbl(5,4) = 1;
Fill APcoeffTbl(5,5) = 1;
Fill APcoeffTbl(6,1) = 1;
Fill APcoeffTbl(6,2) = -1;
Fill APcoeffTbl(6,3) = 1;
Fill APcoeffTbl(6,4) = -1;
Fill APcoeffTbl(6,5) = 2;
*
local F = APd1*APd2*APd3*APd4*APd5*APd6*Basis(1,2,3,4);
.sort
*
$AdjMat1c1 = t;
$AdjMat1c2 = 0;
$AdjMat1c3 = 0;
$AdjMat1c4 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = s;
$AdjMat2c3 = 0;
$AdjMat2c4 = 0;
$AdjMat3c1 = 0;
$AdjMat3c2 = 0;
$AdjMat3c3 = s*t;
$AdjMat3c4 = 0;
$AdjMat4c1 = 0;
$AdjMat4c2 = 0;
$AdjMat4c3 = 0;
$AdjMat4c4 = s*t;
*
$Determinant = s*t;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,4,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat1c3,$AdjMat1c4,$AdjMat2c1,$AdjMat2c2,$AdjMat2c3,$AdjMat2c4,$AdjMat3c1,$AdjMat3c2,$AdjMat3c3,$AdjMat3c4,$AdjMat4c1,
    $AdjMat4c2,$AdjMat4c3,$AdjMat4c4,$Determinant;
*
.sort
*
local diff =
  F
  -
  s^2*t^2*APd1*APd2*APd3*APd4
    *GenFunc(t*APd1+s*APd2+s*t*APd3+s*t*APd4+s*t)
    *GenFunc(t*APd1-s*APd2+s*t*APd3-s*t*APd4+2*s*t)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_51 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
*
local F = APd1*APd2*APd3*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - APd1*APd2*GenFunc(APd1+APd2+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_52 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
*
local F = APd1*APd2*APd3*Basis(1,3);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = -1;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F - APd1*APd3*GenFunc(-1-APd1+APd3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_53 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
*
local F = APd1*APd2*APd3*Basis(2,3);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = -1;
$AdjMat2c1 = -1;
$AdjMat2c2 = 0;
*
$Determinant = -1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff = F + APd2*APd3*GenFunc(APd2-APd3+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_54 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "6"
#Redefine APvariables "x,y"
*
symbols x,y,epsilon;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1 + epsilon;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = -1;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 1 - epsilon;
Fill APcoeffTbl(4,3) = -2;
Fill APcoeffTbl(5,1) = 2 + epsilon^2;
Fill APcoeffTbl(5,2) = -epsilon;
Fill APcoeffTbl(5,3) = 3;
Fill APcoeffTbl(6,1) = epsilon;
Fill APcoeffTbl(6,2) = 3 - 2*epsilon;
Fill APcoeffTbl(6,3) = -epsilon^3;
*
local F = APd1*APd2*APd3*APd4*APd5*APd6*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff =
  F
  -
  (
    APd1*APd2
    *GenFunc(-1+APd2+APd1+APd1*epsilon)
    *GenFunc(-2+APd2-APd2*epsilon+APd1)
    *GenFunc(3-APd2*epsilon+2*APd1+APd1*epsilon^2)
    *GenFunc(-epsilon^3+3*APd2-2*APd2*epsilon+APd1*epsilon)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_55 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "6"
#Redefine APvariables "x,y"
*
symbols x,y,epsilon;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1 + epsilon;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = -1;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 1 - epsilon;
Fill APcoeffTbl(4,3) = -2;
Fill APcoeffTbl(5,1) = 2 + epsilon^2;
Fill APcoeffTbl(5,2) = -epsilon;
Fill APcoeffTbl(5,3) = 3;
Fill APcoeffTbl(6,1) = epsilon;
Fill APcoeffTbl(6,2) = 3 - 2*epsilon;
Fill APcoeffTbl(6,3) = -epsilon^3;
*
local F = APd1*APd2*APd3*APd4*APd5*APd6*Basis(1,4);
.sort
*
$AdjMat1c1 = 1 - epsilon;
$AdjMat1c2 = 0;
$AdjMat2c1 = -1;
$AdjMat2c2 = 1;
*
$Determinant = 1 - epsilon;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff =
  F
  -
  Coeff(-1+epsilon)^4
  *APd1*APd4
  *GenFunc(2+APd4-APd1)
  *GenFunc(1+epsilon+APd4-APd1*epsilon^2)
  *GenFunc(3-5*epsilon-APd4*epsilon+2*APd1-APd1*epsilon+APd1*epsilon^2-APd1*epsilon^3)
  *GenFunc(6-4*epsilon-epsilon^3+epsilon^4+3*APd4-2*APd4*epsilon-3*APd1+3*APd1*epsilon-APd1*epsilon^2)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_56 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "6"
#Redefine APvariables "x,y"
*
symbols x,y,epsilon;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1 + epsilon;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = -1;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 1 - epsilon;
Fill APcoeffTbl(4,3) = -2;
Fill APcoeffTbl(5,1) = 2 + epsilon^2;
Fill APcoeffTbl(5,2) = -epsilon;
Fill APcoeffTbl(5,3) = 3;
Fill APcoeffTbl(6,1) = epsilon;
Fill APcoeffTbl(6,2) = 3 - 2*epsilon;
Fill APcoeffTbl(6,3) = -epsilon^3;
*
local F = APd1*APd2*APd3*APd4*APd5*APd6*Basis(3,4);
.sort
*
$AdjMat1c1 = 1 - epsilon;
$AdjMat1c2 = -1;
$AdjMat2c1 = -1;
$AdjMat2c2 = 1 + epsilon;
*
$Determinant = -epsilon^2;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff =
  F
  -
  epsilon^8
  *APd3*APd4
  *GenFunc(-1-epsilon-APd4+APd3-APd3*epsilon)
  *GenFunc(1+2*epsilon+APd4+APd4*epsilon-APd3)
  *GenFunc(3+3*epsilon-5*epsilon^2+epsilon^5+3*APd4-2*APd4*epsilon^2-3*APd3+3*APd3*epsilon-APd3*epsilon^2)
  *GenFunc(-2-3*epsilon-6*epsilon^2-epsilon^3-2*APd4-APd4*epsilon-2*APd4*epsilon^2+2*APd3-APd3*epsilon+APd3*epsilon^2-APd3*epsilon^3)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_57 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,epsilon;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1 + epsilon;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = -1;
*
local F = epsilon^-1*APd1*APd2*APd3*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff =
  F
  -
  (
    epsilon^-1*APd1*APd2*GenFunc(-1+APd2+APd1+APd1*epsilon)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_58 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,epsilon;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1 + epsilon;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = -1;
*
local F = epsilon^-2*APd1*APd2*APd3*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
*
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff =
  F
  -
  (
    epsilon^-2*APd1*APd2*GenFunc(-1+APd2+APd1+APd1*epsilon)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_59 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y,epsilon;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1 + epsilon;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = -1;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 1 - epsilon;
Fill APcoeffTbl(4,3) = -2;
*
local F = epsilon^-1*APd1*APd2*APd3*APd4*Basis(3,4);
.sort
*
$AdjMat1c1 = 1 - epsilon;
$AdjMat1c2 = -1;
$AdjMat2c1 = -1;
$AdjMat2c2 = 1 + epsilon;
*
$Determinant = -epsilon^2;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
#call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
ModuleOption,Local,$AdjMat1c1,$AdjMat1c2,$AdjMat2c1,$AdjMat2c2,$Determinant;
*
.sort
*
local diff =
  F
  -
  (
    epsilon^3*APd3*APd4
    *GenFunc(-1-epsilon-APd4+APd3-APd3*epsilon)
    *GenFunc(1+2*epsilon+APd4+APd4*epsilon-APd3)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartBuildGeneratingFunction_60 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,epsilon;
cfunctions Basis,NonBasis,GenFunc,Coeff,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1 + epsilon;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = -1;
*
local F =
  + epsilon^-1*APd1*APd2*APd3*Basis(APdet(1),1,2)
  + epsilon^-2*APd1*APd2*APd3*Basis(APdet(1),1,3)
;
.sort
*
If (count(Basis,1) > 0);
  id Basis(APdet(n1?$Determinant),?a) = Basis(?a);
  ModuleOption,Local,$Determinant;
  Multiply APcol(1,2);
  #call ApartAdjugateMatrix(AdjMat,c,2,Basis,APcol,aux,APcoeffTbl,n1,...,n4)
  id APcol(?a) = 1;
  #call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
  #call ApartBuildGeneratingFunction(AdjMat,c,Determinant,BasisVec,Basis,NonBasis,GenFunc,Coeff,aux,APdensSet,APcoeffTbl,n1,n2)
EndIf;
*
.sort
*
local diff =
  F
  -
  (
    epsilon^-1*APd1*APd2*GenFunc(-1+APd2+APd1+APd1*epsilon)
    + epsilon^-2*APd1*APd3*GenFunc(1+APd3-APd1-APd1*epsilon)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
