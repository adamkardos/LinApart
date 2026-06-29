*{{{ ApartPutFunctionArgumentToNextSetInstance_1 :
#include- ../src/formapart.h
*
#Define FillAfterLast "1"
*
symbols n1,...,n2;
cfunctions f,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F = 
  + f(1,2,3,4)*g1(5,6,7,8)
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    g2(1,2,3,4)*g1(5,6,7,8)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance_2 :
#include- ../src/formapart.h
*
#Define FillAfterLast "1"
*
symbols n1,...,n2;
cfunctions f,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F = 
  + f(1,2,3,4)*g2(5,6,7,8)
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    g3(1,2,3,4)*g2(5,6,7,8)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance_3 :
#include- ../src/formapart.h
*
#Define FillAfterLast "0"
*
symbols a,b,c,d;
symbols n1,...,n2;
cfunctions f,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F = 
  + f(1,2,3,4)*g2(5,6,7,8)*g4(a,b,c,d)
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    g1(1,2,3,4)*g2(5,6,7,8)*g4(a,b,c,d)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance_4 :
#include- ../src/formapart.h
*
#Define FillAfterLast "0"
*
symbols a,b,c,d;
symbols n1,...,n2;
cfunctions f,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F = 
  + f(1,2,3,4)*f(a,b,c,d)*g2(5,6,7,8)
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    g1(1,2,3,4)*g2(5,6,7,8)*g3(a,b,c,d)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance_5 :
#include- ../src/formapart.h
*
#Define FillAfterLast "1"
*
symbols a,b,c,d;
symbols n1,...,n2;
cfunctions f,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F =
  + f(1,2,3,4)*f(a,b,c,d)*g2(5,6,7,8)
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    g3(1,2,3,4)*g2(5,6,7,8)*g4(a,b,c,d)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance_6 :
#include- ../src/formapart.h
*
#Define FillAfterLast "1"
*
symbols a,b,c,d;
symbols n1,...,n2;
cfunctions f,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F =
  + f(1,2,3,4)*g2(5,6,7,8)*g5(a,b,c,d)
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    g6(1,2,3,4)*g2(5,6,7,8)*g5(a,b,c,d)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance_7 :
#include- ../src/formapart.h
*
#Define FillAfterLast "0"
*
symbols n1,...,n2;
cfunctions f,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F =
  + f(1,2,3,4)
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    g1(1,2,3,4)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance_8 :
#include- ../src/formapart.h
*
#Define FillAfterLast "1"
*
symbols n1,...,n2;
cfunctions f,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F =
  + f(1,2,3,4)
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    g1(1,2,3,4)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance_9 :
#include- ../src/formapart.h
*
#Define FillAfterLast "1"
*
symbols x;
symbols n1,...,n2;
cfunctions f,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F =
  + f(x)*g1(5,6,7,8)
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    g2(x)*g1(5,6,7,8)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance_10 :
#include- ../src/formapart.h
*
#Define FillAfterLast "0"
*
symbols a,b,c,d,e;
symbols n1,...,n2;
cfunctions f,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F =
  + f(a,b,c,d,e)*g3(1)
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    g1(a,b,c,d,e)*g3(1)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance_11 :
#include- ../src/formapart.h
*
#Define FillAfterLast "1"
*
symbols a,b,c,d;
symbols n1,...,n2;
cfunctions f,h,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F =
  + f(1,2,3,4)*h(f(a,b,c,d))*g2(5,6,7,8)
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    g3(1,2,3,4)*h(f(a,b,c,d))*g2(5,6,7,8)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance_12 :
#include- ../src/formapart.h
*
#Define FillAfterLast "1"
*
symbols a,b,c,d;
symbols n1,...,n2;
cfunctions f,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F =
  + f(1,2,3,4)*g1(5,6,7,8)
  + f(a,b,c,d)*g3(5,6,7,8)
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    + g2(1,2,3,4)*g1(5,6,7,8)
    + g4(a,b,c,d)*g3(5,6,7,8)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance_13 :
#include- ../src/formapart.h
*
#Define FillAfterLast "1"
*
symbols a,b,c,d;
symbols n1,...,n2;
cfunctions f,h,k,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F =
  + h(k(f(1,2,3,4)))*f(a,b,c,d)*g2(5,6,7,8)
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    h(k(f(1,2,3,4)))*g3(a,b,c,d)*g2(5,6,7,8)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance_14 :
#include- ../src/formapart.h
*
#Define FillAfterLast "1"
*
symbols a,b,c,d;
symbols n1,...,n2;
cfunctions f,h,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F =
  + f(1,2,3,4)*h(g3(a,b,c,d))
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    g1(1,2,3,4)*h(g3(a,b,c,d))
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance_15 :
#include- ../src/formapart.h
*
#Define FillAfterLast "1"
*
symbols n1,...,n2;
cfunctions f,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F =
  - f(1,2,3,4)*g1(5,6,7,8)
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    - g2(1,2,3,4)*g1(5,6,7,8)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance_16 :
#include- ../src/formapart.h
*
#Define FillAfterLast "0"
*
symbols n1,...,n2;
cfunctions f,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F =
  + (1/3)*f(1,2,3,4)*g2(5,6,7,8)
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    (1/3)*g1(1,2,3,4)*g2(5,6,7,8)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance_17 :
#include- ../src/formapart.h
*
#Define FillAfterLast "0"
*
symbols a,b;
symbols n1,...,n2;
cfunctions f,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F =
  + f(1,2,3,4)*g3(a)*g3(b)
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    g1(1,2,3,4)*g3(a)*g3(b)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance_18 :
#include- ../src/formapart.h
*
#Define FillAfterLast "1"
*
symbols a,b,c,d,x,y;
symbols n1,...,n2;
cfunctions f,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F =
  + f(1,2,3,4)*f(a,b,c,d)*g2(x)*g5(y)
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    g6(1,2,3,4)*g7(a,b,c,d)*g2(x)*g5(y)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance_19 :
#include- ../src/formapart.h
*
#Define FillAfterLast "0"
*
symbols a,b,c,d,x,y;
symbols n1,...,n2;
cfunctions f,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F =
  + f(1,2,3,4)*f(a,b,c,d)*g2(x)*g5(y)
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    g1(1,2,3,4)*g3(a,b,c,d)*g2(x)*g5(y)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance_20 :
#include- ../src/formapart.h
*
#Define FillAfterLast "1"
*
symbols a,b,c;
symbols n1,...,n2;
cfunctions f,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F =
  + f(f(1,2,3,4),a,b,c)*g1(5,6,7,8)
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    g2(f(1,2,3,4),a,b,c)*g1(5,6,7,8)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance_21 :
#include- ../src/formapart.h
*
#Define FillAfterLast "1"
*
symbols a,b,c,d;
symbols n1,...,n2;
cfunctions f,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F =
  + f(1,2,3,4)*g2(f(a,b,c,d))
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    g3(1,2,3,4)*g2(f(a,b,c,d))
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
*
*{{{ ApartPutFunctionArgumentToNextSetInstance_22 :
#include- ../src/formapart.h
*
#Define FillAfterLast "0"
*
symbols a,b,c,d;
symbols n1,...,n2;
cfunctions f,aux1,...,aux2;
cfunctions g1,...,g9;
set gSet : g1,...,g9;
*
local F =
  + f(1,2,3,4)*g2(5,6,7,8)
  + g4(a,b,c,d)
;
*
.sort
*
#call ApartPutFunctionArgumentToNextSetInstance(f,gSet,aux1,aux2,n1,n2,`FillAfterLast')
*
.sort
*
local diff =
  F
  -
  (
    + g1(1,2,3,4)*g2(5,6,7,8)
    + g4(a,b,c,d)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("
  0
")
*}}}
