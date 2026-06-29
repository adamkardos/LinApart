*{{{ ApartResidueExtraction_1 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
*
local F = APd1*APd2;
.sort
*
#call ApartResidueExtraction()
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
*{{{ ApartResidueExtraction_2 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
*
local F = APd1*APd2*APgenDen(APd1+APd2+1);
.sort
*
#call ApartResidueExtraction()
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
*{{{ ApartResidueExtraction_3 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
*
local F = APd1^2*APd2*APgenDen(APd1+APd2+1);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (APd1^2*APd2 - APd1*APd2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_4 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
*
local F = -APd1^2*APd3^2*APgenDen(1-APd3);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (-APd1^2*APd3^2 - APd1^2*APd3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_5 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
*
local F = APd1*APd2*APgenDen(APd1+APd2+1)*APgenDen(APd1-APd2+2);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - 1/2*APd1*APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_6 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
*
local F = APd1^2*APd2^2*APgenDen(APd1+APd2+1)*APgenDen(APd1-APd2+2);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff =
  F
  -
  (
    + 1/2*APd1^2*APd2^2
    - 3/4*APd1*APd2^2
    - 1/4*APd1^2*APd2
    + 3/4*APd1*APd2
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
*{{{ ApartResidueExtraction_7 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "4"
*
local F = APd1*APd2*APd3*APgenDen(APd1+APd2+APd3+1);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - APd1*APd2*APd3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_8 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
*
local F = APd1*APd2*APgenDen(APd1+APd2+1)^2;
.sort
*
#call ApartResidueExtraction()
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
*{{{ ApartResidueExtraction_9 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
local F = APd1^3*APgenDen(APd1+1);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (APd1^3 - APd1^2 + APd1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_10 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
local F = APd1*APgenDen(APd1+7);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - 1/7*APd1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_11 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
*
local F = APd1^2*APd2^3*APgenDen(APd1+APd2+1)*APgenDen(APd1-APd2+2);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff =
  F
  -
  (
    + 1/2*APd1^2*APd2^3
    - 3/4*APd1*APd2^3
    - 1/4*APd1^2*APd2^2
    + 3/4*APd1*APd2^2
    + 3/8*APd1^2*APd2
    - 21/16*APd1*APd2
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
*{{{ ApartResidueExtraction_12 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
*
local F = 5*APd1*APd2*APgenDen(APd1+APd2+1);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - 5*APd1*APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_13 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "5"
*
local F = APd1*APd2*APgenDen(APd1+APd2+1)*APgenDen(APd1-APd2+2)*APgenDen(2*APd1+APd2+3);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - 1/6*APd1*APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_14 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
*
local F = APd1*APd3^2*APgenDen(APd3-1);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (-APd1*APd3^2 - APd1*APd3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_15 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
*
local F = 3*APd1*APd2*APgenDen(APd1+APd2+1) - APd1*APd3*APgenDen(APd1+APd3+2);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (3*APd1*APd2 - 1/2*APd1*APd3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_16 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
*
local F = APd1^2*APd4*APgenDen(APd4+1)^2;
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - APd1^2*APd4;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_17 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
*
local F = -APd1*APd2*APgenDen(1-APd1-APd2);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (-APd1*APd2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_18 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
local F = 1/7*APd1^3*APgenDen(APd1+1);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - 1/7*(APd1^3 - APd1^2 + APd1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_19 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
local F = APd1*APgenDen(APd1+100);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - 1/100*APd1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_20 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "5"
*
local F = APd2*APd5*APgenDen(APd2+APd5+3);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - 1/3*APd2*APd5;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_21 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
symbols s;
*
local F = APd1*APgenDen(APd1+s);
.sort
*
#call ApartResidueExtraction()
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
*{{{ ApartResidueExtraction_22 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
symbols s,t;
*
local F = APd1*APgenDen(APd1+s+t);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - APd1*APden(s+t);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_23 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
symbols s;
*
local F = APd1^2*APgenDen(APd1+s);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (APd1^2/s - APd1/s^2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_24 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
*
symbols s,t;
*
local F = APd1*APd2*APgenDen(APd1+s)*APgenDen(APd2+t);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - APd1*APd2/(s*t);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_25 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
symbols s;
*
local F = APd1^2*APgenDen(s*APd1+1);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (APd1^2 - s*APd1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_26 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
*
symbols s,t;
*
local F = APd1^2*APd2*APgenDen(APd1+APd2+s+t);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (APd1^2*APd2*APden(s+t) - APd1*APd2*APden(s+t)^2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_27 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
symbols s,t;
*
local F = APd1*APgenDen(APd1+s*t);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - APd1/(s*t);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_28 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
symbols s,t,u;
*
local F = APd1*APgenDen(APd1+s+t+u);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - APd1*APden(s+t+u);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_29 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
*
symbols s,t;
*
local F = APd1*APd2*APgenDen(s*APd1+t*APd2+1);
.sort
*
#call ApartResidueExtraction()
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
*{{{ ApartResidueExtraction_30 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
symbols s,t;
*
local F = APd1^2*APgenDen(s*APd1+t);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (APd1^2/t - s*APd1/t^2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_31 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
*
symbols s,t;
*
local F = APd1*APd2*APgenDen(APd1+s)*APgenDen(APd1-APd2+t);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - APd1*APd2/(s*t);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_32 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
symbols s;
*
local F = APd1*APgenDen(APd1+s^2-1);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - APd1*APden(s^2-1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_33 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
*
symbols s,t;
*
local F = s*APd1*APd2*APgenDen(APd1+APd2+t);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - s*APd1*APd2/t;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_34 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
*
symbols s;
*
local F = APd1*APd2*APgenDen(APd1+s)*APgenDen(APd2+3);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - APd1*APd2/(3*s);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_35 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
*
local F = APd1^3*APd2^2*APgenDen(APd1+APd2+1);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^3*APd2^2
    - APd1^3*APd2
    - APd1^2*APd2^2
    + 2*APd1^2*APd2
    + APd1*APd2^2
    - 3*APd1*APd2
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
*{{{ ApartResidueExtraction_36 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
local F = APd1^4*APgenDen(APd1+2);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff =
  F
  -
  (
    + 1/2*APd1^4
    - 1/4*APd1^3
    + 1/8*APd1^2
    - 1/16*APd1
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
*{{{ ApartResidueExtraction_37 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "5"
*
local F = APd1*APd2*APd3*APgenDen(APd1+APd2+APd3+1)*APgenDen(APd1+APd3+2);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - 1/2*APd1*APd2*APd3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_38 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
local F = APd1*APgenDen(APd1+3)^3;
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - 1/27*APd1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_39 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
*
symbols s,t;
*
local F = APd1*APd2*APgenDen(APd1+s)*APgenDen(APd2+t)*APgenDen(APd1+APd2+1);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - APd1*APd2/(s*t);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_40 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "4"
#Redefine APnumberOfDenominators "5"
*
local F = APd1*APd2*APd3*APd4*APgenDen(APd1+APd2+APd3+APd4+1);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - APd1*APd2*APd3*APd4;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_41 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
*
local F = -APd1^2*APd2^2*APgenDen(1-APd1-APd2);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff =
  F
  -
  (
    - APd1^2*APd2^2
    - APd1^2*APd2
    - APd1*APd2^2
    - 2*APd1*APd2
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
*{{{ ApartResidueExtraction_42 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
*
symbols s,t;
*
local F = APd1*APd2*APgenDen(s*APd1+APd2+1)*APgenDen(APd1+t*APd2+2);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - 1/2*APd1*APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_43 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "3"
*
symbols s;
*
local F = APd1*APgenDen(APd1+s+1)*APgenDen(APd1+s-1);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - APd1*APden(s+1)*APden(s-1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_44 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
local F = APd1^2*APgenDen(APd1+5)^4;
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (1/625*APd1^2 - 4/3125*APd1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_45 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
*
symbols s,t;
*
local F = s^2*APd1*APd2*APgenDen(APd1+APd2+t+1);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - s^2*APd1*APd2*APden(t+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_46 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "8"
*
local F = APd3*APd7*APgenDen(APd3+APd7+5);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - 1/5*APd3*APd7;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_47 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "5"
*
local F = APd1^2*APd2*APgenDen(APd1+APd2+1)*APgenDen(APd1-APd2+2)*APgenDen(2*APd1+APd2+3);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff =
  F
  -
  (
    + 1/6*APd1^2*APd2
    - 13/36*APd1*APd2
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
*{{{ ApartResidueExtraction_48 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
*
local F = 0;
.sort
*
#call ApartResidueExtraction()
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
*{{{ ApartResidueExtraction_49 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
*
local F = APd1^2*APd2*APgenDen(APd1+APd2+1) + APd1*APd2^2*APgenDen(APd1+APd2+2);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2
    + 1/2*APd1*APd2^2
    - 5/4*APd1*APd2
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
*{{{ ApartResidueExtraction_50 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
local F = 1000*APd1*APgenDen(APd1+1000);
.sort
*
#call ApartResidueExtraction()
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
*{{{ ApartResidueExtraction_51 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
local F = APd1^5*APgenDen(APd1+3);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff =
  F
  -
  (
    + 1/3*APd1^5
    - 1/9*APd1^4
    + 1/27*APd1^3
    - 1/81*APd1^2
    + 1/243*APd1
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
*{{{ ApartResidueExtraction_52 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "4"
*
local F = APd1^2*APd2^2*APd3^2*APgenDen(APd1+APd2+APd3+1);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2^2*APd3^2
    - APd1^2*APd2^2*APd3
    - APd1^2*APd2*APd3^2
    + 2*APd1^2*APd2*APd3
    - APd1*APd2^2*APd3^2
    + 2*APd1*APd2^2*APd3
    + 2*APd1*APd2*APd3^2
    - 6*APd1*APd2*APd3
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
*{{{ ApartResidueExtraction_53 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
symbols s;
*
local F = APd1^3*APgenDen(APd1+s)^3;
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (APd1^3/s^3 - 3*APd1^2/s^4 + 6*APd1/s^5);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_54 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "7"
*
local F = APd1*APd2
  *APgenDen(APd1+APd2+1)
  *APgenDen(APd1-APd2+2)
  *APgenDen(2*APd1+APd2+3)
  *APgenDen(APd1+2*APd2+4)
  *APgenDen(APd1-2*APd2+5);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - 1/120*APd1*APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_55 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "6"
*
local F = APd1*APd2*APd3*APgenDen(APd1+2)*APgenDen(APd2+3)*APgenDen(APd3+5);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - 1/30*APd1*APd2*APd3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_56 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
symbols s,t,u;
*
local F = APd1*APgenDen(APd1+s*t*u);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - APd1/(s*t*u);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_57 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
symbols s,t;
*
local F = APd1*APgenDen(APd1+s*t+s+t);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - APd1*APden(s*t+s+t);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_58 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
*
local F = APd1*APd2*APgenDen(2*APd1+3*APd2+7);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - 1/7*APd1*APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_59 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
symbols s;
*
local F = APd1^2*APgenDen(APd1+s+1);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (APd1^2*APden(s+1) - APd1*APden(s+1)^2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_60 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
*
local F = -3/7*APd1^2*APgenDen(APd1+1);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (-3/7*APd1^2 + 3/7*APd1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_61 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
*
local F = APd1^2*APd2*APgenDen(APd1+1);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (APd1^2*APd2 - APd1*APd2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_62 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
*
local F = APd1*APd2^2*APgenDen(APd2+3);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (1/3*APd1*APd2^2 - 1/9*APd1*APd2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_63 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "3"
*
local F = APd1*APd2*APd3*APgenDen(APd1+APd2+1);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - APd1*APd2*APd3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_64 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "4"
*
local F = APd1*APd2*APd3^2*APgenDen(APd3-1);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (-APd1*APd2*APd3^2 - APd1*APd2*APd3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_65 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "5"
*
local F = APd2*APd3*APd5*APgenDen(APd2+APd5+3);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - 1/3*APd2*APd3*APd5;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_66 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
*
local F = APd1*APd2*APgenDen(APd1+2)*APgenDen(APd2+5);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - 1/10*APd1*APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_67 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
*
local F = APd1^2*APd2*APgenDen(APd1+1)*APgenDen(APd1+APd2+3);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (1/3*APd1^2*APd2 - 4/9*APd1*APd2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_68 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
*
local F = APd1*APd2*APgenDen(7);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - 1/7*APd1*APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_69 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "6"
*
symbols epsilon;
*
local F =
  - APd1*APd2
  *APgenDen(1-APd1-APd1*epsilon-APd2)
  *APgenDen(2-APd1-APd2+APd2*epsilon)
  *APgenDen(3+2*APd1+APd1*epsilon^2-APd2*epsilon)
  *APgenDen(epsilon^3-APd1*epsilon-3*APd2+2*APd2*epsilon)
;
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (-1/6*epsilon^-3*APd1*APd2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_70 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "3"
*
symbols epsilon;
*
local F = APd1*APgenDen((1+epsilon)*APd1+1)*APgenDen(epsilon^2*APd1+epsilon);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - epsilon^-1*APd1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_71 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
*
symbols epsilon;
*
local F = -epsilon^-1*APd1*APd2*APgenDen(1-APd1-APd1*epsilon-APd2);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (-epsilon^-1*APd1*APd2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_72 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
*
symbols epsilon;
*
local F = epsilon^-1*APd1*APd2*APgenDen(2*epsilon+1-APd1-APd2);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - epsilon^-1*APden(1+2*epsilon)*APd1*APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_73 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
*
symbols epsilon;
*
local F = epsilon^-2*APd1*APd2
  *APgenDen(1-APd1-APd1*epsilon-APd2)
  *APgenDen(2-APd1-APd2+APd2*epsilon)
;
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - 1/2*epsilon^-2*APd1*APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_74 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
*
symbols epsilon;
*
local F = -epsilon^-1*APden(1+2*epsilon)*APd1*APd2*APgenDen(1-APd1-APd1*epsilon-APd2);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (-epsilon^-1*APden(1+2*epsilon)*APd1*APd2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartResidueExtraction_75 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
*
symbols epsilon;
*
local F = epsilon^-1*APd1^2*APd2*APgenDen((1+epsilon)*APd1+APd2-1);
.sort
*
#call ApartResidueExtraction()
*
.sort
*
local diff = F - (-epsilon^-1*APd1^2*APd2 - epsilon^-1*APd1*APd2 - APd1*APd2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
