*{{{ ApartMultiLinApart_1 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)*den(y);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff = F - den(x)*den(y);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_2 :
#include- ../src/formapart.h
*
cfunction den;
symbols x;
*
local F = den(x)*den(x+1);
.sort
*
#call ApartMultiLinApart(den,x)
*
.sort
*
local diff = F - (den(x) - den(x+1));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_3 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)*den(y)*den(x+y+1);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff = F - (den(x)*den(y) - den(x)*den(x+y+1) - den(y)*den(x+y+1));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_4 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)^2*den(y)*den(x+y)*den(x+y-1);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff =
  F
  -
  (
    + den(x)*den(y)^3
    - den(x)^2*den(y)^2
    - den(x)^2*den(y)
    - den(x)*den(y)
    + den(x)^2*den(x+y-1)
    + den(x)*den(x+y-1)
    + den(y)*den(x+y-1)
    - den(y)^3*den(x+y)
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
*{{{ ApartMultiLinApart_5 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y,z;
*
local F = den(x)*den(y)*den(z)*den(x+y+z+1);
.sort
*
#call ApartMultiLinApart(den,x,y,z)
*
.sort
*
local diff =
  F
  -
  (
    + den(x)*den(y)*den(z)
    - den(x)*den(y)*den(x+y+z+1)
    - den(x)*den(z)*den(x+y+z+1)
    - den(y)*den(z)*den(x+y+z+1)
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
*{{{ ApartMultiLinApart_6 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)^3*den(y)^2;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff = F - den(x)^3*den(y)^2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_7 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = 5*den(x)*den(y)*den(x+y+1);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff = F - 5*(den(x)*den(y) - den(x)*den(x+y+1) - den(y)*den(x+y+1));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_8 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x+1)*den(y+2)*den(x+y+4);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff = F - (den(x+1)*den(y+2) - den(x+1)*den(x+y+4) - den(y+2)*den(x+y+4));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_9 :
#include- ../src/formapart.h
*
cfunction den;
symbols x;
*
local F = den(x)*den(x+1)*den(x+2);
.sort
*
#call ApartMultiLinApart(den,x)
*
.sort
*
local diff = F - (1/2*den(x) - den(x+1) + 1/2*den(x+2));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_10 :
#include- ../src/formapart.h
*
cfunction den;
symbols x;
*
local F = den(x)^2*den(x+1)^2;
.sort
*
#call ApartMultiLinApart(den,x)
*
.sort
*
local diff = F - (den(x)^2 - 2*den(x) + 2*den(x+1) + den(x+1)^2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_11 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y,s,t;
*
local F = den(x+s)*den(y+t)*den(x+y+s+t+1);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff = F - (den(x+s)*den(y+t) - den(x+s)*den(x+y+s+t+1)
                  - den(y+t)*den(x+y+s+t+1));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_12 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = -den(x)*den(y)*den(x+y+1);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff = F - (-den(x)*den(y) + den(x)*den(x+y+1) + den(y)*den(x+y+1));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_13 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = 1/3*den(x)*den(y)*den(x+y+1);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff = F - 1/3*(den(x)*den(y) - den(x)*den(x+y+1) - den(y)*den(x+y+1));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_14 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)^3*den(y)*den(x+y+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_15 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y)*den(x-y);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_16 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y+1)*den(x-y+2)*den(2*x+y+3);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_17 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)*den(y)*den(z)*den(x+y+z+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y,z)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_18 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(2*x+y)*den(x+3*y)*den(x+y+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_19 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "s,t"
*
cfunction den;
symbols x,y,s,t;
symbol aux1;
*
local Finput = den(x+s)^2*den(y+t)*den(x+y+s+t+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_20 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y+1) + den(x)*den(y)*den(x-y+2);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_21 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)*den(y)*den(z)*den(x+y)*den(y+z+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y,z)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_22 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "0"
*
cfunction den;
symbols x,y;
*
local F = 0;
.sort
*
#call ApartMultiLinApart(den,x,y)
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
*{{{ ApartMultiLinApart_23 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y,a,b;
*
local F = den(x)*den(a+b);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff = F - den(x)*den(a+b);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_24 :
#include- ../src/formapart.h
*
cfunction Denom;
symbols x,y;
*
local F = Denom(x)*Denom(y)*Denom(x+y+1);
.sort
*
#call ApartMultiLinApart(Denom,x,y)
*
.sort
*
local diff = F - (Denom(x)*Denom(y) - Denom(x)*Denom(x+y+1) - Denom(y)*Denom(x+y+1));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_25 :
#include- ../src/formapart.h
*
cfunction den;
symbols x;
*
local F = den(x)*den(x+1)*den(x+2)*den(x+3);
.sort
*
#call ApartMultiLinApart(den,x)
*
.sort
*
local diff = F - (1/6*den(x) - 1/2*den(x+1) + 1/2*den(x+2) - 1/6*den(x+3));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_26 :
#include- ../src/formapart.h
*
cfunction den;
symbols x;
*
local F = den(x)^3*den(x+1);
.sort
*
#call ApartMultiLinApart(den,x)
*
.sort
*
local diff = F - (den(x)^3 - den(x)^2 + den(x) - den(x+1));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_27 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x+1)*den(y+1)*den(x+y+3);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff = F - (den(x+1)*den(y+1) - den(x+1)*den(x+y+3) - den(y+1)*den(x+y+3));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_28 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y)*den(x+2*y+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_29 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(2*x+y+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_30 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y,s,t;
*
local F = s*t*den(x)*den(y)*den(x+y+1);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff = F - s*t*(den(x)*den(y) - den(x)*den(x+y+1) - den(y)*den(x+y+1));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_31 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y+1)*den(x-y+2)*den(2*x+y+3);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_32 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "s,t"
*
cfunction den;
symbols x,y,s,t;
symbol aux1;
*
local Finput = den(x+s)^2*den(y+t)^3*den(x+y+s+t+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_33 :
#include- ../src/formapart.h
*
#define Vars "x,y,z,w"
#define Params ""
*
cfunction den;
symbols x,y,z,w;
symbol aux1;
*
local Finput = den(x)*den(y)*den(z)*den(w)*den(x+y+z+w+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y,z,w)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_34 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)*den(y)*den(z)*den(x+y)*den(y+z)*den(x+z);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y,z)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_35 :
#include- ../src/formapart.h
*
#define Vars "x"
#define Params ""
*
cfunction den;
symbols x;
symbol aux1;
*
local Finput = den(x)*den(x+1)*den(x+2)*den(x+3)*den(x+4);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_36 :
#include- ../src/formapart.h
*
#define Vars "x"
#define Params ""
*
cfunction den;
symbols x;
symbol aux1;
*
local Finput = den(x)^4*den(x+1)^3;
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_37 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y+1) + den(x)*den(y)*den(x+y+2)
             + den(x)*den(y)*den(x-y+3);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_38 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)^2*den(y)^3;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff = F - den(x)^2*den(y)^3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_39 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(2*x+y)*den(y+3*z)*den(x+z+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y,z)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_40 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y-1)*den(x-y+2)*den(2*x+y-3);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_41 :
#include- ../src/formapart.h
*
#define Vars "x"
#define Params ""
*
cfunction den;
symbols x;
symbol aux1;
*
local Finput = den(x)*den(x+1)*den(x+2)*den(x+3)*den(x+4)*den(x+5);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_42 :
#include- ../src/formapart.h
*
#define Vars "x"
#define Params ""
*
cfunction den;
symbols x;
symbol aux1;
*
local Finput = den(x)^5*den(x+1)^5;
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_43 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y)*den(x-y)*den(x+y+1)*den(x-y+2);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_44 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)^3*den(y)^2*den(x+y+1)^2;
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_45 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "s,t,u"
*
cfunction den;
symbols x,y,s,t,u;
symbol aux1;
*
local Finput = den(x+s)*den(y+t)*den(x+y+u);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_46 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(2*x+y)*den(x+y)*den(x+2*y+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_47 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y+1) + den(x)*den(y) + 3*den(x);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_48 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)*den(y)*den(z)*den(x+y)*den(x+z+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y,z)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_49 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(7*x+3)*den(5*y+2)*den(x+y+11);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_50 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "s,t"
*
cfunction den;
symbols x,y,s,t;
symbol aux1;
*
local Finput = den(x+s)^2*den(y+t)*den(x+y+s+t)*den(x+y+s+t-1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_51 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y)*den(x-y)*den(x+y+1)*den(x-y+1)*den(2*x+y+3);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_52 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "a,b"
*
cfunction den;
symbols x,y,a,b;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y+1)*den(a)*den(a+b);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_53 :
#include- ../src/formapart.h
*
cfunction den;
symbols x;
*
local F = den(x+1);
.sort
*
#call ApartMultiLinApart(den,x)
*
.sort
*
local diff = F - den(x+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_54 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "0"
*
cfunction den;
symbols x,y;
*
local F = x^2 + y;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff = F - (x^2 + y);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_55 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "s,t"
*
cfunction den;
symbols x,y,s,t;
symbol aux1;
*
local Finput = s*den(s*x+t)*den(t*y+s)*den(x+y+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_56 :
#include- ../src/formapart.h
*
#define Vars "x,y,z,w"
#define Params "s"
*
cfunction den;
symbols x,y,z,w,s;
symbol aux1;
*
local Finput = den(x)*den(y)*den(z)*den(w)*den(x+y+z+w+s);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y,z,w)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_57 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y+1)*den(x+y+2)*den(x+y+3);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_58 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)*den(y)*den(z)*den(x+y)*den(y+z)*den(x+z)*den(x+y+z+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y,z)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_59 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)^2*den(y)^3*den(x+y+1)*den(x-y+2);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_60 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y+1)
             - 2*den(x)^2*den(y)*den(x+y)
             + den(y)^2*den(x+y-1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_61 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)*den(y)*den(z)*den(x+y)*den(x+z+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y,z)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_62 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)*den(y)*den(z)*den(x+y+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y,z)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_63 :
