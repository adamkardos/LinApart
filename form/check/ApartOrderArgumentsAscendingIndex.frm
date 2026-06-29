*{{{ ApartOrderArgumentsAscendingIndex_1 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunction var;
cfunction indx;
cfunction ord,arg;
cfunction aux1,...,aux4;
*
local F = var(1,2,3,4,5)*indx(5,4,3,2,1);
*
.sort
*
#call ApartOrderArgumentsAscendingIndex(var,indx,ord,arg,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + var(5,4,3,2,1)*indx(1,2,3,4,5)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderArgumentsAscendingIndex_2 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunction var;
cfunction indx;
cfunction ord,arg;
cfunction aux1,...,aux4;
*
local F = var(1,2,3,4,5)*indx(1,2,3,4,5);
*
.sort
*
#call ApartOrderArgumentsAscendingIndex(var,indx,ord,arg,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + var(1,2,3,4,5)*indx(1,2,3,4,5)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderArgumentsAscendingIndex_3 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunction var;
cfunction indx;
cfunction ord,arg;
cfunction aux1,...,aux4;
*
local F = var(7,8,9)*indx(3,1,2);
*
.sort
*
#call ApartOrderArgumentsAscendingIndex(var,indx,ord,arg,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + var(8,9,7)*indx(1,2,3)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderArgumentsAscendingIndex_4 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunction var;
cfunction indx;
cfunction ord,arg;
cfunction aux1,...,aux4;
*
local F = var(10,20)*indx(5,2);
*
.sort
*
#call ApartOrderArgumentsAscendingIndex(var,indx,ord,arg,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + var(20,10)*indx(2,5)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderArgumentsAscendingIndex_5 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunction var;
cfunction indx;
cfunction ord,arg;
cfunction aux1,...,aux4;
*
local F = var(7)*indx(42);
*
.sort
*
#call ApartOrderArgumentsAscendingIndex(var,indx,ord,arg,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + var(7)*indx(42)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderArgumentsAscendingIndex_6 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunction var;
cfunction indx;
cfunction ord,arg;
cfunction aux1,...,aux4;
*
local F = var()*indx();
*
.sort
*
#call ApartOrderArgumentsAscendingIndex(var,indx,ord,arg,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + var()*indx()
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderArgumentsAscendingIndex_7 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunction var;
cfunction indx;
cfunction ord,arg;
cfunction aux1,...,aux4;
*
local F = var(10,20,30,40)*indx(2,1,2,1);
*
.sort
*
#call ApartOrderArgumentsAscendingIndex(var,indx,ord,arg,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + var(20,40,10,30)*indx(1,1,2,2)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderArgumentsAscendingIndex_8 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunction var;
cfunction indx;
cfunction ord,arg;
cfunction aux1,...,aux4;
*
local F = var(1,2,3)*indx(-2,5,0);
*
.sort
*
#call ApartOrderArgumentsAscendingIndex(var,indx,ord,arg,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + var(1,3,2)*indx(-2,0,5)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderArgumentsAscendingIndex_9 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunction var;
cfunction indx;
cfunction ord,arg;
cfunction aux1,...,aux4;
*
local F = var(10,20,30)*indx(7,7,7);
*
.sort
*
#call ApartOrderArgumentsAscendingIndex(var,indx,ord,arg,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + var(10,20,30)*indx(7,7,7)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderArgumentsAscendingIndex_10 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunction var;
cfunction indx;
cfunction ord,arg;
cfunction aux1,...,aux4;
*
local F = var(1,2,3,4)*indx(-1,3,-1,3);
*
.sort
*
#call ApartOrderArgumentsAscendingIndex(var,indx,ord,arg,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + var(1,3,2,4)*indx(-1,-1,3,3)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderArgumentsAscendingIndex_11 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunction var;
cfunction indx;
cfunction ord,arg;
cfunction aux1,...,aux4;
*
local F = var(1,2,3,4,5,6,7,8,9)*indx(9,4,7,1,6,2,8,3,5);
*
.sort
*
#call ApartOrderArgumentsAscendingIndex(var,indx,ord,arg,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + var(4,6,8,2,9,5,3,7,1)*indx(1,2,3,4,5,6,7,8,9)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderArgumentsAscendingIndex_12 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunction var;
cfunction indx;
cfunction ord,arg;
cfunction aux1,...,aux4;
*
local F = var(1,2,3,4)*indx(-5,-1,-3,-2);
*
.sort
*
#call ApartOrderArgumentsAscendingIndex(var,indx,ord,arg,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + var(1,3,4,2)*indx(-5,-3,-2,-1)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderArgumentsAscendingIndex_13 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunction var;
cfunction indx;
cfunction ord,arg;
cfunction aux1,...,aux4;
*
local F = var(1,2,3,4,5)*indx(0,-2,3,-1,1);
*
.sort
*
#call ApartOrderArgumentsAscendingIndex(var,indx,ord,arg,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + var(2,4,1,5,3)*indx(-2,-1,0,1,3)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderArgumentsAscendingIndex_14 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunction var;
cfunction indx;
cfunction ord,arg;
cfunction aux1,...,aux4;
*
local F = var(1,2,3,4,5,6)*indx(3,1,3,1,3,1);
*
.sort
*
#call ApartOrderArgumentsAscendingIndex(var,indx,ord,arg,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + var(2,4,6,1,3,5)*indx(1,1,1,3,3,3)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderArgumentsAscendingIndex_15 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunction var;
cfunction indx;
cfunction ord,arg;
cfunction aux1,...,aux4;
*
local F = var(1,2,3,4,5,6,7,8,9)*indx(2,3,1,3,2,1,3,1,2);
*
.sort
*
#call ApartOrderArgumentsAscendingIndex(var,indx,ord,arg,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + var(3,6,8,1,5,9,2,4,7)*indx(1,1,1,2,2,2,3,3,3)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderArgumentsAscendingIndex_16 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunction var;
cfunction indx;
cfunction ord,arg;
cfunction aux1,...,aux4;
*
local F = var(5,5,5,5)*indx(3,1,4,2);
*
.sort
*
#call ApartOrderArgumentsAscendingIndex(var,indx,ord,arg,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + var(5,5,5,5)*indx(1,2,3,4)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderArgumentsAscendingIndex_17 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunction var;
cfunction indx;
cfunction ord,arg;
cfunction aux1,...,aux4;
*
local F = var(1,2,3,4,5)*indx(8,8,-100,8,8);
*
.sort
*
#call ApartOrderArgumentsAscendingIndex(var,indx,ord,arg,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + var(3,1,2,4,5)*indx(-100,8,8,8,8)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderArgumentsAscendingIndex_18 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunction var;
cfunction indx;
cfunction ord,arg;
cfunction aux1,...,aux4;
*
local F = var(1,2,3,4,5)*indx(3,1,5,1,3);
*
.sort
*
#call ApartOrderArgumentsAscendingIndex(var,indx,ord,arg,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + var(2,4,1,5,3)*indx(1,1,3,3,5)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderArgumentsAscendingIndex_19 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunction var;
cfunction indx;
cfunction ord,arg;
cfunction aux1,...,aux4;
*
local F = var(1,2,3,4,5,6,7)*indx(1,2,3,2,1,2,3);
*
.sort
*
#call ApartOrderArgumentsAscendingIndex(var,indx,ord,arg,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + var(1,5,2,4,6,3,7)*indx(1,1,2,2,2,3,3)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderArgumentsAscendingIndex_20 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunction var;
cfunction indx;
cfunction ord,arg;
cfunction aux1,...,aux4;
*
local F = var(10,20,30,40,50,60,70,80)*indx(5,5,5,5,1,1,1,1);
*
.sort
*
#call ApartOrderArgumentsAscendingIndex(var,indx,ord,arg,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + var(50,60,70,80,10,20,30,40)*indx(1,1,1,1,5,5,5,5)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderArgumentsAscendingIndex_21 :
*
*
*
#include- ../src/formapart.h
*
symbols d1,d2,d3,n1,n2,n3,n4;
cfunction var,indx,ord,arg;
*
local F = var(d3,d2,d1)*indx(2,1,2);
*
.sort
*
#call ApartOrderArgumentsAscendingIndex(var,indx,ord,arg,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + var(d2,d3,d1)*indx(1,2,2)
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
