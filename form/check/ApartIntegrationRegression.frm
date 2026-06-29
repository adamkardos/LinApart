*{{{ ApartIntegrationRegression_1 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(-1 + x + y);
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
*{{{ ApartIntegrationRegression_2 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x + y);
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
*{{{ ApartIntegrationRegression_3 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(2 + x - y)*den(y)*den(-1 + x + y);
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
*{{{ ApartIntegrationRegression_4 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(2 + x - y)*den(y)*den(-1 + x + y)*den(-3 + 2*x + y);
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
*{{{ ApartIntegrationRegression_5 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)^2*den(y)*den(-1 + x + y);
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
*{{{ ApartIntegrationRegression_6 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)^2*den(-1 + x + y);
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
*{{{ ApartIntegrationRegression_7 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(-1 + x + y)^2;
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
*{{{ ApartIntegrationRegression_8 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)^3*den(y)^2*den(-1 + x + y)^2;
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
*{{{ ApartIntegrationRegression_9 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)^2*den(2 + x - y)*den(y)*den(-1 + x + y)^2;
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
*{{{ ApartIntegrationRegression_10 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(x - y)*den(y)*den(x + y);
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
*{{{ ApartIntegrationRegression_11 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(x - y)*den(y)*den(x + y)*den(2*x + y)*den(x + 2*y);
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
*{{{ ApartIntegrationRegression_12 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)^2*den(y)*den(x + y)^2;
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
*{{{ ApartIntegrationRegression_13 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(x - y)*den(1 + x - y)*den(y)*den(-1 + x + y)*den(x + y);
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
*{{{ ApartIntegrationRegression_14 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(-1 + x + y)*den(x + y);
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
*{{{ ApartIntegrationRegression_15 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "a,b"
*
cfunction den;
symbols x,y,a,b;
symbol aux1;
*
local Finput = den(x)*den(y)*den(-1 + a*x + y)*den(-1 + x + b*y);
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
*{{{ ApartIntegrationRegression_16 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "s,t"
*
cfunction den;
symbols x,y,s,t;
symbol aux1;
*
local Finput = den(s - x)*den(t - y)*den(-1 + s + t - x - y);
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
*{{{ ApartIntegrationRegression_17 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "s,t,u,v"
*
cfunction den;
symbols x,y,s,t,u,v;
symbol aux1;
*
local Finput = den(x)*den(y)*den(-1 + s*x + t*y)*den(1 + u*x - v*y);
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
*{{{ ApartIntegrationRegression_18 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)*den(y)*den(z)*den(-1 + x + y + z);
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
*{{{ ApartIntegrationRegression_19 :
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
*{{{ ApartIntegrationRegression_20 :
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
*{{{ ApartIntegrationRegression_21 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)^2*den(y)*den(z)^2*den(-1 + x + y + z);
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
*{{{ ApartIntegrationRegression_22 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)*den(y)*den(z)*den(x + y + z);
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
*{{{ ApartIntegrationRegression_23 :
#include- ../src/formapart.h
*
#define Vars "x,y,z,w"
#define Params ""
*
cfunction den;
symbols x,y,z,w;
symbol aux1;
*
local Finput = den(w)*den(x)*den(y)*den(z)*den(-1 + w + x + y + z);
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
*{{{ ApartIntegrationRegression_24 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(x - y)*den(1 + x - y)*den(y)*den(-1 + x + y)*den(x + y)*den(-5 + 2*x + 3*y);
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
*{{{ ApartIntegrationRegression_25 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)^3*den(1 + x - y)^2*den(y)^3*den(-1 + x + y)^3;
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
*{{{ ApartIntegrationRegression_26 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(1 + x - y)*den(y)*den(-1 + x + y)*den(-3 + 2*x + y)*den(-2 + x + 3*y);
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
*{{{ ApartIntegrationRegression_27 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x + y)*den(z)*den(-2 + x + z)*den(-1 + y + z)*den(-3 + x + y + z);
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
*{{{ ApartIntegrationRegression_28 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)^2*den(y)^2*den(z)*den(1 + x - y + z)*den(-1 + x + y + z)^2;
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
*{{{ ApartIntegrationRegression_29 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)*den(y)*den(-1 + x + y)*den(z)*den(-1 + x + z)*den(1 + x - y + z)*den(-1 + y + z)*den(-2 + x + y + z);
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
*{{{ ApartIntegrationRegression_30 :
#include- ../src/formapart.h
*
#define Vars "x,y,z,w"
#define Params ""
*
cfunction den;
symbols x,y,z,w;
symbol aux1;
*
local Finput = den(w)*den(x)*den(y)*den(-1 + x + y)*den(z)*den(-1 + w + z);
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
*{{{ ApartIntegrationRegression_31 :
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
*{{{ ApartIntegrationRegression_32 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "a,b,c,d,e,f,g,h,k"
*
cfunction den;
symbols x,y,a,b,c,d,e,f,g,h,k;
symbol aux1;
*
local Finput = den(-c + a*x + b*y)*den(-f + d*x + e*y)*den(-k + g*x + h*y);
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
*{{{ ApartIntegrationRegression_33 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(-1 + x + y)*den(x + y)*den(-1 + x + 2*y)*den(x + 2*y);
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
*{{{ ApartIntegrationRegression_34 :
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
*{{{ ApartIntegrationRegression_35 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(1 + 2*x - 3*y)*den(2 + x - y)*den(5 + 3*x - y)*den(y)*den(-7 + x + y)*den(-1 + x + y)*den(-3 + 2*x + y)*den(-2 + 4*x + y)*den(-4 + x + 3*y);
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
*{{{ ApartIntegrationRegression_36 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(3 + x - 5*y)*den(1 + 2*x - 3*y)*den(2 + x - y)*den(5 + 3*x - y)*den(y)*den(-7 + x + y)*den(-1 + x + y)*den(-3 + 2*x + y)*den(-2 + 4*x + y)*den(-9 + 5*x + 2*y)*den(-4 + x + 3*y);
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
*{{{ ApartIntegrationRegression_37 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(3 + x - 5*y)*den(1 + 2*x - 3*y)*den(1 + 7*x - 2*y)*den(2 + x - y)*den(5 + 3*x - y)*den(y)*den(-7 + x + y)*den(-1 + x + y)*den(-3 + 2*x + y)*den(-2 + 4*x + y)*den(-9 + 5*x + 2*y)*den(-4 + x + 3*y)*den(-11 + 3*x + 4*y)*den(-13 + x + 6*y);
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
*{{{ ApartIntegrationRegression_38 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)^5*den(y)^4*den(-1 + x + y)^3;
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
*{{{ ApartIntegrationRegression_39 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)^8*den(y)^6*den(-1 + x + y)^4;
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
*{{{ ApartIntegrationRegression_40 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)^10*den(y)^7*den(-1 + x + y)^5;
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
*{{{ ApartIntegrationRegression_41 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)^5*den(2 + x - y)^4*den(y)^4*den(-1 + x + y)^3;
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
*{{{ ApartIntegrationRegression_42 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)^4*den(2 + x - y)^2*den(y)^3*den(-1 + x + y)^3*den(-3 + 2*x + y)^2;
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
*{{{ ApartIntegrationRegression_43 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)^5*den(y)^4*den(z)^3*den(-1 + x + y + z)^4;
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
*{{{ ApartIntegrationRegression_44 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)^8*den(y)^6*den(z)^5*den(-1 + x + y + z)^4;
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
*{{{ ApartIntegrationRegression_45 :
#include- ../src/formapart.h
*
#define Vars "x1,x2,x3,x4,x5"
#define Params ""
*
cfunction den;
symbols x1,x2,x3,x4,x5;
symbol aux1;
*
local Finput = den(x1)*den(x2)*den(x3)*den(x4)*den(x5)*den(-1 + x1 + x2 + x3 + x4 + x5);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x1,x2,x3,x4,x5)
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
*{{{ ApartIntegrationRegression_46 :
#include- ../src/formapart.h
*
#define Vars "x1,x2,x3,x4,x5"
#define Params ""
*
cfunction den;
symbols x1,x2,x3,x4,x5;
symbol aux1;
*
local Finput = den(x1)*den(x2)*den(x3)*den(-1 + x1 + x2 + x3)*den(x4)*den(x5)*den(-2 + x3 + x4 + x5);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x1,x2,x3,x4,x5)
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
*{{{ ApartIntegrationRegression_47 :
#include- ../src/formapart.h
*
#define Vars "x1,x2,x3,x4,x5,x6"
#define Params ""
*
cfunction den;
symbols x1,x2,x3,x4,x5,x6;
symbol aux1;
*
local Finput = den(x1)*den(x2)*den(x3)*den(x4)*den(x5)*den(x6)*den(-1 + x1 + x2 + x3 + x4 + x5 + x6);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x1,x2,x3,x4,x5,x6)
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
*{{{ ApartIntegrationRegression_48 :
#include- ../src/formapart.h
*
#define Vars "x,y,z,w"
#define Params ""
*
cfunction den;
symbols x,y,z,w;
symbol aux1;
*
local Finput = den(w)*den(x)*den(-4 + w + x)*den(y)*den(-1 + x + y)*den(z)*den(-3 + w + z)*den(-2 + y + z);
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
*{{{ ApartIntegrationRegression_49 :
#include- ../src/formapart.h
*
#define Vars "x,y,z,w"
#define Params ""
*
cfunction den;
symbols x,y,z,w;
symbol aux1;
*
local Finput = den(w)*den(x)*den(-4 + w + x)*den(y)*den(-1 + x + y)*den(z)*den(-3 + w + z)*den(-2 + y + z)*den(-5 + w + x + y + z);
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
*{{{ ApartIntegrationRegression_50 :
#include- ../src/formapart.h
*
#define Vars "x1,x2,x3,x4,x5"
#define Params ""
*
cfunction den;
symbols x1,x2,x3,x4,x5;
symbol aux1;
*
local Finput = den(x1)^2*den(x2)^2*den(x3)*den(-1 + x1 + x2 + x3)^2*den(x4)*den(x5)*den(-2 + x4 + x5);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x1,x2,x3,x4,x5)
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
*{{{ ApartIntegrationRegression_51 :
#include- ../src/formapart.h
*
#define Vars "x1,x2,x3,x4,x5,x6,x7"
#define Params ""
*
cfunction den;
symbols x1,x2,x3,x4,x5,x6,x7;
symbol aux1;
*
local Finput = den(x1)*den(x2)*den(x3)*den(x4)*den(x5)*den(x6)*den(x7)*den(-1 + x1 + x2 + x3 + x4 + x5 + x6 + x7);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x1,x2,x3,x4,x5,x6,x7)
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
*{{{ ApartIntegrationRegression_52 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "epsilon"
*
cfunction den;
symbols x,y,epsilon;
symbol aux1;
*
local Finput = den(x)*den(y)*den(epsilon + (3 + 2*epsilon)*x - (1 - epsilon)*y)*den(-2 + epsilon + (1 + epsilon^2)*x + epsilon*y)*den(-1 + (2 - epsilon)*x + (1 + epsilon)*y);
.sort
*
local Foutput = Finput;
.sort
*
multiply replace_(epsilon,7);
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
*{{{ ApartIntegrationRegression_53 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "epsilon"
*
cfunction den;
symbols x,y,epsilon;
symbol aux1;
*
local Finput = den(x)*den(y)*den(-1 + (1 + epsilon)*x + y)*den(-epsilon^3 + epsilon*x + (3 - 2*epsilon)*y)*den(-2 + x + (1 - epsilon)*y)*den(3 + (2 + epsilon^2)*x - epsilon*y);
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
*{{{ ApartIntegrationRegression_54 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)^3*den(1 + x - y)^2*den(2 + 3*x - y)^2*den(y)^2*den(-1 + x + y)^2*den(-3 + 2*x + y)*den(-5 + x + 2*y)*den(-4 + x + 3*y);
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
*{{{ ApartIntegrationRegression_55 :
#include- ../src/formapart.h
*
#define Vars "x,y,z,w"
#define Params ""
*
cfunction den;
symbols x,y,z,w;
symbol aux1;
*
local Finput = den(w)*den(x)*den(y)*den(-3 + w + y)*den(-1 + x + y)*den(x + y)*den(z)*den(-1 + w + z)*den(w + z)*den(-2 + x + z);
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
*{{{ ApartIntegrationRegression_56 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)^3*den(7 + x - 2*y)*den(1 + x - y)^2*den(2 + 3*x - y)^2*den(y)^2*den(-1 + x + y)^2*den(-3 + 2*x + y)*den(-5 + x + 2*y)*den(-4 + x + 3*y)*den(-10 + 4*x + 3*y);
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
*{{{ ApartIntegrationRegression_57 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)^3*den(y)^2*den(-1 + x + y)^2*den(z)^2*den(-3 + x + z)*den(-2 + y + z)^2*den(-4 + x + y + z);
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
*{{{ ApartIntegrationRegression_58 :
#include- ../src/formapart.h
*
#define Vars "x1,x2,x3,x4,x5"
#define Params ""
*
cfunction den;
symbols x1,x2,x3,x4,x5;
symbol aux1;
*
local Finput = den(x1)*den(x2)*den(-1 + x1 + x2)*den(x3)*den(-2 + x2 + x3)*den(x4)*den(-3 + x3 + x4)*den(x5)*den(-4 + x4 + x5);
.sort
*
local Foutput = Finput;
.sort
*
Hide Finput;
.sort
*
#call ApartMultiLinApart(den,x1,x2,x3,x4,x5)
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
*{{{ ApartIntegrationRegression_59 :
#include- ../src/formapart.h
*
#define Vars "x,y,z,w"
#define Params ""
*
cfunction den;
symbols x,y,z,w;
symbol aux1;
*
local Finput = den(w)*den(x)^2*den(y)^2*den(-1 + x + y)*den(z)*den(-2 + w + z)^2*den(-3 + w + x + y + z);
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
*{{{ ApartIntegrationRegression_60 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)*den(1 + x - y)*den(y)*den(-1 + x + y)*den(2 + y - z)*den(z)*den(-3 + x + z)*den(-2 + y + z)*den(-4 + x + y + z)*den(-5 + 2*x + y + z);
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
