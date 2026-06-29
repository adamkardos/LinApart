*{{{ ApartRemoveDenominatorFromNullRelations_1 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = null(0,1,0)*null(0,0,1)*select(1);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,1,0)*null(0,0,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_2 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = null(1,0,0)*null(0,1,1)*select(1);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,1,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_3 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = null(1,2,3)*select(1);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - 1;
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_4 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp =
  + null(1,0,0)*null(0,1,1)*select(1)
  + null(0,1,0)*null(0,0,1)*select(1);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - (null(0,1,1) + null(0,1,0)*null(0,0,1));
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_5 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp =
  + null(1,2,0)*null(0,0,1)*select(1)
  + null(1,0,0)*null(0,3,0)*select(2);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - (null(0,0,1) + null(1,0,0));
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_6 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = null(1,2,0)*null(-1,0,3)*select(1);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,2,3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_7 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n6;
*
local temp = null(1,0,0,0,0)*null(0,2,0,3,0)*null(0,0,1,0,4)*select(1);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,5,n)
*
.sort
*
local diff = temp - null(0,2,0,3,0)*null(0,0,1,0,4);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_8 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = null(2,-1,0)*null(0,3,-2)*select(1);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,3,-2);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_9 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = null(0,0,1)*null(1,1,0)*select(3);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(1,1,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_10 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = 5*null(1,0,0)*null(0,1,1)*select(1);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - 5*null(0,1,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_11 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux,den;
symbols n1,...,n4,x;
*
local temp = den(x)*null(1,0,0)*null(0,1,1)*select(1);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - den(x)*null(0,1,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_12 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = null(1,0,0)*null(0,1,0)*null(0,0,1)*null(0,1,1)*select(1);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,1,0)*null(0,0,1)*null(0,1,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_13 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = null(1,1,0)*null(-1,0,1)*null(0,0,1)*select(1);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,1,1)*null(0,0,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_14 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = null(1,2,4)*null(-1,4,2)*select(1);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,1,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_15 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = null(1,3,6)*null(-1,3,3)*select(1);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,2,3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_16 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n4,ep;
*
local temp = null(1,ep,ep^2)*null(-1,ep,0)*select(1);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,2,ep);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_17 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n4,ep;
*
local temp = null(1,ep^2,ep)*null(-1,ep,ep)*select(1);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,ep+1,2);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_18 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n4,ep,x;
*
local temp = null(1,ep,ep*x)*null(-1,ep,ep*x)*select(1);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,1,x);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_19 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = null(1,2,4)*null(-1,4,2)*null(0,0,1)*select(1);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,1,1)*null(0,0,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_20 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = null(1,1,0)*null(2,2,0)*null(3,3,0)*select(1);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - 1;
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_21 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = null(1,0,1)*null(2,1,2)*null(3,2,3)*select(1);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,1,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_22 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = null(1,0,2)*null(3,0,6)*null(2,1,5)*select(1);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,1,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_23 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n4;
*
local temp = null(1,0,1)*null(2,0,2)*null(3,1,3)*select(1);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,3,n)
*
.sort
*
local diff = temp - null(0,1,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartRemoveDenominatorFromNullRelations_24 :
#include- ../src/formapart.h
*
cfunctions null,select,elim,reduce,aux;
symbols n1,...,n20;
*
local F =
    null(-1,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0)
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
  * null(1,0,1,-2,1,0,0,0,0,-1,0,0,0,0,1,0,0,0,0)
  * select(2);
.sort
*
#call ApartRemoveDenominatorFromNullRelations(select,null,elim,reduce,aux,19,n)
*
.sort
*
If (count(null,1) == 12);
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
