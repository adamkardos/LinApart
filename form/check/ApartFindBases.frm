*{{{ ApartFindBases_1 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = APd1*APd2;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APbasis(APdet(1),1,2)
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
*{{{ ApartFindBases_2 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 1;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 2;
*
local F = APd1*APd2;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APbasis(APdet(1),1,2)
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
*{{{ ApartFindBases_3 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = APd1^3*APd2^2;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^3*APd2^2*APbasis(APdet(1),1,2)
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
*{{{ ApartFindBases_4 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
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
local F = APd1*APd2*APd3;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APbasis(APdet(1),1,2)*APbasis(APdet(1),1,3)*APbasis(APdet(-1),2,3)
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
*{{{ ApartFindBases_5 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 0;
Fill APcoeffTbl(2,3) = 1;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 1;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APbasis(APdet(1),1,3)*APbasis(APdet(1),2,3)
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
*{{{ ApartFindBases_6 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y;
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
local F = APd1^2*APd3^2*APd4;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd3^2*APd4*APbasis(APdet(1),1,3)*APbasis(APdet(1),1,4)
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
*{{{ ApartFindBases_7 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = -1;
*
local F = APd2*APd3^3*APd4;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd2*APd3^3*APd4*APbasis(APdet(-1),2,3)*APbasis(APdet(-1),2,4)
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
*{{{ ApartFindBases_8 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y;
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
local F = APd1*APd3^3*APd4;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd3^3*APd4*APbasis(APdet(1),1,3)*APbasis(APdet(1),1,4)
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
*{{{ ApartFindBases_9 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
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
local F = APd1*APd2*APd3;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APbasis(APdet(1),1,2,3)
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
*{{{ ApartFindBases_10 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
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
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APd4*APbasis(APdet(1),1,2,3)*APbasis(APdet(1),1,2,4)*APbasis(APdet(-1),1,3,4)*APbasis(APdet(1),2,3,4)
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
*{{{ ApartFindBases_11 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "5"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
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
Fill APcoeffTbl(5,1) = 1;
Fill APcoeffTbl(5,2) = 1;
Fill APcoeffTbl(5,3) = 1;
Fill APcoeffTbl(5,4) = -2;
*
local F = APd1*APd2*APd3*APd4*APd5;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APd4*APd5*APbasis(APdet(1),1,2,3)*APbasis(APdet(1),1,2,4)*APbasis(APdet(1),1,2,5)*APbasis(APdet(-1),1,3,4)*APbasis(APdet(-1),1,3,5)*APbasis(APdet(1),2,3,4)*APbasis(APdet(1),2,3,5)
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
*{{{ ApartFindBases_12 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,s,t;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = s;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = t;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = s+t+1;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APbasis(APdet(1),1,2)*APbasis(APdet(1),1,3)*APbasis(APdet(-1),2,3)
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
*{{{ ApartFindBases_13 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
*
local F = APd1^2;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2
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
*{{{ ApartFindBases_14 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1^2*APd2 - APd1^2*APd3;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2*APbasis(APdet(1),1,2)
    - APd1^2*APd3*APbasis(APdet(1),1,3)
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
*{{{ ApartFindBases_15 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1^2*APd2 - APd1^2*APd3;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2*APbasis(APdet(1),1,2)
    - APd1^2*APd3*APbasis(APdet(1),1,3)
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
*{{{ ApartFindBases_16 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 2;
Fill APcoeffTbl(3,2) = 3;
Fill APcoeffTbl(3,3) = 1;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APbasis(APdet(1),1,2)*APbasis(APdet(3),1,3)*APbasis(APdet(-2),2,3)
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
*{{{ ApartFindBases_17 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 0;
Fill APcoeffTbl(2,3) = 1;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
Fill APcoeffTbl(4,1) = 0;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 2;
*
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APd4*APbasis(APdet(1),1,3)*APbasis(APdet(1),1,4)*APbasis(APdet(1),2,3)*APbasis(APdet(1),2,4)
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
*{{{ ApartFindBases_18 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x"
*
symbols x;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 1;
*
local F = APd1*APd2;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APbasis(APdet(1),1)*APbasis(APdet(1),2)
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
*{{{ ApartFindBases_19 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "1"
#Redefine APvariables "x"
*
symbols x;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
*
local F = APd1^3;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^3*APbasis(APdet(1),1)
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
*{{{ ApartFindBases_20 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "5"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
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
Fill APcoeffTbl(4,3) = 0;
Fill APcoeffTbl(4,4) = 0;
Fill APcoeffTbl(5,1) = 0;
Fill APcoeffTbl(5,2) = 1;
Fill APcoeffTbl(5,3) = 1;
Fill APcoeffTbl(5,4) = 0;
*
local F =
  - APd1^2*APd2^2*APd5
  + APd1^2*APd2^2*APd3
  - APd1^3*APd4*APd5
  - APd1^3*APd3*APd5
  + APd1^3*APd3*APd4
;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    - APd1^2*APd2^2*APd5*APbasis(APdet(1),1,2,5)
    + APd1^2*APd2^2*APd3*APbasis(APdet(1),1,2,3)
    - APd1^3*APd4*APd5*APbasis(APdet(1),1,4,5)
    - APd1^3*APd3*APd5*APbasis(APdet(-1),1,3,5)
    + APd1^3*APd3*APd4*APbasis(APdet(-1),1,3,4)
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
*{{{ ApartFindBases_21 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = 3/2*APd1*APd2;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + 3/2*APd1*APd2*APbasis(APdet(1),1,2)
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
*{{{ ApartFindBases_22 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,s,t;
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
local F = s^2*t*APd1*APd2*APd3;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + s^2*t*APd1*APd2*APd3*APbasis(APdet(1),1,2)*APbasis(APdet(1),1,3)*APbasis(APdet(-1),2,3)
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
*{{{ ApartFindBases_23 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 0;
Fill APcoeffTbl(2,3) = 1;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 3;
Fill APcoeffTbl(4,1) = 0;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 0;
*
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APd4*APbasis(APdet(1),1,4)*APbasis(APdet(1),2,4)*APbasis(APdet(1),3,4)
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
*{{{ ApartFindBases_24 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
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
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APbasis(APdet(2),1,2,3)
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
*{{{ ApartFindBases_25 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = -1;
Fill APcoeffTbl(2,3) = 1;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = -1;
Fill APcoeffTbl(3,3) = 1;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APbasis(APdet(-1),1,2)*APbasis(APdet(-1),1,3)*APbasis(APdet(1),2,3)
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
*{{{ ApartFindBases_26 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "4"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y,z,w"
*
symbols x,y,z,w;
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
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APd4*APbasis(APdet(1),1,2,3,4)
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
*{{{ ApartFindBases_27 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "4"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y,z,w"
*
symbols x,y,z,w;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 2;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(1,4) = 1;
Fill APcoeffTbl(1,5) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 3;
Fill APcoeffTbl(2,4) = 0;
Fill APcoeffTbl(2,5) = 0;
Fill APcoeffTbl(3,1) = 2;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(3,4) = 1;
Fill APcoeffTbl(3,5) = 0;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 1;
Fill APcoeffTbl(4,4) = 1;
Fill APcoeffTbl(4,5) = 0;
*
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APd4*APbasis(APdet(4),1,2,3,4)
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
*{{{ ApartFindBases_28 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "4"
#Redefine APnumberOfDenominators "5"
#Redefine APvariables "x,y,z,w"
*
symbols x,y,z,w;
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
local F = APd1*APd2*APd3*APd4*APd5;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APd4*APd5
      *APbasis(APdet(1),1,2,3,4)*APbasis(APdet(1),1,2,3,5)*APbasis(APdet(-1),1,2,4,5)
      *APbasis(APdet(1),1,3,4,5)*APbasis(APdet(-1),2,3,4,5)
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
*{{{ ApartFindBases_29 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "4"
#Redefine APnumberOfDenominators "6"
#Redefine APvariables "x,y,z,w"
*
symbols x,y,z,w;
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
Fill APcoeffTbl(5,5) = 0;
Fill APcoeffTbl(6,1) = 1;
Fill APcoeffTbl(6,2) = -1;
Fill APcoeffTbl(6,3) = 1;
Fill APcoeffTbl(6,4) = -1;
Fill APcoeffTbl(6,5) = 0;
*
local F = APd1*APd2*APd3*APd4*APd5*APd6;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APd4*APd5*APd6
      *APbasis(APdet(1),1,2,3,4)*APbasis(APdet(1),1,2,3,5)*APbasis(APdet(-1),1,2,3,6)
      *APbasis(APdet(-1),1,2,4,5)*APbasis(APdet(-1),1,2,4,6)*APbasis(APdet(-2),1,2,5,6)
      *APbasis(APdet(1),1,3,4,5)*APbasis(APdet(-1),1,3,4,6)
      *APbasis(APdet(2),1,4,5,6)
      *APbasis(APdet(-1),2,3,4,5)*APbasis(APdet(-1),2,3,4,6)*APbasis(APdet(-2),2,3,5,6)
      *APbasis(APdet(-2),3,4,5,6)
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
*{{{ ApartFindBases_30 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "6"
#Redefine APvariables "x,y"
*
symbols x,y;
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
Fill APcoeffTbl(5,2) = -1;
Fill APcoeffTbl(5,3) = 1;
Fill APcoeffTbl(6,1) = 2;
Fill APcoeffTbl(6,2) = 1;
Fill APcoeffTbl(6,3) = 0;
*
local F = APd1*APd2*APd3*APd4*APd5*APd6;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APd4*APd5*APd6
      *APbasis(APdet(1),1,2)*APbasis(APdet(1),1,3)*APbasis(APdet(1),1,4)*APbasis(APdet(-1),1,5)*APbasis(APdet(1),1,6)
      *APbasis(APdet(-1),2,3)*APbasis(APdet(-1),2,4)*APbasis(APdet(-1),2,5)*APbasis(APdet(-2),2,6)
      *APbasis(APdet(-2),3,5)*APbasis(APdet(-1),3,6)
      *APbasis(APdet(-2),4,5)*APbasis(APdet(-1),4,6)
      *APbasis(APdet(3),5,6)
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
*{{{ ApartFindBases_31 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "7"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
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
Fill APcoeffTbl(4,3) = 0;
Fill APcoeffTbl(5,1) = 2;
Fill APcoeffTbl(5,2) = 1;
Fill APcoeffTbl(5,3) = 0;
Fill APcoeffTbl(6,1) = 1;
Fill APcoeffTbl(6,2) = 2;
Fill APcoeffTbl(6,3) = 0;
Fill APcoeffTbl(7,1) = 3;
Fill APcoeffTbl(7,2) = -1;
Fill APcoeffTbl(7,3) = 0;
*
local F = APd1*APd2*APd3*APd4*APd5*APd6*APd7;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APd4*APd5*APd6*APd7
      *APbasis(APdet(1),1,2)*APbasis(APdet(1),1,3)*APbasis(APdet(-1),1,4)*APbasis(APdet(1),1,5)
      *APbasis(APdet(2),1,6)*APbasis(APdet(-1),1,7)
      *APbasis(APdet(-1),2,3)*APbasis(APdet(-1),2,4)*APbasis(APdet(-2),2,5)*APbasis(APdet(-1),2,6)*APbasis(APdet(-3),2,7)
      *APbasis(APdet(-2),3,4)*APbasis(APdet(-1),3,5)*APbasis(APdet(1),3,6)*APbasis(APdet(-4),3,7)
      *APbasis(APdet(3),4,5)*APbasis(APdet(3),4,6)*APbasis(APdet(2),4,7)
      *APbasis(APdet(3),5,6)*APbasis(APdet(-5),5,7)
      *APbasis(APdet(-7),6,7)
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
*{{{ ApartFindBases_32 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "5"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 1;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = -1;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 3;
Fill APcoeffTbl(5,1) = 1;
Fill APcoeffTbl(5,2) = 0;
Fill APcoeffTbl(5,3) = 0;
*
local F = APd1*APd2*APd3*APd4*APd5;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APd4*APd5
      *APbasis(APdet(-1),1,5)*APbasis(APdet(-1),2,5)*APbasis(APdet(-1),3,5)*APbasis(APdet(-1),4,5)
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
*{{{ ApartFindBases_33 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "6"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
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
Fill APcoeffTbl(4,3) = 0;
Fill APcoeffTbl(4,4) = 0;
Fill APcoeffTbl(5,1) = 0;
Fill APcoeffTbl(5,2) = 1;
Fill APcoeffTbl(5,3) = 1;
Fill APcoeffTbl(5,4) = 0;
Fill APcoeffTbl(6,1) = 1;
Fill APcoeffTbl(6,2) = 0;
Fill APcoeffTbl(6,3) = 1;
Fill APcoeffTbl(6,4) = 0;
*
local F = APd1*APd2*APd3*APd4*APd5*APd6;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APd4*APd5*APd6
      *APbasis(APdet(1),1,2,3)*APbasis(APdet(1),1,2,5)*APbasis(APdet(1),1,2,6)
      *APbasis(APdet(-1),1,3,4)*APbasis(APdet(-1),1,3,5)
      *APbasis(APdet(1),1,4,5)*APbasis(APdet(1),1,4,6)*APbasis(APdet(1),1,5,6)
      *APbasis(APdet(1),2,3,4)*APbasis(APdet(1),2,3,6)
      *APbasis(APdet(-1),2,4,5)*APbasis(APdet(-1),2,4,6)*APbasis(APdet(1),2,5,6)
      *APbasis(APdet(1),3,4,5)*APbasis(APdet(-1),3,4,6)*APbasis(APdet(-1),3,5,6)
      *APbasis(APdet(2),4,5,6)
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
*{{{ ApartFindBases_34 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 7;
Fill APcoeffTbl(1,2) = 3;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 5;
Fill APcoeffTbl(2,2) = 11;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 13;
Fill APcoeffTbl(3,2) = 2;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APbasis(APdet(62),1,2)*APbasis(APdet(-25),1,3)*APbasis(APdet(-133),2,3)
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
*{{{ ApartFindBases_35 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x"
*
symbols x;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(2,1) = 2;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(3,1) = 3;
Fill APcoeffTbl(3,2) = -1;
Fill APcoeffTbl(4,1) = 5;
Fill APcoeffTbl(4,2) = 2;
*
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APd4
      *APbasis(APdet(1),1)*APbasis(APdet(2),2)*APbasis(APdet(3),3)*APbasis(APdet(5),4)
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
*{{{ ApartFindBases_36 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(1,4) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(2,4) = 1;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(3,4) = 0;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 0;
Fill APcoeffTbl(4,3) = 1;
Fill APcoeffTbl(4,4) = 0;
*
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APd4*APbasis(APdet(1),1,3,4)*APbasis(APdet(1),2,3,4)
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
*{{{ ApartFindBases_37 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 2;
Fill APcoeffTbl(2,3) = 3;
Fill APcoeffTbl(3,1) = 3;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APbasis(APdet(2),1,2)*APbasis(APdet(-2),1,3)*APbasis(APdet(-6),2,3)
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
*{{{ ApartFindBases_38 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "8"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 0;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(5,1) = 0;
Fill APcoeffTbl(5,2) = 1;
Fill APcoeffTbl(5,3) = 0;
Fill APcoeffTbl(8,1) = 1;
Fill APcoeffTbl(8,2) = 1;
Fill APcoeffTbl(8,3) = 1;
*
local F = APd2*APd5*APd8;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd2*APd5*APd8*APbasis(APdet(1),2,5)*APbasis(APdet(1),2,8)*APbasis(APdet(-1),5,8)
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
*{{{ ApartFindBases_39 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = APd1^10*APd2^7;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^10*APd2^7*APbasis(APdet(1),1,2)
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
*{{{ ApartFindBases_40 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
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
local F =
  + 3*APd1
  + 2*APd1*APd2
  + APd1*APd2*APd3
;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + 3*APd1
    + 2*APd1*APd2*APbasis(APdet(1),1,2)
    + APd1*APd2*APd3*APbasis(APdet(1),1,2)*APbasis(APdet(1),1,3)*APbasis(APdet(-1),2,3)
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
*{{{ ApartFindBases_41 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
*
local F = -5/3*APd1^2*APd2^3;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    - 5/3*APd1^2*APd2^3*APbasis(APdet(1),1,2)
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
*{{{ ApartFindBases_42 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,s,t;
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
local F = s*APd1*APd3 + t*APd2*APd3;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + s*APd1*APd3*APbasis(APdet(1),1,3)
    + t*APd2*APd3*APbasis(APdet(-1),2,3)
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
*{{{ ApartFindBases_43 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = -1;
*
local F =
  + APd1^2*APd3^2*APd4
  + APd2*APd3^3*APd4
  + APd1*APd3^3*APd4
;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd3^2*APd4*APbasis(APdet(1),1,3)*APbasis(APdet(1),1,4)
    + APd2*APd3^3*APd4*APbasis(APdet(-1),2,3)*APbasis(APdet(-1),2,4)
    + APd1*APd3^3*APd4*APbasis(APdet(1),1,3)*APbasis(APdet(1),1,4)
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
*{{{ ApartFindBases_44 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = -3;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 5;
*
local F = APd1^4*APd2;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^4*APd2*APbasis(APdet(1),1,2)
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
*{{{ ApartFindBases_45 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,s;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
*
local F = 7*s^3;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + 7*s^3
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
*{{{ ApartFindBases_46 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "5"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 1;
Fill APcoeffTbl(2,2) = 0;
Fill APcoeffTbl(2,3) = 1;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 0;
Fill APcoeffTbl(5,1) = 1;
Fill APcoeffTbl(5,2) = -1;
Fill APcoeffTbl(5,3) = 0;
*
local F = APd1*APd2*APd3 + APd4*APd5;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APbasis(APdet(1),1,3)*APbasis(APdet(1),2,3)
    + APd4*APd5*APbasis(APdet(-2),4,5)
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
*{{{ ApartFindBases_47 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,s;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = s;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = s;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 2*s+1;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APbasis(APdet(1),1,2)*APbasis(APdet(1),1,3)*APbasis(APdet(-1),2,3)
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
*{{{ ApartFindBases_48 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 0;
Fill APcoeffTbl(4,3) = -1;
*
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APd4
      *APbasis(APdet(1),1,2)*APbasis(APdet(1),1,3)*APbasis(APdet(-1),2,3)*APbasis(APdet(-1),2,4)*APbasis(APdet(-1),3,4)
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
*{{{ ApartFindBases_49 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 1;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(1,4) = 1;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 1;
Fill APcoeffTbl(2,4) = 2;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(3,4) = 3;
*
local F = APd1^2*APd2*APd3^3;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2*APd3^3*APbasis(APdet(2),1,2,3)
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
*{{{ ApartFindBases_50 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "5"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 1;
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
Fill APcoeffTbl(5,1) = 2;
Fill APcoeffTbl(5,2) = 1;
Fill APcoeffTbl(5,3) = 0;
*
local F =
  + APd1^2*APd2
  - APd1^2*APd3
  + APd3*APd4*APd5
  - 1/2*APd2*APd4
;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2*APbasis(APdet(1),1,2)
    - APd1^2*APd3*APbasis(APdet(1),1,3)
    + APd3*APd4*APd5*APbasis(APdet(-2),3,4)*APbasis(APdet(-1),3,5)*APbasis(APdet(3),4,5)
    - 1/2*APd2*APd4*APbasis(APdet(-1),2,4)
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
*{{{ ApartFindBases_51 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(1,4) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(2,4) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
Fill APcoeffTbl(3,4) = 1;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartFindBases()
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
*{{{ ApartFindBases_52 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(1,4) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(2,4) = 0;
*
local F = APd1*APd2;
.sort
*
#call ApartFindBases()
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
*{{{ ApartFindBases_53 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(1,4) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(2,4) = 0;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
Fill APcoeffTbl(3,4) = 1;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = -1;
Fill APcoeffTbl(4,3) = 0;
Fill APcoeffTbl(4,4) = 2;
*
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartFindBases()
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
*{{{ ApartFindBases_54 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y,z"
*
symbols x,y,z;
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
Fill APcoeffTbl(4,3) = 0;
Fill APcoeffTbl(4,4) = 1;
*
local F =
  + APd1*APd2*APd3
  + APd1*APd2*APd4
;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APbasis(APdet(1),1,2,3)
    + APd1*APd2*APd4
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
*{{{ ApartFindBases_55 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,epsilon;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1 + epsilon;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3
      *APbasis(APdet(1),1,2)
      *APbasis(APdet(1),1,3)
      *APbasis(APdet(-1-epsilon),2,3)
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
*{{{ ApartFindBases_56 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,epsilon;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = 1 + epsilon^2;
Fill APcoeffTbl(3,2) = epsilon;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3
      *APbasis(APdet(1),1,2)
      *APbasis(APdet(epsilon),1,3)
      *APbasis(APdet(-1-epsilon^2),2,3)
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
*{{{ ApartFindBases_57 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y,epsilon;
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
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APd4
      *APbasis(APdet(1),1,2)
      *APbasis(APdet(1),1,3)
      *APbasis(APdet(1-epsilon),1,4)
      *APbasis(APdet(-1-epsilon),2,3)
      *APbasis(APdet(-1),2,4)
      *APbasis(APdet(-epsilon^2),3,4)
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
*{{{ ApartFindBases_58 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y,epsilon;
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
local F =
  + APd1*APd2*APd3
  + APd1*APd3*APd4
;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3
      *APbasis(APdet(1),1,2)
      *APbasis(APdet(1),1,3)
      *APbasis(APdet(-1-epsilon),2,3)
    + APd1*APd3*APd4
      *APbasis(APdet(1),1,3)
      *APbasis(APdet(1-epsilon),1,4)
      *APbasis(APdet(-epsilon^2),3,4)
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
*{{{ ApartFindBases_59 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y"
*
symbols x,y,epsilon;
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
local F =
  + APden(-1-epsilon^2)*APd1*APd2*APd3
  + (epsilon^2+2*epsilon-1)*APden(epsilon^2-4*epsilon-3)*APd1*APd3*APd4
;
.sort
*
#call ApartFindBases()
*
.sort
*
local diff =
  F
  -
  (
    + APden(-1-epsilon^2)*APd1*APd2*APd3
      *APbasis(APdet(1),1,2)
      *APbasis(APdet(1),1,3)
      *APbasis(APdet(-1-epsilon),2,3)
    + (epsilon^2+2*epsilon-1)*APden(epsilon^2-4*epsilon-3)*APd1*APd3*APd4
      *APbasis(APdet(1),1,3)
      *APbasis(APdet(1-epsilon),1,4)
      *APbasis(APdet(-epsilon^2),3,4)
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
