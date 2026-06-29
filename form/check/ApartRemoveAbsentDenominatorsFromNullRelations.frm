*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_1 :
#include- ../src/formapart.h
*
cfunctions b,null,present,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = b(1,2,3)*present(1,2,3)*null(1,0,0)*null(0,1,1);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,select,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(1,0,0)*null(0,1,1)*present(1,2,3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_2 :
#include- ../src/formapart.h
*
cfunctions b,null,present,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = b(1,2,3)*present(2,3)*null(1,0,0)*null(0,1,1);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,select,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,1,1)*present(2,3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_3 :
#include- ../src/formapart.h
*
cfunctions b,null,present,select,elim,reduce,aux;
symbols n1,...,n5;
*
local temp = b(1,2,3,4)*present(3,4)
  *null(1,0,0,0)*null(0,1,0,0)*null(0,0,1,1);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,select,elim,reduce,aux,4,n)
*
.sort
*
local diff = temp - null(0,0,1,1)*present(3,4);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_4 :
#include- ../src/formapart.h
*
cfunctions b,null,present,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = b(1,2,3)*present(2,3)*null(1,2,0)*null(-1,0,3);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,select,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,2,3)*present(2,3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_5 :
#include- ../src/formapart.h
*
cfunctions b,null,present,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp =
  + b(1,2,3)*present(2,3)*null(1,0,0)*null(0,1,1)
  + b(1,2,3)*present(1,3)*null(1,0,0)*null(0,1,1);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,select,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - (null(0,1,1)*present(2,3) + null(1,0,0)*present(1,3));
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_6 :
#include- ../src/formapart.h
*
cfunctions b,null,present,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = b(1,2,3)*present(2,3)*null(1,2,4)*null(-1,4,2);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,select,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,1,1)*present(2,3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_7 :
#include- ../src/formapart.h
*
cfunctions b,null,present,select,elim,reduce,aux;
symbols n1,...,n6;
*
local temp = b(1,2,3,4,5)*present(4,5)
  *null(1,0,0,0,0)*null(0,1,0,0,0)*null(0,0,1,0,0)*null(0,0,0,1,1);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,select,elim,reduce,aux,5,n)
*
.sort
*
local diff = temp - null(0,0,0,1,1)*present(4,5);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_8 :
#include- ../src/formapart.h
*
cfunctions b,null,present,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = b(1,2,3)*present(3)*null(1,0,1)*null(0,1,1);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,select,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - present(3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_9 :
#include- ../src/formapart.h
*
cfunctions b,null,present,select,elim,reduce,aux;
symbols n1,...,n4,ep;
*
local temp = b(1,2,3)*present(2,3)*null(1,ep,ep^2)*null(-1,ep,0);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,select,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,2,ep)*present(2,3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_10 :
#include- ../src/formapart.h
*
cfunctions b,null,present,select,elim,reduce,aux,den;
symbols n1,...,n4,x;
*
local temp = 7*den(x)*b(1,2,3)*present(2,3)*null(1,0,0)*null(0,1,1);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,select,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - 7*den(x)*null(0,1,1)*present(2,3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_11 :
#include- ../src/formapart.h
*
cfunctions b,null,present,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = b(3,1,2)*present(2,3)*null(1,0,0)*null(0,1,1);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,select,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,1,1)*present(2,3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_12 :
#include- ../src/formapart.h
*
cfunctions b,null,present,select,elim,reduce,aux;
symbols n1,...,n6;
*
local temp = b(1,2,3,4,5)*present(1,2,3)
  *null(0,0,0,1,0)*null(0,0,0,0,1)*null(1,1,1,0,0);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,select,elim,reduce,aux,5,n)
*
.sort
*
local diff = temp - null(1,1,1,0,0)*present(1,2,3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_13 :
#include- ../src/formapart.h
*
cfunctions b,null,present,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = b(1,2,3)*present(3)*null(1,2,0)*null(-1,0,3)*null(0,0,1);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,select,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,0,1)*present(3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_14 :
#include- ../src/formapart.h
*
cfunctions b,null,present,select,elim,reduce,aux;
symbols n1,...,n5;
*
local temp = b(1,2,3,4)*present(3,4)
  *null(1,0,2,0)*null(-1,0,0,3)*null(0,1,1,0)*null(0,-1,0,1);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,select,elim,reduce,aux,4,n)
*
.sort
*
local diff = temp - null(0,0,2,3)*null(0,0,1,1)*present(3,4);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_15 :
#include- ../src/formapart.h
*
cfunctions b,null,present,select,elim,reduce,aux;
symbols n1,...,n5;
*
local temp = b(1,2,3,4)*present(4)
  *null(1,0,0,0)*null(0,1,0,1)*null(0,-1,0,0)*null(0,0,1,1);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,select,elim,reduce,aux,4,n)
