*{{{ ApartFillNullRelationTable_1 :
#include- ../src/formapart.h
*
symbols nr1,nr2;
cfunction collect;
ctable,sparse,NullTbl(3);
*
local temp = collect(1,0,1)*nr1 + collect(0,1,1)*nr2;
.sort
*
#call ApartFillNullRelationTable(temp,collect,NullTbl)
*
.sort
*
local check1 = NullTbl(1,0,1) - nr1;
local check2 = NullTbl(0,1,1) - nr2;
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
assert result("check2") =~ expr("0")
*}}}
*
*{{{ ApartFillNullRelationTable_2 :
#include- ../src/formapart.h
*
symbols nr1,nr2,nr3;
cfunction collect;
ctable,sparse,NullTbl(3);
*
local temp = collect(1,1,0)*(nr1+nr2) + collect(0,0,1)*nr3;
.sort
*
#call ApartFillNullRelationTable(temp,collect,NullTbl)
*
.sort
*
local check1 = NullTbl(1,1,0) - (nr1+nr2);
local check2 = NullTbl(0,0,1) - nr3;
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
assert result("check2") =~ expr("0")
*}}}
*
*{{{ ApartFillNullRelationTable_3 :
#include- ../src/formapart.h
*
cfunctions collect,null;
ctable,sparse,NullTbl(3);
*
local temp = collect(1,0,1)*null(-1,0,1) + collect(1,1,0)*null(-1,1,0);
.sort
*
#call ApartFillNullRelationTable(temp,collect,NullTbl)
*
.sort
*
local check1 = NullTbl(1,0,1) - null(-1,0,1);
local check2 = NullTbl(1,1,0) - null(-1,1,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
assert result("check2") =~ expr("0")
*}}}
*
*{{{ ApartFillNullRelationTable_4 :
#include- ../src/formapart.h
*
symbol nr1;
cfunction collect;
ctable,sparse,NullTbl(3);
*
local temp = collect(1,1,1)*nr1;
.sort
*
#call ApartFillNullRelationTable(temp,collect,NullTbl)
*
.sort
*
local check1 = NullTbl(1,1,1) - nr1;
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFillNullRelationTable_5 :
#include- ../src/formapart.h
*
symbols nr1,nr2,nr3,nr4,nr5;
cfunction collect;
ctable,sparse,NullTbl(3);
*
local temp =
  + collect(1,0,0)*nr1
  + collect(0,1,0)*nr2
  + collect(0,0,1)*nr3
  + collect(1,1,0)*nr4
  + collect(1,1,1)*nr5;
.sort
*
#call ApartFillNullRelationTable(temp,collect,NullTbl)
*
.sort
*
local check1 = NullTbl(1,0,0) - nr1;
local check2 = NullTbl(0,1,0) - nr2;
local check3 = NullTbl(0,0,1) - nr3;
local check4 = NullTbl(1,1,0) - nr4;
local check5 = NullTbl(1,1,1) - nr5;
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
assert result("check2") =~ expr("0")
assert result("check3") =~ expr("0")
assert result("check4") =~ expr("0")
assert result("check5") =~ expr("0")
*}}}
*
*{{{ ApartFillNullRelationTable_6 :
#include- ../src/formapart.h
*
cfunctions collect,null;
ctable,sparse,NullTbl(3);
*
local temp =
  + collect(1,1,1)*(null(-1,-1,1)+null(-2,0,1))
  + collect(1,1,0)*null(1,-1,0);
.sort
*
#call ApartFillNullRelationTable(temp,collect,NullTbl)
*
.sort
*
local check1 = NullTbl(1,1,1) - (null(-1,-1,1)+null(-2,0,1));
local check2 = NullTbl(1,1,0) - null(1,-1,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
assert result("check2") =~ expr("0")
*}}}
