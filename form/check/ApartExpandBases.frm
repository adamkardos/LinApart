*{{{ ApartExpandBases_1 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
local F = APd1*APd2;
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff = F - APd1*APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartExpandBases_2 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
local F = APd1*APd2*basis(APdet(1),1,2);
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff = F - APd1*APd2*basis(APdet(1),1,2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartExpandBases_3 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
local F = APd1*APd2*APd3*basis(APdet(1),1,2)*basis(APdet(-1),2,3);
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*basis(APdet(1),1,2)
    + APd1*APd2*APd3*basis(APdet(-1),2,3)
  )
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
*{{{ ApartExpandBases_4 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
local F = APd1*APd2*APd3*basis(APdet(1),1,2)*basis(APdet(1),1,3)*basis(APdet(-1),2,3);
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*basis(APdet(1),1,2)
    + APd1*APd2*APd3*basis(APdet(1),1,3)
    + APd1*APd2*APd3*basis(APdet(-1),2,3)
  )
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
*{{{ ApartExpandBases_5 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
#Redefine APnumberOfDenominators "4"
*
local F = APd1*APd2*APd3*APd4
  *basis(APdet(1),1,2,3)*basis(APdet(1),1,2,4)
  *basis(APdet(-1),1,3,4)*basis(APdet(1),2,3,4);
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APd4*basis(APdet(1),1,2,3)
    + APd1*APd2*APd3*APd4*basis(APdet(1),1,2,4)
    + APd1*APd2*APd3*APd4*basis(APdet(-1),1,3,4)
    + APd1*APd2*APd3*APd4*basis(APdet(1),2,3,4)
  )
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
*{{{ ApartExpandBases_6 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
local F = APd1^3*APd2^2*APd3*basis(APdet(1),1,2)*basis(APdet(-1),2,3);
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + APd1^3*APd2^2*APd3*basis(APdet(1),1,2)
    + APd1^3*APd2^2*APd3*basis(APdet(-1),2,3)
  )
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
*{{{ ApartExpandBases_7 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
local F = 5*APd1*APd2*APd3*basis(APdet(1),1,2)*basis(APdet(1),1,3);
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + 5*APd1*APd2*APd3*basis(APdet(1),1,2)
    + 5*APd1*APd2*APd3*basis(APdet(1),1,3)
  )
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
*{{{ ApartExpandBases_8 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
local F = -3*APd1*APd2*APd3*basis(APdet(1),1,2)*basis(APdet(-1),2,3);
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    - 3*APd1*APd2*APd3*basis(APdet(1),1,2)
    - 3*APd1*APd2*APd3*basis(APdet(-1),2,3)
  )
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
*{{{ ApartExpandBases_9 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
local F = 1/2*APd1*APd2*APd3*basis(APdet(1),1,2)*basis(APdet(1),1,3);
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + 1/2*APd1*APd2*APd3*basis(APdet(1),1,2)
    + 1/2*APd1*APd2*APd3*basis(APdet(1),1,3)
  )
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
*{{{ ApartExpandBases_10 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
symbols s,t;
*
local F = s^2*t*APd1*APd2*APd3*basis(APdet(1),1,2)*basis(APdet(1),1,3)*basis(APdet(-1),2,3);
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + s^2*t*APd1*APd2*APd3*basis(APdet(1),1,2)
    + s^2*t*APd1*APd2*APd3*basis(APdet(1),1,3)
    + s^2*t*APd1*APd2*APd3*basis(APdet(-1),2,3)
  )
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
*{{{ ApartExpandBases_11 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
#Redefine APnumberOfDenominators "5"
*
local F =
  + APd1*APd2*APd3*basis(APdet(1),1,2)*basis(APdet(-1),2,3)
  + APd4*APd5*basis(APdet(1),4,5)
;
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*basis(APdet(1),1,2)
    + APd1*APd2*APd3*basis(APdet(-1),2,3)
    + APd4*APd5*basis(APdet(1),4,5)
  )
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
*{{{ ApartExpandBases_12 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
#Redefine APnumberOfDenominators "5"
*
local F =
  + APd1*APd2
  + APd3*APd4*APd5*basis(APdet(1),3,4)*basis(APdet(1),3,5)*basis(APdet(-1),4,5)
;
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2
    + APd3*APd4*APd5*basis(APdet(1),3,4)
    + APd3*APd4*APd5*basis(APdet(1),3,5)
    + APd3*APd4*APd5*basis(APdet(-1),4,5)
  )
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
*{{{ ApartExpandBases_13 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
local F = APd1*APd2*APd3*basis(APdet(3),1,3)*basis(APdet(-2),2,3);
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*basis(APdet(3),1,3)
    + APd1*APd2*APd3*basis(APdet(-2),2,3)
  )
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
*{{{ ApartExpandBases_14 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
symbols s;
*
local F = APd1*APd2*APd3*basis(APdet(s),1,2)*basis(APdet(1-s),1,3);
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*basis(APdet(s),1,2)
    + APd1*APd2*APd3*basis(APdet(1-s),1,3)
  )
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
*{{{ ApartExpandBases_15 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
#Redefine APnumberOfDenominators "5"
*
local F = APd1*APd2*APd3*APd4*APd5
  *basis(APdet(1),1,2,3)*basis(APdet(1),1,2,4)*basis(APdet(1),1,2,5)
  *basis(APdet(-1),1,3,4)*basis(APdet(-1),1,3,5)
  *basis(APdet(1),2,3,4)*basis(APdet(1),2,3,5);
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APd4*APd5*basis(APdet(1),1,2,3)
    + APd1*APd2*APd3*APd4*APd5*basis(APdet(1),1,2,4)
    + APd1*APd2*APd3*APd4*APd5*basis(APdet(1),1,2,5)
    + APd1*APd2*APd3*APd4*APd5*basis(APdet(-1),1,3,4)
    + APd1*APd2*APd3*APd4*APd5*basis(APdet(-1),1,3,5)
    + APd1*APd2*APd3*APd4*APd5*basis(APdet(1),2,3,4)
    + APd1*APd2*APd3*APd4*APd5*basis(APdet(1),2,3,5)
  )
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
*{{{ ApartExpandBases_16 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
#Redefine APnumberOfDenominators "6"
*
symbols s;
*
local F =
  + 7*APd1*APd2
  + s*APd1*APd2*APd3*basis(APdet(1),1,2)*basis(APdet(-1),2,3)
  + APd4*APd5*APd6*basis(APdet(1),4,5)*basis(APdet(1),4,6)*basis(APdet(-1),5,6)
;
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + 7*APd1*APd2
    + s*APd1*APd2*APd3*basis(APdet(1),1,2)
    + s*APd1*APd2*APd3*basis(APdet(-1),2,3)
    + APd4*APd5*APd6*basis(APdet(1),4,5)
    + APd4*APd5*APd6*basis(APdet(1),4,6)
    + APd4*APd5*APd6*basis(APdet(-1),5,6)
  )
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
*{{{ ApartExpandBases_17 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
#Redefine APnumberOfDenominators "8"
*
local F = APd2*APd5*APd8*basis(APdet(1),2,5)*basis(APdet(-1),5,8);
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + APd2*APd5*APd8*basis(APdet(1),2,5)
    + APd2*APd5*APd8*basis(APdet(-1),5,8)
  )
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
*{{{ ApartExpandBases_18 :
#include- ../src/formapart.h
*
cfunctions den,basis,aux;
symbols s,t;
symbols n1;
*
local F = (s-t)*den(s+t)*APd1^2*APd2*APd3
  *basis(APdet(1),1,2)*basis(APdet(-1),2,3);
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + (s-t)*den(s+t)*APd1^2*APd2*APd3*basis(APdet(1),1,2)
    + (s-t)*den(s+t)*APd1^2*APd2*APd3*basis(APdet(-1),2,3)
  )
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
*{{{ ApartExpandBases_19 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
local F = APd1^2*APd2^3*basis(APdet(1),1,2);
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff = F - APd1^2*APd2^3*basis(APdet(1),1,2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartExpandBases_20 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
symbols s;
*
local F = 42*s;
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff = F - 42*s;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartExpandBases_21 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
#Redefine APnumberOfDenominators "4"
*
local F = APd1^2*APd3^2*APd4*basis(APdet(1),1,3)*basis(APdet(1),1,4);
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd3^2*APd4*basis(APdet(1),1,3)
    + APd1^2*APd3^2*APd4*basis(APdet(1),1,4)
  )
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
*{{{ ApartExpandBases_22 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
local F =
  + APd1^2*APd2*basis(APdet(1),1,2)
  - APd1^2*APd3*basis(APdet(1),1,3)
  + 2*APd2^2*APd3*basis(APdet(-1),2,3)
  - APd1*APd3^2*basis(APdet(1),1,3)
  + 3*APd2*APd3^2*basis(APdet(-1),2,3)
;
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2*basis(APdet(1),1,2)
    - APd1^2*APd3*basis(APdet(1),1,3)
    + 2*APd2^2*APd3*basis(APdet(-1),2,3)
    - APd1*APd3^2*basis(APdet(1),1,3)
    + 3*APd2*APd3^2*basis(APdet(-1),2,3)
  )
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
*{{{ ApartExpandBases_23 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
#Redefine APnumberOfDenominators "5"
*
local F =
  + APd1^2*APd2*basis(APdet(1),1,2)
  + APd3*APd4*APd5*basis(APdet(1),3,4)*basis(APdet(1),3,5)*basis(APdet(-1),4,5)
  - APd1*APd3*basis(APdet(1),1,3)
;
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2*basis(APdet(1),1,2)
    + APd3*APd4*APd5*basis(APdet(1),3,4)
    + APd3*APd4*APd5*basis(APdet(1),3,5)
    + APd3*APd4*APd5*basis(APdet(-1),4,5)
    - APd1*APd3*basis(APdet(1),1,3)
  )
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
*{{{ ApartExpandBases_24 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
local F = APd1*APd2*APd3*basis(APdet(1000),1,2)*basis(APdet(-999),1,3);
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*basis(APdet(1000),1,2)
    + APd1*APd2*APd3*basis(APdet(-999),1,3)
  )
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
*{{{ ApartExpandBases_25 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
#Redefine APnumberOfDenominators "5"
*
local F = APd1*APd2*APd3*APd4*APd5
  *basis(APdet(1),1,2,3,4)*basis(APdet(1),1,2,3,5)*basis(APdet(-1),1,2,4,5);
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APd4*APd5*basis(APdet(1),1,2,3,4)
    + APd1*APd2*APd3*APd4*APd5*basis(APdet(1),1,2,3,5)
    + APd1*APd2*APd3*APd4*APd5*basis(APdet(-1),1,2,4,5)
  )
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
*{{{ ApartExpandBases_26 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
symbols s,t;
*
local F = s^3*t^2*APd1^5*APd2^4*APd3^3
  *basis(APdet(1),1,2)*basis(APdet(1),1,3)*basis(APdet(-1),2,3);
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + s^3*t^2*APd1^5*APd2^4*APd3^3*basis(APdet(1),1,2)
    + s^3*t^2*APd1^5*APd2^4*APd3^3*basis(APdet(1),1,3)
    + s^3*t^2*APd1^5*APd2^4*APd3^3*basis(APdet(-1),2,3)
  )
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
*{{{ ApartExpandBases_27 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
local F = 0;
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff = F;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartExpandBases_28 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
local F =
  + 2*APd1*APd2*APd3*basis(APdet(1),1,2)*basis(APdet(-1),2,3)
  + 3*APd1*APd2*APd3*basis(APdet(1),1,3)
;
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + 2*APd1*APd2*APd3*basis(APdet(1),1,2)
    + 2*APd1*APd2*APd3*basis(APdet(-1),2,3)
    + 3*APd1*APd2*APd3*basis(APdet(1),1,3)
  )
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
*{{{ ApartExpandBases_29 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
local F =
  + APd1*APd2*APd3*basis(APdet(1),1,2)*basis(APdet(-1),2,3)
  + APd1*APd2*APd3*basis(APdet(1),1,2)*basis(APdet(1),1,3)
;
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + 2*APd1*APd2*APd3*basis(APdet(1),1,2)
    + APd1*APd2*APd3*basis(APdet(-1),2,3)
    + APd1*APd2*APd3*basis(APdet(1),1,3)
  )
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
*{{{ ApartExpandBases_30 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
*
local F = APd1*APd2*APd3*basis(APdet(1),1,2)*basis(APdet(1),1,3)*basis(APdet(-1),2,3);
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local [Fafter1] = F;
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff = F - [Fafter1];
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartExpandBases_31 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
symbols epsilon;
*
local F = APd1*APd2*APd3
  *basis(APdet(1),1,2)
  *basis(APdet(1),1,3)
  *basis(APdet(-1-epsilon),2,3)
;
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*basis(APdet(1),1,2)
    + APd1*APd2*APd3*basis(APdet(1),1,3)
    + APd1*APd2*APd3*basis(APdet(-1-epsilon),2,3)
  )
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
*{{{ ApartExpandBases_32 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
symbols epsilon;
*
local F = APd1*APd2*APd3*APd4
  *basis(APdet(1),1,2)
  *basis(APdet(1),1,3)
  *basis(APdet(1-epsilon),1,4)
  *basis(APdet(-1-epsilon),2,3)
  *basis(APdet(-1),2,4)
  *basis(APdet(-epsilon^2),3,4)
;
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + APd1*APd2*APd3*APd4*basis(APdet(1),1,2)
    + APd1*APd2*APd3*APd4*basis(APdet(1),1,3)
    + APd1*APd2*APd3*APd4*basis(APdet(1-epsilon),1,4)
    + APd1*APd2*APd3*APd4*basis(APdet(-1-epsilon),2,3)
    + APd1*APd2*APd3*APd4*basis(APdet(-1),2,4)
    + APd1*APd2*APd3*APd4*basis(APdet(-epsilon^2),3,4)
  )
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
*{{{ ApartExpandBases_33 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
symbols epsilon;
*
local F = APden(-1-epsilon^2)*APd1*APd2*APd3
  *basis(APdet(1),1,2)
  *basis(APdet(1),1,3)
  *basis(APdet(-1-epsilon),2,3)
;
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + APden(-1-epsilon^2)*APd1*APd2*APd3*basis(APdet(1),1,2)
    + APden(-1-epsilon^2)*APd1*APd2*APd3*basis(APdet(1),1,3)
    + APden(-1-epsilon^2)*APd1*APd2*APd3*basis(APdet(-1-epsilon),2,3)
  )
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
*{{{ ApartExpandBases_34 :
#include- ../src/formapart.h
*
cfunctions basis,aux;
symbols n1;
symbols epsilon;
*
local F =
  + APden(-1-epsilon^2)*APd1^2*APd2*APd3
    *basis(APdet(1),1,2)
    *basis(APdet(1),1,3)
  + (epsilon^2+2*epsilon-1)*APden(epsilon^2-4*epsilon-3)*APd1*APd3*APd4
    *basis(APdet(1),1,3)
    *basis(APdet(1-epsilon),1,4)
    *basis(APdet(-epsilon^2),3,4)
;
.sort
*
#call ApartExpandBases(basis,aux,n1)
*
.sort
*
local diff =
  F
  -
  (
    + APden(-1-epsilon^2)*APd1^2*APd2*APd3*basis(APdet(1),1,2)
    + APden(-1-epsilon^2)*APd1^2*APd2*APd3*basis(APdet(1),1,3)
    + (epsilon^2+2*epsilon-1)*APden(epsilon^2-4*epsilon-3)*APd1*APd3*APd4
      *basis(APdet(1),1,3)
    + (epsilon^2+2*epsilon-1)*APden(epsilon^2-4*epsilon-3)*APd1*APd3*APd4
      *basis(APdet(1-epsilon),1,4)
    + (epsilon^2+2*epsilon-1)*APden(epsilon^2-4*epsilon-3)*APd1*APd3*APd4
      *basis(APdet(-epsilon^2),3,4)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
