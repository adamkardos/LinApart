*{{{ ApartFetchSubsetNullRelations_1 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4;
cfunctions null, dens, sig, aux;
set dset : d1,d2,d3;
ctable,sparse,nullTbl(3);
*
Fill nullTbl(1,1,1) = null(-1,-1,1);
*
#define N "3"
*
local F = dens(d1,d2,d3) * d1*d2*d3;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F - dens(d1,d2,d3) * d1*d2*d3 * sig(1,1,1) * null(-1,-1,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_2 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5;
cfunctions null, dens, sig, aux;
set dset : d1,...,d4;
ctable,sparse,nullTbl(4);
*
Fill nullTbl(0,0,1,1) = null(0,0,-1,1);
*
#define N "4"
*
local F = dens(d3,d4) * d3*d4;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F - dens(d3,d4) * d3*d4 * sig(0,0,1,1) * null(0,0,-1,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_3 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5;
cfunctions null, dens, sig, aux;
set dset : d1,...,d4;
ctable,sparse,nullTbl(4);
*
Fill nullTbl(1,1,1,1) = null(-1,-1,1,0) * null(0,0,-1,1);
*
#define N "4"
*
local F = dens(d1,d2,d3,d4) * d1*d2*d3*d4;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F
  - dens(d1,d2,d3,d4) * d1*d2*d3*d4 * sig(1,1,1,1)
    * null(-1,-1,1,0) * null(0,0,-1,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_4 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4, x, eps;
cfunctions null, dens, sig, aux, den;
set dset : d1,d2,d3;
ctable,sparse,nullTbl(3);
*
Fill nullTbl(1,1,1) = null(2,-3,1);
*
#define N "3"
*
local F = 5 * x^2 * den(eps+1) * dens(d1,d2,d3) * d1^2*d2;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F
  - 5 * x^2 * den(eps+1) * dens(d1,d2,d3) * d1^2*d2 * sig(1,1,1) * null(2,-3,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_5 :
#include- ../src/formapart.h
*
symbols d1,d2, n1,...,n3;
cfunctions null, dens, sig, aux;
set dset : d1,d2;
ctable,sparse,nullTbl(2);
*
Fill nullTbl(1,1) = 1;
*
#define N "2"
*
local F = dens(d1,d2) * d1*d2;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F - dens(d1,d2) * d1*d2 * sig(1,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_6 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4;
cfunctions null, dens, sig, aux;
set dset : d1,d2,d3;
ctable,sparse,nullTbl(3);
*
Fill nullTbl(1,1,1) = null(2,-3,1);
*
#define N "3"
*
local F = dens(d3,d1,d2) * d1*d2*d3;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F - dens(d3,d1,d2) * d1*d2*d3 * sig(1,1,1) * null(2,-3,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_7 :
#include- ../src/formapart.h
*
symbols d1,...,d6, n1,...,n7;
cfunctions null, dens, sig, aux;
set dset : d1,...,d6;
ctable,sparse,nullTbl(6);
*
Fill nullTbl(0,1,0,0,1,0) = null(0,3,0,0,-1,0);
*
#define N "6"
*
local F = dens(d2,d5) * d2*d5;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F - dens(d2,d5) * d2*d5 * sig(0,1,0,0,1,0) * null(0,3,0,0,-1,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_8 :
#include- ../src/formapart.h
*
symbols d1, n1, n2;
cfunctions null, dens, sig, aux;
set dset : d1;
ctable,sparse,nullTbl(1);
*
Fill nullTbl(1) = null(7);
*
#define N "1"
*
local F = dens(d1) * d1^5;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F - dens(d1) * d1^5 * sig(1) * null(7);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_9 :
#include- ../src/formapart.h
*
symbols d1,...,d8, n1,...,n9;
cfunctions null, dens, sig, aux;
set dset : d1,...,d8;
ctable,sparse,nullTbl(8);
*
Fill nullTbl(1,0,1,0,1,0,1,0) = null(1,0,-1,0,1,0,-1,0);
*
#define N "8"
*
local F = dens(d1,d3,d5,d7) * d1*d3*d5*d7;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F
  - dens(d1,d3,d5,d7) * d1*d3*d5*d7 * sig(1,0,1,0,1,0,1,0) * null(1,0,-1,0,1,0,-1,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_10 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4;
cfunctions null, dens, sig, aux;
set dset : d1,d2,d3;
ctable,sparse,nullTbl(3);
*
Fill nullTbl(1,1,1) = null(11,22,33);
Fill nullTbl(1,1,0) = null(44,55,0);
Fill nullTbl(1,0,1) = null(66,0,77);
Fill nullTbl(0,1,1) = null(0,88,99);
*
#define N "3"
*
local F = dens(d1,d3) * d1*d3;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F - dens(d1,d3) * d1*d3 * sig(1,0,1) * null(66,0,77);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_11 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4, eps;
cfunctions null, dens, sig, aux;
set dset : d1,d2,d3;
ctable,sparse,nullTbl(3);
*
Fill nullTbl(1,1,1) = null(eps, -eps-1, eps^2-1);
*
#define N "3"
*
local F = dens(d1,d2,d3) * d1*d2*d3;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F
  - dens(d1,d2,d3) * d1*d2*d3 * sig(1,1,1) * null(eps, -eps-1, eps^2-1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_12 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4, eps, delta, mu;
cfunctions null, dens, sig, aux;
set dset : d1,d2,d3;
ctable,sparse,nullTbl(3);
*
Fill nullTbl(1,1,1) = null(eps+mu, eps*delta, mu-delta);
*
#define N "3"
*
local F = dens(d1,d2,d3) * d1*d2*d3;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F
  - dens(d1,d2,d3) * d1*d2*d3 * sig(1,1,1) * null(eps+mu, eps*delta, mu-delta);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_13 :
#include- ../src/formapart.h
*
symbols d1,...,d5, n1,...,n6, x, eps, delta, mu;
cfunctions null, dens, sig, aux, den;
set dset : d1,...,d5;
ctable,sparse,nullTbl(5);
*
Fill nullTbl(1,1,1,1,1) =
    null(eps,-1,0,0,0) * null(0,delta,-1,0,0) * null(0,0,mu,-1,0);
*
#define N "5"
*
local F = 2 * x^3 * den(eps+delta) * dens(d1,d2,d3,d4,d5)
  * d1^2*d2*d3*d4*d5;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F
  - 2 * x^3 * den(eps+delta) * dens(d1,d2,d3,d4,d5)
    * d1^2*d2*d3*d4*d5 * sig(1,1,1,1,1)
    * null(eps,-1,0,0,0) * null(0,delta,-1,0,0) * null(0,0,mu,-1,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_14 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4;
cfunctions null, dens, sig, aux;
set dset : d1,d2,d3;
ctable,sparse,nullTbl(3);
*
Fill nullTbl(1,1,1) = null(11,22,33);
Fill nullTbl(1,1,0) = null(44,55,0);
Fill nullTbl(0,1,1) = null(0,66,77);
*
#define N "3"
*
local F =
    dens(d1,d2,d3) * d1*d2*d3
  + dens(d1,d2)    * d1^2*d2
  + dens(d2,d3)    * d2*d3^2;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F
  - (
      dens(d1,d2,d3) * d1*d2*d3 * sig(1,1,1) * null(11,22,33)
    + dens(d1,d2)    * d1^2*d2  * sig(1,1,0) * null(44,55,0)
    + dens(d2,d3)    * d2*d3^2  * sig(0,1,1) * null(0,66,77)
    );
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_15 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4;
cfunctions null, dens, sig, aux;
set dset : d1,d2,d3;
ctable,sparse,nullTbl(3);
*
Fill nullTbl(1,1,1) = null(2,-3,1);
*
#define N "3"
*
local F = dens(d1,d2,d3) * d1^10 * d2^7 * d3^4;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F - dens(d1,d2,d3) * d1^10 * d2^7 * d3^4 * sig(1,1,1) * null(2,-3,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_16 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4;
cfunctions null, dens, sig, aux;
set dset : d1,d2,d3;
ctable,sparse,nullTbl(3);
*
Fill nullTbl(1,1,1) = null(1/2, -1/3, 1/6);
*
#define N "3"
*
local F = dens(d1,d2,d3) * d1*d2*d3;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F
  - dens(d1,d2,d3) * d1*d2*d3 * sig(1,1,1) * null(1/2, -1/3, 1/6);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_17 :
#include- ../src/formapart.h
*
symbols d1,...,d6, n1,...,n7;
cfunctions null, dens, sig, aux;
set dset : d1,...,d6;
ctable,sparse,nullTbl(6);
*
Fill nullTbl(1,1,1,1,1,1) =
    null(1,-1,0,0,0,0) * null(0,1,-1,0,0,0) * null(0,0,1,-1,0,0)
  * null(0,0,0,1,-1,0) * null(0,0,0,0,1,-1);
*
#define N "6"
*
local F = dens(d1,d2,d3,d4,d5,d6) * d1*d2*d3*d4*d5*d6;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F
  - dens(d1,d2,d3,d4,d5,d6) * d1*d2*d3*d4*d5*d6 * sig(1,1,1,1,1,1)
    * null(1,-1,0,0,0,0) * null(0,1,-1,0,0,0) * null(0,0,1,-1,0,0)
    * null(0,0,0,1,-1,0) * null(0,0,0,0,1,-1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_18 :
#include- ../src/formapart.h
*
symbols d1,...,d7, n1,...,n8;
cfunctions null, dens, sig, aux;
set dset : d1,...,d7;
ctable,sparse,nullTbl(7);
*
Fill nullTbl(1,0,0,1,0,0,1) = null(3,0,0,-2,0,0,1);
*
#define N "7"
*
local F = dens(d1,d4,d7) * d1*d4*d7;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F
  - dens(d1,d4,d7) * d1*d4*d7 * sig(1,0,0,1,0,0,1) * null(3,0,0,-2,0,0,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_19 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4, x, eps;
cfunctions null, dens, sig, aux, den;
set dset : d1,d2,d3;
ctable,sparse,nullTbl(3);
*
Fill nullTbl(1,1,1) = null(2,-3,1);
*
#define N "3"
*
local F = (eps+1)^2 * x * den(eps) * den(eps+1)^3 * den(2*eps-1)
  * dens(d1,d2,d3) * d1*d2*d3;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F
  - (eps+1)^2 * x * den(eps) * den(eps+1)^3 * den(2*eps-1)
    * dens(d1,d2,d3) * d1*d2*d3 * sig(1,1,1) * null(2,-3,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_20 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
symbols n1,...,n5;
cfunctions sig;
ctable,sparse,APnullTbl(3);
*
Fill APnullTbl(1,1,1) = null(-1,-1,1);
*
local F = dens(d1,d2,d3) * d1*d2*d3;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux1,APnullTbl,dSet,n,d,APnumberOfDenominators)
*
.sort
*
local check1 = F - dens(d1,d2,d3) * d1*d2*d3 * sig(1,1,1) * null(-1,-1,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_21 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
symbols n1,...,n5;
cfunctions sig;
ctable,sparse,APnullTbl(3);
*
Fill APnullTbl(1,1,1) = null(-1,-1,1);
*
local F = dens(d1,d2,d3) * d1^2*d2*d3;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux1,APnullTbl,dSet,n,d,APnumberOfDenominators)
*
.sort
*
local check1 = F - dens(d1,d2,d3) * d1^2*d2*d3 * sig(1,1,1) * null(-1,-1,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_22 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "4"
*
symbols x,y;
symbols d1,d2,d3,d4;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4;
set NullSet: null1,null2,null3,null4;
set dSet: d1,d2,d3,d4;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
symbols n1,...,n5;
cfunctions sig;
ctable,sparse,APnullTbl(4);
*
Fill APnullTbl(0,0,1,1) = null(0,0,-1,1);
*
local F = dens(d3,d4) * d3*d4;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux1,APnullTbl,dSet,n,d,APnumberOfDenominators)
*
.sort
*
local check1 = F - dens(d3,d4) * d3*d4 * sig(0,0,1,1) * null(0,0,-1,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_23 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4;
cfunctions null, dens, sig, aux;
set dset : d1,d2,d3;
ctable,sparse,nullTbl(3);
*
Fill nullTbl(1,1,1) = null(-1,-1,1);
*
#define N "3"
*
local F = sig(1,1,1) * dens(d1,d2,d3) * d1*d2*d3;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F - sig(1,1,1) * dens(d1,d2,d3) * d1*d2*d3 * null(-1,-1,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_24 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4;
cfunctions null, dens, sig, aux;
set dset : d1,d2,d3;
ctable,sparse,nullTbl(3);
*
Fill nullTbl(1,1,1) = null(-1,-1,1);
Fill nullTbl(0,0,1) = null(0,0,7);
*
#define N "3"
*
local F = sig(0,0,1) * dens(d1,d2,d3) * d1*d2*d3;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F - sig(0,0,1) * dens(d1,d2,d3) * d1*d2*d3 * null(0,0,7);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_25 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4;
cfunctions null, dens, sig, aux;
set dset : d1,d2,d3;
ctable,sparse,nullTbl(3);
*
Fill nullTbl(1,0,1) = null(1,0,-1);
*
#define N "3"
*
local F = sig(1,0,1) * d1*d3;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F - sig(1,0,1) * d1*d3 * null(1,0,-1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_26 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4;
cfunctions null, dens, sig, aux;
set dset : d1,d2,d3;
ctable,sparse,nullTbl(3);
*
Fill nullTbl(1,1,0) = 1;
*
#define N "3"
*
local F = sig(1,1,0) * dens(d1,d2) * d1*d2;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 = F - sig(1,1,0) * dens(d1,d2) * d1*d2;
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_27 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5;
cfunctions null, dens, sig, aux;
set dset : d1,...,d4;
ctable,sparse,nullTbl(4);
*
Fill nullTbl(1,1,1,1) = null(-1,-1,1,0) * null(0,0,-1,1);
*
#define N "4"
*
local F = sig(1,1,1,1) * dens(d1,d2,d3,d4) * d1*d2*d3*d4;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 =
    F
  - sig(1,1,1,1) * dens(d1,d2,d3,d4) * d1*d2*d3*d4
    * null(-1,-1,1,0) * null(0,0,-1,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartFetchSubsetNullRelations_28 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4;
cfunctions null, dens, sig, aux;
set dset : d1,d2,d3;
ctable,sparse,nullTbl(3);
*
Fill nullTbl(1,1,1) = null(-1,-1,1);
Fill nullTbl(1,0,1) = null(1,0,-1);
*
#define N "3"
*
local F =
    sig(1,1,1) * dens(d1,d2,d3) * d1*d2*d3
  + dens(d1,d3) * d1*d3 ;
.sort
*
#call ApartFetchSubsetNullRelations(dens,sig,aux,nullTbl,dset,n,d,N)
*
.sort
*
local check1 =
    F
  - sig(1,1,1) * dens(d1,d2,d3) * d1*d2*d3 * null(-1,-1,1)
  - sig(1,0,1) * dens(d1,d3) * d1*d3 * null(1,0,-1) ;
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
