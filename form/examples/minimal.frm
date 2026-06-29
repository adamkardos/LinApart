#include formapart.h
CFunction den;
Symbols x, y;
Local F = den(x)^2 * den(y) * den(x+y) * den(x+y-1);
.sort
#call ApartMultiLinApart(den,x,y)
Print +s;
.end
