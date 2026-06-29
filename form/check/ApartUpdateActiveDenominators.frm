*{{{ ApartUpdateActiveDenominators_1 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - dens(d1,d2,d3)*d1*d2*d3
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
*{{{ ApartUpdateActiveDenominators_2 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = dens(d1,d2,d3)*d1^2*d2;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - dens(d1,d2)*d1^2*d2
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
*{{{ ApartUpdateActiveDenominators_3 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = dens(d1,d2,d3)*d1*d3;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - dens(d1,d3)*d1*d3
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
*{{{ ApartUpdateActiveDenominators_4 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = dens(d1,d2,d3)*d1^3;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - dens(d1)*d1^3
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
*{{{ ApartUpdateActiveDenominators_5 :
#include- ../src/formapart.h
*
symbols d1,d2;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2;
symbols n1,n2;
*
local F = dens(d1,d2)*d1*d2^3;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - dens(d1,d2)*d1*d2^3
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
*{{{ ApartUpdateActiveDenominators_6 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = dens(d1,d2,d3)*(d1^2*d2 - d1^2*d3);
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d2)*d1^2*d2
    - dens(d1,d3)*d1^2*d3
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
*{{{ ApartUpdateActiveDenominators_7 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = dens(d1,d2,d3)*d2*d3^2;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - dens(d2,d3)*d2*d3^2
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
*{{{ ApartUpdateActiveDenominators_8 :
#include- ../src/formapart.h
*
symbols d1;
cfunctions dens,aux;
cfunctions sig;
set dset : d1;
symbols n1,n2;
*
local F = dens(d1)*d1^5;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - dens(d1)*d1^5
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
*{{{ ApartUpdateActiveDenominators_9 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3,d4;
symbols n1,n2;
*
local F = dens(d1,d2,d3,d4)*d2^2*d4;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - dens(d2,d4)*d2^2*d4
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
*{{{ ApartUpdateActiveDenominators_10 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3,d4;
symbols n1,n2;
*
local F = dens(d1,d2,d3,d4)*d1^3*d2^2*d3*d4^4;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - dens(d1,d2,d3,d4)*d1^3*d2^2*d3*d4^4
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
*{{{ ApartUpdateActiveDenominators_11 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3,d4,d5;
symbols n1,n2;
*
local F = dens(d1,d2,d3,d4,d5)*d5^2;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - dens(d5)*d5^2
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
*{{{ ApartUpdateActiveDenominators_12 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3,d4,d5;
symbols n1,n2;
*
local F = dens(d1,d2,d3,d4,d5)*d1*d3^2*d5;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - dens(d1,d3,d5)*d1*d3^2*d5
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
*{{{ ApartUpdateActiveDenominators_13 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5,d6;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3,d4,d5,d6;
symbols n1,n2;
*
local F = dens(d1,d2,d3,d4,d5,d6)*d3*d4^3;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - dens(d3,d4)*d3*d4^3
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
*{{{ ApartUpdateActiveDenominators_14 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = 3*dens(d1,d2,d3)*d1*d2;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - 3*dens(d1,d2)*d1*d2
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
*{{{ ApartUpdateActiveDenominators_15 :
#include- ../src/formapart.h
*
symbols d1,d2;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2;
symbols n1,n2;
*
local F = -2*dens(d1,d2)*d1^3;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - (-2*dens(d1)*d1^3)
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
*{{{ ApartUpdateActiveDenominators_16 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = 1/3*dens(d1,d2,d3)*d2*d3;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - 1/3*dens(d2,d3)*d2*d3
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
*{{{ ApartUpdateActiveDenominators_17 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5,d6,d7,d8;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3,d4,d5,d6,d7,d8;
symbols n1,n2;
*
local F = dens(d1,d2,d3,d4,d5,d6,d7,d8)*d1^2*d8;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - dens(d1,d8)*d1^2*d8
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
*{{{ ApartUpdateActiveDenominators_18 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5,d6,d7,d8;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3,d4,d5,d6,d7,d8;
symbols n1,n2;
*
local F = dens(d1,d2,d3,d4,d5,d6,d7,d8)*d1*d2^2*d3*d4^3*d5*d6^2*d7*d8^4;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - dens(d1,d2,d3,d4,d5,d6,d7,d8)*d1*d2^2*d3*d4^3*d5*d6^2*d7*d8^4
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
*{{{ ApartUpdateActiveDenominators_19 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3,d4;
symbols n1,n2;
*
local F = dens(d1,d2,d3,d4)*(d1*d2 + d3*d4 - d1*d4);
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d2)*d1*d2
    + dens(d3,d4)*d3*d4
    - dens(d1,d4)*d1*d4
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
*{{{ ApartUpdateActiveDenominators_20 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = dens(d1,d2,d3)*(d1^2*d3 + 2*d1*d3^2);
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F
  -
  dens(d1,d3)*(d1^2*d3 + 2*d1*d3^2)
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
*{{{ ApartUpdateActiveDenominators_21 :
#include- ../src/formapart.h
*
symbols d2,d5,d8;
cfunctions dens,aux;
cfunctions sig;
set dset : d2,d5,d8;
symbols n1,n2;
*
local F = dens(d2,d5,d8)*d2*d8^3;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - dens(d2,d8)*d2*d8^3
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
*{{{ ApartUpdateActiveDenominators_22 :
#include- ../src/formapart.h
*
symbols d3,d7,d11;
cfunctions dens,aux;
cfunctions sig;
set dset : d3,d7,d11;
symbols n1,n2;
*
local F = dens(d3,d7,d11)*d3^2*d7*d11;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - dens(d3,d7,d11)*d3^2*d7*d11
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
*{{{ ApartUpdateActiveDenominators_23 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3,d4;
symbols n1,n2;
*
local F = dens(d1,d2,d3,d4)*d2^10;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - dens(d2)*d2^10
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
*{{{ ApartUpdateActiveDenominators_24 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,s;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = s*dens(d1,d2,d3)*d1*d3;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - s*dens(d1,d3)*d1*d3
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
*{{{ ApartUpdateActiveDenominators_25 :
#include- ../src/formapart.h
*
symbols d1,d2,s,t;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2;
symbols n1,n2;
*
local F = s*t*dens(d1,d2)*d2^3;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - s*t*dens(d2)*d2^3
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
*{{{ ApartUpdateActiveDenominators_26 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5,d6,d7,d8,d9,d10;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3,d4,d5,d6,d7,d8,d9,d10;
symbols n1,n2;
*
local F = dens(d1,d2,d3,d4,d5,d6,d7,d8,d9,d10)*d2*d4*d6*d8*d10;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - dens(d2,d4,d6,d8,d10)*d2*d4*d6*d8*d10
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
*{{{ ApartUpdateActiveDenominators_27 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3,d4,d5;
symbols n1,n2;
*
local F = dens(d1,d2,d3,d4,d5)*(d1*d2*d3 - d2*d4*d5 + d1*d5 - d3^2*d4);
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d2,d3)*d1*d2*d3
    - dens(d2,d4,d5)*d2*d4*d5
    + dens(d1,d5)*d1*d5
    - dens(d3,d4)*d3^2*d4
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
*{{{ ApartUpdateActiveDenominators_28 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = dens(d1,d2,d3)*(d1^2*d2 - d1^2*d3 + 3*d1*d2^2 - 3*d1*d2*d3);
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d2)*d1^2*d2
    - dens(d1,d3)*d1^2*d3
    + 3*dens(d1,d2)*d1*d2^2
    - 3*dens(d1,d2,d3)*d1*d2*d3
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
*{{{ ApartUpdateActiveDenominators_29 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3,d4;
symbols n1,n2;
*
local F = dens(d1,d2,d3,d4)*d3;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - dens(d3)*d3
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
*{{{ ApartUpdateActiveDenominators_30 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
cfunctions foo,bar;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = foo(d1,d2,d3)*d1*d3;
.sort
*
#call ApartUpdateActiveDenominators(foo,sig,bar,dset,n1,n2)
*
.sort
*
local diff =
  F - foo(d1,d3)*d1*d3
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
*{{{ ApartUpdateActiveDenominators_31 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,s,t;
cfunctions dens,aux,den;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = den(s+t)*dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - den(s+t)*dens(d1,d2,d3)*d1*d2*d3
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
*{{{ ApartUpdateActiveDenominators_32 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,s,t;
cfunctions dens,aux,den;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = den(s+t)*dens(d1,d2,d3)*d1^2*d2;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - den(s+t)*dens(d1,d2)*d1^2*d2
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
*{{{ ApartUpdateActiveDenominators_33 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,epsilon;
cfunctions dens,aux,den;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = den(1+epsilon^2)*dens(d1,d2,d3)*d1^2*d3;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - den(1+epsilon^2)*dens(d1,d3)*d1^2*d3
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
*{{{ ApartUpdateActiveDenominators_34 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,epsilon;
cfunctions dens,aux,den;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = den(-1-epsilon^2)*dens(d1,d2,d3)*d1^2*d2;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - den(-1-epsilon^2)*dens(d1,d2)*d1^2*d2
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
*{{{ ApartUpdateActiveDenominators_35 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,s;
cfunctions dens,aux,den;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = den(s)*dens(d1,d2,d3)*(d1^2*d2 - d1^2*d3);
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F
  -
  (
    + den(s)*dens(d1,d2)*d1^2*d2
    - den(s)*dens(d1,d3)*d1^2*d3
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
*{{{ ApartUpdateActiveDenominators_36 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5,epsilon;
cfunctions dens,aux,den;
cfunctions sig;
set dset : d1,d2,d3,d4,d5;
symbols n1,n2;
*
local F = den(epsilon^2-4*epsilon-3)*dens(d1,d2,d3,d4,d5)*
  (
    + (epsilon^2+2*epsilon-1)*d1^2*d3*d4*d5
    - epsilon*d1^2*d2*d4*d5
    - d1^2*d2*d3*d5
  );
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F
  -
  (
    + (epsilon^2+2*epsilon-1)*den(epsilon^2-4*epsilon-3)*dens(d1,d3,d4,d5)*d1^2*d3*d4*d5
    - epsilon*den(epsilon^2-4*epsilon-3)*dens(d1,d2,d4,d5)*d1^2*d2*d4*d5
    - den(epsilon^2-4*epsilon-3)*dens(d1,d2,d3,d5)*d1^2*d2*d3*d5
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
*{{{ ApartUpdateActiveDenominators_37 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,s,t;
cfunctions dens,aux,den;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = den(s+t)*den(s-t)*dens(d1,d2,d3)*d1^2*d3;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - den(s+t)*den(s-t)*dens(d1,d3)*d1^2*d3
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
*{{{ ApartUpdateActiveDenominators_38 :
#include- ../src/formapart.h
*
symbols d1,d2,s;
cfunctions dens,aux,den;
cfunctions sig;
set dset : d1,d2;
symbols n1,n2;
*
local F = s*den(s)*dens(d1,d2)*d1^2;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - s*den(s)*dens(d1)*d1^2
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
*{{{ ApartUpdateActiveDenominators_39 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,epsilon;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = APden(-1-epsilon^2)*dens(d1,d2,d3)*d1^2*d3;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F - APden(-1-epsilon^2)*dens(d1,d3)*d1^2*d3
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
*{{{ ApartUpdateActiveDenominators_40 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5,epsilon;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3,d4,d5;
symbols n1,n2;
*
local F = APden(epsilon^2-4*epsilon-3)*dens(d1,d2,d3,d4,d5)*
  (
    + (epsilon^2+2*epsilon-1)*d1^2*d3*d4*d5
    - epsilon*d1^2*d2*d4*d5
    - d1^2*d2*d3*d5
  );
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
  F
  -
  (
    + (epsilon^2+2*epsilon-1)*APden(epsilon^2-4*epsilon-3)*dens(d1,d3,d4,d5)*d1^2*d3*d4*d5
    - epsilon*APden(epsilon^2-4*epsilon-3)*dens(d1,d2,d4,d5)*d1^2*d2*d4*d5
    - APden(epsilon^2-4*epsilon-3)*dens(d1,d2,d3,d5)*d1^2*d2*d3*d5
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
*{{{ ApartUpdateActiveDenominators_41 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = sig(1,1,1)*dens(d1,d2,d3)*d1*d2;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff = F - sig(1,1,0)*dens(d1,d2)*d1*d2;
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartUpdateActiveDenominators_42 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3,d4;
symbols n1,n2;
*
local F = sig(1,1,1,1)*dens(d1,d2,d3,d4)*d1*d4;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff = F - sig(1,0,0,1)*dens(d1,d4)*d1*d4;
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartUpdateActiveDenominators_43 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = sig(1,1,1)*dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff = F - sig(1,1,1)*dens(d1,d2,d3)*d1*d2*d3;
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartUpdateActiveDenominators_44 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F =
    sig(1,1,1)*dens(d1,d2,d3)*d1*d2
  + sig(1,1,1)*dens(d1,d2,d3)*d2*d3 ;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff =
    F
  - sig(1,1,0)*dens(d1,d2)*d1*d2
  - sig(0,1,1)*dens(d2,d3)*d2*d3 ;
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartUpdateActiveDenominators_45 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5;
cfunctions dens,aux;
cfunctions sig;
set dset : d1,d2,d3,d4,d5;
symbols n1,n2;
*
local F = sig(1,0,1,0,1)*dens(d1,d3,d5)*d1*d5;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff = F - sig(1,0,0,0,1)*dens(d1,d5)*d1*d5;
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartUpdateActiveDenominators_46 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,s,eps;
cfunctions dens,aux,APden;
cfunctions sig;
set dset : d1,d2,d3;
symbols n1,n2;
*
local F = 3*s^2*APden(eps+1)*sig(1,1,1)*dens(d1,d2,d3)*d1*d3;
.sort
*
#call ApartUpdateActiveDenominators(dens,sig,aux,dset,n1,n2)
*
.sort
*
local diff = F - 3*s^2*APden(eps+1)*sig(1,0,1)*dens(d1,d3)*d1*d3;
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
