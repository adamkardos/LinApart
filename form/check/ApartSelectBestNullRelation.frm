*{{{ ApartSelectBestNullRelation_1 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *null1(1,-2,1)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d1*d2*d3
      *dens(d1,d2,d3)
      *selNull(1,-2,1)*selDen(d1)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSelectBestNullRelation_2 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d1*d2*d3*d4
    *dens(d1,d2,d3,d4)
    *null1(0,1,-1,2)*null2(3,-1,0,1)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d1*d2*d3*d4
      *dens(d1,d2,d3,d4)
      *selNull(3,-1,0,1)*selDen(d1)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}

*
*{{{ ApartSelectBestNullRelation_3 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *null1(0,0,5)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d1*d2*d3
      *dens(d1,d2,d3)
      *selNull(0,0,5)*selDen(d3)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSelectBestNullRelation_4 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *null1(0,0,5)*null2(1,2,3)*null3(0,4,0)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d1*d2*d3
      *dens(d1,d2,d3)
      *selNull(1,2,3)*selDen(d1)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSelectBestNullRelation_5 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *null1(1,0,0)*null2(2,0,0)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d1*d2*d3
      *dens(d1,d2,d3)
      *selNull(1,0,0)*selDen(d1)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSelectBestNullRelation_6 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d1^2*d2*d3^3
    *dens(d2,d1,d3)
    *null1(-3,7,-4)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d1^2*d2*d3^3
      *dens(d2,d1,d3)
      *selNull(-3,7,-4)*selDen(d2)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSelectBestNullRelation_7 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d1*d2*d3*d4
    *dens(d1,d2,d3,d4)
    *null1(0,0,0,1)*null2(0,0,1,0)*null3(0,1,0,0)
    *null4(0,0,0,1)*null5(2,-1,3,0)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d1*d2*d3*d4
      *dens(d1,d2,d3,d4)
      *selNull(2,-1,3,0)*selDen(d1)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSelectBestNullRelation_8 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d1*d2*d3*d4
    *dens(d1,d2,d3,d4)
    *null1(0,5,0,0)*null2(0,3,0,0)*null3(0,7,0,0)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d1*d2*d3*d4
      *dens(d1,d2,d3,d4)
      *selNull(0,5,0,0)*selDen(d2)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSelectBestNullRelation_9 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d1*d2*d3*d4*d5
    *dens(d1,d2,d3,d4,d5)
    *null1(0,0,0,0,9)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d1*d2*d3*d4*d5
      *dens(d1,d2,d3,d4,d5)
      *selNull(0,0,0,0,9)*selDen(d5)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSelectBestNullRelation_10 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *null1(100,-200,300)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d1*d2*d3
      *dens(d1,d2,d3)
      *selNull(100,-200,300)*selDen(d1)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSelectBestNullRelation_11 :
#include- ../src/formapart.h
*
symbols d1,...,d9;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d3^3*d5*d7^2
    *dens(d5,d7,d3)
    *null1(0,4,-2)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d3^3*d5*d7^2
      *dens(d5,d7,d3)
      *selNull(0,4,-2)*selDen(d7)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSelectBestNullRelation_12 :
#include- ../src/formapart.h
*
symbols d1,d2;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d1*d2
    *dens(d1,d2)
    *null1(1,-1)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d1*d2
      *dens(d1,d2)
      *selNull(1,-1)*selDen(d1)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSelectBestNullRelation_13 :
#include- ../src/formapart.h
*
symbols d1,d2;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d1^5*d2^3
    *dens(d2,d1)
    *null1(0,3)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d1^5*d2^3
      *dens(d2,d1)
      *selNull(0,3)*selDen(d1)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSelectBestNullRelation_14 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d1*d2*d3*d4*d5
    *dens(d1,d2,d3,d4,d5)
    *null1(0,3,0,0,-7)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d1*d2*d3*d4*d5
      *dens(d1,d2,d3,d4,d5)
      *selNull(0,3,0,0,-7)*selDen(d2)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSelectBestNullRelation_15 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d1*d2*d3*d4
    *dens(d1,d2,d3,d4)
    *null1(0,0,0,1)*null2(0,2,0,0)*null3(5,0,0,0)*null4(0,0,3,0)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d1*d2*d3*d4
      *dens(d1,d2,d3,d4)
      *selNull(5,0,0,0)*selDen(d1)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSelectBestNullRelation_16 :
#include- ../src/formapart.h
*
symbols d1,...,d9;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d1*d2*d3*d4*d5*d6*d7*d8
    *dens(d1,d2,d3,d4,d5,d6,d7,d8)
    *null1(1,-1,2,-2,3,-3,4,-4)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d1*d2*d3*d4*d5*d6*d7*d8
      *dens(d1,d2,d3,d4,d5,d6,d7,d8)
      *selNull(1,-1,2,-2,3,-3,4,-4)*selDen(d1)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSelectBestNullRelation_17 :
#include- ../src/formapart.h
*
symbols d1,...,d9;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d1*d2*d3*d4*d5*d6*d7*d8
    *dens(d1,d2,d3,d4,d5,d6,d7,d8)
    *null1(0,0,0,0,0,0,0,11)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d1*d2*d3*d4*d5*d6*d7*d8
      *dens(d1,d2,d3,d4,d5,d6,d7,d8)
      *selNull(0,0,0,0,0,0,0,11)*selDen(d8)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSelectBestNullRelation_18 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *null1(1,2,3)*null2(4,5,6)*null3(7,8,9)
    *null4(10,11,12)*null5(13,14,15)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d1*d2*d3
      *dens(d1,d2,d3)
      *selNull(1,2,3)*selDen(d1)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSelectBestNullRelation_19 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d1*d2^2*d3*d4^3
    *dens(d1,d2,d3,d4)
    *null1(0,-1,0,1)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d1*d2^2*d3*d4^3
      *dens(d1,d2,d3,d4)
      *selNull(0,-1,0,1)*selDen(d2)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSelectBestNullRelation_20 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d1*d2*d3*d4*d5
    *dens(d1,d2,d3,d4,d5)
    *null1(0,0,1,-1,2)*null2(0,0,3,0,-3)*null3(7,0,0,-2,0)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d1*d2*d3*d4*d5
      *dens(d1,d2,d3,d4,d5)
      *selNull(7,0,0,-2,0)*selDen(d1)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSelectBestNullRelation_21 :
#include- ../src/formapart.h
*
symbols d1,...,d9;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d1^7*d5^3*d9
    *dens(d9,d5,d1)
    *null1(2,-3,1)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d1^7*d5^3*d9
      *dens(d9,d5,d1)
      *selNull(2,-3,1)*selDen(d9)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSelectBestNullRelation_22 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5;
symbols n1,n2,n3,n4;
cfunctions null1,...,null5;
set nullset : null1,...,null5;
cfunction dens;
cfunction pres;
cfunction indx;
cfunction ord;
cfunction arg;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux4;
*
local F =
  + d1*d2*d3*d4*d5
    *dens(d1,d2,d3,d4,d5)
    *null1(1,0,0,0,0)
;
*
.sort
*
#call ApartSelectBestNullRelation(nullset,5,pres,indx,ord,arg,selNull,selDen,dens,aux1,...,aux4,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + d1*d2*d3*d4*d5
      *dens(d1,d2,d3,d4,d5)
      *selNull(1,0,0,0,0)*selDen(d1)
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
