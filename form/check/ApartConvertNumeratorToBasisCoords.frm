*{{{ ApartConvertNumeratorToBasisCoords_1 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
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
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - APd1*APd2*Basis(1,2);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_2 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1^2*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - APd1*APd2*Basis(1,2);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_3 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (Basis(1,2)*APd2);
.sort
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_4 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x^3*APd1^2*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (Basis(1,2)*APd1^-1*APd2);
.sort
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_5 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x^2*APd1^3*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - APd1*APd2*Basis(1,2);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_6 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,Det;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1^2*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = Det;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - APd1*APd2*Basis(1,2)/Det;
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_7 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,Det;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = Det;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (Basis(1,2)*APd2*Det^-1);
.sort
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_8 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
cfunctions Basis,den,aux;
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
local F = x*APd1^2*APd2*APd3*Basis(1,2,3);
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
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,3,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,3,n)
*
.sort
*
local diff = F - APd1*APd2*APd3*Basis(1,2,3);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
local d3 = $BasisVector3 - APd3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
assert result("d3") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_9 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
cfunctions Basis,den,aux;
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
local F = x*y*z*APd1*APd2*APd3*Basis(1,2,3);
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
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,3,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,3,n)
*
.sort
*
local diff = F - (Basis(1,2,3));
.sort
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_10 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x^2*y^3*APd1^2*APd2^4*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (Basis(1,2)*APd2);
.sort
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_11 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*y*APd1^2*APd2^2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - APd1*APd2*Basis(1,2);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_12 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = -1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = -1;
$AdjMat1c2 = -1;
$AdjMat2c1 = -1;
$AdjMat2c2 = 1;
$Determinant = -2;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (1/2*Basis(1,2)*APd2 + 1/2*Basis(1,2)*APd1);
.sort
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_13 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = -1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1^2*APd2^2*Basis(1,2);
.sort
*
$AdjMat1c1 = -1;
$AdjMat1c2 = -1;
$AdjMat2c1 = -1;
$AdjMat2c2 = 1;
$Determinant = -2;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (APd1*APd2^2 + APd1^2*APd2)*Basis(1,2)/2;
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_14 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = -1;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (Basis(1,2)*APd2 - Basis(1,2)*APd1);
.sort
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_15 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1^2*APd2^2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = -1;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (APd1*APd2^2 - APd1^2*APd2)*Basis(1,2);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_16 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 5;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = -3;
*
local F = x*APd1*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local d1 = $BasisVector1 - (APd1 - 5);
local d2 = $BasisVector2 - (APd2 + 3);
*
.sort
*
local diff = F - (Basis(1,2)*APd2 - 5*Basis(1,2)*APd1*APd2);
.sort
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_17 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,s,t;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = s;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = -t;
*
local F = x*APd1*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local d1 = $BasisVector1 - (APd1 - s);
local d2 = $BasisVector2 - (APd2 + t);
*
.sort
*
local diff = F - (Basis(1,2)*APd2 - Basis(1,2)*APd1*APd2*s);
.sort
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_18 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = (x + 1)*APd1*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (Basis(1,2)*APd2 + Basis(1,2)*APd1*APd2);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_19 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 5;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1^2*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (APd1*APd2 - 5*APd1^2*APd2)*Basis(1,2);
local d1 = $BasisVector1 - (APd1 - 5);
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_20 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = (x^2 + x)*APd1^2*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (Basis(1,2)*APd2 + Basis(1,2)*APd1*APd2);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_21 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(1,4) = 1;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(2,4) = -2;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(3,4) = 3;
*
local F = x*APd1*APd2*APd3*Basis(1,2,3);
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
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,3,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,3,n)
*
.sort
*
local d1 = $BasisVector1 - (APd1 - 1);
local d2 = $BasisVector2 - (APd2 + 2);
local d3 = $BasisVector3 - (APd3 - 3);
*
.sort
*
local diff = F - (Basis(1,2,3)*APd2*APd3 - Basis(1,2,3)*APd1*APd2*APd3);
.sort
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
assert result("d3") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_22 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,epsilon;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1^2*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = epsilon^2 + epsilon + 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - den(epsilon^2 + epsilon + 1)*APd1*APd2*Basis(1,2);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_23 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,epsilon;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = epsilon + 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (Basis(1,2)*den(1 + epsilon)*APd2);
.sort
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_24 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,epsilon;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1^2*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 5*epsilon;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - APd1*APd2*Basis(1,2)/(5*epsilon);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_25 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1^2*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = -1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F + APd1*APd2*Basis(1,2);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_26 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,epsilon;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = epsilon*x*APd1^2*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - epsilon*APd1*APd2*Basis(1,2);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_27 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,epsilon;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = epsilon;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = epsilon;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1^2*APd2^2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = -epsilon;
$AdjMat2c1 = -epsilon;
$AdjMat2c2 = 1;
$Determinant = 1 - epsilon^2;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - den(1 - epsilon^2)*(APd1*APd2^2 - epsilon*APd1^2*APd2)*Basis(1,2);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_28 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,epsilon;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = epsilon;
Fill APcoeffTbl(1,2) = -1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = -1;
Fill APcoeffTbl(2,2) = epsilon;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1^2*APd2^2*Basis(1,2);
.sort
*
$AdjMat1c1 = epsilon;
$AdjMat1c2 = 1;
$AdjMat2c1 = 1;
$AdjMat2c2 = epsilon;
$Determinant = epsilon^2 - 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - den(epsilon^2 - 1)*(epsilon*APd1*APd2^2 + APd1^2*APd2)*Basis(1,2);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_29 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "4"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y,z,w"
*
symbols x,y,z,w;
cfunctions Basis,den,aux;
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
*
local F = x*y*z*w*APd1*APd2*APd3*APd4*Basis(1,2,3,4);
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
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,4,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,4,n)
*
.sort
*
local diff = F - (Basis(1,2,3,4));
.sort
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_30 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "4"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y,z,w"
*
symbols x,y,z,w;
cfunctions Basis,den,aux;
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
*
local F = x*APd1^2*APd2*APd3*APd4*Basis(1,2,3,4);
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
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,4,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,4,n)
*
.sort
*
local diff = F - APd1*APd2*APd3*APd4*Basis(1,2,3,4);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
local d3 = $BasisVector3 - APd3;
local d4 = $BasisVector4 - APd4;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
assert result("d3") =~ expr("0")
assert result("d4") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_31 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,epsilon;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1 + epsilon;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 1;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = -1;
*
local F = x*APd1*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1 + epsilon;
$Determinant = 1 + epsilon;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local d1 = $BasisVector1 - (APd1 - 1);
local d2 = $BasisVector2 - (APd2 + 1);
*
.sort
*
local diff = F - (Basis(1,2)*den(1 + epsilon)*APd2 - Basis(1,2)*den(1 + epsilon)*APd1*APd2);
.sort
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_32 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = 5*APd1*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - 5*APd1*APd2*Basis(1,2);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_33 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = y*APd1*APd2^2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - APd1*APd2*Basis(1,2);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_34 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
cfunctions Basis,den,aux;
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
local F = z*APd1*APd2*APd3^2*Basis(1,2,3);
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
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,3,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,3,n)
*
.sort
*
local diff = F - APd1*APd2*APd3*Basis(1,2,3);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
local d3 = $BasisVector3 - APd3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
assert result("d3") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_35 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = y*APd1*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (Basis(1,2)*APd1);
.sort
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_36 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = -3*x*APd1^2*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F + 3*APd1*APd2*Basis(1,2);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_37 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = (x - y)*APd1^2*APd2^2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (APd1*APd2^2 - APd1^2*APd2)*Basis(1,2);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_38 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = (x^2 - y)*APd1^3*APd2^2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (APd1*APd2^2 - APd1^3*APd2)*Basis(1,2);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_39 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = -5;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1^2*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (APd1*APd2 + 5*APd1^2*APd2)*Basis(1,2);
local d1 = $BasisVector1 - (APd1 + 5);
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_40 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 3;
*
local F = y*APd1*APd2^2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (APd1*APd2 - 3*APd1*APd2^2)*Basis(1,2);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - (APd2 - 3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_41 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,s;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 2*s;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1^2*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (APd1*APd2 - 2*s*APd1^2*APd2)*Basis(1,2);
local d1 = $BasisVector1 - (APd1 - 2*s);
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_42 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 2;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 3;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1^2*APd2^2*Basis(1,2);
.sort
*
$AdjMat1c1 = 3;
$AdjMat1c2 = -1;
$AdjMat2c1 = -1;
$AdjMat2c2 = 2;
$Determinant = 5;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (3*APd1*APd2^2 - APd1^2*APd2)*Basis(1,2)/5;
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_43 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 2;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 3;
Fill APcoeffTbl(2,3) = 0;
*
local F = y*APd1^2*APd2^2*Basis(1,2);
.sort
*
$AdjMat1c1 = 3;
$AdjMat1c2 = -1;
$AdjMat2c1 = -1;
$AdjMat2c2 = 2;
$Determinant = 5;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (-APd1*APd2^2 + 2*APd1^2*APd2)*Basis(1,2)/5;
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_44 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x^2*APd1^3*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = -1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - APd1*APd2*Basis(1,2);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_45 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 2;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = -1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1^2*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = -1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 2;
$Determinant = -2;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - APd1*APd2*Basis(1,2)/2;
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_46 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,Det;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x^2*y*APd1^3*APd2^2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = Det;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - APd1*APd2*Basis(1,2)/Det^3;
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_47 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = (x^3 + x^2 + x)*APd1^2*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (APd1^-1*APd2 + APd2 + APd1*APd2)*Basis(1,2);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_48 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = (x*y + x)*APd1^2*APd2^2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (APd1*APd2 + APd1*APd2^2)*Basis(1,2);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_49 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
cfunctions Basis,den,aux;
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
local F = x*y*z*APd1^2*APd2^2*APd3^2*Basis(1,2,3);
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
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,3,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,3,n)
*
.sort
*
local diff = F - APd1*APd2*APd3*Basis(1,2,3);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
local d3 = $BasisVector3 - APd3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
assert result("d3") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_50 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
cfunctions Basis,den,aux;
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
local F = x*y*z*APd1*APd2^2*APd3^2*Basis(1,2,3);
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
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,3,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,3,n)
*
.sort
*
local diff = F - (Basis(1,2,3)*APd2*APd3);
.sort
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_51 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
*
local F = x*APd1^2*APd3*Basis(1,3);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - APd1*APd3*Basis(1,3);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_52 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 0;
Fill APcoeffTbl(2,3) = 7;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
Fill APcoeffTbl(4,1) = 0;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 0;
*
local F = x*APd2^2*APd4*Basis(2,4);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (APd2*APd4 - 7*APd2^2*APd4)*Basis(2,4);
local d1 = $BasisVector1 - (APd2 - 7);
local d2 = $BasisVector2 - APd4;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*{{{ ApartConvertNumeratorToBasisCoords_53 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 2;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 99;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 5;
*
local F = x*APd1*APd3*Basis(1,3);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - Basis(1,3)*(APd3 - 2*APd1*APd3);
local d1 = $BasisVector1 - (APd1 - 2);
local d2 = $BasisVector2 - (APd3 - 5);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_54 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 2;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 99;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 5;
*
local F = y*APd1*APd3*Basis(1,3);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - Basis(1,3)*(APd1 - 5*APd1*APd3);
local d1 = $BasisVector1 - (APd1 - 2);
local d2 = $BasisVector2 - (APd3 - 5);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_55 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 88;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 0;
Fill APcoeffTbl(2,3) = 3;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 77;
Fill APcoeffTbl(4,1) = 0;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 1;
*
local F = x*APd2*APd4*Basis(2,4);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - Basis(2,4)*(APd4 - 3*APd2*APd4);
local d1 = $BasisVector1 - (APd2 - 3);
local d2 = $BasisVector2 - (APd4 - 1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_56 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 88;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 0;
Fill APcoeffTbl(2,3) = 3;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 77;
Fill APcoeffTbl(4,1) = 0;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 1;
*
local F = y*APd2*APd4*Basis(2,4);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - Basis(2,4)*(APd2 - APd2*APd4);
local d1 = $BasisVector1 - (APd2 - 3);
local d2 = $BasisVector2 - (APd4 - 1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_57 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 1;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 0;
Fill APcoeffTbl(2,3) = 77;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 2;
Fill APcoeffTbl(3,3) = 0;
*
local F = x*APd1*APd3*Basis(1,3);
.sort
*
$AdjMat1c1 = 2;
$AdjMat1c2 = -1;
$AdjMat2c1 = -1;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - Basis(1,3)*(2*APd3 - 2*APd1*APd3 - APd1);
local d1 = $BasisVector1 - (APd1 - 1);
local d2 = $BasisVector2 - APd3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_58 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 1;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 0;
Fill APcoeffTbl(2,3) = 77;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 2;
Fill APcoeffTbl(3,3) = 0;
*
local F = y*APd1*APd3*Basis(1,3);
.sort
*
$AdjMat1c1 = 2;
$AdjMat1c2 = -1;
$AdjMat2c1 = -1;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - Basis(1,3)*(APd1*APd3 - APd3 + APd1);
local d1 = $BasisVector1 - (APd1 - 1);
local d2 = $BasisVector2 - APd3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_59 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 88;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 0;
Fill APcoeffTbl(2,3) = 4;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 77;
Fill APcoeffTbl(4,1) = 0;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 0;
*
local F = x*APd2^2*APd4*Basis(2,4);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - Basis(2,4)*(APd2*APd4 - 4*APd2^2*APd4);
local d1 = $BasisVector1 - (APd2 - 4);
local d2 = $BasisVector2 - APd4;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_60 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,s,t;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = s;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 99;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = t;
*
local F = y*APd1*APd3*Basis(1,3);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - Basis(1,3)*(APd1 - APd1*APd3*t);
local d1 = $BasisVector1 - (APd1 - s);
local d2 = $BasisVector2 - (APd3 - t);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_61 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "5"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(1,4) = 2;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 1;
Fill APcoeffTbl(2,4) = 99;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
Fill APcoeffTbl(3,4) = 4;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 0;
Fill APcoeffTbl(4,3) = 1;
Fill APcoeffTbl(4,4) = 88;
Fill APcoeffTbl(5,1) = 0;
Fill APcoeffTbl(5,2) = 0;
Fill APcoeffTbl(5,3) = 1;
Fill APcoeffTbl(5,4) = 6;
*
local F = z*APd1*APd3*APd5*Basis(1,3,5);
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
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,3,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,3,n)
*
.sort
*
local diff = F - Basis(1,3,5)*(APd1*APd3 - 6*APd1*APd3*APd5);
local d1 = $BasisVector1 - (APd1 - 2);
local d2 = $BasisVector2 - (APd3 - 4);
local d3 = $BasisVector3 - (APd5 - 6);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
assert result("d3") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_62 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 2;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 99;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 5;
*
local F = (x+2)*APd1*APd3*Basis(1,3);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - Basis(1,3)*APd3;
local d1 = $BasisVector1 - (APd1 - 2);
local d2 = $BasisVector2 - (APd3 - 5);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_63 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 2;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 99;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 3;
Fill APcoeffTbl(3,3) = 0;
*
local F = x*APd1*APd3*Basis(1,3);
.sort
*
$AdjMat1c1 = 3;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 2;
$Determinant = 6;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - 1/2*Basis(1,3)*APd3;
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_64 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "4"
#Redefine APnumberOfDenominators "7"
#Redefine APvariables "x,y,z,w"
*
symbols x,y,z,w;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(1,4) = 0;
Fill APcoeffTbl(1,5) = 1;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(2,4) = 0;
Fill APcoeffTbl(2,5) = 99;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
Fill APcoeffTbl(3,4) = 0;
Fill APcoeffTbl(3,5) = 2;
Fill APcoeffTbl(4,1) = 0;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 1;
Fill APcoeffTbl(4,4) = 0;
Fill APcoeffTbl(4,5) = 88;
Fill APcoeffTbl(5,1) = 0;
Fill APcoeffTbl(5,2) = 0;
Fill APcoeffTbl(5,3) = 1;
Fill APcoeffTbl(5,4) = 0;
Fill APcoeffTbl(5,5) = 3;
Fill APcoeffTbl(6,1) = 1;
Fill APcoeffTbl(6,2) = 0;
Fill APcoeffTbl(6,3) = 0;
Fill APcoeffTbl(6,4) = 1;
Fill APcoeffTbl(6,5) = 66;
Fill APcoeffTbl(7,1) = 0;
Fill APcoeffTbl(7,2) = 0;
Fill APcoeffTbl(7,3) = 0;
Fill APcoeffTbl(7,4) = 1;
Fill APcoeffTbl(7,5) = 4;
*
local F = w*APd1*APd3*APd5*APd7*Basis(1,3,5,7);
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
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,4,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,4,n)
*
.sort
*
local diff = F - Basis(1,3,5,7)*(APd1*APd3*APd5 - 4*APd1*APd3*APd5*APd7);
local d1 = $BasisVector1 - (APd1 - 1);
local d2 = $BasisVector2 - (APd3 - 2);
local d3 = $BasisVector3 - (APd5 - 3);
local d4 = $BasisVector4 - (APd7 - 4);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
assert result("d3") =~ expr("0")
assert result("d4") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_65 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = -1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x^2*APd1^2*APd2^2*Basis(1,2);
.sort
*
$AdjMat1c1 = -1;
$AdjMat1c2 = -1;
$AdjMat2c1 = -1;
$AdjMat2c2 = 1;
$Determinant = -2;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (APd1^2 + 2*APd1*APd2 + APd2^2)*Basis(1,2)/4;
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_66 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x^4*APd1^2*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - Basis(1,2)*APd1^-2*APd2;
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_67 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 3;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x^2*APd1*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (APd1^-1*APd2 - 6*APd2 + 9*APd1*APd2)*Basis(1,2);
local d1 = $BasisVector1 - (APd1 - 3);
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_68 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = -1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*y*APd1^2*APd2^2*Basis(1,2);
.sort
*
$AdjMat1c1 = -1;
$AdjMat1c2 = -1;
$AdjMat2c1 = -1;
$AdjMat2c2 = 1;
$Determinant = -2;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (APd2^2 - APd1^2)*Basis(1,2)/4;
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_69 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,s;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = s;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x^2*APd1^2*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (APd2 - 2*s*APd1*APd2 + s^2*APd1^2*APd2)*Basis(1,2);
local d1 = $BasisVector1 - (APd1 - s);
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_70 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 88;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 0;
Fill APcoeffTbl(2,3) = 3;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 77;
Fill APcoeffTbl(4,1) = 0;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 0;
*
local F = x^2*APd2^2*APd4*Basis(2,4);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (APd4 - 6*APd2*APd4 + 9*APd2^2*APd4)*Basis(2,4);
local d1 = $BasisVector1 - (APd2 - 3);
local d2 = $BasisVector2 - APd4;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_71 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = 2/3*x^3*APd1^2*APd2*Basis(1,2);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = 0;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - 2/3*Basis(1,2)*APd1^-1*APd2;
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_72 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = -1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x^2*y*APd1^3*APd2^3*Basis(1,2);
.sort
*
$AdjMat1c1 = -1;
$AdjMat1c2 = -1;
$AdjMat2c1 = -1;
$AdjMat2c2 = 1;
$Determinant = -2;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (APd2^3 + APd1*APd2^2 - APd1^2*APd2 - APd1^3)*Basis(1,2)/8;
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_73 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,den,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = -1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x^3*APd1^3*APd2^3*Basis(1,2);
.sort
*
$AdjMat1c1 = -1;
$AdjMat1c2 = -1;
$AdjMat2c1 = -1;
$AdjMat2c2 = 1;
$Determinant = -2;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,2,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,2,n)
*
.sort
*
local diff = F - (APd2^3 + 3*APd1*APd2^2 + 3*APd1^2*APd2 + APd1^3)*Basis(1,2)/8;
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartConvertNumeratorToBasisCoords_74 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
cfunctions Basis,den,aux;
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
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(3,4) = 0;
*
local F = x^2*APd1^2*APd2^2*APd3^2*Basis(1,2,3);
.sort
*
$AdjMat1c1 = 1;
$AdjMat1c2 = -1;
$AdjMat1c3 = 1;
$AdjMat2c1 = 0;
$AdjMat2c2 = 1;
$AdjMat2c3 = -1;
$AdjMat3c1 = 0;
$AdjMat3c2 = 0;
$AdjMat3c3 = 1;
$Determinant = 1;
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVector,3,n)
#call ApartConvertNumeratorToBasisCoords(AdjMat,c,Determinant,BasisVector,Basis,den,APdensSet,APcoeffTbl,APvariables,3,n)
*
.sort
*
local diff = F - (APd2^2*APd3^2 + APd1^2*APd3^2 + APd1^2*APd2^2 - 2*APd1*APd2*APd3^2 + 2*APd1*APd2^2*APd3 - 2*APd1^2*APd2*APd3)*Basis(1,2,3);
local d1 = $BasisVector1 - APd1;
local d2 = $BasisVector2 - APd2;
local d3 = $BasisVector3 - APd3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
assert result("d3") =~ expr("0")
*}}}
