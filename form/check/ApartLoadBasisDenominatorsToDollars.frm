*{{{ ApartLoadBasisDenominatorsToDollars_1 :
#include- ../src/formapart.h
cfunction acc;
*
#Redefine APnumberOfVariables "2"
*
cfunctions Basis,aux;
symbols n1,n2;
*
local F = Basis(1,2);
.sort
*
#call ApartLoadBasisDenominatorsToDollars(BasisDen,Basis,aux,APdensSet,n,2)
id Basis(1,2) = acc(1)*($BasisDen1 - APd1) + acc(2)*($BasisDen2 - APd2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartLoadBasisDenominatorsToDollars_2 :
#include- ../src/formapart.h
cfunction acc;
*
#Redefine APnumberOfVariables "2"
*
cfunctions Basis,aux;
symbols n1,n2;
*
local F = Basis(1,3);
.sort
*
#call ApartLoadBasisDenominatorsToDollars(BasisDen,Basis,aux,APdensSet,n,2)
id Basis(1,3) = acc(1)*($BasisDen1 - APd1) + acc(2)*($BasisDen2 - APd3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartLoadBasisDenominatorsToDollars_3 :
#include- ../src/formapart.h
cfunction acc;
*
#Redefine APnumberOfVariables "2"
*
cfunctions Basis,aux;
symbols n1,n2;
*
local F = Basis(3,1);
.sort
*
#call ApartLoadBasisDenominatorsToDollars(BasisDen,Basis,aux,APdensSet,n,2)
id Basis(3,1) = acc(1)*($BasisDen1 - APd3) + acc(2)*($BasisDen2 - APd1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartLoadBasisDenominatorsToDollars_4 :
#include- ../src/formapart.h
cfunction acc;
*
#Redefine APnumberOfVariables "2"
*
cfunctions Basis,aux;
symbols n1,n2;
*
local F = Basis(7,9);
.sort
*
#call ApartLoadBasisDenominatorsToDollars(BasisDen,Basis,aux,APdensSet,n,2)
id Basis(7,9) = acc(1)*($BasisDen1 - APd7) + acc(2)*($BasisDen2 - APd9);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartLoadBasisDenominatorsToDollars_5 :
#include- ../src/formapart.h
cfunction acc;
*
#Redefine APnumberOfVariables "3"
*
cfunctions Basis,aux;
symbols n1,n2,n3;
*
local F = Basis(1,2,3);
.sort
*
#call ApartLoadBasisDenominatorsToDollars(BasisDen,Basis,aux,APdensSet,n,3)
id Basis(1,2,3) = acc(1)*($BasisDen1 - APd1) + acc(2)*($BasisDen2 - APd2) + acc(3)*($BasisDen3 - APd3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartLoadBasisDenominatorsToDollars_6 :
#include- ../src/formapart.h
cfunction acc;
*
#Redefine APnumberOfVariables "3"
*
cfunctions Basis,aux;
symbols n1,n2,n3;
*
local F = Basis(4,2,5);
.sort
*
#call ApartLoadBasisDenominatorsToDollars(BasisDen,Basis,aux,APdensSet,n,3)
id Basis(4,2,5) = acc(1)*($BasisDen1 - APd4) + acc(2)*($BasisDen2 - APd2) + acc(3)*($BasisDen3 - APd5);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartLoadBasisDenominatorsToDollars_7 :
#include- ../src/formapart.h
cfunction acc;
*
#Redefine APnumberOfVariables "4"
*
cfunctions Basis,aux;
symbols n1,n2,n3,n4;
*
local F = Basis(1,2,3,4);
.sort
*
#call ApartLoadBasisDenominatorsToDollars(BasisDen,Basis,aux,APdensSet,n,4)
id Basis(1,2,3,4) = acc(1)*($BasisDen1 - APd1) + acc(2)*($BasisDen2 - APd2) + acc(3)*($BasisDen3 - APd3) + acc(4)*($BasisDen4 - APd4);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartLoadBasisDenominatorsToDollars_8 :
#include- ../src/formapart.h
cfunction acc;
*
#Redefine APnumberOfVariables "1"
*
cfunctions Basis,aux;
symbols n1;
*
local F = Basis(2);
.sort
*
#call ApartLoadBasisDenominatorsToDollars(BasisDen,Basis,aux,APdensSet,n,1)
id Basis(2) = acc(1)*($BasisDen1 - APd2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartLoadBasisDenominatorsToDollars_9 :
#include- ../src/formapart.h
cfunction acc;
*
#Redefine APnumberOfVariables "2"
*
cfunctions Basis,aux;
symbols n1,n2;
*
local F = 7*Basis(2,3);
.sort
*
#call ApartLoadBasisDenominatorsToDollars(BasisDen,Basis,aux,APdensSet,n,2)
id Basis(2,3) = acc(1)*($BasisDen1 - APd2) + acc(2)*($BasisDen2 - APd3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartLoadBasisDenominatorsToDollars_10 :
#include- ../src/formapart.h
cfunction acc;
*
#Redefine APnumberOfVariables "2"
*
cfunctions Basis,aux;
symbols x,y;
symbols n1,n2;
*
local F = x^2*y*APd5*Basis(1,4);
.sort
*
#call ApartLoadBasisDenominatorsToDollars(BasisDen,Basis,aux,APdensSet,n,2)
id Basis(1,4) = acc(1)*($BasisDen1 - APd1) + acc(2)*($BasisDen2 - APd4);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartLoadBasisDenominatorsToDollars_11 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
*
cfunctions Basis,aux;
symbols n1,n2;
symbols mark1,mark2,g1,g2;
*
local F = mark1*Basis(1,2) + mark2*Basis(3,1);
.sort
*
#call ApartLoadBasisDenominatorsToDollars(BasisDen,Basis,aux,APdensSet,n,2)
id mark1 = ($BasisDen1 - APd1)*g1 + ($BasisDen2 - APd2)*g2;
id mark2 = ($BasisDen1 - APd3)*g1 + ($BasisDen2 - APd1)*g2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartLoadBasisDenominatorsToDollars_12 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
*
cfunctions Basis,aux;
symbols n1,n2,n3;
symbols mark1,mark2,g1,g2,g3;
*
local F = mark1*Basis(1,2,3) + mark2*Basis(5,4,2);
.sort
*
#call ApartLoadBasisDenominatorsToDollars(BasisDen,Basis,aux,APdensSet,n,3)
id mark1 = ($BasisDen1 - APd1)*g1 + ($BasisDen2 - APd2)*g2 + ($BasisDen3 - APd3)*g3;
id mark2 = ($BasisDen1 - APd5)*g1 + ($BasisDen2 - APd4)*g2 + ($BasisDen3 - APd2)*g3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartLoadBasisDenominatorsToDollars_13 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
*
cfunctions Basis,aux;
symbols x,y;
symbols n1,n2;
*
local F = x*y;
.sort
*
#call ApartLoadBasisDenominatorsToDollars(BasisDen,Basis,aux,APdensSet,n,2)
*
.sort
*
local diff = F - x*y;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
