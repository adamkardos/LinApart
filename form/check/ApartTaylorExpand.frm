*{{{ ApartTaylorExpand_1 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(3,1)*Ordo(w,2);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(3)
    - den(3)^2*w
    + den(3)^3*w^2
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
*{{{ ApartTaylorExpand_2 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2,1)*den(3,1)*Ordo(w,0);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff = F - den(2)*den(3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTaylorExpand_3 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2,1)*den(3,1)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)*den(3)
    - den(2)^2*den(3)*w
    - den(2)*den(3)^2*w
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
*{{{ ApartTaylorExpand_4 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2,1)*den(3,1)*Ordo(w,2);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)*den(3)
    - den(2)^2*den(3)*w
    - den(2)*den(3)^2*w
    + den(2)^3*den(3)*w^2
    + den(2)^2*den(3)^2*w^2
    + den(2)*den(3)^3*w^2
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
*{{{ ApartTaylorExpand_5 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(1,1)*den(2,1)*den(3,1)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(1)*den(2)*den(3)
    - den(1)^2*den(2)*den(3)*w
    - den(1)*den(2)^2*den(3)*w
    - den(1)*den(2)*den(3)^2*w
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
*{{{ ApartTaylorExpand_6 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2)*den(3)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff = F - den(2)*den(3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTaylorExpand_7 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2,1)^2*den(3,1)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)^2*den(3)
    - 2*den(2)^3*den(3)*w
    - den(2)^2*den(3)^2*w
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
*{{{ ApartTaylorExpand_8 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2,1)*den(3,-1)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)*den(3)
    - den(2)^2*den(3)*w
    + den(2)*den(3)^2*w
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
*{{{ ApartTaylorExpand_9 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w1,w2,n1,n2,n3;
*
local F = den(w2+1,1)*den(2-w2,1)*Ordo(w1,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(w2+1)*den(2-w2)
    - den(w2+1)^2*den(2-w2)*w1
    - den(w2+1)*den(2-w2)^2*w1
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
*{{{ ApartTaylorExpand_10 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = 5*den(2,1)*den(3,1)*Ordo(w,0);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff = F - 5*den(2)*den(3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTaylorExpand_11 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2,3)*den(5,-2)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)*den(5)
    - 3*den(2)^2*den(5)*w
    + 2*den(2)*den(5)^2*w
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
*{{{ ApartTaylorExpand_12 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,a,b,s,t,n1,n2,n3;
*
local F = den(a,s)*den(b,t)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(a)*den(b)
    - s*den(a)^2*den(b)*w
    - t*den(a)*den(b)^2*w
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
*{{{ ApartTaylorExpand_13 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(1,1)*den(2,1)*den(3,1)*Ordo(w,2);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(1)*den(2)*den(3)
    - den(1)^2*den(2)*den(3)*w
    - den(1)*den(2)^2*den(3)*w
    - den(1)*den(2)*den(3)^2*w
    + den(1)^3*den(2)*den(3)*w^2
    + den(1)*den(2)^3*den(3)*w^2
    + den(1)*den(2)*den(3)^3*w^2
    + den(1)^2*den(2)^2*den(3)*w^2
    + den(1)^2*den(2)*den(3)^2*w^2
    + den(1)*den(2)^2*den(3)^2*w^2
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
*{{{ ApartTaylorExpand_14 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2,1)^2*den(3,1)^2*Ordo(w,2);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)^2*den(3)^2
    - 2*den(2)^3*den(3)^2*w
    - 2*den(2)^2*den(3)^3*w
    + 3*den(2)^4*den(3)^2*w^2
    + 4*den(2)^3*den(3)^3*w^2
    + 3*den(2)^2*den(3)^4*w^2
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
*{{{ ApartTaylorExpand_15 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2,1)^3*den(3,1)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)^3*den(3)
    - 3*den(2)^4*den(3)*w
    - den(2)^3*den(3)^2*w
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
*{{{ ApartTaylorExpand_16 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(1,1)*den(2,1)*den(3,1)*den(4,1)*Ordo(w,0);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff = F - den(1)*den(2)*den(3)*den(4);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTaylorExpand_17 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(1,1)*den(2,-1)*den(5,3)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(1)*den(2)*den(5)
    - den(1)^2*den(2)*den(5)*w
    + den(1)*den(2)^2*den(5)*w
    - 3*den(1)*den(2)*den(5)^2*w
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
*{{{ ApartTaylorExpand_18 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,a,b,n1,n2,n3;
*
local F = den(a,1)*den(b,1)*Ordo(w,2);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(a)*den(b)
    - den(a)^2*den(b)*w
    - den(a)*den(b)^2*w
    + den(a)^3*den(b)*w^2
    + den(a)^2*den(b)^2*w^2
    + den(a)*den(b)^3*w^2
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
*{{{ ApartTaylorExpand_19 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,s,t,n1,n2,n3;
*
local F = den(2,s)*den(3,t)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)*den(3)
    - s*den(2)^2*den(3)*w
    - t*den(2)*den(3)^2*w
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
*{{{ ApartTaylorExpand_20 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w1,w2,n1,n2,n3;
*
local F = den(w2+1,1)*den(2-w2,1)*Ordo(w1,2);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(w2+1)*den(2-w2)
    - den(w2+1)^2*den(2-w2)*w1
    - den(w2+1)*den(2-w2)^2*w1
    + den(w2+1)^3*den(2-w2)*w1^2
    + den(w2+1)^2*den(2-w2)^2*w1^2
    + den(w2+1)*den(2-w2)^3*w1^2
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
*{{{ ApartTaylorExpand_21 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = 1/7*den(2,1)*den(3,1)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + 1/7*den(2)*den(3)
    - 1/7*den(2)^2*den(3)*w
    - 1/7*den(2)*den(3)^2*w
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
*{{{ ApartTaylorExpand_22 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = 3*den(2,1)*den(5,1)*Ordo(w,0) - den(3,-1)*den(7,2)*Ordo(w,0);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff = F - (3*den(2)*den(5) - den(3)*den(7));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTaylorExpand_23 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2,1)^4*Ordo(w,2);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)^4
    - 4*den(2)^5*w
    + 10*den(2)^6*w^2
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
*{{{ ApartTaylorExpand_24 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(100,1)*den(200,1)*Ordo(w,0);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff = F - den(100)*den(200);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTaylorExpand_25 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(1,1)*den(2,1)*den(3,1)*den(4,1)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(1)*den(2)*den(3)*den(4)
    - den(1)^2*den(2)*den(3)*den(4)*w
    - den(1)*den(2)^2*den(3)*den(4)*w
    - den(1)*den(2)*den(3)^2*den(4)*w
    - den(1)*den(2)*den(3)*den(4)^2*w
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
*{{{ ApartTaylorExpand_26 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(1,1)*den(2,1)*den(3,1)*den(4,1)*den(5,1)*Ordo(w,0);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff = F - den(1)*den(2)*den(3)*den(4)*den(5);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTaylorExpand_27 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2,1)*den(3,2)*den(7,-3)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)*den(3)*den(7)
    - den(2)^2*den(3)*den(7)*w
    - 2*den(2)*den(3)^2*den(7)*w
    + 3*den(2)*den(3)*den(7)^2*w
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
*{{{ ApartTaylorExpand_28 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,a,b,c,n1,n2,n3;
*
local F = den(a,1)*den(b,1)*den(c,1)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(a)*den(b)*den(c)
    - den(a)^2*den(b)*den(c)*w
    - den(a)*den(b)^2*den(c)*w
    - den(a)*den(b)*den(c)^2*w
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
*{{{ ApartTaylorExpand_29 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,a,b,s,t,n1,n2,n3;
*
local F = den(a,s)*den(b,t)*Ordo(w,2);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(a)*den(b)
    - s*den(a)^2*den(b)*w
    - t*den(a)*den(b)^2*w
    + s^2*den(a)^3*den(b)*w^2
    + s*t*den(a)^2*den(b)^2*w^2
    + t^2*den(a)*den(b)^3*w^2
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
*{{{ ApartTaylorExpand_30 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,s,t,n1,n2,n3;
*
local F = den(s+t,s-t)*den(2,1)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(s+t)*den(2)
    - (s-t)*den(s+t)^2*den(2)*w
    - den(s+t)*den(2)^2*w
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
*{{{ ApartTaylorExpand_31 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2,1)^2*den(3,1)^2*den(5,1)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)^2*den(3)^2*den(5)
    - 2*den(2)^3*den(3)^2*den(5)*w
    - 2*den(2)^2*den(3)^3*den(5)*w
    - den(2)^2*den(3)^2*den(5)^2*w
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
*{{{ ApartTaylorExpand_32 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = -2*den(3,1)*den(5,1)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    - 2*den(3)*den(5)
    + 2*den(3)^2*den(5)*w
    + 2*den(3)*den(5)^2*w
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
*{{{ ApartTaylorExpand_33 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w1,w2,w3,n1,n2,n3;
*
local F = den(w2+1,1)*den(w2-3,1)*den(w3+2,1)*Ordo(w1,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(w2+1)*den(w2-3)*den(w3+2)
    - den(w2+1)^2*den(w2-3)*den(w3+2)*w1
    - den(w2+1)*den(w2-3)^2*den(w3+2)*w1
    - den(w2+1)*den(w2-3)*den(w3+2)^2*w1
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
*{{{ ApartTaylorExpand_34 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,a,b,s,t,n1,n2,n3;
*
local F = s*t*den(a,1)*den(b,-1)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + s*t*den(a)*den(b)
    - s*t*den(a)^2*den(b)*w
    + s*t*den(a)*den(b)^2*w
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
*{{{ ApartTaylorExpand_35 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2,1)^5*Ordo(w,3);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)^5
    - 5*den(2)^6*w
    + 15*den(2)^7*w^2
    - 35*den(2)^8*w^3
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
*{{{ ApartTaylorExpand_36 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(3,0)*den(2,1)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(3)*den(2)
    - den(3)*den(2)^2*w
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
*{{{ ApartTaylorExpand_37 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = den(2,1)*den(3,1)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,-1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2)*den(3)
    - den(2)^2*den(3)*w^-1
    - den(2)*den(3)^2*w^-1
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
*{{{ ApartTaylorExpand_38 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,n1,n2,n3;
*
local F = APd1^2*APd2*den(3,1)*den(5,1)*Ordo(APd1,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,-1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2*den(3)*den(5)
    - APd1*APd2*den(3)^2*den(5)
    - APd1*APd2*den(3)*den(5)^2
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
*{{{ ApartTaylorExpand_39 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,a,b,s,t,n1,n2,n3;
*
local F = den(a,s)*den(b,t)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,-1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(a)*den(b)
    - s*den(a)^2*den(b)*w^-1
    - t*den(a)*den(b)^2*w^-1
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
*{{{ ApartTaylorExpand_40 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols a,b,c,n1,n2,n3;
*
local F = APd1^2*APd2^2*den(a,1)*den(b,1)*den(c,1)*Ordo(APd1,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,-1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + APd1^2*APd2^2*den(a)*den(b)*den(c)
    - APd1*APd2^2*den(a)^2*den(b)*den(c)
    - APd1*APd2^2*den(a)*den(b)^2*den(c)
    - APd1*APd2^2*den(a)*den(b)*den(c)^2
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
*{{{ ApartTaylorExpand_41 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,epsilon,n1,n2,n3;
*
local F = den(2*epsilon+1,-1)*den(epsilon+1,1+epsilon)*Ordo(w,0);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff = F - den(2*epsilon+1)*den(epsilon+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTaylorExpand_42 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,epsilon,n1,n2,n3;
*
local F = den(2*epsilon+1,-1)*den(epsilon+1,1+epsilon)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2*epsilon+1)*den(epsilon+1)
    + den(2*epsilon+1)^2*den(epsilon+1)*w
    - (1+epsilon)*den(2*epsilon+1)*den(epsilon+1)^2*w
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
*{{{ ApartTaylorExpand_43 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,epsilon,n1,n2,n3;
*
local F = den(epsilon+1,-1)*den(2*epsilon+1,1+epsilon)*den(3+3*epsilon,epsilon^2-epsilon+2)*Ordo(w,0);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,+1,n1,n2,n3)
*
.sort
*
local diff = F - den(epsilon+1)*den(2*epsilon+1)*den(3+3*epsilon);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTaylorExpand_44 :
#include- ../src/formapart.h
*
cfunctions den,Ordo,aux;
symbols w,epsilon,n1,n2,n3;
*
local F = den(2*epsilon+1,-1)*den(epsilon+1,1+epsilon)*Ordo(w,1);
.sort
*
#call ApartTaylorExpand(den,Ordo,aux,-1,n1,n2,n3)
*
.sort
*
local diff =
  F
  -
  (
    + den(2*epsilon+1)*den(epsilon+1)
    + den(2*epsilon+1)^2*den(epsilon+1)*w^-1
    - (1+epsilon)*den(2*epsilon+1)*den(epsilon+1)^2*w^-1
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
