*{{{ ApartOrderFunctionsByLeadingZeros_1 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunctions aux1,...,aux4;
*
local F = null1(1,-1,2);
*
.sort
*
#call ApartOrderFunctionsByLeadingZeros(nullset,1,1,pres,indx,ord,arg,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + null1(1,-1,2)*pres(null1)*indx(0)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderFunctionsByLeadingZeros_2 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunctions aux1,...,aux4;
*
local F = null1(1,-1,2)*null2(0,1,2);
*
.sort
*
#call ApartOrderFunctionsByLeadingZeros(nullset,1,2,pres,indx,ord,arg,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + null1(1,-1,2)*null2(0,1,2)*pres(null1,null2)*indx(0,1)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderFunctionsByLeadingZeros_3 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunctions aux1,...,aux4;
*
local F = null1(0,1,2)*null2(1,-1,2);
*
.sort
*
#call ApartOrderFunctionsByLeadingZeros(nullset,1,2,pres,indx,ord,arg,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + null1(0,1,2)*null2(1,-1,2)*pres(null2,null1)*indx(0,1)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderFunctionsByLeadingZeros_4 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunctions aux1,...,aux4;
*
local F = null1(0,0,5)*null2(1,2,3)*null3(0,4,0);
*
.sort
*
#call ApartOrderFunctionsByLeadingZeros(nullset,1,3,pres,indx,ord,arg,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + null1(0,0,5)*null2(1,2,3)*null3(0,4,0)
      *pres(null2,null3,null1)*indx(0,1,2)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderFunctionsByLeadingZeros_5 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunctions aux1,...,aux4;
*
local F = null1(0,1,0)*null2(0,2,0)*null3(3,0,0);
*
.sort
*
#call ApartOrderFunctionsByLeadingZeros(nullset,1,3,pres,indx,ord,arg,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + null1(0,1,0)*null2(0,2,0)*null3(3,0,0)
      *pres(null3,null1,null2)*indx(0,1,1)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderFunctionsByLeadingZeros_6 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunctions aux1,...,aux4;
*
local F = null1(1,0,0)*null2(2,0,0)*null3(3,0,0);
*
.sort
*
#call ApartOrderFunctionsByLeadingZeros(nullset,1,3,pres,indx,ord,arg,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + null1(1,0,0)*null2(2,0,0)*null3(3,0,0)
      *pres(null1,null2,null3)*indx(0,0,0)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderFunctionsByLeadingZeros_7 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunctions aux1,...,aux4;
*
local F =
  + null1(0,0,1)*null2(1,0,0)*null3(0,1,0)*null4(0,0,0)*null5(1,-1,1)
;
*
.sort
*
#call ApartOrderFunctionsByLeadingZeros(nullset,1,5,pres,indx,ord,arg,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + null1(0,0,1)*null2(1,0,0)*null3(0,1,0)*null4(0,0,0)*null5(1,-1,1)
      *pres(null2,null5,null3,null1,null4)*indx(0,0,1,2,3)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderFunctionsByLeadingZeros_8 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunctions aux1,...,aux4;
*
local F =
  + null1(1,0,0)*null2(0,1,0)*null3(1,0,0)*null4(0,0,1)*null5(1,0,0)
;
*
.sort
*
#call ApartOrderFunctionsByLeadingZeros(nullset,2,4,pres,indx,ord,arg,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + null1(1,0,0)*null2(0,1,0)*null3(1,0,0)*null4(0,0,1)*null5(1,0,0)
      *pres(null3,null2,null4)*indx(0,1,2)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderFunctionsByLeadingZeros_9 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunctions aux1,...,aux4;
*
local F = null1(0,0,0);
*
.sort
*
#call ApartOrderFunctionsByLeadingZeros(nullset,1,1,pres,indx,ord,arg,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + null1(0,0,0)*pres(null1)*indx(3)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderFunctionsByLeadingZeros_10 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunctions aux1,...,aux4;
*
local F =
  + null1(0,0,0,1)*null2(0,0,1,0)*null3(0,1,0,0)*null4(1,0,0,0)
;
*
.sort
*
#call ApartOrderFunctionsByLeadingZeros(nullset,1,4,pres,indx,ord,arg,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + null1(0,0,0,1)*null2(0,0,1,0)*null3(0,1,0,0)*null4(1,0,0,0)
      *pres(null4,null3,null2,null1)*indx(0,1,2,3)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderFunctionsByLeadingZeros_11 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunctions aux1,...,aux4;
*
local F =
  + null1(0,1,0,0,0)*null2(0,0,1,0,0)*null3(0,0,0,1,0)
    *null4(0,0,1,0,0)*null5(0,1,0,0,0)
;
*
.sort
*
#call ApartOrderFunctionsByLeadingZeros(nullset,1,5,pres,indx,ord,arg,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + null1(0,1,0,0,0)*null2(0,0,1,0,0)*null3(0,0,0,1,0)
      *null4(0,0,1,0,0)*null5(0,1,0,0,0)
      *pres(null1,null5,null2,null4,null3)*indx(1,1,2,2,3)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderFunctionsByLeadingZeros_12 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunctions aux1,...,aux4;
*
local F =
  + null1(0,0,0,1,0)*null2(0,0,1,0,0)*null3(0,1,0,0,0)
    *null4(0,0,1,0,0)*null5(0,0,0,1,0)
;
*
.sort
*
#call ApartOrderFunctionsByLeadingZeros(nullset,1,5,pres,indx,ord,arg,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + null1(0,0,0,1,0)*null2(0,0,1,0,0)*null3(0,1,0,0,0)
      *null4(0,0,1,0,0)*null5(0,0,0,1,0)
      *pres(null3,null2,null4,null1,null5)*indx(1,2,2,3,3)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderFunctionsByLeadingZeros_13 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunctions aux1,...,aux4;
*
local F =
  + null1(0,0,1,0)*null2(0,0,5,2)*null3(0,0,-3,4)*null4(0,0,7,-1)
;
*
.sort
*
#call ApartOrderFunctionsByLeadingZeros(nullset,1,4,pres,indx,ord,arg,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + null1(0,0,1,0)*null2(0,0,5,2)*null3(0,0,-3,4)*null4(0,0,7,-1)
      *pres(null1,null2,null3,null4)*indx(2,2,2,2)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderFunctionsByLeadingZeros_14 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunctions aux1,...,aux4;
*
local F =
  + null1(0,0,0,0)*null2(0,0,0,0)*null3(0,0,0,0)*null4(0,0,0,0)
;
*
.sort
*
#call ApartOrderFunctionsByLeadingZeros(nullset,1,4,pres,indx,ord,arg,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + null1(0,0,0,0)*null2(0,0,0,0)*null3(0,0,0,0)*null4(0,0,0,0)
      *pres(null1,null2,null3,null4)*indx(4,4,4,4)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderFunctionsByLeadingZeros_15 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunctions aux1,...,aux4;
*
local F = null1(0,0,0,0,1,0,0,0);
*
.sort
*
#call ApartOrderFunctionsByLeadingZeros(nullset,1,1,pres,indx,ord,arg,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + null1(0,0,0,0,1,0,0,0)*pres(null1)*indx(4)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderFunctionsByLeadingZeros_16 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunctions aux1,...,aux4;
*
local F =
  + null1(0,0,0,0,0,0,0,1)
    *null2(1,0,0,0,0,0,0,0)
    *null3(0,0,0,0,1,0,0,0)
;
*
.sort
*
#call ApartOrderFunctionsByLeadingZeros(nullset,1,3,pres,indx,ord,arg,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + null1(0,0,0,0,0,0,0,1)
      *null2(1,0,0,0,0,0,0,0)
      *null3(0,0,0,0,1,0,0,0)
      *pres(null2,null3,null1)*indx(0,4,7)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderFunctionsByLeadingZeros_17 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunctions aux1,...,aux4;
*
local F =
  + null1(1,0,0,0)*null2(0,0,0,1)*null3(1,-1,0,0)
    *null4(0,0,0,5)*null5(2,0,0,0)
;
*
.sort
*
#call ApartOrderFunctionsByLeadingZeros(nullset,1,5,pres,indx,ord,arg,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + null1(1,0,0,0)*null2(0,0,0,1)*null3(1,-1,0,0)
      *null4(0,0,0,5)*null5(2,0,0,0)
      *pres(null1,null3,null5,null2,null4)*indx(0,0,0,3,3)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderFunctionsByLeadingZeros_18 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunctions aux1,...,aux4;
*
local F =
  + null1(1,0,0)*null2(0,1,0)*null3(0,0,1)*null4(0,1,0)*null5(1,0,0)
;
*
.sort
*
#call ApartOrderFunctionsByLeadingZeros(nullset,3,5,pres,indx,ord,arg,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + null1(1,0,0)*null2(0,1,0)*null3(0,0,1)*null4(0,1,0)*null5(1,0,0)
      *pres(null5,null4,null3)*indx(0,1,2)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderFunctionsByLeadingZeros_19 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunctions aux1,...,aux4;
*
local F = null1(0,0,0,0,0,0,0,0,0,1);
*
.sort
*
#call ApartOrderFunctionsByLeadingZeros(nullset,1,1,pres,indx,ord,arg,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + null1(0,0,0,0,0,0,0,0,0,1)*pres(null1)*indx(9)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOrderFunctionsByLeadingZeros_20 :
#include- ../src/formapart.h
*
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunctions aux1,...,aux4;
*
local F =
  + null1(0,1,0,0,0)*null2(0,0,0,0,1)*null3(1,0,0,0,0)
    *null4(0,0,0,0,1)*null5(0,1,0,0,0)
;
*
.sort
*
#call ApartOrderFunctionsByLeadingZeros(nullset,1,5,pres,indx,ord,arg,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + null1(0,1,0,0,0)*null2(0,0,0,0,1)*null3(1,0,0,0,0)
      *null4(0,0,0,0,1)*null5(0,1,0,0,0)
      *pres(null3,null1,null5,null2,null4)*indx(0,1,1,4,4)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
