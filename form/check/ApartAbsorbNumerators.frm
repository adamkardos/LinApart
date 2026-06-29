*
*{{{ ApartAbsorbNumerators_1 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x;
*
Fill APdenTbl(1) = x+1;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
*
local F = x^2*APd1^2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (1 - 2*APd1 + APd1^2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_2 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APdenTbl(1) = x+y;
Fill APdenTbl(2) = x-y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = -1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (1/2*APd1 + 1/2*APd2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_3 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = x+y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = y*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (APd1 - APd2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_4 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x;
*
Fill APdenTbl(1) = 2*x+3;
*
Fill APcoeffTbl(1,1) = 2;
Fill APcoeffTbl(1,2) = 3;
*
local F = x*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (1/2 - 3/2*APd1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_5 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,s12,s23;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = (s12*x + s23*y)*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (s12*APd2 + s23*APd1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_6 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x^2*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - APd1^-1*APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_7 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x;
*
Fill APdenTbl(1) = x;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
*
local F = x^5*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - APd1^-4;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_8 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x;
*
Fill APdenTbl(1) = x;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
*
local F = x^3*APd1^3;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_9 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x;
*
Fill APdenTbl(1) = x;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
*
local F = x^2*APd1^5;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - APd1^3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_10 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x;
*
Fill APdenTbl(1) = x+1;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
*
local F = x^3*APd1^2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (APd1^-1 - 3 + 3*APd1 - APd1^2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_11 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x;
*
Fill APdenTbl(1) = -2*x+5;
*
Fill APcoeffTbl(1,1) = -2;
Fill APcoeffTbl(1,2) = 5;
*
local F = x*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (-1/2 + 5/2*APd1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_12 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x;
*
Fill APdenTbl(1) = 3*x-1;
*
Fill APcoeffTbl(1,1) = 3;
Fill APcoeffTbl(1,2) = -1;
*
local F = x*APd1^2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (1/3*APd1 + 1/3*APd1^2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_13 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,s;
*
Fill APdenTbl(1) = x+s;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = s;
*
local F = x^2*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (APd1^-1 - 2*s + s^2*APd1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_14 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x^2*y^2*APd1^2*APd2^2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_15 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x^3*y*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - APd1^-2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_16 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*y*APd1^2*APd2;
.sort
*
#call ApartAbsorbNumerators()
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
*{{{ ApartAbsorbNumerators_17 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APdenTbl(1) = x+1;
Fill APdenTbl(2) = y+2;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 1;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 2;
*
local F = x*y*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (1 - APd1 - 2*APd2 + 2*APd1*APd2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_18 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APdenTbl(1) = x+y;
Fill APdenTbl(2) = x-y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = -1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*y*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (1/4*APd1^-1*APd2 - 1/4*APd1*APd2^-1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_19 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APdenTbl(1) = x+y;
Fill APdenTbl(2) = x-y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = -1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x^2*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (1/2 + 1/4*APd1^-1*APd2 + 1/4*APd1*APd2^-1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_20 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APdenTbl(1) = 2*x+y;
Fill APdenTbl(2) = x+3*y;
*
Fill APcoeffTbl(1,1) = 2;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 3;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*y*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (7/25 - 3/25*APd1^-1*APd2 - 2/25*APd1*APd2^-1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_21 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
Fill APdenTbl(3) = z;
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
local F = x*y*z*APd1*APd2*APd3;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_22 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
Fill APdenTbl(3) = z;
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
local F = x^2*y*z*APd1*APd2*APd3;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - APd1^-1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_23 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = x+y;
Fill APdenTbl(3) = x+y+z;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(1,4) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(2,4) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(3,4) = 0;
*
local F = z*APd1*APd2*APd3;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (APd1*APd2 - APd1*APd3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_24 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
Fill APdenTbl(3) = z;
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
local F = (x+y+z)*APd1*APd2*APd3;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (APd1*APd2 + APd1*APd3 + APd2*APd3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_25 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
Fill APdenTbl(3) = z;
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
local F = x*y*z*APd1^2*APd2*APd3;
.sort
*
#call ApartAbsorbNumerators()
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
*{{{ ApartAbsorbNumerators_26 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,s12,s23;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = (s12*x^2 + s23*y)*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (s23*APd1 + s12*APd1^-1*APd2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_27 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,a,b,c;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = (a + b*x + c*y)*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (a*APd1*APd2 + b*APd2 + c*APd1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_28 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,eps,s12,s23;
*
Fill APdenTbl(1) = x;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
*
local F = (3*eps*s12 - 4*s23^2 + 7)*x^2*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (3*eps*s12 - 4*s23^2 + 7)*APd1^-1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_29 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,s,t;
*
Fill APdenTbl(1) = x+s;
Fill APdenTbl(2) = y+t;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = s;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = t;
*
local F = x*y*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (1 - s*APd1 - t*APd2 + s*t*APd1*APd2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_30 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,eps;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = x+y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = (eps*x + y^2)*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (eps*APd2 - 2 + APd1^-1*APd2 + APd1*APd2^-1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_31 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,s;
*
Fill APdenTbl(1) = s*x;
*
Fill APcoeffTbl(1,1) = s;
Fill APcoeffTbl(1,2) = 0;
*
local F = x*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - 1/s;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_32 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,s;
*
Fill APdenTbl(1) = s*x+1;
*
Fill APcoeffTbl(1,1) = s;
Fill APcoeffTbl(1,2) = 1;
*
local F = x*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (1/s - APd1/s);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_33 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,s,t;
*
Fill APdenTbl(1) = s*x+t;
*
Fill APcoeffTbl(1,1) = s;
Fill APcoeffTbl(1,2) = t;
*
local F = x*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (1/s - t*APd1/s);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_34 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,s;
*
Fill APdenTbl(1) = s*x;
*
Fill APcoeffTbl(1,1) = s;
Fill APcoeffTbl(1,2) = 0;
*
local F = x^2*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - APd1^-1/s^2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_35 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,s;
*
Fill APdenTbl(1) = s*x;
*
Fill APcoeffTbl(1,1) = s;
Fill APcoeffTbl(1,2) = 0;
*
local F = x*APd1^2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - APd1/s;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_36 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,s,t;
*
Fill APdenTbl(1) = s*x;
Fill APdenTbl(2) = t*y;
*
Fill APcoeffTbl(1,1) = s;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = t;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*y*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - 1/(s*t);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_37 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,s;
*
Fill APdenTbl(1) = s*x+y;
Fill APdenTbl(2) = y;
*
Fill APcoeffTbl(1,1) = s;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (APd2/s - APd1/s);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_38 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,s12,s23;
*
Fill APdenTbl(1) = s12*x+s23;
*
Fill APcoeffTbl(1,1) = s12;
Fill APcoeffTbl(1,2) = s23;
*
local F = x*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (1/s12 - s23*APd1/s12);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_39 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,s,t;
*
Fill APdenTbl(1) = s*x+t;
*
Fill APcoeffTbl(1,1) = s;
Fill APcoeffTbl(1,2) = t;
*
local F = x^2*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (APd1^-1/s^2 - 2*t/s^2 + t^2*APd1/s^2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_40 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,s,t;
*
Fill APdenTbl(1) = s*x+1;
Fill APdenTbl(2) = t*y;
*
Fill APcoeffTbl(1,1) = s;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 1;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = t;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*y*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (1/(s*t) - APd1/(s*t));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_41 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,eps;
*
Fill APdenTbl(1) = x+1+eps;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1+eps;
*
local F = x*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (1 - APd1 - eps*APd1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_42 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,eps;
*
Fill APdenTbl(1) = x+eps^2;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = eps^2;
*
local F = x*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (1 - eps^2*APd1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_43 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,s12,s23;
*
Fill APdenTbl(1) = x+s12+s23;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = s12+s23;
*
local F = x*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (1 - s12*APd1 - s23*APd1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_44 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,eps;
*
Fill APdenTbl(1) = x+1+eps;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1+eps;
*
local F = x^2*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (APd1^-1 - 2 - 2*eps + APd1 + 2*eps*APd1 + eps^2*APd1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_45 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,eps;
*
Fill APdenTbl(1) = x+1+eps;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1+eps;
*
local F = x*APd1^2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (APd1 - APd1^2 - eps*APd1^2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_46 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,eps;
*
Fill APdenTbl(1) = x+1+eps;
Fill APdenTbl(2) = y+eps^2;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 1+eps;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = eps^2;
*
local F = x*y*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (1 - APd1 - eps*APd1 - eps^2*APd2 + eps^2*APd1*APd2 + eps^3*APd1*APd2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_47 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,eps;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = (eps^2+eps+1)*x*y*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (eps^2 + eps + 1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_48 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,eps;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = ((1+eps)*x + (1-eps)*y)*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (APd1 + APd2 - eps*APd1 + eps*APd2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_49 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,eps;
*
Fill APdenTbl(1) = x;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
*
local F = (eps^2-1)*x^2*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (eps^2*APd1^-1 - APd1^-1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_50 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,eps;
*
Fill APdenTbl(1) = x+1+eps;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1+eps;
*
local F = (1+eps)*x*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (1 + eps - APd1 - 2*eps*APd1 - eps^2*APd1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_51 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y,z"
*
symbols x,y,z,eps;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
Fill APdenTbl(3) = z;
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
local F = (eps*x + eps^2*y + z)*APd1*APd2*APd3;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (eps^2*APd1*APd3 + eps*APd2*APd3 + APd1*APd2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_52 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,eps;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = eps^3*x*y*APd1^2*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - eps^3*APd1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_53 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,eps;
*
Fill APdenTbl(1) = (1+eps)*x;
*
Fill APcoeffTbl(1,1) = 1+eps;
Fill APcoeffTbl(1,2) = 0;
*
local F = x*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - APden(1+eps);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_54 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,eps;
*
Fill APdenTbl(1) = (1+eps)*x+1;
*
Fill APcoeffTbl(1,1) = 1+eps;
Fill APcoeffTbl(1,2) = 1;
*
local F = x*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (1-APd1)*APden(1+eps);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_55 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,s12,s23;
*
Fill APdenTbl(1) = (s12+s23)*x;
*
Fill APcoeffTbl(1,1) = s12+s23;
Fill APcoeffTbl(1,2) = 0;
*
local F = x*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - APden(s12+s23);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_56 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,eps;
*
Fill APdenTbl(1) = (1+eps)*x;
*
Fill APcoeffTbl(1,1) = 1+eps;
Fill APcoeffTbl(1,2) = 0;
*
local F = x^2*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - APd1^-1*APden(1+eps)^2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_57 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,eps;
*
Fill APdenTbl(1) = (1+eps)*x;
*
Fill APcoeffTbl(1,1) = 1+eps;
Fill APcoeffTbl(1,2) = 0;
*
local F = x*APd1^2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - APd1*APden(1+eps);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_58 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,eps;
*
Fill APdenTbl(1) = (1+eps)*x+y;
Fill APdenTbl(2) = x+y;
*
Fill APcoeffTbl(1,1) = 1+eps;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (APd2-APd1)/eps;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_59 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,eps;
*
Fill APdenTbl(1) = (1+eps)*x+y;
Fill APdenTbl(2) = x+y;
*
Fill APcoeffTbl(1,1) = 1+eps;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = y*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (APd1 + APd1/eps - APd2/eps);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_60 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,eps;
*
Fill APdenTbl(1) = (1+eps)*x+y;
Fill APdenTbl(2) = x-y;
*
Fill APcoeffTbl(1,1) = 1+eps;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = -1;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (-(APd1+APd2)*APden(-2-eps));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_61 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,eps,s;
*
Fill APdenTbl(1) = (1+eps)*x+s;
*
Fill APcoeffTbl(1,1) = 1+eps;
Fill APcoeffTbl(1,2) = s;
*
local F = x*APd1;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (1-s*APd1)*APden(1+eps);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartAbsorbNumerators_62 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,eps;
*
Fill APdenTbl(1) = (1+eps)*x;
Fill APdenTbl(2) = (1-eps)*y;
*
Fill APcoeffTbl(1,1) = 1+eps;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1-eps;
Fill APcoeffTbl(2,3) = 0;
*
local F = x*y*APd1*APd2;
.sort
*
#call ApartAbsorbNumerators()
*
.sort
*
local diff = F - (1-eps^2)*APden(1-eps^2)^2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
