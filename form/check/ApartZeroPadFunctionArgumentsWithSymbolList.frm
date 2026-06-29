*{{{ ApartZeroPadFunctionArgumentsWithSymbolList_1 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5,z;
cfunctions f,aux;
*
local temp = f(d1,d3,d5);
.sort
*
#call ApartZeroPadFunctionArgumentsWithSymbolList(f,aux,z,d1,d2,d3,d4,d5)
*
.sort
*
local diff = temp - f(d1,0,d3,0,d5);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartZeroPadFunctionArgumentsWithSymbolList_2 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5,z;
cfunctions f,aux;
*
local temp = f(d5);
.sort
*
#call ApartZeroPadFunctionArgumentsWithSymbolList(f,aux,z,d1,d2,d3,d4,d5)
*
.sort
*
local diff = temp - f(0,0,0,0,d5);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartZeroPadFunctionArgumentsWithSymbolList_3 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,z;
cfunctions f,aux;
*
local temp = f(d1,d2,d3);
.sort
*
#call ApartZeroPadFunctionArgumentsWithSymbolList(f,aux,z,d1,d2,d3)
*
.sort
*
local diff = temp - f(d1,d2,d3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartZeroPadFunctionArgumentsWithSymbolList_4 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,z;
cfunctions f,aux;
*
local temp = f(d1);
.sort
*
#call ApartZeroPadFunctionArgumentsWithSymbolList(f,aux,z,d1,d2,d3)
*
.sort
*
local diff = temp - f(d1,0,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartZeroPadFunctionArgumentsWithSymbolList_5 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,z;
cfunctions f,aux;
*
local temp = f(d2);
.sort
*
#call ApartZeroPadFunctionArgumentsWithSymbolList(f,aux,z,d1,d2,d3)
*
.sort
*
local diff = temp - f(0,d2,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartZeroPadFunctionArgumentsWithSymbolList_6 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,z;
cfunctions f,aux;
*
local temp = f(d3);
.sort
*
#call ApartZeroPadFunctionArgumentsWithSymbolList(f,aux,z,d1,d2,d3)
*
.sort
*
local diff = temp - f(0,0,d3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartZeroPadFunctionArgumentsWithSymbolList_7 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,z;
cfunctions f,aux;
*
local temp = f(d1,d2);
.sort
*
#call ApartZeroPadFunctionArgumentsWithSymbolList(f,aux,z,d1,d2,d3,d4)
*
.sort
*
local diff = temp - f(d1,d2,0,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartZeroPadFunctionArgumentsWithSymbolList_8 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5,z;
cfunctions f,aux;
*
local temp = f(d2,d4);
.sort
*
#call ApartZeroPadFunctionArgumentsWithSymbolList(f,aux,z,d1,d2,d3,d4,d5)
*
.sort
*
local diff = temp - f(0,d2,0,d4,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartZeroPadFunctionArgumentsWithSymbolList_9 :
#include- ../src/formapart.h
*
symbols d1,z;
cfunctions f,aux;
*
local temp = f(d1);
.sort
*
#call ApartZeroPadFunctionArgumentsWithSymbolList(f,aux,z,d1)
*
.sort
*
local diff = temp - f(d1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartZeroPadFunctionArgumentsWithSymbolList_10 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5,d6,z;
cfunctions f,aux;
*
local temp = f(d2,d5);
.sort
*
#call ApartZeroPadFunctionArgumentsWithSymbolList(f,aux,z,d1,d2,d3,d4,d5,d6)
*
.sort
*
local diff = temp - f(0,d2,0,0,d5,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartZeroPadFunctionArgumentsWithSymbolList_11 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,z;
cfunctions f,aux;
*
local temp = 3*f(d1,d3);
.sort
*
#call ApartZeroPadFunctionArgumentsWithSymbolList(f,aux,z,d1,d2,d3)
*
.sort
*
local diff = temp - 3*f(d1,0,d3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartZeroPadFunctionArgumentsWithSymbolList_12 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,z;
cfunctions f,aux;
*
local temp = f(d1) + f(d2,d3);
.sort
*
#call ApartZeroPadFunctionArgumentsWithSymbolList(f,aux,z,d1,d2,d3)
*
.sort
*
local diff = temp - (f(d1,0,0) + f(0,d2,d3));
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartZeroPadFunctionArgumentsWithSymbolList_13 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,z;
cfunctions APcollect,aux,dens;
*
local temp = APcollect(d1,d2,d3)*dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartZeroPadFunctionArgumentsWithSymbolList(APcollect,aux,z,d1,d2,d3)
*
.sort
*
local diff = temp - APcollect(d1,d2,d3)*dens(d1,d2,d3)*d1*d2*d3;
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartZeroPadFunctionArgumentsWithSymbolList_14 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,z;
cfunctions APcollect,aux,dens;
*
local temp = APcollect(d1,d3)*dens(d1,d3)*d1*d3;
.sort
*
#call ApartZeroPadFunctionArgumentsWithSymbolList(APcollect,aux,z,d1,d2,d3)
*
.sort
*
local diff = temp - APcollect(d1,0,d3)*dens(d1,d3)*d1*d3;
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