*
.sort
*
local diff = temp - null(0,0,0,1)*present(4);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_16 :
#include- ../src/formapart.h
*
cfunctions b,null,present,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp =
  + b(1,2,3)*present(1,2,3)*null(1,0,0)*null(0,1,1)
  + b(1,2,3)*present(3)*null(1,0,1)*null(0,1,1)
  + b(1,2,3)*present(2,3)*null(1,2,0)*null(-1,0,3);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,select,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - (
  + null(1,0,0)*null(0,1,1)*present(1,2,3)
  + present(3)
  + null(0,2,3)*present(2,3) );
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_17 :
#include- ../src/formapart.h
*
cfunctions b,null,present,select,elim,reduce,aux;
symbols n1,...,n7;
*
local temp = b(1,2,3,4,5,6)*present(1,2,3,4)
  *null(0,0,0,0,1,0)*null(0,0,0,0,0,1)*null(1,1,0,0,0,0)*null(0,0,1,1,0,0);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,select,elim,reduce,aux,6,n)
*
.sort
*
local diff = temp
  - null(1,1,0,0,0,0)*null(0,0,1,1,0,0)*present(1,2,3,4);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_18 :
#include- ../src/formapart.h
*
cfunctions b,null,present,select,elim,reduce,aux;
symbols n1,...,n4,ep;
*
local temp = b(1,2,3)*present(2,3)*null(1,ep^2,ep)*null(-1,ep,ep);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,select,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,ep+1,2)*present(2,3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_19 :
#include- ../src/formapart.h
*
cfunctions null,b,present,select,elim,reduce,aux;
symbols n1,...,n20;
*
local F =
    b(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19)
  * present(1,3,4,6,8,14,15,19)
  * null(-1,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0)
  * null(-1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0)
  * null(-1,1,0,2,-1,0,0,0,0,0,0,0,0,0,0,1,0,0,0)
  * null(-1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0)
  * null(0,0,0,-2,3,0,-1,0,0,0,0,0,0,0,0,0,0,0,0)
  * null(0,0,0,-1,2,-1,0,0,0,0,0,0,0,0,0,0,0,0,0)
  * null(0,0,1,0,0,0,0,0,0,-1,0,0,0,0,0,0,1,0,0)
  * null(0,1,0,2,-1,0,0,-1,0,0,0,0,0,0,0,0,0,0,0)
  * null(1,-1,0,-2,1,0,0,0,0,-1,0,0,0,1,0,0,0,0,0)
  * null(1,-1,0,0,0,0,0,0,0,-1,0,1,0,0,0,0,0,0,0)
  * null(1,-1,1,-2,1,0,0,0,0,-1,0,0,0,0,0,0,0,0,1)
  * null(1,0,0,-2,1,0,0,0,-1,0,0,0,0,0,0,0,0,0,0)
  * null(1,0,1,-2,1,0,0,0,0,-1,0,0,0,0,1,0,0,0,0);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,select,elim,reduce,aux,19,n)
*
.sort
*
If (count(null,1) >= 2);
  Multiply 0;
