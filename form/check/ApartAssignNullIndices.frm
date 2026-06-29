*{{{ ApartAssignNullIndices_1 :
#include- ../src/formapart.h
*
symbols n1,...,n5;
cfunctions null, null1,...,null5, aux1, aux2, aux3;
set nullset : null1,...,null5;
*
local F = null(11,22,33) * null(44,55,66) * null(77,88,99);
.sort
*
#call ApartAssignNullIndices(null,nullset,aux1,aux2,aux3,n)
*
.sort
*
local check1 = F - null1(11,22,33) * null2(44,55,66) * null3(77,88,99);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartAssignNullIndices_2 :
#include- ../src/formapart.h
*
symbols n1,...,n5;
cfunctions null, null1,...,null5, aux1, aux2, aux3;
set nullset : null1,...,null5;
*
local F = null(1,-2,1);
.sort
*
#call ApartAssignNullIndices(null,nullset,aux1,aux2,aux3,n)
*
.sort
*
local check1 = F - null1(1,-2,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartAssignNullIndices_3 :
#include- ../src/formapart.h
*
symbols n1,...,n5;
cfunctions null, null1,...,null5, aux1, aux2, aux3;
set nullset : null1,...,null5;
*
local F = null(1,2) * null(3,4);
.sort
*
#call ApartAssignNullIndices(null,nullset,aux1,aux2,aux3,n)
*
.sort
*
local check1 = F - null1(1,2) * null2(3,4);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartAssignNullIndices_4 :
#include- ../src/formapart.h
*
symbols n1,...,n5;
cfunctions null, null1,...,null5, aux1, aux2, aux3;
set nullset : null1,...,null5;
*
local F = null(5,5,5) * null(5,5,6) * null(5,5,7);
.sort
*
#call ApartAssignNullIndices(null,nullset,aux1,aux2,aux3,n)
*
.sort
*
local check1 = F - null1(5,5,5) * null2(5,5,6) * null3(5,5,7);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartAssignNullIndices_5 :
#include- ../src/formapart.h
*
symbols n1,...,n5, eps;
cfunctions null, null1,...,null5, aux1, aux2, aux3;
set nullset : null1,...,null5;
*
local F = null(eps,-eps,1) * null(eps^2,0,eps+1);
.sort
*
#call ApartAssignNullIndices(null,nullset,aux1,aux2,aux3,n)
*
.sort
*
local check1 = F - null1(eps,-eps,1) * null2(eps^2,0,eps+1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartAssignNullIndices_6 :
#include- ../src/formapart.h
*
symbols n1,...,n5, x, d1,d2,d3;
cfunctions null, null1,...,null5, dens, aux1, aux2, aux3;
set nullset : null1,...,null5;
*
local F = 7 * dens(d1,d2,d3) * x^2 * null(1,2,3) * null(4,5,6);
.sort
*
#call ApartAssignNullIndices(null,nullset,aux1,aux2,aux3,n)
*
.sort
*
local check1 = F - 7 * dens(d1,d2,d3) * x^2 * null1(1,2,3) * null2(4,5,6);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartAssignNullIndices_7 :
#include- ../src/formapart.h
*
symbols n1,...,n5;
cfunctions null, null1,...,null5, aux1, aux2, aux3;
set nullset : null1,...,null5;
*
local F =
    null(1,0,0,0,0) * null(0,2,0,0,0) * null(0,0,3,0,0)
  * null(0,0,0,4,0) * null(0,0,0,0,5);
.sort
*
#call ApartAssignNullIndices(null,nullset,aux1,aux2,aux3,n)
*
.sort
*
local check1 = F
  - null1(0,0,0,0,5) * null2(0,0,0,4,0) * null3(0,0,3,0,0)
    * null4(0,2,0,0,0) * null5(1,0,0,0,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartAssignNullIndices_8 :
#include- ../src/formapart.h
*
symbols n1,...,n5, d1,d2,d3;
cfunctions null, null1,...,null5, dens, aux1, aux2, aux3;
set nullset : null1,...,null5;
*
local F = dens(d1,d2,d3) * d1*d2*d3;
.sort
*
#call ApartAssignNullIndices(null,nullset,aux1,aux2,aux3,n)
*
.sort
*
local check1 = F - dens(d1,d2,d3) * d1*d2*d3;
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartAssignNullIndices_9 :
#include- ../src/formapart.h
*
symbols n1,...,n5, x;
cfunctions null, null1,...,null5, aux1, aux2, aux3;
set nullset : null1,...,null5;
*
local F = 5 + 7*null(1,2,3)*x;
.sort
*
#call ApartAssignNullIndices(null,nullset,aux1,aux2,aux3,n)
*
.sort
*
local check1 = F - (5 + 7*null1(1,2,3)*x);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartAssignNullIndices_10 :
#include- ../src/formapart.h
*
symbols n1,...,n5;
cfunctions null, null1,...,null5, aux1, aux2, aux3;
set nullset : null1,...,null5;
*
local F = null(1,2)*null(3,4) + null(5,6)*null(7,8)*null(9,10);
.sort
*
#call ApartAssignNullIndices(null,nullset,aux1,aux2,aux3,n)
*
.sort
*
local check1 = F
  - (null1(1,2)*null2(3,4) + null1(5,6)*null2(7,8)*null3(9,10));
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartAssignNullIndices_11 :
#include- ../src/formapart.h
*
symbols n1,...,n5;
cfunctions null, null1,...,null5, aux1, aux2, aux3;
set nullset : null1,...,null5;
*
local F = null(1,2,3) * null(-1,-2,-3);
.sort
*
#call ApartAssignNullIndices(null,nullset,aux1,aux2,aux3,n)
*
.sort
*
local check1 = F - null1(-1,-2,-3) * null2(1,2,3);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartAssignNullIndices_12 :
#include- ../src/formapart.h
*
symbols n1,...,n5, d1,d2,d3, eps, delta, mu;
cfunctions null, null1,...,null5, dens, aux1, aux2, aux3;
set nullset : null1,...,null5;
*
local F = -3 * dens(d1,d2,d3)
  * null(eps,delta,mu)
  * null(eps^2,delta^2,mu^2)
  * null(eps*delta,delta*mu,mu*eps);
.sort
*
#call ApartAssignNullIndices(null,nullset,aux1,aux2,aux3,n)
*
.sort
*
local check1 = F + 3 * dens(d1,d2,d3)
  * null1(eps,delta,mu)
  * null2(eps^2,delta^2,mu^2)
  * null3(eps*delta,delta*mu,mu*eps);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartAssignNullIndices_13 :
#include- ../src/formapart.h
*
symbols n1,...,n5;
cfunctions null, null1,...,null5, aux1, aux2, aux3;
set nullset : null1,...,null5;
*
local F = null(1/2,-1/3,1/4) * null(2/3,3/4,5/6);
.sort
*
#call ApartAssignNullIndices(null,nullset,aux1,aux2,aux3,n)
*
.sort
*
local check1 = F - null1(1/2,-1/3,1/4) * null2(2/3,3/4,5/6);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartAssignNullIndices_14 :
#include- ../src/formapart.h
*
symbols n1,...,n6, x, d1,...,d5, eps;
cfunctions null, null1,...,null5, dens, aux1, aux2, aux3;
set nullset : null1,...,null5;
*
local F = -3 * x^2 * dens(d1,d2,d3,d4,d5)
  * null(eps,1,0,0,0)
  * null(0,eps,1,0,0)
  * null(0,0,eps,1,0)
  * null(0,0,0,eps,1);
.sort
*
#call ApartAssignNullIndices(null,nullset,aux1,aux2,aux3,n)
*
.sort
*
local check1 = F + 3 * x^2 * dens(d1,d2,d3,d4,d5)
  * null1(0,0,0,eps,1) * null2(0,0,eps,1,0)
  * null3(0,eps,1,0,0) * null4(eps,1,0,0,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
