*{{{ ApartMultiLinApart_NumCheck_1 :
#include- ../src/formapart.h
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
*{{{ ApartMultiLinApart_NumCheck_2 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x)*den(y)*den(x+y+1);
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
*{{{ ApartMultiLinApart_NumCheck_3 :
#include- ../src/formapart.h
*
#define Vars "x"
#define Params ""
*
cfunction den;
symbols x;
symbol aux1;
*
local Finput = den(x)*den(x+1);
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
*{{{ ApartMultiLinApart_NumCheck_4 :
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
*{{{ ApartMultiLinApart_NumCheck_5 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = den(x+1)*den(y+2)*den(x+y+4);
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
*{{{ ApartMultiLinApart_NumCheck_6 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "s,t"
*
cfunction den;
symbols x,y,s,t;
symbol aux1;
*
local Finput = den(x+s)*den(y+t)*den(x+y+s+t+1);
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
*{{{ ApartMultiLinApart_NumCheck_7 :
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
*{{{ ApartMultiLinApart_NumCheck_8 :
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
*{{{ ApartMultiLinApart_NumCheck_9 :
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
local Finput = den(x)*den(y)*den(x+y)*den(x-y)*den(2*x+y);
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
*{{{ ApartMultiLinApart_NumCheck_10 :
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
local Finput = den(x)*den(y)*den(x+y)*den(x-y)*den(2*x+y);
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
*{{{ ApartMultiLinApart_NumCheck_11 :
#include- ../src/formapart.h
*
#Redefine APglobalOrder "1"
#Redefine APorderDescending "0"
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)*den(y)*den(z)*den(x+y)*den(y+z)*den(x+z)*den(x+y+z);
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
*{{{ ApartMultiLinApart_NumCheck_12 :
#include- ../src/formapart.h
*
#Redefine APglobalOrder "1"
#Redefine APorderDescending "1"
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)*den(y)*den(z)*den(x+y)*den(y+z)*den(x+z)*den(x+y+z);
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
*{{{ ApartMultiLinApart_NumCheck_13 :
#include- ../src/formapart.h
*
#Redefine APglobalOrder "1"
#Redefine APorderDescending "0"
*
#define Vars "x,y,z,w"
#define Params ""
*
cfunction den;
symbols x,y,z,w;
symbol aux1;
*
local Finput = den(x)*den(y)*den(z)*den(w)*den(x+y)*den(z+w)*den(x+y+z+w);
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
*{{{ ApartMultiLinApart_NumCheck_14 :
#include- ../src/formapart.h
*
#Redefine APglobalOrder "1"
#Redefine APorderDescending "1"
*
#define Vars "x,y,z,w"
#define Params ""
*
cfunction den;
symbols x,y,z,w;
symbol aux1;
*
local Finput = den(x)*den(y)*den(z)*den(w)*den(x+y)*den(z+w)*den(x+y+z+w);
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
*{{{ ApartMultiLinApart_NumCheck_15 :
#include- ../src/formapart.h
*
#Redefine APglobalOrder "1"
#Redefine APorderDescending "0"
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)^2*den(y)*den(z)*den(x+y)*den(x+z)*den(y+z)*den(x+y+z);
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
*{{{ ApartMultiLinApart_NumCheck_16 :
#include- ../src/formapart.h
*
#Redefine APglobalOrder "1"
#Redefine APorderDescending "1"
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = den(x)^2*den(y)*den(z)*den(x+y)*den(x+z)*den(y+z)*den(x+y+z);
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
*{{{ ApartMultiLinApart_NumCheck_17 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x*den(x)*den(y)*den(x+y+1);
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
*{{{ ApartMultiLinApart_NumCheck_18 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x*y*den(x)*den(y)*den(x+y+1);
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
*{{{ ApartMultiLinApart_NumCheck_19 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = (x+y)*den(x)*den(y)*den(x+y+1);
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
*{{{ ApartMultiLinApart_NumCheck_20 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x^2*den(x)^2*den(y)*den(x+y+1);
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
*{{{ ApartMultiLinApart_NumCheck_21 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = (x^2+y)*den(x)^2*den(y)^2*den(x+y+1);
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
*{{{ ApartMultiLinApart_NumCheck_22 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x*den(x+1)*den(y-1)*den(x+y+1);
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
*{{{ ApartMultiLinApart_NumCheck_23 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "epsilon"
*
cfunction den;
symbols x,y,epsilon;
symbol aux1;
*
local Finput = epsilon*x*den(x)*den(y)*den(x+y+1);
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
*{{{ ApartMultiLinApart_NumCheck_24 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = x*y*den(x)*den(y)*den(z)*den(x+y+z+1);
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
*{{{ ApartMultiLinApart_NumCheck_25 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = (x+y+z)*den(x)*den(y)*den(z)*den(x+y+z+1);
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
*{{{ ApartMultiLinApart_NumCheck_26 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x*y^2*den(x)^2*den(y)^3*den(x+y+1);
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
*{{{ ApartMultiLinApart_NumCheck_27 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x^3*den(x)^3*den(y)*den(x+y+1);
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
*{{{ ApartMultiLinApart_NumCheck_28 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "s,t"
*
cfunction den;
symbols x,y,s,t;
symbol aux1;
*
local Finput = (x+s)*den(x+s)*den(y+t)*den(x+y+s+t+1);
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
*{{{ ApartMultiLinApart_NumCheck_29 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x*den(x)*den(y)*den(x+y)*den(x-y)*den(2*x+y);
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
*{{{ ApartMultiLinApart_NumCheck_30 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = (x+y)*den(x+y)*den(x-y)*den(2*x+y);
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
*{{{ ApartMultiLinApart_NumCheck_31 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x^2*den(x)*den(y)*den(x+y+1);
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
*{{{ ApartMultiLinApart_NumCheck_32 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = (x+y+1)*den(x)*den(y)*den(x+y+1);
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
*{{{ ApartMultiLinApart_NumCheck_33 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x*den(x)*den(y)*den(x+y+1)^2;
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
*{{{ ApartMultiLinApart_NumCheck_34 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x*den(x)*den(y)*den(x+y)*den(x+y+1);
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
*{{{ ApartMultiLinApart_NumCheck_35 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = (x^2+x*y+1)*den(x)*den(y)*den(x+y)*den(x+y+1);
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
*{{{ ApartMultiLinApart_NumCheck_36 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "epsilon"
*
cfunction den;
symbols x,y,epsilon;
symbol aux1;
*
local Finput = (epsilon*x+y)*den(x)*den(y)*den(x+y+1);
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
*{{{ ApartMultiLinApart_NumCheck_37 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = x*den(x)*den(y)*den(z)*den(x+y)*den(x+y+z+1);
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
*{{{ ApartMultiLinApart_NumCheck_38 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x^2*den(x+1)*den(y+2)*den(x+y+3);
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
*{{{ ApartMultiLinApart_NumCheck_39 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x*y*den(x+y)*den(x-y)*den(2*x+y);
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
*{{{ ApartMultiLinApart_NumCheck_40 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x^2*y*den(x+y)*den(x-y)*den(2*x+y);
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
*{{{ ApartMultiLinApart_NumCheck_41 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x*den(y)*den(x+y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_42 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x^2*den(y)*den(x+y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_43 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = (x+1)*den(y)*den(x+y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_44 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = (x+y)*den(y)*den(x+y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_45 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x*den(y)*den(x+y)*den(x+y+2);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_46 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x*den(y)*den(x+y)*den(x+y-1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_47 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x*den(y)*den(2*x+y)*den(2*x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_48 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "s"
*
cfunction den;
symbols x,y,s;
symbol aux1;
*
local Finput = x*den(y)*den(x+y)*den(x+y+s);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_49 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x*den(y)*den(x+y)^2*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_50 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x*den(y)*den(x+y)*den(x+y+1)*den(x+y+2);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_51 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x*y*den(x+1)*den(x+2)*den(y+1)*den(y+2);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_52 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = z*den(x)*den(y)*den(x+y+z)*den(x+y+z+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y,z)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_53 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x^2*y^2*den(x)*den(y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_54 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x^3*y*den(x)*den(y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_55 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = x^2*y*z*den(x)*den(y)*den(z)*den(x+y+z+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y,z)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_56 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x^4*den(x)*den(y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_57 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "eps,s12,s23"
*
cfunction den;
symbols x,y,eps,s12,s23;
symbol aux1;
*
local Finput = (3*eps*s12-4*s23^2+7)*x*den(x)*den(y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_58 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "a,b,c"
*
cfunction den;
symbols x,y,a,b,c;
symbol aux1;
*
local Finput = (a+b*x+c*y)*den(x)*den(y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_59 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x*den(2*x+3)*den(y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_60 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x*y*den(2*x+y)*den(x-y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_61 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "s"
*
cfunction den;
symbols x,y,s;
symbol aux1;
*
local Finput = x*den(s*x+1)*den(y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_62 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "eps"
*
cfunction den;
symbols x,y,eps;
symbol aux1;
*
local Finput = x*den((1+eps)*x+y)*den(y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_63 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = (x+y)^2*den(x)*den(y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_64 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = x*y*den(x)*den(y)*den(z)*den(x+y)*den(x+y+z+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y,z)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_65 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x^2*y*den(x)^2*den(y)^2*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_66 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x^2*den(x)*den(x+1)*den(y);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_67 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = z^2*den(x)*den(y)*den(z)*den(x+y+z+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y,z)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_68 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "s12,s23"
*
cfunction den;
symbols x,y,s12,s23;
symbol aux1;
*
local Finput = (s12*x+s23*y)*den(x)*den(y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_69 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x^6*den(x)*den(y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_70 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x^5*y^3*den(x)*den(y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_71 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = x^3*y^2*z*den(x)*den(y)*den(z)*den(x+y+z+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y,z)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_72 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = (x+y+z)^3*den(x)*den(y)*den(z)*den(x+y+z+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y,z)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_73 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x^5*den(x)^4*den(y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_74 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x^4*y^4*den(x)^2*den(y)^2*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_75 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x*y*den(x)*den(y)*den(x+y)*den(x-y)*den(2*x+y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_76 :
#include- ../src/formapart.h
*
#define Vars "x,y,z"
#define Params ""
*
cfunction den;
symbols x,y,z;
symbol aux1;
*
local Finput = x*y*z*den(x)*den(y)*den(z)*den(x+y)*den(y+z)*den(x+z)*den(x+y+z);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y,z)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_77 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = (x+y)*(x-y)*den(x)*den(y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_78 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = (x+1)*(y+2)*den(x)*den(y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_79 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = (3*x-2*y)*den(x)*den(y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_80 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = (x^2+x*y+y^2)*den(x)*den(y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_81 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x^2*den(x+y)*den(x-y)*den(2*x+y);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_82 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = (x+y)*den(x)*den(y)*den(x+y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_83 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "eps,s12"
*
cfunction den;
symbols x,y,eps,s12;
symbol aux1;
*
local Finput = (eps*x^2+s12*y^2)*den(x)*den(y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_84 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "eps"
*
cfunction den;
symbols x,y,eps;
symbol aux1;
*
local Finput = (eps^2+eps+1)*x*y*den(x)*den(y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_85 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "s,t"
*
cfunction den;
symbols x,y,s,t;
symbol aux1;
*
local Finput = x*den(s*x+y)*den(x+t*y)*den(x+y+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_86 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params "m1,m2,m3"
*
cfunction den;
symbols x,y,m1,m2,m3;
symbol aux1;
*
local Finput = x*y*den(x+m1)*den(y+m2)*den(x+y+m3);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_87 :
#include- ../src/formapart.h
*
#define Vars "x,y,z,w"
#define Params ""
*
cfunction den;
symbols x,y,z,w;
symbol aux1;
*
local Finput = x*y*z*w*den(x)*den(y)*den(z)*den(w)*den(x+y+z+w+1);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y,z,w)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
*
*{{{ ApartMultiLinApart_NumCheck_88 :
#include- ../src/formapart.h
*
#define Vars "x,y"
#define Params ""
*
cfunction den;
symbols x,y;
symbol aux1;
*
local Finput = x^3*den(x)*den(x+1)*den(x+2)*den(y);
.sort
local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
.sort
print +ss;
.end
assert succeeded?
assert result("NumDiff") =~ expr("0")
*}}}
