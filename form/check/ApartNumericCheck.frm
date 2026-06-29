*{{{ ApartNumericCheck_1 :
#include- ../src/formapart.h
*
#define Vars ""
#define Params ""
*
cfunction den;
symbol aux1;
*
local Expr1 = 5;
local Expr2 = 5;
*
.sort
*
#call ApartNumericCheck(diff,Expr1,Expr2,den,Vars,Params,aux1)
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartNumericCheck_2 :
#include- ../src/formapart.h
*
#define Vars "x"
#define Params ""
*
symbols x;
cfunction den;
symbol aux1;
*
local Expr1 = (x+1)^2;
local Expr2 = x^2 + 2*x + 1;
*
.sort
*
#call ApartNumericCheck(diff,Expr1,Expr2,den,Vars,Params,aux1)
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartNumericCheck_3 :
#include- ../src/formapart.h
*
#define Vars "x"
#define Params ""
*
symbols x;
cfunction den;
symbol aux1;
*
local Expr1 = den(x)*den(x+1);
local Expr2 = den(x) - den(x+1);
*
.sort
*
#call ApartNumericCheck(diff,Expr1,Expr2,den,Vars,Params,aux1)
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartNumericCheck_4 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
symbols x, y;
cfunction den;
symbol aux1;
*
local Expr1 = (x+y)^2;
local Expr2 = x^2 + 2*x*y + y^2;
*
.sort
*
#call ApartNumericCheck(diff,Expr1,Expr2,den,Vars,Params,aux1)
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartNumericCheck_5 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
symbols x, y;
cfunction den;
symbol aux1;
*
local Expr1 = den(x)*den(y);
local Expr2 = den(y)*den(x);
*
.sort
*
#call ApartNumericCheck(diff,Expr1,Expr2,den,Vars,Params,aux1)
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartNumericCheck_6 :
#include- ../src/formapart.h
*
#define Vars "x"
#define Params "a"
*
symbols x, a;
cfunction den;
symbol aux1;
*
local Expr1 = (x+a)^2;
local Expr2 = x^2 + 2*a*x + a^2;
*
.sort
*
#call ApartNumericCheck(diff,Expr1,Expr2,den,Vars,Params,aux1)
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartNumericCheck_7 :
#include- ../src/formapart.h
*
#define Vars "x"
#define Params "a,b"
*
symbols x, a, b;
cfunction den;
symbol aux1;
*
local Expr1 = den(x-a)*den(x-b);
local Expr2 = den(a-b) * (den(x-a) - den(x-b));
*
.sort
*
#call ApartNumericCheck(diff,Expr1,Expr2,den,Vars,Params,aux1)
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartNumericCheck_8 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
symbols x, y;
cfunction den;
symbol aux1;
*
local Expr1 = den(x)*den(y)*den(x+y+1);
local Expr2 = den(x)*den(y) - den(x)*den(x+y+1) - den(y)*den(x+y+1);
*
.sort
*
#call ApartNumericCheck(diff,Expr1,Expr2,den,Vars,Params,aux1)
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartNumericCheck_9 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
symbols x, y;
cfunction den;
symbol aux1;
*
local Expr1 = (x-y)^3;
local Expr2 = x^3 - 3*x^2*y + 3*x*y^2 - y^3;
*
.sort
*
#call ApartNumericCheck(diff,Expr1,Expr2,den,Vars,Params,aux1)
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartNumericCheck_10 :
#include- ../src/formapart.h
*
#define Vars "x"
#define Params ""
*
symbols x;
cfunction den;
symbol aux1;
*
local Expr1 = den(x)*den(x+1)*den(x+2)*den(x+3);
local Expr2 = 1/6*den(x) - 1/2*den(x+1) + 1/2*den(x+2) - 1/6*den(x+3);
*
.sort
*
#call ApartNumericCheck(diff,Expr1,Expr2,den,Vars,Params,aux1)
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartNumericCheck_11 :
#include- ../src/formapart.h
*
#define Vars "x"
#define Params ""
*
symbols x;
cfunction den;
symbol aux1;
*
local Expr1 = den(2*x+3)*den(5*x-7);
local Expr2 = -2/29 * den(2*x+3) + 5/29 * den(5*x-7);
*
.sort
*
#call ApartNumericCheck(diff,Expr1,Expr2,den,Vars,Params,aux1)
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartNumericCheck_12 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
symbols x, y, z;
cfunction den;
symbol aux1;
*
local Expr1 = den(x)*den(y)*den(z)*den(x+y+z+1);
local Expr2 =
    + den(x)*den(y)*den(z)
    - den(y)*den(z)*den(x+y+z+1)
    - den(x)*den(z)*den(x+y+z+1)
    - den(x)*den(y)*den(x+y+z+1)
;
*
.sort
*
#call ApartNumericCheck(diff,Expr1,Expr2,den,Vars,Params,aux1)
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartNumericCheck_13 :
#include- ../src/formapart.h
*
#define Vars "x"
#define Params "a,b,c"
*
symbols x, a, b, c;
cfunction den;
symbol aux1;
*
local Expr1 = den(x+a)*den(x+b)*den(x+c);
local Expr2 =
    + den(b-a)*den(c-a)*den(x+a)
    + den(a-b)*den(c-b)*den(x+b)
    + den(a-c)*den(b-c)*den(x+c)
;
*
.sort
*
#call ApartNumericCheck(diff,Expr1,Expr2,den,Vars,Params,aux1)
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartNumericCheck_14 :
#include- ../src/formapart.h
*
#define Vars "x"
#define Params ""
*
symbols x;
cfunction den;
symbol aux1;
*
local Expr1 = (x^2 - 1) * den(x)*den(x-1)*den(x+1);
local Expr2 = den(x);
*
.sort
*
#call ApartNumericCheck(diff,Expr1,Expr2,den,Vars,Params,aux1)
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartNumericCheck_15 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
symbols x, y;
cfunction den;
symbol aux1;
*
local Expr1 = x*den(x+y) + y*den(x+y);
local Expr2 = 1;
*
.sort
*
#call ApartNumericCheck(diff,Expr1,Expr2,den,Vars,Params,aux1)
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartNumericCheck_16 :
#include- ../src/formapart.h
*
#define Vars "w,x,y,z"
#define Params ""
*
symbols w, x, y, z;
cfunction den;
symbol aux1;
*
local Expr1 = den(w)*den(x)*den(y)*den(z)*den(w+x+y+z+1);
local Expr2 =
    + den(w)*den(x)*den(y)*den(z)
    - den(x)*den(y)*den(z)*den(w+x+y+z+1)
    - den(w)*den(y)*den(z)*den(w+x+y+z+1)
    - den(w)*den(x)*den(z)*den(w+x+y+z+1)
    - den(w)*den(x)*den(y)*den(w+x+y+z+1)
;
*
.sort
*
#call ApartNumericCheck(diff,Expr1,Expr2,den,Vars,Params,aux1)
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