#include- ../src/formapart.h
*
cfunction den;
symbols x;
*
local F = den(x)*den(x+1)*den(x+2)*den(x+3);
.sort
*
#call ApartMultiLinApart(den,x)
*
.sort
*
local diff = F - (1/6*den(x) - 1/2*den(x+1) + 1/2*den(x+2) - 1/6*den(x+3));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_64 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y)*den(x+y+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_65 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y,z;
*
local F = den(x)*den(y)*den(z);
.sort
*
#call ApartMultiLinApart(den,x,y,z)
*
.sort
*
local diff = F - den(x)*den(y)*den(z);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_66 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)^4*den(y)^3;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff = F - den(x)^4*den(y)^3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_67 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)^2*den(y)*den(x+y)^2*den(x-y);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_68 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)*den(y)*den(z)*den(x+y)*den(y+z)*den(x+y+z+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y,z)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_69 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "s,t"
*
cfunction den;
symbols x,y,s,t;
symbol aux1;
*
local Finput = den(x+s)*den(y+t)*den(x+y+s+t);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_70 :
#include- ../src/formapart.h
*
#define Vars "x"
#define Params "s,t"
*
cfunction den;
symbols x,s,t;
symbol aux1;
*
local Finput = den(x+s)*den(x+t);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_71 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params "s"
*
cfunction den;
symbols x,y,z,s;
symbol aux1;
*
local Finput = den(x)*den(y)*den(z)*den(x+y+z+s);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y,z)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_72 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "s,t"
*
cfunction den;
symbols x,y,s,t;
symbol aux1;
*
local Finput = den(s*x+1)*den(t*y+2)*den(x+y+3);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_73 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y) + den(x)*den(y)*den(x+y+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_74 :
#include- ../src/formapart.h
*
#define Vars "x,y,z,w"
#define Params ""
*
cfunction den;
symbols x,y,z,w;
symbol aux1;
*
local Finput = den(x)*den(y)*den(z)*den(w)*den(x+y)*den(z+w+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y,z,w)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_75 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)^3*den(y)^2*den(x+y+1)^2*den(x-y+2)^3;
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_76 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(-5*x+8*y-1)*den(17*x+6*y+7)*den(50*x+7*y+5);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_77 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y,epsilon;
symbol aux1;
*
local Finput = den(x)*den(y)*den((1+epsilon)*x+y-1)*den(x+(1-epsilon)*y-2)*den((2+epsilon^2)*x-epsilon*y+3);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
multiply replace_(epsilon,3);
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_78 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y,epsilon;
symbol aux1;
*
local Finput = den(x)*den(y)*den((1+epsilon)*x+y-1)*den(x+(1-epsilon)*y-2)*den((2+epsilon^2)*x-epsilon*y+3)*den(epsilon*x+(3-2*epsilon)*y-epsilon);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
multiply replace_(epsilon,3);
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_79 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y,epsilon;
symbol aux1;
*
local Finput = den(x)*den(y)*den((2-epsilon)*x+(1+epsilon)*y-1)*den((3+2*epsilon)*x+(-1+epsilon)*y+epsilon)*den((1+epsilon^2)*x+epsilon*y+(-2+epsilon))*den(x+y+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
multiply replace_(epsilon,7);
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_80 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y,epsilon;
symbol aux1;
*
local Finput = den(x)*den(y)*den((1+epsilon)*x+y)*den(x+(1-epsilon)*y)*den(x+y+1)*den(x-y+1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
multiply replace_(epsilon,3);
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_81 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)*den(y)*den(x+y-1);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff =
  F
  -
  (
    - den(x)*den(y)
    + den(x)*den(x+y-1)
    + den(y)*den(x+y-1)
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
*{{{ ApartMultiLinApart_82 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)*den(y)*den(x+y);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff =
  F
  -
  (
    + den(x)^2*den(y)
    - den(x)^2*den(x+y)
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
*{{{ ApartMultiLinApart_83 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)*den(x-y+2)*den(y)*den(x+y-1);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff =
  F
  -
  (
    + 1/2*den(x)*den(x-y+2)
    - 1/2*den(x)*den(y)
    + 1/6*den(x-y+2)*den(y)
    + den(x)*den(x+y-1)
    - 4/3*den(x-y+2)*den(x+y-1)
    + 1/3*den(y)*den(x+y-1)
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
*{{{ ApartMultiLinApart_84 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y,s,t;
*
local F = den(s-x)*den(t-y)*den(s+t-x-y-1);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff =
  F
  -
  (
    - den(s-x)*den(t-y)
    + den(s-x)*den(s+t-x-y-1)
    + den(t-y)*den(s+t-x-y-1)
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
*{{{ ApartMultiLinApart_85 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y,z;
*
local F = den(x)*den(y)*den(z)*den(x+y+z);
.sort
*
#call ApartMultiLinApart(den,x,y,z)
*
.sort
*
local diff =
  F
  -
  (
    + den(x)^2*den(y)*den(z)
    - den(x)^2*den(y)*den(x+y+z)
    - den(x)^2*den(z)*den(x+y+z)
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
*{{{ ApartMultiLinApart_86 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)^2*den(y)*den(x+y-1);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff =
  F
  -
  (
    - den(x)^2*den(y)
    - den(x)*den(y)
    + den(x)^2*den(x+y-1)
    + den(x)*den(x+y-1)
    + den(y)*den(x+y-1)
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
*{{{ ApartMultiLinApart_87 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)*den(y)*den(x+y-1)^2;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff =
  F
  -
  (
    + den(x)*den(y)
    + den(x)*den(x+y-1)^2
    + den(y)*den(x+y-1)^2
    - den(x)*den(x+y-1)
    - den(y)*den(x+y-1)
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
*{{{ ApartMultiLinApart_88 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)*den(y)*den(x+y-1)*den(x-y+2)*den(2*x+y-3);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff =
  F
  -
  (
    - 1/2*den(x)*den(x-y+2)
    + 1/6*den(x)*den(y)
    - 1/42*den(x-y+2)*den(y)
    - 1/2*den(x)*den(x+y-1)
    + 8/15*den(x-y+2)*den(x+y-1)
    - 1/3*den(y)*den(x+y-1)
    - 1/6*den(x)*den(2*x+y-3)
    + 27/35*den(x-y+2)*den(2*x+y-3)
    + 8/21*den(y)*den(2*x+y-3)
    - 1/10*den(x+y-1)*den(2*x+y-3)
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
*{{{ ApartMultiLinApart_89 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y,z;
*
local F = den(x)*den(y)*den(z)*den(x+y+z-1);
.sort
*
#call ApartMultiLinApart(den,x,y,z)
*
.sort
*
local diff =
  F
  -
  (
    - den(x)*den(y)*den(z)
    + den(x)*den(y)*den(x+y+z-1)
    + den(x)*den(z)*den(x+y+z-1)
    + den(y)*den(z)*den(x+y+z-1)
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
*{{{ ApartMultiLinApart_90 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y,z,w;
*
local F = den(x)*den(y)*den(z)*den(w)*den(x+y+z+w-1);
.sort
*
#call ApartMultiLinApart(den,x,y,z,w)
*
.sort
*
local diff =
  F
  -
  (
    - den(w)*den(x)*den(y)*den(z)
    + den(w)*den(x)*den(y)*den(x+y+z+w-1)
    + den(w)*den(x)*den(z)*den(x+y+z+w-1)
    + den(w)*den(y)*den(z)*den(x+y+z+w-1)
    + den(x)*den(y)*den(z)*den(x+y+z+w-1)
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
*{{{ ApartMultiLinApart_91 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)*den(y)^2*den(x+y-1);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff =
  F
  -
  (
    - den(x)*den(y)^2
    - den(x)*den(y)
    + den(x)*den(x+y-1)
    + den(y)^2*den(x+y-1)
    + den(y)*den(x+y-1)
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
*{{{ ApartMultiLinApart_92 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)*den(x-y)*den(y)*den(x+y);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff =
  F
  -
  (
    + 1/2*den(x)^3*den(x-y)
    + den(x)^3*den(y)
    - 1/2*den(x)^3*den(x+y)
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
*{{{ ApartMultiLinApart_93 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)^2*den(y)*den(x+y)^2;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff =
  F
  -
  (
    - 2*den(x)*den(y)^4
    + den(x)^2*den(y)^3
    + den(y)^3*den(x+y)^2
    + 2*den(y)^4*den(x+y)
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
*{{{ ApartMultiLinApart_94 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)*den(y)*den(x+y-1)*den(x+y);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff =
  F
  -
  (
    - den(x)^2*den(y)
    - den(x)*den(y)
    + den(x)*den(x+y-1)
    + den(y)*den(x+y-1)
    + den(x)^2*den(x+y)
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
*{{{ ApartMultiLinApart_95 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)*den(x+y-1)*den(x+y)*den(x+2*y-1)*den(x+2*y);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff =
  F
  -
  (
    + 1/2*den(x)*den(x+y-1)
    - den(x)^2*den(x+y)
    + den(x)*den(x+y)
    - 4*den(x)*den(x+2*y-1)
    + den(x+y-1)*den(x+2*y-1)
    + den(x+y)*den(x+2*y-1)
    + 2*den(x)^2*den(x+2*y)
    + den(x)*den(x+2*y)
    - 1/2*den(x+y-1)*den(x+2*y)
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
*{{{ ApartMultiLinApart_96 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y,z,w;
*
local F = den(x)*den(y)*den(z)*den(w)*den(x+y-1)*den(z+w-1);
.sort
*
#call ApartMultiLinApart(den,x,y,z,w)
*
.sort
*
local diff =
  F
  -
  (
    + den(w)*den(x)*den(y)*den(z)
    - den(w)*den(x)*den(x+y-1)*den(z)
    - den(w)*den(y)*den(x+y-1)*den(z)
    - den(w)*den(x)*den(y)*den(z+w-1)
    + den(w)*den(x)*den(x+y-1)*den(z+w-1)
    + den(w)*den(y)*den(x+y-1)*den(z+w-1)
    - den(x)*den(y)*den(z)*den(z+w-1)
    + den(x)*den(x+y-1)*den(z)*den(z+w-1)
    + den(y)*den(x+y-1)*den(z)*den(z+w-1)
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
*{{{ ApartMultiLinApart_97 :
#include- ../src/formapart.h
*
cfunction den;
symbols x1,x2,x3,x4,x5;
*
local F = den(x1)*den(x2)*den(x3)*den(x4)*den(x5)*den(x1+x2+x3+x4+x5-1);
.sort
*
#call ApartMultiLinApart(den,x1,x2,x3,x4,x5)
*
.sort
*
local diff =
  F
  -
  (
    - den(x1)*den(x2)*den(x3)*den(x4)*den(x5)
    + den(x1)*den(x2)*den(x3)*den(x4)*den(x1+x2+x3+x4+x5-1)
    + den(x1)*den(x2)*den(x3)*den(x5)*den(x1+x2+x3+x4+x5-1)
    + den(x1)*den(x2)*den(x4)*den(x5)*den(x1+x2+x3+x4+x5-1)
    + den(x1)*den(x3)*den(x4)*den(x5)*den(x1+x2+x3+x4+x5-1)
    + den(x2)*den(x3)*den(x4)*den(x5)*den(x1+x2+x3+x4+x5-1)
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
*{{{ ApartMultiLinApart_98 :
#include- ../src/formapart.h
*
cfunction den;
symbols x1,x2,x3,x4,x5,x6,x7;
*
local F = den(x1)*den(x2)*den(x3)*den(x4)*den(x5)*den(x6)*den(x7)*den(x1+x2+x3+x4+x5+x6+x7-1);
.sort
*
#call ApartMultiLinApart(den,x1,x2,x3,x4,x5,x6,x7)
*
.sort
*
local diff =
  F
  -
  (
    - den(x1)*den(x2)*den(x3)*den(x4)*den(x5)*den(x6)*den(x7)
    + den(x1)*den(x2)*den(x3)*den(x4)*den(x5)*den(x6)*den(x1+x2+x3+x4+x5+x6+x7-1)
    + den(x1)*den(x2)*den(x3)*den(x4)*den(x5)*den(x7)*den(x1+x2+x3+x4+x5+x6+x7-1)
    + den(x1)*den(x2)*den(x3)*den(x4)*den(x6)*den(x7)*den(x1+x2+x3+x4+x5+x6+x7-1)
    + den(x1)*den(x2)*den(x3)*den(x5)*den(x6)*den(x7)*den(x1+x2+x3+x4+x5+x6+x7-1)
    + den(x1)*den(x2)*den(x4)*den(x5)*den(x6)*den(x7)*den(x1+x2+x3+x4+x5+x6+x7-1)
    + den(x1)*den(x3)*den(x4)*den(x5)*den(x6)*den(x7)*den(x1+x2+x3+x4+x5+x6+x7-1)
    + den(x2)*den(x3)*den(x4)*den(x5)*den(x6)*den(x7)*den(x1+x2+x3+x4+x5+x6+x7-1)
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
*{{{ ApartMultiLinApart_99 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)^3*den(y)^2*den(-1 + x + y)^2;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff =
  F
  -
  (
    + den(x)^3*den(y)^2
    + 2*den(x)^2*den(y)^2
    + 3*den(x)*den(y)^2
    + 2*den(x)^3*den(y)
    + 6*den(x)^2*den(y)
    + 12*den(x)*den(y)
    + den(x)^3*den(-1 + x + y)^2
    + 2*den(x)^2*den(-1 + x + y)^2
    + 3*den(x)*den(-1 + x + y)^2
    + den(y)^2*den(-1 + x + y)^2
    + 3*den(y)*den(-1 + x + y)^2
    - 2*den(x)^3*den(-1 + x + y)
    - 6*den(x)^2*den(-1 + x + y)
    - 12*den(x)*den(-1 + x + y)
    - 3*den(y)^2*den(-1 + x + y)
    - 12*den(y)*den(-1 + x + y)
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
*{{{ ApartMultiLinApart_100 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)^2*den(2 + x - y)*den(y)*den(-1 + x + y)^2;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff =
  F
  -
  (
    + 1/2*den(x)^2*den(2 + x - y)
    - 9/4*den(x)*den(2 + x - y)
    + 1/2*den(x)^2*den(y)
    + 3/4*den(x)*den(y)
    + 1/36*den(2 + x - y)*den(y)
    + den(x)^2*den(-1 + x + y)^2
    - den(x)*den(-1 + x + y)^2
    + 8/3*den(2 + x - y)*den(-1 + x + y)^2
    + 1/3*den(y)*den(-1 + x + y)^2
    - 3*den(x)*den(-1 + x + y)
    + 40/9*den(2 + x - y)*den(-1 + x + y)
    - 7/9*den(y)*den(-1 + x + y)
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
*{{{ ApartMultiLinApart_101 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)*den(x - y)*den(y)*den(x + y)*den(2*x + y)*den(x + 2*y);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff =
  F
  -
  (
    + 1/18*den(x)^5*den(x - y)
    + 1/2*den(x)^5*den(y)
    + 1/2*den(x)^5*den(x + y)
    - 1/18*den(x)^5*den(2*x + y)
    - 16/9*den(x)^5*den(x + 2*y)
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
*{{{ ApartMultiLinApart_102 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)*den(x - y)*den(1 + x - y)*den(y)*den(-1 + x + y)*den(x + y);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff =
  F
  -
  (
    - 1/2*den(x)^3*den(x - y)
    - den(x)^2*den(x - y)
    - 2*den(x)*den(x - y)
    - 1/2*den(x)^2*den(1 + x - y)
    + 3/2*den(x)*den(1 + x - y)
    - den(x)^3*den(y)
    - den(x)*den(y)
    + 1/2*den(1 + x - y)*den(y)
    - 1/2*den(x)^2*den(-1 + x + y)
    - 3/2*den(x)*den(-1 + x + y)
    + 4*den(x - y)*den(-1 + x + y)
    + 1/2*den(y)*den(-1 + x + y)
    + 1/2*den(x)^3*den(x + y)
    - den(x)^2*den(x + y)
    + 2*den(x)*den(x + y)
    - 4*den(1 + x - y)*den(x + y)
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
*{{{ ApartMultiLinApart_103 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)*den(y)*den(-1 + x + y)*den(z)*den(-3 + x + z)*den(-2 + y + z);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y,z)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_104 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)*den(y)*den(-1 + x + y)*den(z)*den(-1 + x + z)*den(-1 + y + z);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y,z)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_105 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y,z;
*
local F = den(x)^2*den(y)*den(z)^2*den(-1 + x + y + z);
.sort
*
#call ApartMultiLinApart(den,x,y,z)
*
.sort
*
local diff =
  F
  -
  (
    - den(x)^2*den(y)*den(z)^2
    - den(x)*den(y)*den(z)^2
    - den(x)^2*den(y)*den(z)
    - 2*den(x)*den(y)*den(z)
    + den(x)^2*den(y)*den(-1 + x + y + z)
    + 2*den(x)*den(y)*den(-1 + x + y + z)
    + den(x)^2*den(z)^2*den(-1 + x + y + z)
    + den(x)*den(z)^2*den(-1 + x + y + z)
    + den(y)*den(z)^2*den(-1 + x + y + z)
    + den(x)^2*den(z)*den(-1 + x + y + z)
    + 2*den(x)*den(z)*den(-1 + x + y + z)
    + 2*den(y)*den(z)*den(-1 + x + y + z)
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
*{{{ ApartMultiLinApart_106 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)*den(x - y)*den(1 + x - y)*den(y)*den(-1 + x + y)*den(x + y)*den(-5 + 2*x + 3*y);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff =
  F
  -
  (
    + 1/10*den(x)^3*den(x - y)
    + 3/10*den(x)^2*den(x - y)
    + 7/10*den(x)*den(x - y)
    + 1/4*den(x)^2*den(1 + x - y)
    - 1/8*den(x)*den(1 + x - y)
    + 1/5*den(x)^3*den(y)
    + 2/25*den(x)^2*den(y)
    + 29/125*den(x)*den(y)
    - 1/14*den(1 + x - y)*den(y)
    + 1/4*den(x)^2*den(-1 + x + y)
    + 5/8*den(x)*den(-1 + x + y)
    - 8/5*den(x - y)*den(-1 + x + y)
    - 1/6*den(y)*den(-1 + x + y)
    - 1/10*den(x)^3*den(x + y)
    + 11/50*den(x)^2*den(x + y)
    - 111/250*den(x)*den(x + y)
    + 8/9*den(1 + x - y)*den(x + y)
    + 243/500*den(x)*den(-5 + 2*x + 3*y)
    + 1/2*den(x - y)*den(-5 + 2*x + 3*y)
    - 625/504*den(1 + x - y)*den(-5 + 2*x + 3*y)
    + 32/2625*den(y)*den(-5 + 2*x + 3*y)
    - 1/120*den(-1 + x + y)*den(-5 + 2*x + 3*y)
    + 1/2250*den(x + y)*den(-5 + 2*x + 3*y)
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
*{{{ ApartMultiLinApart_107 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)*den(1 + x - y)*den(y)*den(-1 + x + y)*den(-3 + 2*x + y)*den(-2 + x + 3*y);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff =
  F
  -
  (
    - 1/4*den(x)^2*den(1 + x - y)
    + 7/8*den(x)*den(1 + x - y)
    - 1/6*den(x)*den(y)
    + 1/30*den(1 + x - y)*den(y)
    - 1/4*den(x)^2*den(-1 + x + y)
    - 7/8*den(x)*den(-1 + x + y)
    + 1/2*den(y)*den(-1 + x + y)
    - 1/84*den(x)*den(-3 + 2*x + y)
    + 81/440*den(1 + x - y)*den(-3 + 2*x + y)
    - 16/15*den(y)*den(-3 + 2*x + y)
    + 1/24*den(-1 + x + y)*den(-3 + 2*x + y)
    + 81/14*den(x)*den(-2 + x + 3*y)
    - 128/33*den(1 + x - y)*den(-2 + x + 3*y)
    + 1/6*den(y)*den(-2 + x + 3*y)
    - 8/3*den(-1 + x + y)*den(-2 + x + 3*y)
    + 625/231*den(-3 + 2*x + y)*den(-2 + x + 3*y)
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
*{{{ ApartMultiLinApart_108 :
#include- ../src/formapart.h
*
#define Vars "x,y,z,w"
#define Params ""
*
cfunction den;
symbols x,y,z,w;
symbol aux1;
*
local Finput = den(w)*den(x)*den(-1 + w + x)*den(y)*den(z)*den(-2 + w + y + z)*den(-1 + x + y + z);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y,z,w)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_109 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(2 + x - y)*den(5 + 3*x - y)*den(y)*den(-7 + x + y)*den(-1 + x + y)*den(-3 + 2*x + y)*den(-4 + x + 3*y);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_110 :
#include- ../src/formapart.h
*
cfunction den;
symbols x1,x2,x3,x4,x5;
*
local F = den(x1)*den(x2)*den(x3)*den(-1 + x1 + x2 + x3)*den(x4)*den(x5)*den(-2 + x3 + x4 + x5);
.sort
*
#call ApartMultiLinApart(den,x1,x2,x3,x4,x5)
*
.sort
*
local diff =
  F
  -
  (
    + 1/2*den(x1)*den(x2)*den(x3)*den(x4)*den(x5)
    - den(x1)*den(x2)*den(-1 + x1 + x2 + x3)*den(x4)*den(x5)
    - 1/2*den(x1)*den(x3)*den(-1 + x1 + x2 + x3)*den(x4)*den(x5)
    - 1/2*den(x2)*den(x3)*den(-1 + x1 + x2 + x3)*den(x4)*den(x5)
    - 1/2*den(x1)*den(x2)*den(x3)*den(x4)*den(-2 + x3 + x4 + x5)
    + den(x1)*den(x2)*den(-1 + x1 + x2 + x3)*den(x4)*den(-2 + x3 + x4 + x5)
    + 1/2*den(x1)*den(x3)*den(-1 + x1 + x2 + x3)*den(x4)*den(-2 + x3 + x4 + x5)
    + 1/2*den(x2)*den(x3)*den(-1 + x1 + x2 + x3)*den(x4)*den(-2 + x3 + x4 + x5)
    - 1/2*den(x1)*den(x2)*den(x3)*den(x5)*den(-2 + x3 + x4 + x5)
    + den(x1)*den(x2)*den(-1 + x1 + x2 + x3)*den(x5)*den(-2 + x3 + x4 + x5)
    + 1/2*den(x1)*den(x3)*den(-1 + x1 + x2 + x3)*den(x5)*den(-2 + x3 + x4 + x5)
    + 1/2*den(x2)*den(x3)*den(-1 + x1 + x2 + x3)*den(x5)*den(-2 + x3 + x4 + x5)
    + 1/2*den(x1)*den(x2)*den(x4)*den(x5)*den(-2 + x3 + x4 + x5)
    - 1/2*den(x1)*den(-1 + x1 + x2 + x3)*den(x4)*den(x5)*den(-2 + x3 + x4 + x5)
    - 1/2*den(x2)*den(-1 + x1 + x2 + x3)*den(x4)*den(x5)*den(-2 + x3 + x4 + x5)
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
*{{{ ApartMultiLinApart_111 :
#include- ../src/formapart.h
*
cfunction den;
symbols x1,x2,x3,x4,x5,x6;
*
local F = den(x1)*den(x2)*den(x3)*den(x4)*den(x5)*den(x6)*den(-1 + x1 + x2 + x3 + x4 + x5 + x6);
.sort
*
#call ApartMultiLinApart(den,x1,x2,x3,x4,x5,x6)
*
.sort
*
local diff =
  F
  -
  (
    - den(x1)*den(x2)*den(x3)*den(x4)*den(x5)*den(x6)
    + den(x1)*den(x2)*den(x3)*den(x4)*den(x5)*den(-1 + x1 + x2 + x3 + x4 + x5 + x6)
    + den(x1)*den(x2)*den(x3)*den(x4)*den(x6)*den(-1 + x1 + x2 + x3 + x4 + x5 + x6)
    + den(x1)*den(x2)*den(x3)*den(x5)*den(x6)*den(-1 + x1 + x2 + x3 + x4 + x5 + x6)
    + den(x1)*den(x2)*den(x4)*den(x5)*den(x6)*den(-1 + x1 + x2 + x3 + x4 + x5 + x6)
    + den(x1)*den(x3)*den(x4)*den(x5)*den(x6)*den(-1 + x1 + x2 + x3 + x4 + x5 + x6)
    + den(x2)*den(x3)*den(x4)*den(x5)*den(x6)*den(-1 + x1 + x2 + x3 + x4 + x5 + x6)
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
*{{{ ApartMultiLinApart_112 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
*
cfunction den;
symbols x,y;
*
local F = den(x)*den(y)*den(x+y+1);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff = F - (den(x)*den(y) - den(x)*den(x+y+1) - den(y)*den(x+y+1));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_113 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
*
cfunction den;
symbols x,y,z;
*
local F = den(x)*den(y)*den(z)*den(x+y+z+1);
.sort
*
#call ApartMultiLinApart(den,x,y,z)
*
.sort
*
local diff =
  F
  -
  (
    + den(x)*den(y)*den(z)
    - den(x)*den(y)*den(x+y+z+1)
    - den(x)*den(z)*den(x+y+z+1)
    - den(y)*den(z)*den(x+y+z+1)
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
*{{{ ApartMultiLinApart_114 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
*
cfunction den;
symbols x,y,s,t;
*
local F = den(x+s)*den(y+t)*den(x+y+s+t+1);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff = F - (den(x+s)*den(y+t) - den(x+s)*den(x+y+s+t+1)
                  - den(y+t)*den(x+y+s+t+1));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_115 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
*
cfunction den;
symbols x,y;
*
local F = den(x)^2*den(y)*den(x+y)*den(x+y-1);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff =
  F
  -
  (
    + den(x)*den(y)^3
    - den(x)^2*den(y)^2
    - den(x)^2*den(y)
    - den(x)*den(y)
    + den(x)^2*den(x+y-1)
    + den(x)*den(x+y-1)
    + den(y)*den(x+y-1)
    - den(y)^3*den(x+y)
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
*{{{ ApartMultiLinApart_116 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
*
cfunction den;
symbols x1,x2,x3,x4,x5,x6;
*
local F = den(x1)*den(x2)*den(x3)*den(x4)*den(x5)*den(x6)*den(-1 + x1 + x2 + x3 + x4 + x5 + x6);
.sort
*
#call ApartMultiLinApart(den,x1,x2,x3,x4,x5,x6)
*
.sort
*
local diff =
  F
  -
  (
    - den(x1)*den(x2)*den(x3)*den(x4)*den(x5)*den(x6)
    + den(x1)*den(x2)*den(x3)*den(x4)*den(x5)*den(-1 + x1 + x2 + x3 + x4 + x5 + x6)
    + den(x1)*den(x2)*den(x3)*den(x4)*den(x6)*den(-1 + x1 + x2 + x3 + x4 + x5 + x6)
    + den(x1)*den(x2)*den(x3)*den(x5)*den(x6)*den(-1 + x1 + x2 + x3 + x4 + x5 + x6)
    + den(x1)*den(x2)*den(x4)*den(x5)*den(x6)*den(-1 + x1 + x2 + x3 + x4 + x5 + x6)
    + den(x1)*den(x3)*den(x4)*den(x5)*den(x6)*den(-1 + x1 + x2 + x3 + x4 + x5 + x6)
    + den(x2)*den(x3)*den(x4)*den(x5)*den(x6)*den(-1 + x1 + x2 + x3 + x4 + x5 + x6)
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
*{{{ ApartMultiLinApart_117 :
*
*
#include- ../src/formapart.h
*
#Redefine APglobalOrder "1"
#Redefine APorderDescending "0"
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y)*den(2*x+y);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_118 :
*
*
#include- ../src/formapart.h
*
#Redefine APglobalOrder "1"
#Redefine APorderDescending "1"
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y)*den(2*x+y);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_119 :
*
*
#include- ../src/formapart.h
*
#Redefine APglobalOrder "1"
#Redefine APorderDescending "0"
#Redefine APuseGlobalNullRelations "1"
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y)*den(2*x+y);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_120 :
*
*
#include- ../src/formapart.h
*
#Redefine APglobalOrder "1"
#Redefine APorderDescending "1"
#Redefine APuseGlobalNullRelations "1"
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y)*den(2*x+y);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_121 :
*
*
#include- ../src/formapart.h
*
#Redefine APuseBareiss "1"
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)^2*den(y)*den(x+y)*den(x+y-1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_122 :
*
*
#include- ../src/formapart.h
*
#Redefine APuseBareiss "1"
#Redefine APuseGlobalNullRelations "1"
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)^2*den(y)*den(x+y)*den(x+y-1);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_123 :
*
*
*
#include- ../src/formapart.h
*
#Redefine APuseBareiss "1"
#Redefine APglobalOrder "1"
#Redefine APorderDescending "0"
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y)*den(2*x+y);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_124 :
*
*
#include- ../src/formapart.h
*
#Redefine APuseBareiss "1"
#Redefine APglobalOrder "1"
#Redefine APorderDescending "1"
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y)*den(2*x+y);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_125 :
*
*
*
#include- ../src/formapart.h
*
#Redefine APuseBareiss "1"
#Redefine APglobalOrder "1"
#Redefine APorderDescending "0"
#Redefine APuseGlobalNullRelations "1"
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y)*den(2*x+y);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_126 :
*
*
*
#include- ../src/formapart.h
*
#Redefine APuseBareiss "1"
#Redefine APglobalOrder "1"
#Redefine APorderDescending "1"
#Redefine APuseGlobalNullRelations "1"
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y)*den(2*x+y);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
Unhide Finput;
.sort
*
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_127 :
*
*
*
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "3"
*
cfunction den;
symbols x,y;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
Fill APdenTbl(3) = x+y+1;
*
local F = den(x)*den(y)*den(x+y+1);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff = F - (den(x)*den(y) - den(x)*den(x+y+1) - den(y)*den(x+y+1));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_128 :
*
*
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "3"
#Redefine APglobalOrder "1"
#Redefine APorderDescending "0"
#Redefine APuseGlobalNullRelations "1"
#Redefine APuseBareiss "1"
*
cfunction den;
symbols x,y;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
Fill APdenTbl(3) = x+y+1;
*
local F = den(x)*den(y)*den(x+y+1);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff = F - (den(x)*den(y) - den(x)*den(x+y+1) - den(y)*den(x+y+1));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_129 :
#include- ../src/formapart.h
*
cfunction den;
symbols x;
*
local F = x*den(x);
.sort
*
#call ApartMultiLinApart(den,x)
*
.sort
*
local diff = F - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_130 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = x*y*den(x)*den(y);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff = F - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_131 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = x*den(x)*den(y);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff = F - den(y);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_132 :
#include- ../src/formapart.h
*
cfunction den;
symbols x;
*
local F = x^2*den(x)^2;
.sort
*
#call ApartMultiLinApart(den,x)
*
.sort
*
local diff = F - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_133 :
#include- ../src/formapart.h
*
cfunction den;
symbols x;
*
local F = x^3*den(x)^3;
.sort
*
#call ApartMultiLinApart(den,x)
*
.sort
*
local diff = F - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_134 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y,z;
*
local F = x*y*z*den(x)*den(y)*den(z);
.sort
*
#call ApartMultiLinApart(den,x,y,z)
*
.sort
*
local diff = F - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_135 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y,z;
*
local F = x*y*den(x)*den(y)*den(z);
.sort
*
#call ApartMultiLinApart(den,x,y,z)
*
.sort
*
local diff = F - den(z);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_136 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = (x+1)*den(x+1)*den(y);
.sort
*
#call ApartMultiLinApart(den,x,y)
*
.sort
*
local diff = F - den(y);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
