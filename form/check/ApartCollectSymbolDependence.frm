*{{{ ApartCollectSymbolDependence_1 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
cfunction collect;
*
local orig = d1 + d1^2 + 2*d1*d2 + 2*d1*d3;
.sort
*
#call ApartCollectSymbolDependence(temp,collect,d1,d2,d3)
*
.sort
*
local diff = temp - (collect(d1) + collect(d1,d2) + collect(d1,d3));
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCollectSymbolDependence_2 :
#include- ../src/formapart.h
*
symbol d1;
cfunction collect;
*
local orig = d1 + d1^2 + d1^3;
.sort
*
#call ApartCollectSymbolDependence(temp,collect,d1)
*
.sort
*
local diff = temp - collect(d1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCollectSymbolDependence_3 :
#include- ../src/formapart.h
*
symbols d1,d2;
cfunction collect;
*
local orig = d1 + d2 + d1*d2;
.sort
*
#call ApartCollectSymbolDependence(temp,collect,d1,d2)
*
.sort
*
local diff = temp - (collect(d1) + collect(d2) + collect(d1,d2));
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCollectSymbolDependence_4 :
#include- ../src/formapart.h
*
symbol d1;
cfunction collect;
*
local orig = 5*d1 + 7*d1^4;
.sort
*
#call ApartCollectSymbolDependence(temp,collect,d1)
*
.sort
*
local diff = temp - collect(d1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCollectSymbolDependence_5 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
cfunction collect;
*
local orig = d1*d2*d3;
.sort
*
#call ApartCollectSymbolDependence(temp,collect,d1,d2,d3)
*
.sort
*
local diff = temp - collect(d1,d2,d3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCollectSymbolDependence_6 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
cfunction collect;
*
local orig = d1^2*d2 + d2*d3 + d1^3*d2 + d3;
.sort
*
#call ApartCollectSymbolDependence(temp,collect,d1,d2,d3)
*
.sort
*
local diff = temp - (collect(d1,d2) + collect(d2,d3) + collect(d3));
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCollectSymbolDependence_7 :
#include- ../src/formapart.h
*
symbols d1,d2,x;
cfunction collect;
*
local orig = x*d1 + d2;
.sort
*
#call ApartCollectSymbolDependence(temp,collect,d1,d2)
*
.sort
*
local diff = temp - (collect(d1) + collect(d2));
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCollectSymbolDependence_8 :
#include- ../src/formapart.h
*
symbols d1,d2;
cfunction collect;
*
local orig = d1^-1 + d1^-2 + d1^-2*d2^-1;
.sort
*
#call ApartCollectSymbolDependence(temp,collect,d1,d2)
*
.sort
*
local diff = temp - (collect(d1) + collect(d1,d2));
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCollectSymbolDependence_9 :
#include- ../src/formapart.h
*
symbol d1;
cfunction collect;
*
local orig = d1^2 + d1^-3;
.sort
*
#call ApartCollectSymbolDependence(temp,collect,d1)
*
.sort
*
local diff = temp - collect(d1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCollectSymbolDependence_10 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
cfunction collect;
*
local orig = d1^-1*d2^-2*d3^-1 + d1^-1*d2^-1;
.sort
*
#call ApartCollectSymbolDependence(temp,collect,d1,d2,d3)
*
.sort
*
local diff = temp - (collect(d1,d2,d3) + collect(d1,d2));
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCollectSymbolDependence_11 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5;
cfunction collect;
*
local orig = d1 + d3 + d1*d3;
.sort
*
#call ApartCollectSymbolDependence(temp,collect,d1,d2,d3,d4,d5)
*
.sort
*
local diff = temp - (collect(d1) + collect(d3) + collect(d1,d3));
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCollectSymbolDependence_12 :
#include- ../src/formapart.h
*
symbols d1,d2,x,y;
cfunction collect;
*
local orig = d1*x + d2*y + d1*d2;
.sort
*
#call ApartCollectSymbolDependence(temp,collect,d1,d2)
*
.sort
*
local diff = temp - (collect(d1) + collect(d2) + collect(d1,d2));
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCollectSymbolDependence_13 :
#include- ../src/formapart.h
*
symbols d1,d2;
cfunction collect;
*
local orig = 1/2*d1 + 3/7*d1^2 + 5/3*d1*d2;
.sort
*
#call ApartCollectSymbolDependence(temp,collect,d1,d2)
*
.sort
*
local diff = temp - (collect(d1) + collect(d1,d2));
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCollectSymbolDependence_14 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5;
cfunction collect;
*
local orig = d1^-2*d2 + d3^4 + d1^-2*d2*d5 + d4;
.sort
*
#call ApartCollectSymbolDependence(temp,collect,d1,d2,d3,d4,d5)
*
.sort
*
local diff = temp
  - (collect(d1,d2) + collect(d3) + collect(d1,d2,d5) + collect(d4));
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCollectSymbolDependence_15 :
#include- ../src/formapart.h
*
symbols d1,d2;
cfunction collect;
*
local orig = d1*d2 + d1 + d1*d2;
.sort
*
#call ApartCollectSymbolDependence(temp,collect,d1,d2)
*
.sort
*
local diff = temp - (collect(d1) + collect(d1,d2));
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCollectSymbolDependence_16 :
*
*
*
#include- ../src/formapart.h
*
cfunction collect;
*
local orig = 1;
.sort
*
#call ApartCollectSymbolDependence(temp,collect)
*
.sort
*
print +s;
.end
assert succeeded?
*}}}
