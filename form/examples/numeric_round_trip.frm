#include formapart.h
#define Vars "x,y"
#define Params ""
CFunction den;
Symbols x, y;
Symbol aux1;
Local Finput = den(x)^2 * den(y) * den(x+y) * den(x+y-1);
.sort
Local Foutput = Finput;
.sort
Hide Finput;
.sort
#call ApartMultiLinApart(den,x,y)
.sort
Unhide Finput;
.sort
#call ApartNumericCheck(NumDiff,Finput,Foutput,den,Vars,Params,aux1)
Print +s NumDiff;
.end
