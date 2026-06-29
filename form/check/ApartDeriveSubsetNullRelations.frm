*{{{ ApartDeriveSubsetNullRelations_1 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5;
cfunctions dens, null, sig, b, present, select, elim, reduce, aux;
set dset : d1,...,d4;
ctable,sparse,nullTbl(4);
*
Fill nullTbl(1,1,1,1) = null(1,-2,1,0)*null(0,1,-2,1);
*
local F =
    sig(1,1,1,1)*dens(d1,d2,d3,d4) * d1*d2*d3*d4
  + sig(1,1,1,0)*dens(d1,d2,d3)    * d1^2*d2*d3
  + sig(1,0,1,1)*dens(d1,d3,d4)    * d1*d3*d4^2 ;
.sort
*
#call ApartDeriveSubsetNullRelations(dens,null,sig,b,present,select,elim,reduce,aux,n,d,dset,nullTbl,4)
*
.sort
*
local check1 = nullTbl(1,1,1,0) - null(1,-2,1,0);
local check2 = nullTbl(1,0,1,1) - null(-1,0,3,-2);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
assert result("check2") =~ expr("0")
*}}}
*
*{{{ ApartDeriveSubsetNullRelations_2 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4;
cfunctions dens, null, sig, b, present, select, elim, reduce, aux;
set dset : d1,d2,d3;
ctable,sparse,nullTbl(3);
*
Fill nullTbl(1,1,1) = null(1,-2,1);
*
local F = sig(1,0,1)*dens(d1,d3) * d1*d3;
.sort
*
#call ApartDeriveSubsetNullRelations(dens,null,sig,b,present,select,elim,reduce,aux,n,d,dset,nullTbl,3)
*
.sort
*
local check1 = nullTbl(1,0,1) - 1;
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartDeriveSubsetNullRelations_3 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5;
cfunctions dens, null, sig, b, present, select, elim, reduce, aux;
set dset : d1,...,d4;
ctable,sparse,nullTbl(4);
*
Fill nullTbl(1,1,1,1) = null(1,-2,1,0)*null(0,1,-2,1);
*
local F = sig(1,0,1,0)*dens(d1,d3) * d1^2*d3^3;
.sort
*
#call ApartDeriveSubsetNullRelations(dens,null,sig,b,present,select,elim,reduce,aux,n,d,dset,nullTbl,4)
*
.sort
*
local check1 = nullTbl(1,0,1,0) - 1;
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartDeriveSubsetNullRelations_4 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5;
cfunctions dens, null, sig, b, present, select, elim, reduce, aux;
set dset : d1,...,d4;
ctable,sparse,nullTbl(4);
*
Fill nullTbl(1,1,1,1) = null(1,1,-1,0)*null(1,-1,0,1);
*
local F = sig(1,1,1,0)*dens(d1,d2,d3) * d1*d2*d3;
.sort
*
#call ApartDeriveSubsetNullRelations(dens,null,sig,b,present,select,elim,reduce,aux,n,d,dset,nullTbl,4)
*
.sort
*
local check1 = nullTbl(1,1,1,0) - null(1,1,-1,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartDeriveSubsetNullRelations_5 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5;
cfunctions dens, null, sig, b, present, select, elim, reduce, aux;
set dset : d1,...,d4;
ctable,sparse,nullTbl(4);
*
Fill nullTbl(1,1,1,1) = null(1,-2,1,0)*null(0,1,-2,1);
*
local F =
    sig(1,1,1,1)*dens(d1,d2,d3,d4) * d1*d2*d3*d4
  + sig(1,1,1,0)*dens(d1,d2,d3)    * d1*d2*d3
  + sig(1,1,1,0)*dens(d1,d2,d3)    * d1^2*d2^3*d3
  + sig(0,1,1,1)*dens(d2,d3,d4)    * d2*d3*d4
  + sig(0,1,1,1)*dens(d2,d3,d4)    * d2^5*d3*d4^2 ;
.sort
*
#call ApartDeriveSubsetNullRelations(dens,null,sig,b,present,select,elim,reduce,aux,n,d,dset,nullTbl,4)
*
.sort
*
local check1 = nullTbl(1,1,1,0) - null(1,-2,1,0);
local check2 = nullTbl(0,1,1,1) - null(0,1,-2,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
assert result("check2") =~ expr("0")
*}}}
*
*{{{ ApartDeriveSubsetNullRelations_6 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5;
cfunctions dens, null, sig, b, present, select, elim, reduce, aux;
set dset : d1,...,d4;
ctable,sparse,nullTbl(4);
*
Fill nullTbl(1,1,1,1) = null(1,-2,1,0)*null(0,1,-2,1);
*
local F = sig(0,1,0,0)*dens(d2) * d2^7;
.sort
*
#call ApartDeriveSubsetNullRelations(dens,null,sig,b,present,select,elim,reduce,aux,n,d,dset,nullTbl,4)
*
.sort
*
local check1 = nullTbl(0,1,0,0) - 1;
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartDeriveSubsetNullRelations_7 :
#include- ../src/formapart.h
*
symbols d1,...,d6, n1,...,n7;
cfunctions dens, null, sig, b, present, select, elim, reduce, aux;
set dset : d1,...,d6;
ctable,sparse,nullTbl(6);
*
Fill nullTbl(1,1,1,1,1,1) = null(1,0,0,0,0,-1)*null(0,1,0,0,-1,0);
Fill nullTbl(1,1,1,1,0,1) = null(1,0,0,0,0,-1);
*
local F =
    sig(1,1,1,1,1,1)*dens(d1,d2,d3,d4,d5,d6) * d1*d2*d3*d4*d5*d6
  + sig(1,0,1,1,0,1)*dens(d1,d3,d4,d6)       * d1*d3*d4*d6
  + sig(1,1,1,1,0,0)*dens(d1,d2,d3,d4)       * d1*d2*d3*d4 ;
.sort
*
#call ApartDeriveSubsetNullRelations(dens,null,sig,b,present,select,elim,reduce,aux,n,d,dset,nullTbl,6)
*
.sort
*
local check1 = nullTbl(1,0,1,1,0,1) - null(1,0,0,0,0,-1);
local check2 = nullTbl(1,1,1,1,0,0) - 1;
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
assert result("check2") =~ expr("0")
*}}}
*
*{{{ ApartDeriveSubsetNullRelations_8 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4;
cfunctions dens, null, sig, b, present, select, elim, reduce, aux;
set dset : d1,d2,d3;
ctable,sparse,nullTbl(3);
*
Fill nullTbl(1,1,1) = null(1,-2,1);
*
local F =
    sig(1,0,0)*dens(d1)       * d1
  + sig(0,1,0)*dens(d2)       * d2
  + sig(0,0,1)*dens(d3)       * d3
  + sig(1,1,0)*dens(d1,d2)    * d1*d2
  + sig(1,0,1)*dens(d1,d3)    * d1*d3
  + sig(0,1,1)*dens(d2,d3)    * d2*d3 ;
.sort
*
#call ApartDeriveSubsetNullRelations(dens,null,sig,b,present,select,elim,reduce,aux,n,d,dset,nullTbl,3)
*
.sort
*
local check1 = nullTbl(1,0,0) - 1;
local check2 = nullTbl(0,1,0) - 1;
local check3 = nullTbl(0,0,1) - 1;
local check4 = nullTbl(1,1,0) - 1;
local check5 = nullTbl(1,0,1) - 1;
local check6 = nullTbl(0,1,1) - 1;
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
assert result("check6") =~ expr("0")
*}}}
*
*{{{ ApartDeriveSubsetNullRelations_9 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5, eps;
cfunctions dens, null, sig, b, present, select, elim, reduce, aux;
set dset : d1,...,d4;
ctable,sparse,nullTbl(4);
*
Fill nullTbl(1,1,1,1) = null(eps, 1, -eps-1, 0);
*
local F = sig(1,1,1,0)*dens(d1,d2,d3) * d1*d2*d3;
.sort
*
#call ApartDeriveSubsetNullRelations(dens,null,sig,b,present,select,elim,reduce,aux,n,d,dset,nullTbl,4)
*
.sort
*
local check1 = nullTbl(1,1,1,0) - null(eps, 1, -eps-1, 0);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartDeriveSubsetNullRelations_10 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4, eps;
cfunctions dens, null, sig, b, present, select, elim, reduce, aux;
set dset : d1,d2,d3;
ctable,sparse,nullTbl(3);
*
Fill nullTbl(1,1,1) = null(eps^2+eps, -eps, 0)*null(0, eps^2+eps, -eps);
*
local F = sig(1,0,1)*dens(d1,d3) * d1*d3;
.sort
*
#call ApartDeriveSubsetNullRelations(dens,null,sig,b,present,select,elim,reduce,aux,n,d,dset,nullTbl,3)
*
.sort
*
local check1 = nullTbl(1,0,1) - null(-eps^2-2*eps-1, 0, 1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartDeriveSubsetNullRelations_11 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4, eps;
cfunctions dens, null, sig, b, present, select, elim, reduce, aux;
set dset : d1,d2,d3;
ctable,sparse,nullTbl(3);
*
Fill nullTbl(1,1,1) = null(6*eps, -3, 0)*null(0, 2, 4*eps);
*
local F = sig(1,0,1)*dens(d1,d3) * d1*d3;
.sort
*
#call ApartDeriveSubsetNullRelations(dens,null,sig,b,present,select,elim,reduce,aux,n,d,dset,nullTbl,3)
*
.sort
*
local check1 = nullTbl(1,0,1) - null(1, 0, 1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartDeriveSubsetNullRelations_12 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4, eps, delta;
cfunctions dens, null, sig, b, present, select, elim, reduce, aux;
set dset : d1,d2,d3;
ctable,sparse,nullTbl(3);
*
Fill nullTbl(1,1,1) = null(eps, 1, 0)*null(delta, 0, 1);
*
local F = sig(0,1,1)*dens(d2,d3) * d2*d3;
.sort
*
#call ApartDeriveSubsetNullRelations(dens,null,sig,b,present,select,elim,reduce,aux,n,d,dset,nullTbl,3)
*
.sort
*
local check1 = nullTbl(0,1,1) - null(0, -delta, eps);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartDeriveSubsetNullRelations_13 :
#include- ../src/formapart.h
*
symbols d1,...,d19, n1,...,n20;
cfunctions dens, null, sig, b, present, select, elim, reduce, aux;
set dset : d1,...,d19;
ctable,sparse,APnullTbl(19);
*
Fill APnullTbl(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1) =
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
  * null(1,0,1,-2,1,0,0,0,0,-1,0,0,0,0,1,0,0,0,0);
*
Fill APnullTbl(1,0,1,1,0,1,0,1,0,0,0,0,0,1,1,0,0,1,1) =
    null(2,0,-2,3,0,-1,0,-2,0,0,0,0,0,0,0,0,0,-2,0)
  * null(-1,0,0,0,0,0,0,0,0,0,0,0,0,1,-1,0,0,1,0)
  * null(-1,0,1,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,1,1);
*
local F = sig(1,0,1,1,0,1,0,1,0,0,0,0,0,1,1,0,0,0,1)*dens(d1,d3,d4,d6,d8,d14,d15,d19) * d1*d3*d4*d6*d8*d14*d15*d19;
.sort
*
#call ApartDeriveSubsetNullRelations(dens,null,sig,b,present,select,elim,reduce,aux,n,d,dset,APnullTbl,19)
*
.sort
*
local probe = APnullTbl(1,0,1,1,0,1,0,1,0,0,0,0,0,1,1,0,0,0,1);
.sort
*
If (count(null,1) >= 2);
  Multiply 0;
EndIf;
.sort
*
local diff = probe;
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeriveSubsetNullRelations_14 :
#include- ../src/formapart.h
*
symbols d1,...,d5, n1,...,n6;
cfunctions dens, null, sig, b, present, select, elim, reduce, aux;
set dset : d1,...,d5;
ctable,sparse,nullTbl(5);
*
Fill nullTbl(1,0,1,1,1) =
    null(0,0,0,1,-1) * null(1,0,-1,1,0) * null(1,0,1,1,-2);
*
local F = sig(1,0,1,0,1)*dens(d1,d3,d5) * d1*d3*d5;
.sort
*
#call ApartDeriveSubsetNullRelations(dens,null,sig,b,present,select,elim,reduce,aux,n,d,dset,nullTbl,5)
*
.sort
*
local check1 =
    nullTbl(1,0,1,0,1)
  - null(-1,0,1,0,-1) * null(0,0,1,0,-1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartDeriveSubsetNullRelations_15 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5;
cfunctions dens, null, sig, b, present, select, elim, reduce, aux;
set dset : d1,...,d4;
ctable,sparse,nullTbl(4);
*
Fill nullTbl(1,0,1,1) = 1;
*
local F = sig(1,0,1,0)*dens(d1,d3) * d1*d3;
.sort
*
#call ApartDeriveSubsetNullRelations(dens,null,sig,b,present,select,elim,reduce,aux,n,d,dset,nullTbl,4)
*
.sort
*
local check1 = nullTbl(1,0,1,0) - 1;
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartDeriveSubsetNullRelations_16 :
#include- ../src/formapart.h
*
symbols d1,...,d5, n1,...,n6;
cfunctions dens, null, sig, b, present, select, elim, reduce, aux;
set dset : d1,...,d5;
ctable,sparse,nullTbl(5);
*
Fill nullTbl(1,1,1,1,0) =
    null(1,-1,0,0,0) * null(0,0,1,-1,0);
*
local F =
    sig(1,0,1,1,0)*dens(d1,d3,d4) * d1*d3*d4
  + sig(1,1,0,1,0)*dens(d1,d2,d4) * d1*d2*d4
  + sig(1,1,1,0,0)*dens(d1,d2,d3) * d1*d2*d3 ;
.sort
*
#call ApartDeriveSubsetNullRelations(dens,null,sig,b,present,select,elim,reduce,aux,n,d,dset,nullTbl,5)
*
.sort
*
local check1 = nullTbl(1,0,1,1,0) - null(0,0,1,-1,0);
local check2 = nullTbl(1,1,0,1,0) - null(1,-1,0,0,0);
local check3 = nullTbl(1,1,1,0,0) - null(1,-1,0,0,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
assert result("check2") =~ expr("0")
assert result("check3") =~ expr("0")
*}}}
*
*{{{ ApartDeriveSubsetNullRelations_17 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5;
cfunctions dens, null, sig, b, present, select, elim, reduce, aux;
set dset : d1,...,d4;
ctable,sparse,nullTbl(4);
*
Fill nullTbl(1,1,1,1) =
    null(1,-1,0,0) * null(0,0,1,-1) * null(1,0,0,-1);
Fill nullTbl(1,0,1,1) =
    null(0,0,1,-1) * null(1,0,0,-1);
*
local F =
    sig(1,1,1,1)*dens(d1,d2,d3,d4) * d1*d2*d3*d4
  + sig(1,1,1,0)*dens(d1,d2,d3)    * d1*d2*d3
  + sig(1,0,1,0)*dens(d1,d3)       * d1*d3 ;
.sort
*
#call ApartDeriveSubsetNullRelations(dens,null,sig,b,present,select,elim,reduce,aux,n,d,dset,nullTbl,4)
*
.sort
*
local check1 = nullTbl(1,1,1,0) - null(1,-1,0,0)*null(1,0,-1,0);
local check2 = nullTbl(1,0,1,0) - null(1,0,-1,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
assert result("check2") =~ expr("0")
*}}}
*
*{{{ ApartDeriveSubsetNullRelations_18 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5;
cfunctions dens, null, sig, b, present, select, elim, reduce, aux;
set dset : d1,...,d4;
ctable,sparse,nullTbl(4);
*
Fill nullTbl(1,0,1,1) = null(1,0,-1,0);
Fill nullTbl(1,1,1,0) = null(1,-1,0,0);
*
local F = sig(1,0,1,0)*dens(d1,d3) * d1*d3;
.sort
*
#call ApartDeriveSubsetNullRelations(dens,null,sig,b,present,select,elim,reduce,aux,n,d,dset,nullTbl,4)
*
.sort
*
local check1 = nullTbl(1,0,1,0) - null(1,0,-1,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
