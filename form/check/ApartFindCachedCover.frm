*{{{ ApartFindCachedCover_1 :
#include- ../src/formapart.h
*
cfunctions b, flip, aux, null;
ctable,sparse,NullTbl(3);
*
Fill NullTbl(1,1,1) = null(-1,-1,1);
*
local F = b(1,1,0);
.sort
*
#call ApartFindCachedCover(b,flip,aux,NullTbl)
*
.sort
*
local diff = F - null(-1,-1,1) * flip(3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFindCachedCover_2 :
#include- ../src/formapart.h
*
cfunctions b, flip, aux, null;
ctable,sparse,NullTbl(4);
*
Fill NullTbl(1,1,1,1) = null(-2,1,1,0) * null(0,0,1,-1);
*
local F = b(0,1,1,1);
.sort
*
#call ApartFindCachedCover(b,flip,aux,NullTbl)
*
.sort
*
local diff = F - null(-2,1,1,0) * null(0,0,1,-1) * flip(1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFindCachedCover_3 :
#include- ../src/formapart.h
*
cfunctions b, flip, aux, null;
ctable,sparse,NullTbl(4);
*
Fill NullTbl(1,0,1,1) = null(-1,0,0,1);
*
local F = b(0,0,1,1);
.sort
*
#call ApartFindCachedCover(b,flip,aux,NullTbl)
*
.sort
*
local diff = F - null(-1,0,0,1) * flip(1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFindCachedCover_4 :
#include- ../src/formapart.h
*
cfunctions b, flip, aux, null;
ctable,sparse,NullTbl(4);
*
Fill NullTbl(1,0,0,1) = null(1,0,0,0);
Fill NullTbl(0,1,0,1) = null(0,1,0,0);
Fill NullTbl(0,0,1,1) = null(0,0,1,0);
*
local F = b(0,0,0,1);
.sort
*
#call ApartFindCachedCover(b,flip,aux,NullTbl)
*
.sort
*
local diff = F - null(0,0,1,0) * flip(3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFindCachedCover_5 :
#include- ../src/formapart.h
*
cfunctions b, flip, aux, null;
ctable,sparse,NullTbl(7);
*
Fill NullTbl(0,0,1,1,1,1,1) =
    null(0,0,-1,1,0,0,0)
  * null(0,0,0,-1,1,0,0)
  * null(0,0,1,0,-1,0,1);
*
local F = b(0,0,1,0,1,1,1);
.sort
*
#call ApartFindCachedCover(b,flip,aux,NullTbl)
*
.sort
*
local diff =
    F
  - null(0,0,-1,1,0,0,0) * null(0,0,0,-1,1,0,0) * null(0,0,1,0,-1,0,1)
    * flip(4)
;
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFindCachedCover_6 :
#include- ../src/formapart.h
*
cfunctions b, flip, aux, null;
ctable,sparse,NullTbl(4);
*
Fill NullTbl(1,1,1,1) = null(-1,-1,1,1);
*
local F = b(0,0,1,1);
.sort
*
#call ApartFindCachedCover(b,flip,aux,NullTbl)
*
.sort
*
local diff = F - b(0,0,1,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFindCachedCover_7 :
#include- ../src/formapart.h
*
cfunctions b, flip, aux, null;
ctable,sparse,NullTbl(4);
*
Fill NullTbl(1,0,0,0) = null(-1,0,0,0);
Fill NullTbl(0,1,0,0) = null(0,-1,0,0);
Fill NullTbl(0,0,1,0) = null(0,0,-1,0);
Fill NullTbl(0,0,0,1) = null(0,0,0,-1);
*
local F = b(0,0,0,0);
.sort
*
#call ApartFindCachedCover(b,flip,aux,NullTbl)
*
.sort
*
local diff = F - null(0,0,0,-1) * flip(4);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFindCachedCover_8 :
#include- ../src/formapart.h
*
cfunctions b, flip, aux, null;
ctable,sparse,NullTbl(4);
*
Fill NullTbl(1,1,1,1) = null(-1,1,-1,1);
*
local F = b(1,1,1,1);
.sort
*
#call ApartFindCachedCover(b,flip,aux,NullTbl)
*
.sort
*
local diff = F - b(1,1,1,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFindCachedCover_9 :
#include- ../src/formapart.h
*
cfunctions b, flip, aux, null;
ctable,sparse,NullTbl(2);
*
Fill NullTbl(1,1) = null(-1,1);
*
local F = b(1,0);
.sort
*
#call ApartFindCachedCover(b,flip,aux,NullTbl)
*
.sort
*
local diff = F - null(-1,1) * flip(2);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFindCachedCover_10 :
#include- ../src/formapart.h
*
cfunctions b, flip, aux, null;
ctable,sparse,NullTbl(3);
*
Fill NullTbl(1,1,1) = 1;
*
local F = b(1,1,0);
.sort
*
#call ApartFindCachedCover(b,flip,aux,NullTbl)
*
.sort
*
local diff = F - flip(3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFindCachedCover_11 :
#include- ../src/formapart.h
*
cfunctions b, flip, aux, null;
ctable,sparse,NullTbl(4);
*
Fill NullTbl(0,0,1,1) = null(0,0,-1,1);
*
local F = b(0,0,1,1);
.sort
*
#call ApartFindCachedCover(b,flip,aux,NullTbl)
*
.sort
*
local diff = F - b(0,0,1,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFindCachedCover_12 :
#include- ../src/formapart.h
*
cfunctions b, flip, aux, null;
ctable,sparse,NullTbl(19);
*
Fill NullTbl(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0) =
    null(-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
*
local F = b(0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0);
.sort
*
#call ApartFindCachedCover(b,flip,aux,NullTbl)
*
.sort
*
local diff =
    F
  - null(-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0) * flip(1)
;
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFindCachedCover_13 :
#include- ../src/formapart.h
*
symbols s;
cfunctions b, flip, aux, null;
ctable,sparse,NullTbl(4);
*
Fill NullTbl(1,0,1,1) = null(-1,0,0,1);
*
local F = 2 * s * b(0,0,1,1);
.sort
*
#call ApartFindCachedCover(b,flip,aux,NullTbl)
*
.sort
*
local diff = F - 2 * s * null(-1,0,0,1) * flip(1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFindCachedCover_14 :
#include- ../src/formapart.h
*
cfunctions b, flip, aux, null;
ctable,sparse,NullTbl(6);
*
Fill NullTbl(1,0,0,0,1,1) = null(-1,0,0,0,0,0);
*
local F = b(0,0,0,0,1,1);
.sort
*
#call ApartFindCachedCover(b,flip,aux,NullTbl)
*
.sort
*
local diff = F - null(-1,0,0,0,0,0) * flip(1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFindCachedCover_15 :
#include- ../src/formapart.h
*
symbols eps;
cfunctions b, flip, aux, null;
ctable,sparse,NullTbl(4);
*
Fill NullTbl(1,1,1,1) = eps * null(-1,1,-1,1);
*
local F = b(0,1,1,1);
.sort
*
#call ApartFindCachedCover(b,flip,aux,NullTbl)
*
.sort
*
local diff = F - eps * null(-1,1,-1,1) * flip(1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFindCachedCover_16 :
#include- ../src/formapart.h
*
cfunctions b, flip, aux, null;
ctable,sparse,NullTbl(3);
*
Fill NullTbl(1,1,1) = 1/2 * null(-1,-1,1);
*
local F = b(1,1,0);
.sort
*
#call ApartFindCachedCover(b,flip,aux,NullTbl)
*
.sort
*
local diff = F - 1/2 * null(-1,-1,1) * flip(3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFindCachedCover_17 :
#include- ../src/formapart.h
*
cfunctions b, flip, aux, null;
ctable,sparse,NullTbl(3);
*
Fill NullTbl(1,1,1) = null(-1,-1,1);
*
local F = b(0,1,1) + b(1,0,1);
.sort
*
#call ApartFindCachedCover(b,flip,aux,NullTbl)
*
.sort
*
local diff =
    F
  - null(-1,-1,1) * flip(1)
  - null(-1,-1,1) * flip(2)
;
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFindCachedCover_18 :
#include- ../src/formapart.h
*
cfunctions b, flip, aux, null;
ctable,sparse,NullTbl(8);
*
Fill NullTbl(1,1,1,1,1,1,1,1) = null(0,0,0,-1,0,0,0,1);
*
local F = b(1,1,1,0,1,1,1,1);
.sort
*
#call ApartFindCachedCover(b,flip,aux,NullTbl)
*
.sort
*
local diff = F - null(0,0,0,-1,0,0,0,1) * flip(4);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFindCachedCover_19 :
#include- ../src/formapart.h
*
cfunctions b, flip, aux, null;
ctable,sparse,NullTbl(4);
*
Fill NullTbl(0,0,1,1) = null(7,7,7,7);
Fill NullTbl(1,1,1,1) = null(8,8,8,8);
Fill NullTbl(0,0,0,1) = null(9,9,9,9);
Fill NullTbl(0,1,1,1) = null(0,-1,1,0);
*
local F = b(0,0,1,1);
.sort
*
#call ApartFindCachedCover(b,flip,aux,NullTbl)
*
.sort
*
local diff = F - null(0,-1,1,0) * flip(2);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFindCachedCover_20 :
#include- ../src/formapart.h
*
cfunctions b, flip, aux, null;
ctable,sparse,NullTbl(6);
*
Fill NullTbl(0,1,0,1,1,1) = null(0,0,0,0,-1,1);
*
local F = b(0,1,0,1,0,1);
.sort
*
#call ApartFindCachedCover(b,flip,aux,NullTbl)
*
.sort
*
local diff = F - null(0,0,0,0,-1,1) * flip(5);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
