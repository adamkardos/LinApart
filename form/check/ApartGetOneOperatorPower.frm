*{{{ ApartGetOneOperatorPower_1 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux3;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(1,-2,1)*selDen(d1)
;
*
.sort
*
#call ApartGetOneOperatorPower(dens,selNull,selDen,Pow,aux1,aux2,aux3,n1,n2)
multiply $Pow - 1;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartGetOneOperatorPower_2 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux3;
*
local F =
  + d1*d2^2*d3^2
    *dens(d1,d2,d3)
    *selNull(1,1,1)*selDen(d1)
;
*
.sort
*
#call ApartGetOneOperatorPower(dens,selNull,selDen,Pow,aux1,aux2,aux3,n1,n2)
multiply $Pow - 2;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartGetOneOperatorPower_3 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux3;
*
local F =
  + d1*d2^2*d3
    *dens(d1,d2,d3)
    *selNull(1,1,1)*selDen(d1)
;
*
.sort
*
#call ApartGetOneOperatorPower(dens,selNull,selDen,Pow,aux1,aux2,aux3,n1,n2)
multiply $Pow - 1;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartGetOneOperatorPower_4 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux3;
*
local F =
  + d1*d2^3*d3^2
    *dens(d1,d2,d3)
    *selNull(1,1,1)*selDen(d1)
;
*
.sort
*
#call ApartGetOneOperatorPower(dens,selNull,selDen,Pow,aux1,aux2,aux3,n1,n2)
multiply $Pow - 2;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartGetOneOperatorPower_5 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux3;
*
local F =
  + d1^3*d2*d3^2
    *dens(d1,d2,d3)
    *selNull(1,1,1)*selDen(d2)
;
*
.sort
*
#call ApartGetOneOperatorPower(dens,selNull,selDen,Pow,aux1,aux2,aux3,n1,n2)
multiply $Pow - 2;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartGetOneOperatorPower_6 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux3;
*
local F =
  + d1*d2*d3^4*d4^2
    *dens(d1,d2,d3,d4)
    *selNull(2,0,-1,3)*selDen(d1)
;
*
.sort
*
#call ApartGetOneOperatorPower(dens,selNull,selDen,Pow,aux1,aux2,aux3,n1,n2)
multiply $Pow - 2;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartGetOneOperatorPower_7 :
#include- ../src/formapart.h
*
symbols d1,d2;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux3;
*
local F =
  + d1^2*d2^3
    *dens(d1,d2)
    *selNull(1,-1)*selDen(d1)
;
*
.sort
*
#call ApartGetOneOperatorPower(dens,selNull,selDen,Pow,aux1,aux2,aux3,n1,n2)
multiply $Pow - 3;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartGetOneOperatorPower_8 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux3;
*
local F =
  + d1*d2^100*d3^50
    *dens(d1,d2,d3)
    *selNull(1,1,1)*selDen(d1)
;
*
.sort
*
#call ApartGetOneOperatorPower(dens,selNull,selDen,Pow,aux1,aux2,aux3,n1,n2)
multiply $Pow - 50;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartGetOneOperatorPower_9 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux3;
*
local F =
  + d1^4*d2^7*d3^2
    *dens(d1,d2,d3)
    *selNull(1,1,1)*selDen(d3)
;
*
.sort
*
#call ApartGetOneOperatorPower(dens,selNull,selDen,Pow,aux1,aux2,aux3,n1,n2)
multiply $Pow - 4;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartGetOneOperatorPower_10 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5,d6;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux3;
*
local F =
  + d1*d2*d3^9*d4*d5^5*d6
    *dens(d1,d2,d3,d4,d5,d6)
    *selNull(0,0,2,0,-3,0)*selDen(d3)
;
*
.sort
*
#call ApartGetOneOperatorPower(dens,selNull,selDen,Pow,aux1,aux2,aux3,n1,n2)
multiply $Pow - 5;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartGetOneOperatorPower_11 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux3;
*
local F =
  + d1*d2^3*d3^2*d4^2
    *dens(d1,d2,d3,d4)
    *selNull(1,1,1,1)*selDen(d1)
;
*
.sort
*
#call ApartGetOneOperatorPower(dens,selNull,selDen,Pow,aux1,aux2,aux3,n1,n2)
multiply $Pow - 2;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartGetOneOperatorPower_12 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux3;
*
local F =
  + d1^6*d2^2*d3^8
    *dens(d1,d2,d3)
    *selNull(13,-47,101)*selDen(d2)
;
*
.sort
*
#call ApartGetOneOperatorPower(dens,selNull,selDen,Pow,aux1,aux2,aux3,n1,n2)
multiply $Pow - 6;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartGetOneOperatorPower_13 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
symbols epsilon;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux3;
*
local F =
  + d1^2*d2^5*d3^3
    *dens(d1,d2,d3)
    *selNull(epsilon,1,1)*selDen(d3)
;
*
.sort
*
#call ApartGetOneOperatorPower(dens,selNull,selDen,Pow,aux1,aux2,aux3,n1,n2)
multiply $Pow - 2;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartGetOneOperatorPower_14 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
symbols a,b,c,dd;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux3;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(b*c-a*dd,b*c-a*dd,a*dd-b*c)*selDen(d1)
;
*
.sort
*
#call ApartGetOneOperatorPower(dens,selNull,selDen,Pow,aux1,aux2,aux3,n1,n2)
multiply $Pow - 1;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartGetOneOperatorPower_15 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
symbols a,b,c,dd;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux3;
*
local F =
  + d1^2*d2^5*d3^3
    *dens(d1,d2,d3)
    *selNull(b*c-a*dd,1,a-b)*selDen(d3)
;
*
.sort
*
#call ApartGetOneOperatorPower(dens,selNull,selDen,Pow,aux1,aux2,aux3,n1,n2)
multiply $Pow - 2;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartGetOneOperatorPower_16 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
symbols n1,n2;
symbols a,b,c,dd;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunctions aux1,...,aux3;
*
local F =
  + d1*d2*d3^3*d4^2
    *dens(d1,d2,d3,d4)
    *selNull(a-b,0,c+dd,1)*selDen(d1)
;
*
.sort
*
#call ApartGetOneOperatorPower(dens,selNull,selDen,Pow,aux1,aux2,aux3,n1,n2)
multiply $Pow - 2;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
