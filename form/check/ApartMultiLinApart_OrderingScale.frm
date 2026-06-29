*{{{ ApartMultiLinApart_OrderingScale_control :
*
#include- ../src/formapart.h
*
#Redefine APglobalOrder "0"
*
On Statistics;
#message ORDERING-MODE: control
*
#define Vars "x,y,z,w"
#define Params ""
*
cfunction den;
symbols x,y,z,w;
symbol aux1;
*
local Finput = den(x)*den(y)*den(z)*den(w)
              *den(x+y)*den(z+w)*den(x+z)*den(y+w)*den(x+w)*den(y+z)
              *den(x+y+z+w);
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
*{{{ ApartMultiLinApart_OrderingScale_asc :
#include- ../src/formapart.h
*
#Redefine APglobalOrder "1"
#Redefine APorderDescending "0"
*
On Statistics;
#message ORDERING-MODE: asc
*
#define Vars "x,y,z,w"
#define Params ""
*
cfunction den;
symbols x,y,z,w;
symbol aux1;
*
local Finput = den(x)*den(y)*den(z)*den(w)
              *den(x+y)*den(z+w)*den(x+z)*den(y+w)*den(x+w)*den(y+z)
              *den(x+y+z+w);
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
*{{{ ApartMultiLinApart_OrderingScale_desc :
#include- ../src/formapart.h
*
#Redefine APglobalOrder "1"
#Redefine APorderDescending "1"
*
On Statistics;
#message ORDERING-MODE: desc
*
#define Vars "x,y,z,w"
#define Params ""
*
cfunction den;
symbols x,y,z,w;
symbol aux1;
*
local Finput = den(x)*den(y)*den(z)*den(w)
              *den(x+y)*den(z+w)*den(x+z)*den(y+w)*den(x+w)*den(y+z)
              *den(x+y+z+w);
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