EndIf;
.sort
*
local diff = F;
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_20 :
#include- ../src/formapart.h
*
cfunctions null,b,present,flip,elim,reduce,aux;
symbols n1,...,n5;
*
local F = present(1,3,4) * flip(2) * null(0,1,0,-1);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,flip,elim,reduce,aux,4,n)
*
.sort
*
local diff = F - present(1,3,4);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_21 :
#include- ../src/formapart.h
*
cfunctions null,b,present,flip,elim,reduce,aux;
symbols n1,...,n5;
*
local F = present(2,3,4) * flip(1) * null(1,0,1,0) * null(1,1,0,-1);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,flip,elim,reduce,aux,4,n)
*
.sort
*
local diff = F - present(2,3,4) * null(0,1,-1,-1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_22 :
#include- ../src/formapart.h
*
cfunctions null,b,present,flip,elim,reduce,aux;
symbols n1,...,n6;
*
local F =
    present(1,2,4,5) * flip(3)
  * null(0,0,1,0,-1) * null(1,0,0,-1,0) * null(0,1,0,0,-1);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,flip,elim,reduce,aux,5,n)
*
.sort
*
local diff =
    F
  - present(1,2,4,5)
  * null(1,0,0,-1,0) * null(0,1,0,0,-1)
;
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_23 :
#include- ../src/formapart.h
*
cfunctions null,b,present,flip,elim,reduce,aux;
symbols n1,...,n5;
*
local F =
    present(3,4) * flip(1) * flip(2)
  * null(1,0,-1,0) * null(0,1,0,-1);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,flip,elim,reduce,aux,4,n)
*
.sort
*
local diff = F - present(3,4);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_24 :
#include- ../src/formapart.h
*
cfunctions null,b,present,flip,elim,reduce,aux;
symbols n1,...,n6;
*
local F =
    present(4,5) * flip(1) * flip(2) * flip(3)
  * null(1,0,-1,0,0) * null(0,1,-1,0,0) * null(0,0,0,1,-1);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,flip,elim,reduce,aux,5,n)
*
.sort
*
local diff = F - present(4,5) * null(0,0,0,1,-1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_25 :
#include- ../src/formapart.h
*
cfunctions null,b,present,flip,elim,reduce,aux;
symbols n1,...,n5;
*
local F =
    present(3,4) * flip(1) * flip(2)
  * null(1,1,-1,0) * null(1,0,-1,0) * null(0,0,0,1);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,flip,elim,reduce,aux,4,n)
*
.sort
*
local diff = F - present(3,4) * null(0,0,0,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_26 :
#include- ../src/formapart.h
*
symbols eps;
cfunctions null,b,present,flip,elim,reduce,aux;
symbols n1,...,n5;
*
local F = present(2,3,4) * flip(1) * eps * null(1,0,-1,0);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,flip,elim,reduce,aux,4,n)
*
.sort
*
local diff = F - present(2,3,4) * eps;
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_27 :
#include- ../src/formapart.h
*
cfunctions null,b,present,flip,elim,reduce,aux;
symbols n1,...,n5;
*
local F = present(2,3,4) * flip(1) * 1/2 * null(1,0,-1,0);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,flip,elim,reduce,aux,4,n)
*
.sort
*
local diff = F - 1/2 * present(2,3,4);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_28 :
#include- ../src/formapart.h
*
cfunctions null,b,present,flip,elim,reduce,aux;
symbols n1,...,n4;
*
local F =
    present(2,3) * flip(1) * null(1,-1,0)
  + present(1,3) * flip(2) * null(1,-1,0);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,flip,elim,reduce,aux,3,n)
*
.sort
*
local diff = F - present(2,3) - present(1,3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_29 :
#include- ../src/formapart.h
*
symbols s;
cfunctions null,b,present,flip,elim,reduce,aux;
symbols n1,...,n5;
*
local F = 3 * s * present(2,3,4) * flip(1) * null(1,0,-1,0);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,flip,elim,reduce,aux,4,n)
*
.sort
*
local diff = F - 3 * s * present(2,3,4);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveAbsentDenominatorsFromNullRelations_30 :
#include- ../src/formapart.h
*
cfunctions null,b,present,flip,elim,reduce,aux;
symbols n1,...,n20;
*
local F =
    present(1,19) * flip(10)
  * null(0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,-1)
  * null(0,0,0,0,0,0,0,0,0,1,-1,0,0,0,0,0,0,0,0);
.sort
*
#call ApartRemoveAbsentDenominatorsFromNullRelations(b,null,present,flip,elim,reduce,aux,19,n)
*
.sort
*
local diff =
    F
  - present(1,19)
    * null(0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,-1)
;
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
