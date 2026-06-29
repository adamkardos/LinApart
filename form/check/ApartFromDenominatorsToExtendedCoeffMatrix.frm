*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_1 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
cfunctions dens,row,col;
set dSet: d1,d2,d3;
symbols n1,n2;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d1,d2,d3)*row(1,2,3)*col(1,2,3)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_2 :
#include- ../src/formapart.h
*
symbols d1,...,d5;
cfunctions dens,row,col;
set dSet: d1,...,d5;
symbols n1,n2;
*
#define Vars "x,y"
*
local F = dens(d1,d3,d5);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d1,d3,d5)*row(1,3,5)*col(1,2,3)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_3 :
#include- ../src/formapart.h
*
symbols d1;
cfunctions dens,row,col;
set dSet: d1;
symbols n1,n2;
*
#define Vars "x"
*
local F = dens(d1);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d1)*row(1)*col(1,2)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_4 :
#include- ../src/formapart.h
*
symbols d1,d2;
cfunctions dens,row,col;
set dSet: d1,d2;
symbols n1,n2;
*
#define Vars "x,y,z,w"
*
local F = dens(d1,d2);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d1,d2)*row(1,2)*col(1,2,3,4,5)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_5 :
#include- ../src/formapart.h
*
symbols d1,...,d5;
cfunctions dens,row,col;
set dSet: d1,...,d5;
symbols n1,n2;
*
#define Vars "x"
*
local F = dens(d1,d2,d3,d4,d5);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d1,d2,d3,d4,d5)*row(1,2,3,4,5)*col(1,2)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_6 :
#include- ../src/formapart.h
*
symbols d1,...,d12;
cfunctions dens,row,col;
set dSet: d1,...,d12;
symbols n1,n2;
*
#define Vars "x,y"
*
local F = dens(d10,d11,d12);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d10,d11,d12)*row(10,11,12)*col(1,2,3)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_7 :
#include- ../src/formapart.h
*
symbols d1,...,d8;
cfunctions dens,row,col;
set dSet: d1,...,d8;
symbols n1,n2;
*
#define Vars "x,y,z"
*
local F = dens(d2,d4,d6,d8);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d2,d4,d6,d8)*row(2,4,6,8)*col(1,2,3,4)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_8 :
#include- ../src/formapart.h
*
symbols d1,...,d5;
cfunctions dens,row,col;
set dSet: d1,...,d5;
symbols n1,n2;
*
#define Vars "x,y,z"
*
local F = dens(d5);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d5)*row(5)*col(1,2,3,4)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_9 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
cfunctions dens,row,col;
set dSet: d1,d2,d3;
symbols n1,n2;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1*d2^2*d3;
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d1,d2,d3)*d1*d2^2*d3*row(1,2,3)*col(1,2,3)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_10 :
#include- ../src/formapart.h
*
symbols d1,...,d5;
cfunctions dens,row,col;
set dSet: d1,...,d5;
symbols n1,n2;
*
#define Vars "x,y"
*
local F = dens(d3,d1,d5,d2);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d3,d1,d5,d2)*row(3,1,5,2)*col(1,2,3)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_11 :
#include- ../src/formapart.h
*
symbols d1,...,d5;
cfunctions dens,row,col;
set dSet: d1,...,d5;
symbols n1,n2;
*
#define Vars "x"
*
local F = dens(d5,d4,d3,d2,d1);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d5,d4,d3,d2,d1)*row(5,4,3,2,1)*col(1,2)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_12 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
cfunctions dens,row,col;
set dSet: d1,d2,d3;
symbols n1,n2;
*
#define Vars "v,w,x,y,z"
*
local F = dens(d1,d2,d3);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d1,d2,d3)*row(1,2,3)*col(1,2,3,4,5,6)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_13 :
#include- ../src/formapart.h
*
symbols d1,d2;
cfunctions dens,row,col;
set dSet: d1,d2;
symbols n1,n2;
*
#define Vars "x,y"
*
local F = dens(d2,d1);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d2,d1)*row(2,1)*col(1,2,3)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_14 :
#include- ../src/formapart.h
*
symbols d1,...,d8;
cfunctions dens,row,col;
set dSet: d1,...,d8;
symbols n1,n2;
*
#define Vars "k1,k2,k3"
*
local F = dens(d3,d7,d1,d5,d8,d2,d6,d4);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d3,d7,d1,d5,d8,d2,d6,d4)*row(3,7,1,5,8,2,6,4)*col(1,2,3,4)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_15 :
#include- ../src/formapart.h
*
symbols d1,...,d4;
cfunctions dens,row,col;
set dSet: d1,...,d4;
symbols n1,n2;
*
#define Vars "x"
*
local F = dens(d4,d2,d1,d3)*d1*d2*d3^2*d4^3;
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d4,d2,d1,d3)*d1*d2*d3^2*d4^3*row(4,2,1,3)*col(1,2)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_16 :
#include- ../src/formapart.h
*
symbols d1;
cfunctions dens,row,col;
set dSet: d1;
symbols n1,n2;
*
#define Vars "v,w,x,y,z"
*
local F = dens(d1);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d1)*row(1)*col(1,2,3,4,5,6)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_17 :
#include- ../src/formapart.h
*
symbols d1,...,d10;
cfunctions dens,row,col;
set dSet: d1,...,d10;
symbols n1,n2;
*
#define Vars "x"
*
local F = dens(d1,d2,d3,d4,d5,d6,d7,d8,d9,d10);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d1,d2,d3,d4,d5,d6,d7,d8,d9,d10)*row(1,2,3,4,5,6,7,8,9,10)*col(1,2)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_18 :
#include- ../src/formapart.h
*
symbols d1,...,d10;
cfunctions dens,row,col;
set dSet: d1,...,d10;
symbols n1,n2;
*
#define Vars "x,y"
*
local F = dens(d10,d9,d8,d7,d6,d5,d4,d3,d2,d1);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d10,d9,d8,d7,d6,d5,d4,d3,d2,d1)*row(10,9,8,7,6,5,4,3,2,1)*col(1,2,3)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_19 :
#include- ../src/formapart.h
*
symbols d1,...,d9;
cfunctions dens,row,col;
set dSet: d1,...,d9;
symbols n1,n2;
*
#define Vars "x,y"
*
local F = dens(d1,d3,d5,d7,d9);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d1,d3,d5,d7,d9)*row(1,3,5,7,9)*col(1,2,3)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_20 :
#include- ../src/formapart.h
*
symbols d1,...,d9;
cfunctions dens,row,col;
set dSet: d1,...,d9;
symbols n1,n2;
*
#define Vars "x,y,z"
*
local F = dens(d9,d5,d1,d7,d3);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d9,d5,d1,d7,d3)*row(9,5,1,7,3)*col(1,2,3,4)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_21 :
#include- ../src/formapart.h
*
symbols d1,...,d25;
cfunctions dens,row,col;
set dSet: d1,...,d25;
symbols n1,n2;
*
#define Vars "x,y"
*
local F = dens(d15,d20,d25);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d15,d20,d25)*row(15,20,25)*col(1,2,3)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_22 :
#include- ../src/formapart.h
*
symbols d1,...,d25;
cfunctions dens,row,col;
set dSet: d1,...,d25;
symbols n1,n2;
*
#define Vars "x"
*
local F = dens(d25);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d25)*row(25)*col(1,2)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_23 :
#include- ../src/formapart.h
*
symbols d1,...,d8;
cfunctions dens,row,col;
set dSet: d1,...,d8;
symbols n1,n2;
*
#define Vars "k1,k2,k3"
*
local F = dens(d5,d2,d8,d1)*d1^3*d2*d5^2*d8^4;
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d5,d2,d8,d1)*d1^3*d2*d5^2*d8^4*row(5,2,8,1)*col(1,2,3,4)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_24 :
#include- ../src/formapart.h
*
symbols d1,d2;
cfunctions dens,row,col;
set dSet: d1,d2;
symbols n1,n2;
*
#define Vars "x,y"
*
local F = 3*dens(d1,d2)*d1*d2;
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - 3*dens(d1,d2)*d1*d2*row(1,2)*col(1,2,3)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_25 :
#include- ../src/formapart.h
*
symbols d1,...,d5,a,b;
cfunctions dens,row,col;
set dSet: d1,...,d5;
symbols n1,n2;
*
#define Vars "x,y"
*
local F = a*b*dens(d1,d3,d5)*d1*d3*d5;
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - a*b*dens(d1,d3,d5)*d1*d3*d5*row(1,3,5)*col(1,2,3)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_26 :
#include- ../src/formapart.h
*
symbols d1,...,d6;
cfunctions dens,row,col;
set dSet: d1,...,d6;
symbols n1,n2;
*
#define Vars "x"
*
local F = dens(d2,d5,d1,d4,d3,d6);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d2,d5,d1,d4,d3,d6)*row(2,5,1,4,3,6)*col(1,2)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_27 :
#include- ../src/formapart.h
*
symbols d1,...,d5;
cfunctions dens,row,col;
set dSet: d1,...,d5;
symbols n1,n2;
*
#define Vars "x,y"
*
local F = dens(d1,d5,d3,d5,d1);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d1,d5,d3,d5,d1)*row(1,5,3,5,1)*col(1,2,3)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_28 :
#include- ../src/formapart.h
*
symbols d1,...,d20;
cfunctions dens,row,col;
set dSet: d1,...,d20;
symbols n1,n2;
*
#define Vars "x,y,z,w"
*
local F = dens(d12,d13);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d12,d13)*row(12,13)*col(1,2,3,4,5)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_29 :
#include- ../src/formapart.h
*
symbols d1,...,d20;
cfunctions dens,row,col;
set dSet: d1,...,d20;
symbols n1,n2;
*
#define Vars "x,y"
*
local F = dens(d20,d1);
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - dens(d20,d1)*row(20,1)*col(1,2,3)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartFromDenominatorsToExtendedCoeffMatrix_30 :
#include- ../src/formapart.h
*
symbols d1,...,d6,a;
cfunctions dens,row,col;
set dSet: d1,...,d6;
symbols n1,n2;
*
#define Vars "k1,k2,k3"
*
local F = 2*a*dens(d6,d3,d1,d4,d2,d5)*d1*d2^2*d3*d4^3*d5*d6^2;
.sort
*
#call ApartFromDenominatorsToExtendedCoeffMatrix(dens,dSet,row,col,Vars,n1,n2)
*
.sort
*
local diff =
  F - 2*a*dens(d6,d3,d1,d4,d2,d5)*d1*d2^2*d3*d4^3*d5*d6^2*row(6,3,1,4,2,5)*col(1,2,3,4)
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
