*{{{ ApartTagVarDepFunctionHeads_1 :
#include- ../src/formapart.h
*
cfunctions den,wrap,depden;
symbols x,y,a,b;
*
local F = den(x);
.sort
*
#call ApartTagVarDepFunctionHeads(den,wrap,depden,x,y)
*
.sort
*
local diff = F - depden(x);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTagVarDepFunctionHeads_2 :
#include- ../src/formapart.h
*
cfunctions den,wrap,depden;
symbols x,y,a,b;
*
local F = den(a+b);
.sort
*
#call ApartTagVarDepFunctionHeads(den,wrap,depden,x,y)
*
.sort
*
local diff = F - den(a+b);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTagVarDepFunctionHeads_3 :
#include- ../src/formapart.h
*
cfunctions den,wrap,depden;
symbols x,y,a,b;
*
local F = den(y);
.sort
*
#call ApartTagVarDepFunctionHeads(den,wrap,depden,x,y)
*
.sort
*
local diff = F - depden(y);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTagVarDepFunctionHeads_4 :
#include- ../src/formapart.h
*
cfunctions den,wrap,depden;
symbols x,y,a,b;
*
local F = den(x+y+a);
.sort
*
#call ApartTagVarDepFunctionHeads(den,wrap,depden,x,y)
*
.sort
*
local diff = F - depden(x+y+a);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTagVarDepFunctionHeads_5 :
#include- ../src/formapart.h
*
cfunctions den,wrap,depden;
symbols x,y,a,b;
*
local F = den(x)*den(a)*den(y+1)*den(b+3);
.sort
*
#call ApartTagVarDepFunctionHeads(den,wrap,depden,x,y)
*
.sort
*
local diff = F - depden(x)*den(a)*depden(y+1)*den(b+3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTagVarDepFunctionHeads_6 :
#include- ../src/formapart.h
*
cfunctions den,wrap,depden;
symbols x,y,a,b;
*
local F = den(x+1)^3;
.sort
*
#call ApartTagVarDepFunctionHeads(den,wrap,depden,x,y)
*
.sort
*
local diff = F - depden(x+1)^3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTagVarDepFunctionHeads_7 :
#include- ../src/formapart.h
*
cfunctions den,wrap,depden;
symbols x,y,a,b;
*
local F = den(x)^2*den(a+b)^3;
.sort
*
#call ApartTagVarDepFunctionHeads(den,wrap,depden,x,y)
*
.sort
*
local diff = F - depden(x)^2*den(a+b)^3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTagVarDepFunctionHeads_8 :
#include- ../src/formapart.h
*
cfunctions den,wrap,depden;
symbols x,y,a,b;
*
local F = den(a)*den(b)*den(a+b+1);
.sort
*
#call ApartTagVarDepFunctionHeads(den,wrap,depden,x,y)
*
.sort
*
local diff = F - den(a)*den(b)*den(a+b+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTagVarDepFunctionHeads_9 :
#include- ../src/formapart.h
*
cfunctions den,wrap,depden;
symbols x,y,a;
*
local F = 5*den(x)*den(3);
.sort
*
#call ApartTagVarDepFunctionHeads(den,wrap,depden,x,y)
*
.sort
*
local diff = F - 5*depden(x)*den(3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTagVarDepFunctionHeads_10 :
#include- ../src/formapart.h
*
cfunctions den,wrap,depden;
symbols x,y,a,b;
*
local F = den(x)*den(y) + den(a)*den(b) + den(x+a)*den(b);
.sort
*
#call ApartTagVarDepFunctionHeads(den,wrap,depden,x,y)
*
.sort
*
local diff = F - (depden(x)*depden(y) + den(a)*den(b) + depden(x+a)*den(b));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTagVarDepFunctionHeads_11 :
#include- ../src/formapart.h
*
cfunctions den,wrap,depden;
symbols x,y,z,a;
*
local F = den(z+1)*den(a);
.sort
*
#call ApartTagVarDepFunctionHeads(den,wrap,depden,x,y,z)
*
.sort
*
local diff = F - depden(z+1)*den(a);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTagVarDepFunctionHeads_12 :
#include- ../src/formapart.h
*
cfunctions den,wrap,depden;
symbols x,y,a;
*
local F = den(x+1)*den(y+1);
.sort
*
#call ApartTagVarDepFunctionHeads(den,wrap,depden,x)
*
.sort
*
local diff = F - depden(x+1)*den(y+1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTagVarDepFunctionHeads_13 :
#include- ../src/formapart.h
*
cfunctions den,wrap,depden;
symbols x,y,s,t;
*
local F = den(s*x+t);
.sort
*
#call ApartTagVarDepFunctionHeads(den,wrap,depden,x,y)
*
.sort
*
local diff = F - depden(s*x+t);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTagVarDepFunctionHeads_14 :
#include- ../src/formapart.h
*
cfunctions den,wrap,depden;
symbols x,y,a;
*
local F = -3*den(x+y+1)^2*den(a);
.sort
*
#call ApartTagVarDepFunctionHeads(den,wrap,depden,x,y)
*
.sort
*
local diff = F - (-3*depden(x+y+1)^2*den(a));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTagVarDepFunctionHeads_15 :
#include- ../src/formapart.h
*
cfunctions den,wrap,depden;
symbols x,y,a;
*
local F = x*y + a;
.sort
*
#call ApartTagVarDepFunctionHeads(den,wrap,depden,x,y)
*
.sort
*
local diff = F - (x*y + a);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTagVarDepFunctionHeads_16 :
#include- ../src/formapart.h
*
cfunctions den,wrap,depden;
symbols x,y;
*
local F = den(x);
.sort
*
#call ApartTagVarDepFunctionHeads(den,wrap,depden,x,y)
*
.sort
*
local diff = F - depden(x);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTagVarDepFunctionHeads_17 :
#include- ../src/formapart.h
*
cfunctions den,wrap,depden;
symbols x,y;
*
local F = den(2*x+3);
.sort
*
#call ApartTagVarDepFunctionHeads(den,wrap,depden,x,y)
*
.sort
*
local diff = F - depden(2*x+3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartTagVarDepFunctionHeads_18 :
#include- ../src/formapart.h
*
cfunctions den,wrap,depden;
symbols x,y;
*
local F = den(7);
.sort
*
#call ApartTagVarDepFunctionHeads(den,wrap,depden,x,y)
*
.sort
*
local diff = F - den(7);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
