*{{{ ApartSingleTaylorExpand_1 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(1,1)*Ordo(w,0);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff = F - den(1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSingleTaylorExpand_2 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(3,1)*Ordo(w,2);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(3)*Ordo(w,2)
    - den(3)^2*w*Ordo(w,1)
    + den(3)^3*w^2  )
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
*{{{ ApartSingleTaylorExpand_3 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2,1)^2*Ordo(w,1);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)^2*Ordo(w,1)
    - 2*den(2)^3*w  )
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
*{{{ ApartSingleTaylorExpand_4 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2,-1)*Ordo(w,1);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)*Ordo(w,1)
    + den(2)^2*w  )
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
*{{{ ApartSingleTaylorExpand_5 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2,1)^3*Ordo(w,2);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)^3*Ordo(w,2)
    - 3*den(2)^4*w*Ordo(w,1)
    + 6*den(2)^5*w^2  )
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
*{{{ ApartSingleTaylorExpand_6 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(3,2)^2*Ordo(w,2);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(3)^2*Ordo(w,2)
    - 4*den(3)^3*w*Ordo(w,1)
    + 12*den(3)^4*w^2  )
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
*{{{ ApartSingleTaylorExpand_7 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(3,0)*Ordo(w,2);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff = F - den(3)*Ordo(w,2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSingleTaylorExpand_8 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = 7*den(2,1)*Ordo(w,1);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + 7*den(2)*Ordo(w,1)
    - 7*den(2)^2*w  )
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
*{{{ ApartSingleTaylorExpand_9 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,a,n1,n2,n3;
*
local F = den(a,1)*Ordo(w,1);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(a)*Ordo(w,1)
    - den(a)^2*w  )
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
*{{{ ApartSingleTaylorExpand_10 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,a,s,n1,n2,n3;
*
local F = den(a,s)*Ordo(w,2);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(a)*Ordo(w,2)
    - s*den(a)^2*w*Ordo(w,1)
    + s^2*den(a)^3*w^2  )
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
*{{{ ApartSingleTaylorExpand_11 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w1,w2,n1,n2,n3;
*
local F = den(w2+1,1)*Ordo(w1,1);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(w2+1)*Ordo(w1,1)
    - den(w2+1)^2*w1  )
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
*{{{ ApartSingleTaylorExpand_12 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(1,1)*Ordo(w,4);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(1)*Ordo(w,4)
    - den(1)^2*w*Ordo(w,3)
    + den(1)^3*w^2*Ordo(w,2)
    - den(1)^4*w^3*Ordo(w,1)
    + den(1)^5*w^4  )
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
*{{{ ApartSingleTaylorExpand_13 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(5,-3)^2*Ordo(w,2);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(5)^2*Ordo(w,2)
    + 6*den(5)^3*w*Ordo(w,1)
    + 27*den(5)^4*w^2  )
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
*{{{ ApartSingleTaylorExpand_14 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(3,2)*den(5)*Ordo(w,1);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(3)*den(5)*Ordo(w,1)
    - 2*den(3)^2*den(5)*w  )
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
*{{{ ApartSingleTaylorExpand_15 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = 1/3*den(2,1)*Ordo(w,1);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + 1/3*den(2)*Ordo(w,1)
    - 1/3*den(2)^2*w  )
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
*{{{ ApartSingleTaylorExpand_16 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2,1)^4*Ordo(w,1);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)^4*Ordo(w,1)
    - 4*den(2)^5*w  )
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
*{{{ ApartSingleTaylorExpand_17 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(3,2)^3*Ordo(w,4);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(3)^3*Ordo(w,4)
    - 6*den(3)^4*w*Ordo(w,3)
    + 24*den(3)^5*w^2*Ordo(w,2)
    - 80*den(3)^6*w^3*Ordo(w,1)
    + 240*den(3)^7*w^4
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
*{{{ ApartSingleTaylorExpand_18 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(1,1)^5*Ordo(w,3);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(1)^5*Ordo(w,3)
    - 5*den(1)^6*w*Ordo(w,2)
    + 15*den(1)^7*w^2*Ordo(w,1)
    - 35*den(1)^8*w^3
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
*{{{ ApartSingleTaylorExpand_19 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,a,s,n1,n2,n3;
*
local F = den(a,s)^2*Ordo(w,3);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(a)^2*Ordo(w,3)
    - 2*s*den(a)^3*w*Ordo(w,2)
    + 3*s^2*den(a)^4*w^2*Ordo(w,1)
    - 4*s^3*den(a)^5*w^3
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
*{{{ ApartSingleTaylorExpand_20 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,s,t,n1,n2,n3;
*
local F = den(s+t,s-t)*Ordo(w,2);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(s+t)*Ordo(w,2)
    + (t-s)*den(s+t)^2*w*Ordo(w,1)
    + (s-t)^2*den(s+t)^3*w^2
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
*{{{ ApartSingleTaylorExpand_21 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = w*den(3,2)*Ordo(w,2);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + w*den(3)*Ordo(w,2)
    - 2*w^2*den(3)^2*Ordo(w,1)
    + 4*w^3*den(3)^3
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
*{{{ ApartSingleTaylorExpand_22 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(100,1)*Ordo(w,3);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(100)*Ordo(w,3)
    - den(100)^2*w*Ordo(w,2)
    + den(100)^3*w^2*Ordo(w,1)
    - den(100)^4*w^3
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
*{{{ ApartSingleTaylorExpand_23 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(1,100)*Ordo(w,2);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(1)*Ordo(w,2)
    - 100*den(1)^2*w*Ordo(w,1)
    + 10000*den(1)^3*w^2
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
*{{{ ApartSingleTaylorExpand_24 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(7,3)^2*Ordo(w,3);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(7)^2*Ordo(w,3)
    - 6*den(7)^3*w*Ordo(w,2)
    + 27*den(7)^4*w^2*Ordo(w,1)
    - 108*den(7)^5*w^3
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
*{{{ ApartSingleTaylorExpand_25 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,s,n1,n2,n3;
*
local F = -s*den(2,3)^2*Ordo(w,1);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    - s*den(2)^2*Ordo(w,1)
    + 6*s*den(2)^3*w
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
*{{{ ApartSingleTaylorExpand_26 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2)^3*den(5)*den(3,1)*Ordo(w,1);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)^3*den(5)*den(3)*Ordo(w,1)
    - den(2)^3*den(5)*den(3)^2*w
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
*{{{ ApartSingleTaylorExpand_27 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2,1)*den(5,3)*Ordo(w,2);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)*den(5,3)*Ordo(w,2)
    - den(2)^2*den(5,3)*w*Ordo(w,1)
    + den(2)^3*den(5,3)*w^2
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
*{{{ ApartSingleTaylorExpand_28 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w1,w2,w3,n1,n2,n3;
*
local F = den(w2+w3+1,2)*Ordo(w1,2);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(w2+w3+1)*Ordo(w1,2)
    - 2*den(w2+w3+1)^2*w1*Ordo(w1,1)
    + 4*den(w2+w3+1)^3*w1^2
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
*{{{ ApartSingleTaylorExpand_29 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(-1,1)*Ordo(w,2);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(-1)*Ordo(w,2)
    - den(-1)^2*w*Ordo(w,1)
    + den(-1)^3*w^2
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
*{{{ ApartSingleTaylorExpand_30 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = 3*den(2,1)*Ordo(w,1) - den(5,-2)*Ordo(w,1);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + 3*den(2)*Ordo(w,1) - 3*den(2)^2*w
    - den(5)*Ordo(w,1) - 2*den(5)^2*w
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
*{{{ ApartSingleTaylorExpand_31 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,s,n1,n2,n3;
*
local F = den(2,s)^3*Ordo(w,2);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)^3*Ordo(w,2)
    - 3*s*den(2)^4*w*Ordo(w,1)
    + 6*s^2*den(2)^5*w^2
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
*{{{ ApartSingleTaylorExpand_32 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,s,t,n1,n2,n3;
*
local F = den(3,s+t)*Ordo(w,2);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(3)*Ordo(w,2)
    - (s+t)*den(3)^2*w*Ordo(w,1)
    + (s+t)^2*den(3)^3*w^2
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
*{{{ ApartSingleTaylorExpand_33 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,s,t,n1,n2,n3;
*
local F = den(s+1,t-1)^2*Ordo(w,3);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(s+1)^2*Ordo(w,3)
    + 2*(1-t)*den(s+1)^3*w*Ordo(w,2)
    + 3*(1-t)^2*den(s+1)^4*w^2*Ordo(w,1)
    + 4*(1-t)^3*den(s+1)^5*w^3
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
*{{{ ApartSingleTaylorExpand_34 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,s,t,u,n1,n2,n3;
*
local F = den(s+t+u,1)*Ordo(w,2);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(s+t+u)*Ordo(w,2)
    - den(s+t+u)^2*w*Ordo(w,1)
    + den(s+t+u)^3*w^2
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
*{{{ ApartSingleTaylorExpand_35 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,s,t,n1,n2,n3;
*
local F = den(s*t,1)*Ordo(w,1);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(s*t)*Ordo(w,1)
    - den(s*t)^2*w
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
*{{{ ApartSingleTaylorExpand_36 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,s,t,n1,n2,n3;
*
local F = den(2,s*t)^2*Ordo(w,2);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)^2*Ordo(w,2)
    - 2*s*t*den(2)^3*w*Ordo(w,1)
    + 3*s^2*t^2*den(2)^4*w^2
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
*{{{ ApartSingleTaylorExpand_37 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w1,w2,w3,s,n1,n2,n3;
*
local F = den(w2^2+w3,s)*Ordo(w1,1);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(w2^2+w3)*Ordo(w1,1)
    - s*den(w2^2+w3)^2*w1
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
*{{{ ApartSingleTaylorExpand_38 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,a,s,n1,n2,n3;
*
local F = den(a,-s)^3*Ordo(w,2);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(a)^3*Ordo(w,2)
    + 3*s*den(a)^4*w*Ordo(w,1)
    + 6*s^2*den(a)^5*w^2
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
*{{{ ApartSingleTaylorExpand_39 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(3,1)*Ordo(w,2);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,-1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(3)*Ordo(w,2)
    - den(3)^2*w^-1*Ordo(w,1)
    + den(3)^3*w^-2
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
*{{{ ApartSingleTaylorExpand_40 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2,1)^2*Ordo(w,1);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,-1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)^2*Ordo(w,1)
    - 2*den(2)^3*w^-1
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
*{{{ ApartSingleTaylorExpand_41 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2,-1)*Ordo(w,1);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,-1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)*Ordo(w,1)
    + den(2)^2*w^-1
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
*{{{ ApartSingleTaylorExpand_42 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = APd1^2*den(3,1)*Ordo(APd1,1);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,-1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*den(3)*Ordo(APd1,1)
    - APd1*den(3)^2
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
*{{{ ApartSingleTaylorExpand_43 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,a,s,n1,n2,n3;
*
local F = den(a,s)*Ordo(w,2);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,-1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(a)*Ordo(w,2)
    - s*den(a)^2*w^-1*Ordo(w,1)
    + s^2*den(a)^3*w^-2
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
*{{{ ApartSingleTaylorExpand_44 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,epsilon,n1,n2,n3;
*
local F = den(2*epsilon+1,1)*Ordo(w,0);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff = F - den(2*epsilon+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartSingleTaylorExpand_45 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,epsilon,n1,n2,n3;
*
local F = den(2*epsilon+1,1+epsilon)*Ordo(w,1);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2*epsilon+1)*Ordo(w,1)
    - (1+epsilon)*den(2*epsilon+1)^2*w
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
*{{{ ApartSingleTaylorExpand_46 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,epsilon,n1,n2,n3;
*
local F = den(2*epsilon+1,1+epsilon)*Ordo(w,2);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2*epsilon+1)*Ordo(w,2)
    - (1+epsilon)*den(2*epsilon+1)^2*w*Ordo(w,1)
    + (1+epsilon)^2*den(2*epsilon+1)^3*w^2
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
*{{{ ApartSingleTaylorExpand_47 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,epsilon,n1,n2,n3;
*
local F = den(2*epsilon+1,1+epsilon)*Ordo(w,1);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,-1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2*epsilon+1)*Ordo(w,1)
    - (1+epsilon)*den(2*epsilon+1)^2*w^-1
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
*{{{ ApartSingleTaylorExpand_48 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,epsilon,n1,n2,n3;
*
local F = den(2*epsilon+1,1)^2*Ordo(w,1);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2*epsilon+1)^2*Ordo(w,1)
    - 2*den(2*epsilon+1)^3*w
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
*{{{ ApartSingleTaylorExpand_49 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,epsilon,n1,n2,n3;
*
local F = den(1+epsilon^2,epsilon)*Ordo(w,1);
.sort
*
#call ApartSingleTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(1+epsilon^2)*Ordo(w,1)
    - epsilon*den(1+epsilon^2)^2*w
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
