*{{{ ApartGetPresentVariablesWithPowersFromSet_1 :
#include- ../src/formapart.h
*
symbols x1,...,x9;
symbols n1;
set xset : x1,...,x9;
cfunction var;
cfunction pow;
*
local F = x1^2*x3^2*x5^5;
*
.sort
*
#call ApartGetPresentVariablesWithPowersFromSet(var,pow,xset,1,9,n1)
*
.sort
*
local diff =
  F
  -
  (
    var(1,3,5)*pow(2,2,5)*x1^2*x3^2*x5^5
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetPresentVariablesWithPowersFromSet_2 :
#include- ../src/formapart.h
*
symbols x1,...,x9;
symbols n1;
set xset : x1,...,x9;
cfunction var;
cfunction pow;
*
local F = x4;
*
.sort
*
#call ApartGetPresentVariablesWithPowersFromSet(var,pow,xset,1,9,n1)
*
.sort
*
local diff =
  F
  -
  (
    var(4)*pow(1)*x4
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetPresentVariablesWithPowersFromSet_3 :
#include- ../src/formapart.h
*
symbols x1,...,x9;
symbols n1;
set xset : x1,...,x9;
cfunction var;
cfunction pow;
*
local F = x1*x2*x3*x4*x5*x6*x7*x8*x9;
*
.sort
*
#call ApartGetPresentVariablesWithPowersFromSet(var,pow,xset,1,9,n1)
*
.sort
*
local diff =
  F
  -
  (
    var(1,2,3,4,5,6,7,8,9)*pow(1,1,1,1,1,1,1,1,1)*x1*x2*x3*x4*x5*x6*x7*x8*x9
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetPresentVariablesWithPowersFromSet_4 :
#include- ../src/formapart.h
*
symbols x1,...,x9;
symbols n1;
set xset : x1,...,x9;
cfunction var;
cfunction pow;
*
local F = x2^3*x8^4;
*
.sort
*
#call ApartGetPresentVariablesWithPowersFromSet(var,pow,xset,1,9,n1)
*
.sort
*
local diff =
  F
  -
  (
    var(2,8)*pow(3,4)*x2^3*x8^4
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetPresentVariablesWithPowersFromSet_5 :
#include- ../src/formapart.h
*
symbols x1,...,x9;
symbols n1;
set xset : x1,...,x9;
cfunction var;
cfunction pow;
*
local F = x7^20;
*
.sort
*
#call ApartGetPresentVariablesWithPowersFromSet(var,pow,xset,1,9,n1)
*
.sort
*
local diff =
  F
  -
  (
    var(7)*pow(20)*x7^20
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetPresentVariablesWithPowersFromSet_6 :
#include- ../src/formapart.h
*
symbols x1,...,x9;
symbols n1;
set xset : x1,...,x9;
cfunction var;
cfunction pow;
*
local F = x1*x3^2*x5*x9^3;
*
.sort
*
#call ApartGetPresentVariablesWithPowersFromSet(var,pow,xset,1,9,n1)
*
.sort
*
local diff =
  F
  -
  (
    var(1,3,5,9)*pow(1,2,1,3)*x1*x3^2*x5*x9^3
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetPresentVariablesWithPowersFromSet_7 :
#include- ../src/formapart.h
*
symbols x1,...,x9;
symbols n1;
set xset : x1,...,x9;
cfunction var;
cfunction pow;
*
local F = x1*x4^2*x5^3*x7;
*
.sort
*
#call ApartGetPresentVariablesWithPowersFromSet(var,pow,xset,3,5,n1)
*
.sort
*
local diff =
  F
  -
  (
    var(4,5)*pow(2,3)*x1*x4^2*x5^3*x7
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetPresentVariablesWithPowersFromSet_8 :
#include- ../src/formapart.h
*
symbols x1,...,x9;
symbols n1;
set xset : x1,...,x9;
cfunction var;
cfunction pow;
*
local F = x5^7;
*
.sort
*
#call ApartGetPresentVariablesWithPowersFromSet(var,pow,xset,5,5,n1)
*
.sort
*
local diff =
  F
  -
  (
    var(5)*pow(7)*x5^7
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartGetPresentVariablesWithPowersFromSet_9 :
#include- ../src/formapart.h
*
symbols x1,...,x9;
symbols n1;
set xset : x1,...,x9;
cfunction var;
cfunction pow;
*
local F = 7;
*
.sort
*
#call ApartGetPresentVariablesWithPowersFromSet(var,pow,xset,1,9,n1)
*
.sort
*
local diff =
  F
  -
  (
    var()*pow()*7
  )
;
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
