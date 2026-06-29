*{{{ ApartEliminateNullRelations_1 :
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
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F - APd1*APd2
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
*{{{ ApartEliminateNullRelations_2 :
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
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2
    - APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_3 :
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
Fill APcoeffTbl(1,3) = 1;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 2;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 3;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2
    - APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_4 :
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
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 1/2*APd1^2*APd2
    - 1/2*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_5 :
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
Fill APcoeffTbl(3,2) = -1;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2
    + APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_6 :
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
Fill APcoeffTbl(3,2) = 2;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2
    - 2*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_7 :
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
Fill APcoeffTbl(3,1) = 5;
Fill APcoeffTbl(3,2) = 3;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 1/5*APd1^2*APd2
    - 3/5*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_8 :
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
Fill APcoeffTbl(3,1) = 3;
Fill APcoeffTbl(3,2) = -2;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 1/3*APd1^2*APd2
    + 2/3*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_9 :
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
Fill APcoeffTbl(3,1) = -1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    - APd1^2*APd2
    + APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_10 :
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
Fill APcoeffTbl(1,3) = 1;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 1;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 2;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2
    - APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_11 :
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
Fill APcoeffTbl(1,3) = 3;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = -1;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 2;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2
    - APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_12 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 2;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 1;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 3;
Fill APcoeffTbl(2,3) = 2;
Fill APcoeffTbl(3,1) = 2;
Fill APcoeffTbl(3,2) = 3;
Fill APcoeffTbl(3,3) = 3;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2
    - APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_13 :
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
local F = 5*APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 5*APd1^2*APd2
    - 5*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_14 :
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
local F = -1*APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    - APd1^2*APd2
    + APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_15 :
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
local F = 1/3*APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 1/3*APd1^2*APd2
    - 1/3*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_16 :
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
local F = s*APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + s*APd1^2*APd2
    - s*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_17 :
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
local F = APd1;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F - APd1
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
*{{{ ApartEliminateNullRelations_18 :
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
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F - APd1*APd2*APd3
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
*{{{ ApartEliminateNullRelations_19 :
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
Fill APcoeffTbl(2,1) = 2;
Fill APcoeffTbl(2,2) = 0;
*
local F = APd1*APd2;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F - 1/2*APd1^2
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
*{{{ ApartEliminateNullRelations_20 :
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
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F - APd1*APd2
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
*{{{ ApartEliminateNullRelations_21 :
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
Fill APcoeffTbl(4,4) = 0;
*
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2*APd3
    - APd1^2*APd2*APd4
    - APd1^2*APd3*APd4
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
*{{{ ApartEliminateNullRelations_22 :
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
Fill APcoeffTbl(4,3) = -1;
Fill APcoeffTbl(4,4) = 0;
*
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2*APd3
    + APd1^2*APd2*APd4
    - APd1^2*APd3*APd4
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
*{{{ ApartEliminateNullRelations_23 :
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
Fill APcoeffTbl(5,5) = 0;
*
local F = APd1*APd2*APd3*APd4*APd5;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2*APd3*APd4
    - APd1^2*APd2*APd3*APd5
    - APd1^2*APd2*APd4*APd5
    - APd1^2*APd3*APd4*APd5
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
*{{{ ApartEliminateNullRelations_24 :
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
local F = APd1^2*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2^2
    + APd2^3*APd3
    - APd1*APd2^3
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
*{{{ ApartEliminateNullRelations_25 :
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
local F = APd1*APd2^2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2^2
    + APd1^3*APd3
    - APd1^3*APd2
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
*{{{ ApartEliminateNullRelations_26 :
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
local F = APd1*APd2*APd3^2;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    - APd1^2*APd3^2
    + APd1^3*APd2
    - APd1^3*APd3
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
*{{{ ApartEliminateNullRelations_27 :
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
local F = APd1^3*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^3*APd2^2
    - APd1^2*APd2^3
    + APd1*APd2^4
    - APd2^4*APd3
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
*{{{ ApartEliminateNullRelations_28 :
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
local F = APd1^2*APd2^2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd3^3
    + APd2^2*APd3^3
    + 2*APd1*APd3^4
    + 2*APd2*APd3^4
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
*{{{ ApartEliminateNullRelations_29 :
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
Fill APcoeffTbl(1,4) = 1;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(2,4) = 1;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(3,4) = 1;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 1;
Fill APcoeffTbl(4,4) = 3;
*
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2*APd3
    - APd1^2*APd2*APd4
    - APd1^2*APd3*APd4
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
*{{{ ApartEliminateNullRelations_30 :
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
local F = APd1^5;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F - APd1^5
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
*{{{ ApartEliminateNullRelations_31 :
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
local F = APd1^4*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^4*APd2^2
    - APd1^3*APd2^3
    + APd1^2*APd2^4
    - APd1*APd2^5
    + APd2^5*APd3
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
*{{{ ApartEliminateNullRelations_32 :
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
local F = APd1*APd2*APd3^3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    - APd1^2*APd3^3
    - APd1^3*APd3^2
    - APd1^4*APd3
    + APd1^4*APd2
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
*{{{ ApartEliminateNullRelations_33 :
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
local F = APd1*APd2^3*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2^3
    - APd1^3*APd2^2
    + APd1^4*APd2
    - APd1^4*APd3
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
*{{{ ApartEliminateNullRelations_34 :
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
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1^2*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2^2
    + 4*APd2^3*APd3
    - 2*APd1*APd2^3
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
*{{{ ApartEliminateNullRelations_35 :
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
Fill APcoeffTbl(3,2) = -1;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1^2*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    - APd1^2*APd2^2
    + APd2^3*APd3
    - APd1*APd2^3
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
*{{{ ApartEliminateNullRelations_36 :
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
Fill APcoeffTbl(1,3) = 1;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 2;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 3;
*
local F = APd1^2*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2^2
    + APd2^3*APd3
    - APd1*APd2^3
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
*{{{ ApartEliminateNullRelations_37 :
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
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3^2;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    - 1/2*APd1^2*APd3^2
    + 1/4*APd1^3*APd2
    - 1/4*APd1^3*APd3
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
*{{{ ApartEliminateNullRelations_38 :
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
Fill APcoeffTbl(4,4) = 0;
*
local F = APd1^2*APd2*APd3*APd4;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2^2*APd3
    - APd1^2*APd2^2*APd4
    + APd2^3*APd3*APd4
    + APd1*APd2^3*APd4
    - APd1*APd2^3*APd3
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
*{{{ ApartEliminateNullRelations_39 :
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
Fill APcoeffTbl(3,3) = 0;
*
local F = s*t*APd1^2*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + s*t*APd1^2*APd2^2
    + s*t*APd2^3*APd3
    - s*t*APd1*APd2^3
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
*{{{ ApartEliminateNullRelations_40 :
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
Fill APcoeffTbl(2,1) = 3;
Fill APcoeffTbl(2,2) = 0;
*
local F = APd1*APd2;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F - 1/3*APd1^2
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
*{{{ ApartEliminateNullRelations_41 :
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
local F = 3*APd1^2*APd2^2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 3*APd1^2*APd3^3
    + 3*APd2^2*APd3^3
    + 6*APd1*APd3^4
    + 6*APd2*APd3^4
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
*{{{ ApartEliminateNullRelations_42 :
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
Fill APcoeffTbl(4,1) = 2;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 1;
Fill APcoeffTbl(4,4) = 0;
*
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 1/2*APd1^2*APd2*APd3
    - 1/2*APd1^2*APd2*APd4
    - 1/2*APd1^2*APd3*APd4
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
*{{{ ApartEliminateNullRelations_43 :
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
Fill APcoeffTbl(2,3) = -1;
*
local F = APd1*APd2;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F - APd1*APd2
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
*{{{ ApartEliminateNullRelations_44 :
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
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F - APd1^3*APd2^2
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
*{{{ ApartEliminateNullRelations_45 :
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
local F = -2/5*APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    - 2/5*APd1^2*APd2
    + 2/5*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_46 :
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
local F = APd1^5*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^5*APd2^2
    - APd1^4*APd2^3
    + APd1^3*APd2^4
    - APd1^2*APd2^5
    + APd1*APd2^6
    - APd2^6*APd3
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
*{{{ ApartEliminateNullRelations_47 :
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
local F = APd1^2*APd2*APd3^2;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2^3
    + APd2^3*APd3^2
    + 2*APd2^4*APd3
    - 2*APd1*APd2^4
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
*{{{ ApartEliminateNullRelations_48 :
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
local F = APd1*APd2^2*APd3^2;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^3*APd2^2
    + APd1^3*APd3^2
    + 2*APd1^4*APd3
    - 2*APd1^4*APd2
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
*{{{ ApartEliminateNullRelations_49 :
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
local F = APd1^3*APd2*APd3^2;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^3*APd2^3
    - 2*APd1^2*APd2^4
    + 3*APd1*APd2^5
    - APd2^4*APd3^2
    - 3*APd2^5*APd3
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
*{{{ ApartEliminateNullRelations_50 :
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
local F = APd1^2*APd2^3*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd2^3*APd3^3
    + 2*APd2^2*APd3^4
    + APd1^2*APd3^4
    + 3*APd2*APd3^5
    + 3*APd1*APd3^5
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
*{{{ ApartEliminateNullRelations_51 :
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
Fill APcoeffTbl(1,3) = 1;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = -1;
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2^2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2^2
    + APd1^3*APd3
    - APd1^3*APd2
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
*{{{ ApartEliminateNullRelations_52 :
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
Fill APcoeffTbl(1,5) = 1;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(2,4) = 0;
Fill APcoeffTbl(2,5) = 1;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(3,4) = 0;
Fill APcoeffTbl(3,5) = 1;
Fill APcoeffTbl(4,1) = 0;
Fill APcoeffTbl(4,2) = 0;
Fill APcoeffTbl(4,3) = 0;
Fill APcoeffTbl(4,4) = 1;
Fill APcoeffTbl(4,5) = 1;
Fill APcoeffTbl(5,1) = 1;
Fill APcoeffTbl(5,2) = 1;
Fill APcoeffTbl(5,3) = 1;
Fill APcoeffTbl(5,4) = 1;
Fill APcoeffTbl(5,5) = 4;
*
local F = APd1*APd2*APd3*APd4*APd5;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2*APd3*APd4
    - APd1^2*APd2*APd3*APd5
    - APd1^2*APd2*APd4*APd5
    - APd1^2*APd3*APd4*APd5
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
*{{{ ApartEliminateNullRelations_53 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,a,b;
*
Fill APcoeffTbl(1,1) = a;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = b;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = a;
Fill APcoeffTbl(3,2) = b;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2
    - APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_54 :
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
local F = -7*APd1^2*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    - 7*APd1^2*APd2^2
    - 7*APd2^3*APd3
    + 7*APd1*APd2^3
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
*{{{ ApartEliminateNullRelations_55 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
#Redefine APnumberOfDenominators "4"
#Redefine APvariables "x,y,z"
*
symbols x,y,z,s;
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
Fill APcoeffTbl(4,4) = 0;
*
local F = s^2*APd1*APd2*APd3*APd4;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + s^2*APd1^2*APd2*APd3
    - s^2*APd1^2*APd2*APd4
    - s^2*APd1^2*APd3*APd4
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
*{{{ ApartEliminateNullRelations_56 :
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
Fill APcoeffTbl(4,4) = 0;
*
local F = APd1*APd2*APd3^2*APd4;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    - APd1^2*APd3^2*APd4
    + APd1^2*APd2*APd3^2
    + APd1^3*APd3*APd4
    + APd1^3*APd2*APd4
    - APd1^3*APd2*APd3
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
*{{{ ApartEliminateNullRelations_57 :
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
Fill APcoeffTbl(4,2) = -1;
Fill APcoeffTbl(4,3) = 0;
*
local F = APd1*APd2*APd3 + APd1*APd2*APd4;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 2*APd1^2*APd2
    - APd1^2*APd3
    + APd1^2*APd4
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
*{{{ ApartEliminateNullRelations_58 :
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
Fill APcoeffTbl(4,2) = -1;
Fill APcoeffTbl(4,3) = 0;
*
local F = 3*APd1*APd2*APd3 - 2*APd1*APd2*APd4;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2
    - 3*APd1^2*APd3
    - 2*APd1^2*APd4
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
*{{{ ApartEliminateNullRelations_59 :
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
local F = APd1*APd2*APd3^4;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    - APd1^2*APd3^4
    - APd1^3*APd3^3
    - APd1^4*APd3^2
    - APd1^5*APd3
    + APd1^5*APd2
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
*{{{ ApartEliminateNullRelations_60 :
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
local F = APd1^4*APd2*APd3^2;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^4*APd2^3
    - 2*APd1^3*APd2^4
    + 3*APd1^2*APd2^5
    - 4*APd1*APd2^6
    + APd2^5*APd3^2
    + 4*APd2^6*APd3
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
*{{{ ApartEliminateNullRelations_61 :
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
local F = APd1^2*APd2^2*APd3^2;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^4*APd2^2
    + APd1^4*APd3^2
    + 2*APd1^5*APd3
    - 2*APd1^5*APd2
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
*{{{ ApartEliminateNullRelations_62 :
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
local F = APd1*APd2^4*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2^4
    - APd1^3*APd2^3
    + APd1^4*APd2^2
    + APd1^5*APd3
    - APd1^5*APd2
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
*{{{ ApartEliminateNullRelations_63 :
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
Fill APcoeffTbl(4,2) = 2;
Fill APcoeffTbl(4,3) = 3;
Fill APcoeffTbl(4,4) = 0;
*
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2*APd3
    - 3*APd1^2*APd2*APd4
    - 2*APd1^2*APd3*APd4
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
*{{{ ApartEliminateNullRelations_64 :
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
Fill APcoeffTbl(3,1) = 4;
Fill APcoeffTbl(3,2) = 5;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 1/4*APd1^2*APd2
    - 5/4*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_65 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y;
*
Fill APcoeffTbl(1,1) = 3;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 2;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 2;
Fill APcoeffTbl(2,3) = 1;
Fill APcoeffTbl(3,1) = 3;
Fill APcoeffTbl(3,2) = 2;
Fill APcoeffTbl(3,3) = 3;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2
    - APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_66 :
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
local F = APd1^2*APd2^3*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F - APd1^2*APd2^3*APd3
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
*{{{ ApartEliminateNullRelations_67 :
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
Fill APcoeffTbl(3,2) = -1;
Fill APcoeffTbl(3,3) = 0;
*
local F = s*t^2*APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + s*t^2*APd1^2*APd2
    + s*t^2*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_68 :
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
Fill APcoeffTbl(3,2) = -3;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 1/2*APd1^2*APd2
    + 3/2*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_69 :
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
Fill APcoeffTbl(3,2) = -1;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1^3*APd2^2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^3*APd3^3
    + 2*APd1^2*APd3^4
    + APd2^2*APd3^4
    - 3*APd2*APd3^5
    + 3*APd1*APd3^5
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
*{{{ ApartEliminateNullRelations_70 :
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
Fill APcoeffTbl(3,1) = 7;
Fill APcoeffTbl(3,2) = -3;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 1/7*APd1^2*APd2
    + 3/7*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_71 :
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
Fill APcoeffTbl(2,1) = 5;
Fill APcoeffTbl(2,2) = 3;
*
local F = APd1*APd2;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F - APd1*APd2
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
*{{{ ApartEliminateNullRelations_72 :
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
local F = APd1^6*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^6*APd2^2
    - APd1^5*APd2^3
    + APd1^4*APd2^4
    - APd1^3*APd2^5
    + APd1^2*APd2^6
    - APd1*APd2^7
    + APd2^7*APd3
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
*{{{ ApartEliminateNullRelations_73 :
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
local F = APd1*APd2*APd3^5;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    - APd1^2*APd3^5
    - APd1^3*APd3^4
    - APd1^4*APd3^3
    - APd1^5*APd3^2
    - APd1^6*APd3
    + APd1^6*APd2
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
*{{{ ApartEliminateNullRelations_74 :
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
Fill APcoeffTbl(4,2) = -1;
Fill APcoeffTbl(4,3) = 1;
Fill APcoeffTbl(4,4) = 0;
*
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2*APd3
    + APd1^2*APd3*APd4
    - APd1^2*APd2*APd4
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
*{{{ ApartEliminateNullRelations_75 :
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
Fill APcoeffTbl(1,4) = 2;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = 1;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(2,4) = -3;
Fill APcoeffTbl(3,1) = 0;
Fill APcoeffTbl(3,2) = 0;
Fill APcoeffTbl(3,3) = 1;
Fill APcoeffTbl(3,4) = 1;
Fill APcoeffTbl(4,1) = 1;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 1;
Fill APcoeffTbl(4,4) = 0;
*
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2*APd3
    - APd1^2*APd2*APd4
    - APd1^2*APd3*APd4
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
*{{{ ApartEliminateNullRelations_76 :
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
local F = APd1*APd2^2*APd3 + APd1^2*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 2*APd1^2*APd2^2
    + APd1^3*APd3
    - APd1^3*APd2
    + APd2^3*APd3
    - APd1*APd2^3
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
*{{{ ApartEliminateNullRelations_77 :
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
Fill APcoeffTbl(4,4) = 0;
*
local F = APd1*APd2*APd3*APd4^2;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    - APd1^2*APd3*APd4^2
    - APd1^2*APd2*APd4^2
    - APd1^3*APd3*APd4
    - APd1^3*APd2*APd4
    + APd1^3*APd2*APd3
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
*{{{ ApartEliminateNullRelations_78 :
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
local F = 1/7*APd1*APd2*APd3^3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  1/7*(
    - APd1^2*APd3^3
    - APd1^3*APd3^2
    - APd1^4*APd3
    + APd1^4*APd2
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
*{{{ ApartEliminateNullRelations_79 :
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
Fill APcoeffTbl(3,1) = 3;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2^2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 1/3*APd1^2*APd2^2
    + 1/9*APd1^3*APd3
    - 1/9*APd1^3*APd2
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
*{{{ ApartEliminateNullRelations_80 :
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
local F = APd1^3*APd2*APd3^3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^3*APd2^4
    - 3*APd1^2*APd2^5
    + 6*APd1*APd2^6
    - APd2^4*APd3^3
    - 3*APd2^5*APd3^2
    - 6*APd2^6*APd3
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
*{{{ ApartEliminateNullRelations_81 :
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
Fill APcoeffTbl(3,2) = -1;
Fill APcoeffTbl(3,3) = 0;
*
local F = s^3*APd1^2*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    - s^3*APd1^2*APd2^2
    + s^3*APd2^3*APd3
    - s^3*APd1*APd2^3
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
*{{{ ApartEliminateNullRelations_82 :
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
local F = 15*APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 15*APd1^2*APd2
    - 15*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_83 :
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
Fill APcoeffTbl(4,1) = 3;
Fill APcoeffTbl(4,2) = 2;
Fill APcoeffTbl(4,3) = 1;
Fill APcoeffTbl(4,4) = 0;
*
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 1/3*APd1^2*APd2*APd3
    - 1/3*APd1^2*APd2*APd4
    - 2/3*APd1^2*APd3*APd4
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
*{{{ ApartEliminateNullRelations_84 :
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
local F = APd1*APd2^5*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2^5
    - APd1^3*APd2^4
    + APd1^4*APd2^3
    - APd1^5*APd2^2
    + APd1^6*APd2
    - APd1^6*APd3
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
*{{{ ApartEliminateNullRelations_85 :
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
local F = APd1^3*APd2^3*APd3^3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^6*APd2^3
    - 3*APd1^7*APd2^2
    + 6*APd1^8*APd2
    - APd1^6*APd3^3
    - 3*APd1^7*APd3^2
    - 6*APd1^8*APd3
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
*{{{ ApartEliminateNullRelations_86 :
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
Fill APcoeffTbl(4,4) = 0;
*
local F = APd1*APd2*APd3*APd4^3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    - APd1^2*APd3*APd4^3
    - APd1^2*APd2*APd4^3
    - APd1^3*APd3*APd4^2
    - APd1^3*APd2*APd4^2
    - APd1^4*APd3*APd4
    - APd1^4*APd2*APd4
    + APd1^4*APd2*APd3
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
*{{{ ApartEliminateNullRelations_87 :
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
local F = 7/11*APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 7/11*APd1^2*APd2
    - 7/11*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_88 :
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
Fill APcoeffTbl(5,2) = -1;
Fill APcoeffTbl(5,3) = 1;
Fill APcoeffTbl(5,4) = -1;
Fill APcoeffTbl(5,5) = 0;
*
local F = APd1*APd2*APd3*APd4*APd5;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2*APd3*APd4
    + APd1^2*APd3*APd4*APd5
    - APd1^2*APd2*APd4*APd5
    + APd1^2*APd2*APd3*APd5
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
*{{{ ApartEliminateNullRelations_89 :
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
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1^2*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 1/3*APd1^2*APd2^2
    - 2/9*APd1*APd2^3
    + 4/9*APd2^3*APd3
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
*{{{ ApartEliminateNullRelations_90 :
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
Fill APcoeffTbl(4,3) = 2;
Fill APcoeffTbl(4,4) = 0;
*
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2*APd3
    - 2*APd1^2*APd2*APd4
    - APd1^2*APd3*APd4
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
*{{{ ApartEliminateNullRelations_91 :
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
local F = APd1^2*APd2*APd3 - APd1*APd2^2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd2^3*APd3
    - APd1*APd2^3
    - APd1^3*APd3
    + APd1^3*APd2
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
*{{{ ApartEliminateNullRelations_92 :
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
local F = APd1^2*APd2*APd3^3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2^4
    + APd2^3*APd3^3
    + 2*APd2^4*APd3^2
    + 3*APd2^5*APd3
    - 3*APd1*APd2^5
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
*{{{ ApartEliminateNullRelations_93 :
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
Fill APcoeffTbl(3,3) = 0;
*
local F = s^2*t^3*APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + s^2*t^3*APd1^2*APd2
    - s^2*t^3*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_94 :
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
Fill APcoeffTbl(2,1) = 7;
Fill APcoeffTbl(2,2) = 0;
*
local F = APd1*APd2;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F - 1/7*APd1^2
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
*{{{ ApartEliminateNullRelations_95 :
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
Fill APcoeffTbl(3,1) = 2;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
*
local F = s*APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 1/2*s*APd1^2*APd2
    - 1/2*s*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_96 :
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
local F = APd1*APd2*APd3^6;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    - APd1^2*APd3^6
    - APd1^3*APd3^5
    - APd1^4*APd3^4
    - APd1^5*APd3^3
    - APd1^6*APd3^2
    - APd1^7*APd3
    + APd1^7*APd2
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
*{{{ ApartEliminateNullRelations_97 :
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
Fill APcoeffTbl(4,4) = 0;
*
local F = APd1*APd2^2*APd3*APd4;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    - APd1^2*APd2^2*APd4
    + APd1^2*APd2^2*APd3
    + APd1^3*APd3*APd4
    + APd1^3*APd2*APd4
    - APd1^3*APd2*APd3
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
*{{{ ApartEliminateNullRelations_98 :
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
Fill APcoeffTbl(3,3) = 0;
*
local F = s^2*t^3*APd1*APd2*APd3^2;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  s^2*t^3*(
    - APd1^2*APd3^2
    + APd1^3*APd2
    - APd1^3*APd3
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
*{{{ ApartEliminateNullRelations_99 :
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
Fill APcoeffTbl(4,4) = 0;
*
local F = -3/7*APd1*APd2*APd3*APd4;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    - 3/7*APd1^2*APd2*APd3
    + 3/7*APd1^2*APd2*APd4
    + 3/7*APd1^2*APd3*APd4
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
*{{{ ApartEliminateNullRelations_100 :
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
local F = APd1^3*APd2*APd3 + APd1*APd2*APd3^3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^3*APd2^2
    - APd1^2*APd2^3
    + APd1*APd2^4
    - APd2^4*APd3
    - APd1^2*APd3^3
    - APd1^3*APd3^2
    - APd1^4*APd3
    + APd1^4*APd2
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
*{{{ ApartEliminateNullRelations_101 :
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
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    - APden(-1-epsilon^2)*APd1^2*APd2
    + epsilon*APden(-1-epsilon^2)*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_102 :
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
Fill APcoeffTbl(3,1) = epsilon^2;
Fill APcoeffTbl(3,2) = 1 - epsilon;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + epsilon^-2*APd1^2*APd2
    + epsilon^-1*APd1^2*APd3
    - epsilon^-2*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_103 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2
    - APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_104 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
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
Fill APcoeffTbl(3,1) = 1;
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 3;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2
    - APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_105 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 1/2*APd1^2*APd2
    - 1/2*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_106 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
Fill APcoeffTbl(3,2) = -1;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2
    + APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_107 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
Fill APcoeffTbl(3,1) = 3;
Fill APcoeffTbl(3,2) = -2;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 1/3*APd1^2*APd2
    + 2/3*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_108 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
Fill APcoeffTbl(4,4) = 0;
*
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2*APd3
    - APd1^2*APd2*APd4
    - APd1^2*APd3*APd4
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
*{{{ ApartEliminateNullRelations_109 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
local F = 5*APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 5*APd1^2*APd2
    - 5*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_110 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
local F = APd1^2*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2^2
    + APd2^3*APd3
    - APd1*APd2^3
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
*{{{ ApartEliminateNullRelations_111 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
local F = APd1*APd2^2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2^2
    + APd1^3*APd3
    - APd1^3*APd2
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
*{{{ ApartEliminateNullRelations_112 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
local F = APd1*APd2^3*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2^3
    - APd1^3*APd2^2
    + APd1^4*APd2
    - APd1^4*APd3
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
*{{{ ApartEliminateNullRelations_113 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
local F = APd1^2*APd2^2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd3^3
    + APd2^2*APd3^3
    + 2*APd1*APd3^4
    + 2*APd2*APd3^4
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
*{{{ ApartEliminateNullRelations_114 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
Fill APcoeffTbl(3,2) = 1;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1^2*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2^2
    + 4*APd2^3*APd3
    - 2*APd1*APd2^3
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
*{{{ ApartEliminateNullRelations_115 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Redefine APnumberOfVariables "1"
#Redefine APnumberOfDenominators "2"
#Redefine APvariables "x"
*
symbols x;
*
Fill APcoeffTbl(1,1) = 1;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(2,1) = 3;
Fill APcoeffTbl(2,2) = 0;
*
local F = APd1*APd2;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F - 1/3*APd1^2
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
*{{{ ApartEliminateNullRelations_116 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
Fill APcoeffTbl(3,3) = 0;
*
local F = s*t*APd1^2*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + s*t*APd1^2*APd2^2
    + s*t*APd2^3*APd3
    - s*t*APd1*APd2^3
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
*{{{ ApartEliminateNullRelations_117 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
local F = APd1^5*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^5*APd2^2
    - APd1^4*APd2^3
    + APd1^3*APd2^4
    - APd1^2*APd2^5
    + APd1*APd2^6
    - APd2^6*APd3
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
*{{{ ApartEliminateNullRelations_118 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
Fill APcoeffTbl(4,2) = 2;
Fill APcoeffTbl(4,3) = 3;
Fill APcoeffTbl(4,4) = 0;
*
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2*APd3
    - 3*APd1^2*APd2*APd4
    - 2*APd1^2*APd3*APd4
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
*{{{ ApartEliminateNullRelations_119 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
Fill APcoeffTbl(5,5) = 0;
*
local F = APd1*APd2*APd3*APd4*APd5;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2*APd3*APd4
    - APd1^2*APd2*APd3*APd5
    - APd1^2*APd2*APd4*APd5
    - APd1^2*APd3*APd4*APd5
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
*{{{ ApartEliminateNullRelations_120 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
Fill APcoeffTbl(4,1) = 2;
Fill APcoeffTbl(4,2) = 1;
Fill APcoeffTbl(4,3) = 1;
Fill APcoeffTbl(4,4) = 0;
*
local F = APd1*APd2*APd3*APd4;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 1/2*APd1^2*APd2*APd3
    - 1/2*APd1^2*APd2*APd4
    - 1/2*APd1^2*APd3*APd4
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
*{{{ ApartEliminateNullRelations_121 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Redefine APnumberOfVariables "2"
#Redefine APnumberOfDenominators "3"
#Redefine APvariables "x,y"
*
symbols x,y,a,b;
*
Fill APcoeffTbl(1,1) = a;
Fill APcoeffTbl(1,2) = 0;
Fill APcoeffTbl(1,3) = 0;
Fill APcoeffTbl(2,1) = 0;
Fill APcoeffTbl(2,2) = b;
Fill APcoeffTbl(2,3) = 0;
Fill APcoeffTbl(3,1) = a;
Fill APcoeffTbl(3,2) = b;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2
    - APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_122 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
local F = -7*APd1^2*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    - 7*APd1^2*APd2^2
    - 7*APd2^3*APd3
    + 7*APd1*APd2^3
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
*{{{ ApartEliminateNullRelations_123 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
local F = 3*APd1^2*APd2^2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 3*APd1^2*APd3^3
    + 3*APd2^2*APd3^3
    + 6*APd1*APd3^4
    + 6*APd2*APd3^4
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
*{{{ ApartEliminateNullRelations_124 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
Fill APcoeffTbl(5,2) = -1;
Fill APcoeffTbl(5,3) = 1;
Fill APcoeffTbl(5,4) = -1;
Fill APcoeffTbl(5,5) = 0;
*
local F = APd1*APd2*APd3*APd4*APd5;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2*APd3*APd4
    + APd1^2*APd3*APd4*APd5
    - APd1^2*APd2*APd4*APd5
    + APd1^2*APd2*APd3*APd5
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
*{{{ ApartEliminateNullRelations_125 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1^2*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + 1/3*APd1^2*APd2^2
    - 2/9*APd1*APd2^3
    + 4/9*APd2^3*APd3
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
*{{{ ApartEliminateNullRelations_126 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    - APden(-1-epsilon^2)*APd1^2*APd2
    + epsilon*APden(-1-epsilon^2)*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_127 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
Fill APcoeffTbl(3,1) = epsilon^2;
Fill APcoeffTbl(3,2) = 1 - epsilon;
Fill APcoeffTbl(3,3) = 0;
*
local F = APd1*APd2*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + epsilon^-2*APd1^2*APd2
    + epsilon^-1*APd1^2*APd3
    - epsilon^-2*APd1^2*APd3
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
*{{{ ApartEliminateNullRelations_128 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
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
local F = APd1^2*APd2^3*APd3;
.sort
*
#call ApartEliminateNullRelations()
*
.sort
*
local diff =
  F
  -
  (
    + APd2^3*APd3^3
    + 2*APd2^2*APd3^4
    + APd1^2*APd3^4
    + 3*APd2*APd3^5
    + 3*APd1*APd3^5
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
