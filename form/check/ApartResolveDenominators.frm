*{{{ ApartResolveDenominators_1 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunction den;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
*
local F = APd1*APd2;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - den(x)*den(y);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_2 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunction den;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
*
local F = APd1^2*APd2^3;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - den(x)^2*den(y)^3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_3 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunction den;
*
Fill APdenTbl(1) = x+1;
Fill APdenTbl(2) = y+2;
*
local F = APd1*APd2;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - den(x+1)*den(y+2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_4 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunction den;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
*
local F = 1/2*APd1^2*APd2;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - 1/2*den(x)^2*den(y);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_5 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunction den;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(3) = x+y;
*
local F = -APd1^2*APd3^2 - APd1^2*APd3;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - (-den(x)^2*den(x+y)^2 - den(x)^2*den(x+y));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_6 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunction den;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(3) = x+y;
Fill APdenTbl(4) = x+y-1;
*
local F = -APd1^2*APd3^2 - APd1^2*APd3 + APd1^2*APd4;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - (-den(x)^2*den(x+y)^2 - den(x)^2*den(x+y) + den(x)^2*den(x+y-1));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_7 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,s;
cfunction den;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
*
local F = s*APd1*APd2;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - s*den(x)*den(y);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_8 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,s,t;
cfunction den;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
*
local F = APd1*APden(s+t);
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - den(x)*den(s+t);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_9 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunction den;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
*
local F = 3*den(x)*den(y);
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - 3*den(x)*den(y);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_10 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,s,t;
cfunction den;
*
Fill APdenTbl(1) = x+s;
Fill APdenTbl(2) = y+t;
Fill APdenTbl(3) = x+y+s+t+1;
*
local F = APd1*APd2 - APd1*APd3;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - (den(x+s)*den(y+t) - den(x+s)*den(x+y+s+t+1));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_11 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunction den;
*
Fill APdenTbl(1) = 2*x+y;
Fill APdenTbl(2) = x+3*y;
*
local F = APd1*APd2;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - den(2*x+y)*den(x+3*y);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_12 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunction den;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
*
local F = 0;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_13 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
cfunction den;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
Fill APdenTbl(3) = z;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - den(x)*den(y)*den(z);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_14 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x;
cfunction den;
*
Fill APdenTbl(1) = x+1;
*
local F = APd1^5;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - den(x+1)^5;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_15 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "9"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunction den;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(3) = y;
Fill APdenTbl(5) = x+y;
Fill APdenTbl(7) = x-y;
Fill APdenTbl(9) = 2*x+y+1;
*
local F = APd1*APd3*APd5^2*APd7*APd9;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - den(x)*den(y)*den(x+y)^2*den(x-y)*den(2*x+y+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_16 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,s,t;
cfunction den;
*
Fill APdenTbl(1) = x;
*
local F = APd1*APden(s+t)^2;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - den(x)*den(s+t)^2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_17 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,s;
cfunction den;
*
Fill APdenTbl(1) = x;
*
local F = APd1*APden(s+1)*APden(s-1);
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - den(x)*den(s+1)*den(s-1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_18 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,s;
cfunction den;
*
Fill APdenTbl(1) = x;
*
local F = -3/7*APd1^2*APden(s^2-1);
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - (-3/7*den(x)^2*den(s^2-1));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_19 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunction den;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
Fill APdenTbl(3) = x+y;
Fill APdenTbl(4) = x+y-1;
*
local F =
  - APd1^2*APd3^2 - APd1^2*APd3 + APd1^2*APd4
  - APd2*APd3^3 - APd2*APd3^2 - APd2*APd3 + APd2*APd4
  - APd1*APd3^3 - APd1*APd3^2 - APd1*APd3 + APd1*APd4
;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff =
  F
  -
  (
    - den(x)^2*den(x+y)^2 - den(x)^2*den(x+y) + den(x)^2*den(x+y-1)
    - den(y)*den(x+y)^3 - den(y)*den(x+y)^2 - den(y)*den(x+y) + den(y)*den(x+y-1)
    - den(x)*den(x+y)^3 - den(x)*den(x+y)^2 - den(x)*den(x+y) + den(x)*den(x+y-1)
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
*{{{ ApartResolveDenominators_20 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "4"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y,z,w"
*
symbols x,y,z,w;
cfunction den;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
Fill APdenTbl(3) = z;
Fill APdenTbl(4) = w;
*
local F = 1/6*APd1*APd2*APd3 - 1/2*APd1*APd4;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - (1/6*den(x)*den(y)*den(z) - 1/2*den(x)*den(w));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_21 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,s,t;
cfunction den;
*
Fill APdenTbl(1) = s*x+t;
Fill APdenTbl(2) = x+s*y;
*
local F = APd1*APd2;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - den(s*x+t)*den(x+s*y);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_22 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunction Denom;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
*
local F = APd1*APd2;
.sort
*
#call ApartResolveDenominators(Denom)
*
.sort
*
local diff = F - Denom(x)*Denom(y);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_23 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y,s,t;
cfunction den;
*
Fill APdenTbl(1) = x+1;
Fill APdenTbl(2) = y-3;
*
local F = s^2/3*APd1^2*APd2*APden(t+1)^2;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - s^2/3*den(x+1)^2*den(y-3)*den(t+1)^2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_24 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x,y"
*
symbols x,y,s;
cfunction den;
*
Fill APdenTbl(1) = 2*x+3*y+s+1;
*
local F = APd1;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - den(2*x+3*y+s+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_25 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x;
cfunction den;
*
Fill APdenTbl(1) = x;
*
local F = APd1^-1;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - x;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_26 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x;
cfunction den;
*
Fill APdenTbl(1) = x+1;
*
local F = APd1^-1;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - (x+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_27 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunction den;
*
Fill APdenTbl(1) = 2*x+3*y+1;
*
local F = APd1^-1;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - (2*x+3*y+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_28 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x;
cfunction den;
*
Fill APdenTbl(1) = x;
*
local F = APd1^-2;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - x^2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_29 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x;
cfunction den;
*
Fill APdenTbl(1) = x;
*
local F = APd1^-4;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - x^4;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_30 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunction den;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
*
local F = APd1^-1*APd2;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - x*den(y);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_31 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x;
cfunction den;
*
Fill APdenTbl(1) = x+1;
*
local F = APd1^-2;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - (x+1)^2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_32 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x;
cfunction den;
*
Fill APdenTbl(1) = x;
*
local F = 3*APd1^-1;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - 3*x;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_33 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x,eps;
cfunction den;
*
Fill APdenTbl(1) = x;
*
local F = APd1^-1*APden(1+eps);
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - x*den(1+eps);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResolveDenominators_34 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
cfunction den;
*
Fill APdenTbl(1) = x+y;
Fill APdenTbl(2) = x-y;
*
local F = APd1^-1*APd2 - APd1*APd2^-1;
.sort
*
#call ApartResolveDenominators(den)
*
.sort
*
local diff = F - ( (x+y)*den(x-y) - den(x+y)*(x-y) );
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
