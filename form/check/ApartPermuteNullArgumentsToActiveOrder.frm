*{{{ ApartPermuteNullArgumentsToActiveOrder_1 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5;
cfunctions null, dens, aux;
*
#define N "4"
*
local F = dens(d4,d3,d2,d1) * null(1,2,3,4);
.sort
*
#call ApartPermuteNullArgumentsToActiveOrder(null,dens,aux,n,d,N)
*
.sort
*
local check1 = F - dens(d4,d3,d2,d1) * null(4,3,2,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartPermuteNullArgumentsToActiveOrder_2 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5;
cfunctions null, dens, aux;
*
#define N "4"
*
local F = dens(d4,d2,d1) * null(1,2,0,4);
.sort
*
#call ApartPermuteNullArgumentsToActiveOrder(null,dens,aux,n,d,N)
*
.sort
*
local check1 = F - dens(d4,d2,d1) * null(4,2,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartPermuteNullArgumentsToActiveOrder_3 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5;
cfunctions null, dens, aux;
*
#define N "4"
*
local F = dens(d3,d1,d4,d2) * null(1,2,3,4) * null(10,20,30,40);
.sort
*
#call ApartPermuteNullArgumentsToActiveOrder(null,dens,aux,n,d,N)
*
.sort
*
local check1 = F
  - dens(d3,d1,d4,d2) * null(3,1,4,2) * null(30,10,40,20);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartPermuteNullArgumentsToActiveOrder_4 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5;
cfunctions null, dens, aux;
*
#define N "4"
*
local F = dens(d3) * null(0,0,5,0);
.sort
*
#call ApartPermuteNullArgumentsToActiveOrder(null,dens,aux,n,d,N)
*
.sort
*
local check1 = F - dens(d3) * null(5);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartPermuteNullArgumentsToActiveOrder_5 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5, eps;
cfunctions null, dens, aux;
*
#define N "4"
*
local F = dens(d2,d4,d1,d3) * null(eps, -2*eps, eps^2, 1-eps);
.sort
*
#call ApartPermuteNullArgumentsToActiveOrder(null,dens,aux,n,d,N)
*
.sort
*
local check1 = F
  - dens(d2,d4,d1,d3) * null(-2*eps, 1-eps, eps, eps^2);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartPermuteNullArgumentsToActiveOrder_6 :
#include- ../src/formapart.h
*
symbols d1,...,d6, n1,...,n7;
cfunctions null, dens, aux;
*
#define N "6"
*
local F = dens(d2,d5,d6,d1,d3,d4) * null(1,2,3,4,5,6);
.sort
*
#call ApartPermuteNullArgumentsToActiveOrder(null,dens,aux,n,d,N)
*
.sort
*
local check1 = F - dens(d2,d5,d6,d1,d3,d4) * null(2,5,6,1,3,4);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartPermuteNullArgumentsToActiveOrder_7 :
#include- ../src/formapart.h
*
symbols d1,...,d5, n1,...,n6;
cfunctions null, dens, aux;
*
#define N "5"
*
local F = dens(d4,d1) * null(7,0,0,-3,0);
.sort
*
#call ApartPermuteNullArgumentsToActiveOrder(null,dens,aux,n,d,N)
*
.sort
*
local check1 = F - dens(d4,d1) * null(-3, 7);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartPermuteNullArgumentsToActiveOrder_8 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4;
cfunctions null, dens, aux;
*
#define N "3"
*
local F = dens(d1,d2,d3) * null(1,-2,1);
.sort
*
#call ApartPermuteNullArgumentsToActiveOrder(null,dens,aux,n,d,N)
*
.sort
*
local check1 = F - dens(d1,d2,d3) * null(1,-2,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartPermuteNullArgumentsToActiveOrder_9 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5;
cfunctions null, dens, aux;
*
#define N "4"
*
local F = dens(d2,d1,d4,d3) * null(11,22,33,44);
.sort
*
#call ApartPermuteNullArgumentsToActiveOrder(null,dens,aux,n,d,N)
*
.sort
*
local check1 = F - dens(d2,d1,d4,d3) * null(22,11,44,33);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartPermuteNullArgumentsToActiveOrder_10 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5;
cfunctions null, dens, aux;
*
#define N "4"
*
local F = dens(d4,d1,d2,d3) * null(11,22,33,44);
.sort
*
#call ApartPermuteNullArgumentsToActiveOrder(null,dens,aux,n,d,N)
*
.sort
*
local check1 = F - dens(d4,d1,d2,d3) * null(44,11,22,33);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartPermuteNullArgumentsToActiveOrder_11 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5;
cfunctions null, dens, aux;
*
#define N "4"
*
local F = dens(d1,d3,d4,d2) * null(11,22,33,44);
.sort
*
#call ApartPermuteNullArgumentsToActiveOrder(null,dens,aux,n,d,N)
*
.sort
*
local check1 = F - dens(d1,d3,d4,d2) * null(11,33,44,22);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartPermuteNullArgumentsToActiveOrder_12 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5;
cfunctions null, dens, aux;
*
#define N "4"
*
local F = dens(d4,d3,d2,d1) * null(7,7,7,7) * null(11,22,33,44);
.sort
*
#call ApartPermuteNullArgumentsToActiveOrder(null,dens,aux,n,d,N)
*
.sort
*
local check1 = F
  - dens(d4,d3,d2,d1) * null(7,7,7,7) * null(44,33,22,11);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartPermuteNullArgumentsToActiveOrder_13 :
#include- ../src/formapart.h
*
symbols d1,d2, n1,...,n3;
cfunctions null, dens, aux;
*
#define N "2"
*
local F = dens(d2,d1) * null(11,22);
.sort
*
#call ApartPermuteNullArgumentsToActiveOrder(null,dens,aux,n,d,N)
*
.sort
*
local check1 = F - dens(d2,d1) * null(22,11);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartPermuteNullArgumentsToActiveOrder_14 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5;
cfunctions null, dens, aux;
*
#define N "4"
*
local F = dens(d3,d1,d4,d2)
  * null(1,2,3,4)
  * null(10,20,30,40)
  * null(100,200,300,400)
  * null(1000,2000,3000,4000);
.sort
*
#call ApartPermuteNullArgumentsToActiveOrder(null,dens,aux,n,d,N)
*
.sort
*
local check1 = F
  - dens(d3,d1,d4,d2)
    * null(3,1,4,2)
    * null(30,10,40,20)
    * null(300,100,400,200)
    * null(3000,1000,4000,2000);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartPermuteNullArgumentsToActiveOrder_15 :
#include- ../src/formapart.h
*
symbols d1,...,d5, n1,...,n6;
cfunctions null, dens, aux;
*
#define N "5"
*
local F = dens(d3,d5,d1,d2,d4) * null(0,-5,3,0,-2);
.sort
*
#call ApartPermuteNullArgumentsToActiveOrder(null,dens,aux,n,d,N)
*
.sort
*
local check1 = F - dens(d3,d5,d1,d2,d4) * null(3,-2,0,-5,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartPermuteNullArgumentsToActiveOrder_16 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4, eps, delta;
cfunctions null, dens, aux;
*
#define N "3"
*
local F = dens(d3,d1,d2) * null(eps*delta, eps+delta, eps-delta);
.sort
*
#call ApartPermuteNullArgumentsToActiveOrder(null,dens,aux,n,d,N)
*
.sort
*
local check1 = F - dens(d3,d1,d2) * null(eps-delta, eps*delta, eps+delta);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartPermuteNullArgumentsToActiveOrder_17 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5, eps;
cfunctions null, dens, aux;
*
#define N "4"
*
local F = dens(d4,d3,d2,d1) * null(eps^2-2*eps+1, eps^3, 0, eps^4-eps);
.sort
*
#call ApartPermuteNullArgumentsToActiveOrder(null,dens,aux,n,d,N)
*
.sort
*
local check1 = F
  - dens(d4,d3,d2,d1) * null(eps^4-eps, 0, eps^3, eps^2-2*eps+1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartPermuteNullArgumentsToActiveOrder_18 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5, eps;
cfunctions null, dens, aux;
*
#define N "4"
*
local F = dens(d2,d4,d1,d3) * null(5, eps, -2*eps^2, 7*eps+3);
.sort
*
#call ApartPermuteNullArgumentsToActiveOrder(null,dens,aux,n,d,N)
*
.sort
*
local check1 = F
  - dens(d2,d4,d1,d3) * null(eps, 7*eps+3, 5, -2*eps^2);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartPermuteNullArgumentsToActiveOrder_19 :
#include- ../src/formapart.h
*
symbols d1,d2,d3, n1,...,n4, eps;
cfunctions null, dens, aux;
*
#define N "3"
*
local F = dens(d2,d3,d1) * null(eps, 1, -eps) * null(eps^2-1, eps^2, 0);
.sort
*
#call ApartPermuteNullArgumentsToActiveOrder(null,dens,aux,n,d,N)
*
.sort
*
local check1 = F
  - dens(d2,d3,d1) * null(1, -eps, eps) * null(eps^2, 0, eps^2-1);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
*
*{{{ ApartPermuteNullArgumentsToActiveOrder_20 :
#include- ../src/formapart.h
*
symbols d1,...,d4, n1,...,n5, eps, delta, mu;
cfunctions null, dens, aux;
*
#define N "4"
*
local F = dens(d4,d3,d2,d1) * null(eps+mu, delta^2, -eps*delta, mu-delta);
.sort
*
#call ApartPermuteNullArgumentsToActiveOrder(null,dens,aux,n,d,N)
*
.sort
*
local check1 = F
  - dens(d4,d3,d2,d1) * null(mu-delta, -eps*delta, delta^2, eps+mu);
.sort
*
print +s;
.end
assert succeeded?
assert result("check1") =~ expr("0")
*}}}
