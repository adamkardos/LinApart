*{{{ ApartGetBestDenominatorToReplace_1 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1^5*d2^4*d3^3*d4^4;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d3,d2,d4,d1)*d1^5*d2^4*d3^3*d4^4
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_2 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1*d2*d3;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d2,d3)*d1*d2*d3
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_3 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d5^2;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d5)*d5^2
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_4 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = 7;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens()*7
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_5 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1*d2*d3*d4;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d2,d3,d4)*d1*d2*d3*d4
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_6 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1*d5^2*d9^3;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d5,d9)*d1*d5^2*d9^3
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_7 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1^5*d2^4*d3^3*d9;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d9,d3,d2,d1)*d1^5*d2^4*d3^3*d9
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_8 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d3^4*d7^2;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d7,d3)*d3^4*d7^2
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_9 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1^9*d2^8*d3^7*d4^6*d5^5*d6^4*d7^3*d8^2*d9;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d9,d8,d7,d6,d5,d4,d3,d2,d1)
       *d1^9*d2^8*d3^7*d4^6*d5^5*d6^4*d7^3*d8^2*d9
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_10 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1^3*d2*d3^3*d4*d5^3;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d2,d4,d1,d3,d5)*d1^3*d2*d3^3*d4*d5^3
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_11 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1^100*d2^50*d3^200;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d2,d1,d3)*d1^100*d2^50*d3^200
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_12 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1*d2^2*d3*d4^2*d5*d6^2;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d3,d5,d2,d4,d6)*d1*d2^2*d3*d4^2*d5*d6^2
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_13 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1^10*d2*d3*d4;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d2,d3,d4,d1)*d1^10*d2*d3*d4
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_14 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1^3*d2^3*d3^3*d4^3*d5^3*d6^3*d7^3*d8^3*d9^3;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d2,d3,d4,d5,d6,d7,d8,d9)
       *d1^3*d2^3*d3^3*d4^3*d5^3*d6^3*d7^3*d8^3*d9^3
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_15 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d4^5*d5^2*d6^3;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d5,d6,d4)*d4^5*d5^2*d6^3
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_16 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1^3*d2*d3^2*d4*d5^3*d6^2;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d2,d4,d3,d6,d1,d5)*d1^3*d2*d3^2*d4*d5^3*d6^2
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_17 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d3*d7*d1^5*d9^3;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d3,d7,d9,d1)*d3*d7*d1^5*d9^3
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_18 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d5*d1^100*d2^100*d3^100*d4^100*d6^100*d7^100*d8^100*d9^100;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d5,d1,d2,d3,d4,d6,d7,d8,d9)
       *d5*d1^100*d2^100*d3^100*d4^100*d6^100*d7^100*d8^100*d9^100
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_19 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1^1000*d2;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d2,d1)*d1^1000*d2
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_20 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1*d2^2*d3*d4^2*d5*d6^2*d7*d8^2*d9;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d3,d5,d7,d9,d2,d4,d6,d8)
       *d1*d2^2*d3*d4^2*d5*d6^2*d7*d8^2*d9
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_21 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1^7*d2^7*d3^7*d4^7*d5^7*d6*d7^7*d8^7*d9^7;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d6,d1,d2,d3,d4,d5,d7,d8,d9)
       *d1^7*d2^7*d3^7*d4^7*d5^7*d6*d7^7*d8^7*d9^7
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_22 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1^2*d2^5*d3^2*d4^5*d5^2*d6^5*d7^2*d8^5;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d3,d5,d7,d2,d4,d6,d8)
       *d1^2*d2^5*d3^2*d4^5*d5^2*d6^5*d7^2*d8^5
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_23 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d3^10*d5^5*d7;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d7,d5,d3)*d3^10*d5^5*d7
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_24 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1^5*d2^3*d3*d4^3*d5^5;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d3,d2,d4,d1,d5)*d1^5*d2^3*d3*d4^3*d5^5
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_25 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1^100;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1)*d1^100
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_26 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d9^100;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d9)*d9^100
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_27 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1^3*d9^5;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d9)*d1^3*d9^5
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_28 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1*d2^2*d3^3*d4^2*d5;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d5,d2,d4,d3)*d1*d2^2*d3^3*d4^2*d5
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_29 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1*d2*d3^2*d4^2*d5^3*d6^3;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d2,d3,d4,d5,d6)*d1*d2*d3^2*d4^2*d5^3*d6^3
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_30 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1^4*d2^2*d3^6*d4*d5^3*d6^5*d7^7;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d4,d2,d5,d1,d6,d3,d7)
       *d1^4*d2^2*d3^6*d4*d5^3*d6^5*d7^7
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_31 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d2^5*d4*d6^3*d8^4*d9^2;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d4,d9,d6,d8,d2)*d2^5*d4*d6^3*d8^4*d9^2
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_32 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1*d2*d3^2*d4^3*d5^5*d6^8*d7^13;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d2,d3,d4,d5,d6,d7)
       *d1*d2*d3^2*d4^3*d5^5*d6^8*d7^13
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_33 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1^2*d2^3*d3^5*d4^7*d5^11;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d2,d3,d4,d5)*d1^2*d2^3*d3^5*d4^7*d5^11
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_34 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1^7*d2^3*d3^7*d4^3*d5^7*d6^3*d7^7*d8^3;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d2,d4,d6,d8,d1,d3,d5,d7)
       *d1^7*d2^3*d3^7*d4^3*d5^7*d6^3*d7^7*d8^3
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_35 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1*d2^2*d3^3*d4^4*d5^3*d6^2*d7;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d7,d2,d6,d3,d5,d4)
       *d1*d2^2*d3^3*d4^4*d5^3*d6^2*d7
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_36 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
local F = d1^5*d2^5*d3*d4^5*d5^5*d6*d7^5*d8^5*d9^5;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d3,d6,d1,d2,d4,d5,d7,d8,d9)
       *d1^5*d2^5*d3*d4^5*d5^5*d6*d7^5*d8^5*d9^5
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_37 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "5"
#Redefine APglobalOrder "1"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
Fill APpermTbl(1) = 3;
Fill APpermTbl(2) = 5;
Fill APpermTbl(3) = 1;
Fill APpermTbl(4) = 4;
Fill APpermTbl(5) = 2;
*
local F = d1^5*d2^4*d3^3*d4^4*d5^2;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d3,d5,d1,d4,d2)*d1^5*d2^4*d3^3*d4^4*d5^2
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_38 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "5"
#Redefine APglobalOrder "1"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
Fill APpermTbl(1) = 3;
Fill APpermTbl(2) = 5;
Fill APpermTbl(3) = 1;
Fill APpermTbl(4) = 4;
Fill APpermTbl(5) = 2;
*
local F = d1^2*d3^4*d5;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d3,d5,d1)*d1^2*d3^4*d5
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_39 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "5"
#Redefine APglobalOrder "0"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
Fill APpermTbl(1) = 3;
Fill APpermTbl(2) = 5;
Fill APpermTbl(3) = 1;
Fill APpermTbl(4) = 4;
Fill APpermTbl(5) = 2;
*
local F = d1^5*d2^4*d3^3*d4^4;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d3,d2,d4,d1)*d1^5*d2^4*d3^3*d4^4
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_40 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "5"
#Redefine APglobalOrder "1"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
Fill APpermTbl(1) = 1;
Fill APpermTbl(2) = 2;
Fill APpermTbl(3) = 3;
Fill APpermTbl(4) = 4;
Fill APpermTbl(5) = 5;
*
local F = d2^3*d4*d5^2;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d2,d4,d5)*d2^3*d4*d5^2
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_41 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
#Redefine APglobalOrder "1"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
Fill APpermTbl(1) = 9;
Fill APpermTbl(2) = 1;
Fill APpermTbl(3) = 8;
Fill APpermTbl(4) = 2;
Fill APpermTbl(5) = 7;
Fill APpermTbl(6) = 3;
Fill APpermTbl(7) = 6;
Fill APpermTbl(8) = 4;
Fill APpermTbl(9) = 5;
*
local F = d1^2*d2^3*d3*d4^4*d5^5*d6^2*d7*d8^3*d9;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d9,d1,d8,d2,d7,d3,d6,d4,d5)
       *d1^2*d2^3*d3*d4^4*d5^5*d6^2*d7*d8^3*d9
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_42 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "9"
#Redefine APglobalOrder "1"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
Fill APpermTbl(1) = 9;
Fill APpermTbl(2) = 1;
Fill APpermTbl(3) = 8;
Fill APpermTbl(4) = 2;
Fill APpermTbl(5) = 7;
Fill APpermTbl(6) = 3;
Fill APpermTbl(7) = 6;
Fill APpermTbl(8) = 4;
Fill APpermTbl(9) = 5;
*
local F = d2*d5^3*d7^2*d9;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d9,d2,d7,d5)*d2*d5^3*d7^2*d9
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_43 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "5"
#Redefine APglobalOrder "1"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
Fill APpermTbl(1) = 5;
Fill APpermTbl(2) = 4;
Fill APpermTbl(3) = 3;
Fill APpermTbl(4) = 2;
Fill APpermTbl(5) = 1;
*
local F = d1^2*d2^3*d3*d4^4*d5^5;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d5,d4,d3,d2,d1)*d1^2*d2^3*d3*d4^4*d5^5
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_44 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "5"
#Redefine APglobalOrder "1"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
Fill APpermTbl(1) = 3;
Fill APpermTbl(2) = 5;
Fill APpermTbl(3) = 1;
Fill APpermTbl(4) = 4;
Fill APpermTbl(5) = 2;
*
local F = d3^7;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d3)*d3^7
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_45 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "5"
#Redefine APglobalOrder "1"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
Fill APpermTbl(1) = 3;
Fill APpermTbl(2) = 5;
Fill APpermTbl(3) = 1;
Fill APpermTbl(4) = 4;
Fill APpermTbl(5) = 2;
*
local F = d4*d2;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d4,d2)*d4*d2
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_46 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "4"
#Redefine APglobalOrder "1"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
Fill APpermTbl(1) = 2;
Fill APpermTbl(2) = 4;
Fill APpermTbl(3) = 1;
Fill APpermTbl(4) = 3;
*
local F = d1^100*d2*d3^50*d4^7;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d2,d4,d1,d3)*d1^100*d2*d3^50*d4^7
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_47 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "5"
#Redefine APglobalOrder "1"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
Fill APpermTbl(1) = 1;
Fill APpermTbl(2) = 2;
Fill APpermTbl(3) = 3;
Fill APpermTbl(4) = 4;
Fill APpermTbl(5) = 5;
*
local F = d1^3*d2*d3^5*d4^2*d5^4;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d2,d3,d4,d5)*d1^3*d2*d3^5*d4^2*d5^4
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_48 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "6"
#Redefine APglobalOrder "1"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
Fill APpermTbl(1) = 4;
Fill APpermTbl(2) = 5;
Fill APpermTbl(3) = 6;
Fill APpermTbl(4) = 1;
Fill APpermTbl(5) = 2;
Fill APpermTbl(6) = 3;
*
local F = d1*d2*d3*d4*d5*d6;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d4,d5,d6,d1,d2,d3)*d1*d2*d3*d4*d5*d6
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_49 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "6"
#Redefine APglobalOrder "1"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
Fill APpermTbl(1) = 6;
Fill APpermTbl(2) = 5;
Fill APpermTbl(3) = 4;
Fill APpermTbl(4) = 3;
Fill APpermTbl(5) = 2;
Fill APpermTbl(6) = 1;
*
local F = d1*d3*d5;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d5,d3,d1)*d1*d3*d5
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetBestDenominatorToReplace_50 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "7"
#Redefine APglobalOrder "1"
*
symbols d1,...,d`APnumberOfDenominators';
symbols n1,n2,n3,n4;
set dset : d1,...,d`APnumberOfDenominators';
cfunction dens;
cfunction mult;
cfunctions aux1,...,aux6;
*
Fill APpermTbl(1) = 7;
Fill APpermTbl(2) = 3;
Fill APpermTbl(3) = 5;
Fill APpermTbl(4) = 1;
Fill APpermTbl(5) = 6;
Fill APpermTbl(6) = 2;
Fill APpermTbl(7) = 4;
*
local F = d1*d2*d4*d7;
*
.sort
*
#call ApartGetBestDenominatorToReplace(dset,dens,mult,aux1,...,aux6,n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d7,d1,d2,d4)*d1*d2*d4*d7
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
