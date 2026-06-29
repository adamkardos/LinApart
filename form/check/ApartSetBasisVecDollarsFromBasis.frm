*{{{ ApartSetBasisVecDollarsFromBasis_1 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,aux;
symbols n1,n2;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = Basis(1,2);
.sort
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
*
.sort
*
local diff = F - Basis(1,2);
local d1 = $BasisVec1 - APd1;
local d2 = $BasisVec2 - APd2;
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
*{{{ ApartSetBasisVecDollarsFromBasis_2 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,aux;
symbols n1,n2;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 5;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = -3;
*
local F = Basis(1,2);
.sort
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
*
.sort
*
local diff = F - Basis(1,2);
local d1 = $BasisVec1 - (APd1 - 5);
local d2 = $BasisVec2 - (APd2 + 3);
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
*{{{ ApartSetBasisVecDollarsFromBasis_3 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,aux;
symbols n1,n2;
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
local F = Basis(1,3);
.sort
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
*
.sort
*
local diff = F - Basis(1,3);
local d1 = $BasisVec1 - APd1;
local d2 = $BasisVec2 - (APd3 + 1);
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
*{{{ ApartSetBasisVecDollarsFromBasis_4 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
cfunctions Basis,aux;
symbols n1,n2,n3;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(1,4) = 1;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(2,4) = 0;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(3,4) = -2;
*
local F = Basis(1,2,3);
.sort
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,3,n)
*
.sort
*
local diff = F - Basis(1,2,3);
local d1 = $BasisVec1 - (APd1 - 1);
local d2 = $BasisVec2 - APd2;
local d3 = $BasisVec3 - (APd3 + 2);
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
*{{{ ApartSetBasisVecDollarsFromBasis_5 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,aux;
symbols n1,n2;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = Basis(1,2);
.sort
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,bv,2,n)
*
.sort
*
local diff = F - Basis(1,2);
local d1 = $bv1 - APd1;
local d2 = $bv2 - APd2;
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
*{{{ ApartSetBasisVecDollarsFromBasis_6 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,s,t;
cfunctions Basis,aux;
symbols n1,n2;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = s;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = -t;
*
local F = Basis(1,2);
.sort
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
*
.sort
*
local diff = F - Basis(1,2);
local d1 = $BasisVec1 - (APd1 - s);
local d2 = $BasisVec2 - (APd2 + t);
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
*{{{ ApartSetBasisVecDollarsFromBasis_7 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,aux;
symbols n1,n2;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = Basis(2,1);
.sort
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
*
.sort
*
local diff = F - Basis(2,1);
local d1 = $BasisVec1 - APd2;
local d2 = $BasisVec2 - APd1;
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
*{{{ ApartSetBasisVecDollarsFromBasis_8 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x;
cfunctions Basis,aux;
symbols n1;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 4;
*
local F = Basis(1);
.sort
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,1,n)
*
.sort
*
local diff = F - Basis(1);
local d1 = $BasisVec1 - (APd1 - 4);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
*}}}
*
*{{{ ApartSetBasisVecDollarsFromBasis_9 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "4"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y,z,w"
*
symbols x,y,z,w;
cfunctions Basis,aux;
symbols n1,n2,n3,n4;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(1,4) = 0;
Fill APcoeffTbl(1,5) = 1;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(2,4) = 0;
Fill APcoeffTbl(2,5) = -1;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(3,4) = 0;
Fill APcoeffTbl(3,5) = 2;
Fill APcoeffTbl(4,1) = 0;
Fill APcoeffTbl(4,2) = 0;
Fill APcoeffTbl(4,3) = 0;
Fill APcoeffTbl(4,4) = 1;
Fill APcoeffTbl(4,5) = -2;
*
local F = Basis(1,2,3,4);
.sort
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,4,n)
*
.sort
*
local diff = F - Basis(1,2,3,4);
local d1 = $BasisVec1 - (APd1 - 1);
local d2 = $BasisVec2 - (APd2 + 1);
local d3 = $BasisVec3 - (APd3 - 2);
local d4 = $BasisVec4 - (APd4 + 2);
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
*{{{ ApartSetBasisVecDollarsFromBasis_10 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "5"
#Redefine APnumberOfDenominators "5"
#Redefine APvariables "x,y,z,u,v"
*
symbols x,y,z,u,v;
cfunctions Basis,aux;
symbols n1,n2,n3,n4,n5;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(1,4) = 0;
Fill APcoeffTbl(1,5) = 0;
Fill APcoeffTbl(1,6) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(2,4) = 0;
Fill APcoeffTbl(2,5) = 0;
Fill APcoeffTbl(2,6) = 0;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(3,4) = 0;
Fill APcoeffTbl(3,5) = 0;
Fill APcoeffTbl(3,6) = 0;
Fill APcoeffTbl(4,1) = 0;
Fill APcoeffTbl(4,2) = 0;
Fill APcoeffTbl(4,3) = 0;
Fill APcoeffTbl(4,4) = 1;
Fill APcoeffTbl(4,5) = 0;
Fill APcoeffTbl(4,6) = 0;
Fill APcoeffTbl(5,1) = 0;
Fill APcoeffTbl(5,2) = 0;
Fill APcoeffTbl(5,3) = 0;
Fill APcoeffTbl(5,4) = 0;
Fill APcoeffTbl(5,5) = 1;
Fill APcoeffTbl(5,6) = 0;
*
local F = Basis(1,2,3,4,5);
.sort
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,5,n)
*
.sort
*
local diff = F - Basis(1,2,3,4,5);
local d1 = $BasisVec1 - APd1;
local d2 = $BasisVec2 - APd2;
local d3 = $BasisVec3 - APd3;
local d4 = $BasisVec4 - APd4;
local d5 = $BasisVec5 - APd5;
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
assert result("d5") =~ expr("0")
*}}}
*
*{{{ ApartSetBasisVecDollarsFromBasis_11 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,f1,f2,g1,g2;
cfunctions Basis,aux;
symbols n1,n2;
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
local F = f1*Basis(1,2) + f2*Basis(2,3);
.sort
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
id f1 = ($BasisVec1 - APd1)*g1 + ($BasisVec2 - APd2)*g2;
id f2 = ($BasisVec1 - APd2)*g1 + ($BasisVec2 - APd3 - 1)*g2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartSetBasisVecDollarsFromBasis_12 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,f1,f2;
cfunctions Basis,aux;
symbols n1,n2;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = f1*f2*Basis(1,2);
.sort
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
*
.sort
*
local diff = F - f1*f2*Basis(1,2);
local d1 = $BasisVec1 - APd1;
local d2 = $BasisVec2 - APd2;
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
*{{{ ApartSetBasisVecDollarsFromBasis_13 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,aux;
symbols n1,n2;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 1234567;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = -987654321;
*
local F = Basis(1,2);
.sort
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
*
.sort
*
local diff = F - Basis(1,2);
local d1 = $BasisVec1 - (APd1 - 1234567);
local d2 = $BasisVec2 - (APd2 + 987654321);
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
*{{{ ApartSetBasisVecDollarsFromBasis_14 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,s,t;
cfunctions Basis,aux;
symbols n1,n2;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = s + t;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = -s*t;
*
local F = Basis(1,2);
.sort
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
*
.sort
*
local diff = F - Basis(1,2);
local d1 = $BasisVec1 - (APd1 - s - t);
local d2 = $BasisVec2 - (APd2 + s*t);
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
*{{{ ApartSetBasisVecDollarsFromBasis_15 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,epsilon;
cfunctions Basis,aux;
symbols n1,n2;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 1 + epsilon^2;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = -epsilon + epsilon^2;
*
local F = Basis(1,2);
.sort
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
*
.sort
*
local diff = F - Basis(1,2);
local d1 = $BasisVec1 - (APd1 - 1 - epsilon^2);
local d2 = $BasisVec2 - (APd2 + epsilon - epsilon^2);
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
*{{{ ApartSetBasisVecDollarsFromBasis_16 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "10"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunctions Basis,aux;
symbols n1,n2;
*
Fill APcoeffTbl(5,1) = 1;
Fill APcoeffTbl(5,2) = 0;
Fill APcoeffTbl(5,3) = 9;
Fill APcoeffTbl(7,1) = 0;
Fill APcoeffTbl(7,2) = 1;
Fill APcoeffTbl(7,3) = -11;
*
local F = Basis(5,7);
.sort
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
*
.sort
*
local diff = F - Basis(5,7);
local d1 = $BasisVec1 - (APd5 - 9);
local d2 = $BasisVec2 - (APd7 + 11);
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
*{{{ ApartSetBasisVecDollarsFromBasis_17 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "4"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y,z,w"
*
symbols x,y,z,w,s,epsilon;
cfunctions Basis,aux;
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
Fill APcoeffTbl(2,5) = 7;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(3,4) = 0;
Fill APcoeffTbl(3,5) = -s;
Fill APcoeffTbl(4,1) = 0;
Fill APcoeffTbl(4,2) = 0;
Fill APcoeffTbl(4,3) = 0;
Fill APcoeffTbl(4,4) = 1;
Fill APcoeffTbl(4,5) = 1 + epsilon^2;
*
local F = Basis(1,2,3,4);
.sort
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,4,n)
*
.sort
*
local diff = F - Basis(1,2,3,4);
local d1 = $BasisVec1 - APd1;
local d2 = $BasisVec2 - (APd2 - 7);
local d3 = $BasisVec3 - (APd3 + s);
local d4 = $BasisVec4 - (APd4 - 1 - epsilon^2);
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
*{{{ ApartSetBasisVecDollarsFromBasis_18 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y,f1,f2,f3,g1,g2;
cfunctions Basis,aux;
symbols n1,n2;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 2;
Fill APcoeffTbl(4,1) = 0;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = -3;
*
local F = f1*Basis(1,2) + f2*Basis(3,4) + f3*Basis(1,4);
.sort
*
#call ApartSetBasisVecDollarsFromBasis(Basis,APdensSet,aux,APcoeffTbl,BasisVec,2,n)
id f1 = ($BasisVec1 - APd1)*g1 + ($BasisVec2 - APd2)*g2;
id f2 = ($BasisVec1 - APd3 + 2)*g1 + ($BasisVec2 - APd4 - 3)*g2;
id f3 = ($BasisVec1 - APd1)*g1 + ($BasisVec2 - APd4 - 3)*g2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
