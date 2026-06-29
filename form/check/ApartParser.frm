*
*{{{ ApartParser_1 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)*den(y);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - APd1*APd2;
local c11 = APcoeffTbl(1,1) - 1;
local c12 = APcoeffTbl(1,2) - 0;
local c13 = APcoeffTbl(1,3) - 0;
local c21 = APcoeffTbl(2,1) - 0;
local c22 = APcoeffTbl(2,2) - 1;
local c23 = APcoeffTbl(2,3) - 0;
local d1 = APdenTbl(1) - x;
local d2 = APdenTbl(2) - y;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("c11") =~ expr("0")
assert result("c12") =~ expr("0")
assert result("c13") =~ expr("0")
assert result("c21") =~ expr("0")
assert result("c22") =~ expr("0")
assert result("c23") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartParser_2 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)*den(y)*den(x+y+1);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - APd1*APd2*APd3;
local d3 = APdenTbl(3) - (x+y+1);
local c31 = APcoeffTbl(3,1) - 1;
local c32 = APcoeffTbl(3,2) - 1;
local c33 = APcoeffTbl(3,3) - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d3") =~ expr("0")
assert result("c31") =~ expr("0")
assert result("c32") =~ expr("0")
assert result("c33") =~ expr("0")
*}}}
*
*{{{ ApartParser_3 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)^2*den(y)^3;
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - APd1^2*APd2^3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartParser_4 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y,a,b;
*
local F = den(x)*den(a+b);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - APd1*den(a+b);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartParser_5 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = 3*den(x)*den(y+1);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - 3*APd1*APd2;
local d2 = APdenTbl(2) - (y+1);
local c21 = APcoeffTbl(2,1) - 0;
local c22 = APcoeffTbl(2,2) - 1;
local c23 = APcoeffTbl(2,3) - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d2") =~ expr("0")
assert result("c21") =~ expr("0")
assert result("c22") =~ expr("0")
assert result("c23") =~ expr("0")
*}}}
*
*{{{ ApartParser_6 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)*den(y) + den(x)*den(y+1);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - (APd1*APd2 + APd1*APd3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartParser_7 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "2"
*
cfunction den;
symbols x,y,s,t;
*
Fill APdenTbl(1) = s*x+t;
Fill APdenTbl(2) = y;
*
local F = den(s*x+t)*den(y);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - APd1*APd2;
local c11 = APcoeffTbl(1,1) - s;
local c12 = APcoeffTbl(1,2) - 0;
local c13 = APcoeffTbl(1,3) - t;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("c11") =~ expr("0")
assert result("c12") =~ expr("0")
assert result("c13") =~ expr("0")
*}}}
*
*{{{ ApartParser_8 :
#include- ../src/formapart.h
*
cfunction den;
symbols x;
*
local F = den(x)*den(x+1)*den(x+2);
.sort
*
#call ApartParser(den,x)
*
.sort
*
local diff = F - APd1*APd2*APd3;
local d1 = APdenTbl(1) - x;
local d2 = APdenTbl(2) - (x+1);
local d3 = APdenTbl(3) - (x+2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
assert result("d3") =~ expr("0")
*}}}
*
*{{{ ApartParser_9 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = den(x)^2*den(y)*den(x+y)*den(x+y-1);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - APd1^2*APd2*APd3*APd4;
local d3 = APdenTbl(3) - (x+y);
local d4 = APdenTbl(4) - (x+y-1);
local c41 = APcoeffTbl(4,1) - 1;
local c42 = APcoeffTbl(4,2) - 1;
local c43 = APcoeffTbl(4,3) - (-1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d3") =~ expr("0")
assert result("d4") =~ expr("0")
assert result("c41") =~ expr("0")
assert result("c42") =~ expr("0")
assert result("c43") =~ expr("0")
*}}}
*
*
*{{{ ApartParser_10 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "2"
*
cfunction den;
symbols x,y;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
*
local F = den(x)*den(y);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - APd1*APd2;
local c11 = APcoeffTbl(1,1) - 1;
local c12 = APcoeffTbl(1,2) - 0;
local c13 = APcoeffTbl(1,3) - 0;
local c21 = APcoeffTbl(2,1) - 0;
local c22 = APcoeffTbl(2,2) - 1;
local c23 = APcoeffTbl(2,3) - 0;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("c11") =~ expr("0")
assert result("c12") =~ expr("0")
assert result("c13") =~ expr("0")
assert result("c21") =~ expr("0")
assert result("c22") =~ expr("0")
assert result("c23") =~ expr("0")
*}}}
*
*{{{ ApartParser_11 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "2"
*
cfunction den;
symbols x,y;
*
Fill APdenTbl(1) = y;
Fill APdenTbl(2) = x;
*
local F = den(x)*den(y);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - APd2*APd1;
local c11 = APcoeffTbl(1,1) - 0;
local c12 = APcoeffTbl(1,2) - 1;
local c13 = APcoeffTbl(1,3) - 0;
local c21 = APcoeffTbl(2,1) - 1;
local c22 = APcoeffTbl(2,2) - 0;
local c23 = APcoeffTbl(2,3) - 0;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("c11") =~ expr("0")
assert result("c12") =~ expr("0")
assert result("c13") =~ expr("0")
assert result("c21") =~ expr("0")
assert result("c22") =~ expr("0")
assert result("c23") =~ expr("0")
*}}}
*
*{{{ ApartParser_12 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "4"
*
cfunction den;
symbols x,y;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
Fill APdenTbl(3) = x+y;
Fill APdenTbl(4) = x+y-1;
*
local F = den(x)^2*den(y)*den(x+y)*den(x+y-1);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - APd1^2*APd2*APd3*APd4;
local c31 = APcoeffTbl(3,1) - 1;
local c32 = APcoeffTbl(3,2) - 1;
local c33 = APcoeffTbl(3,3) - 0;
local c41 = APcoeffTbl(4,1) - 1;
local c42 = APcoeffTbl(4,2) - 1;
local c43 = APcoeffTbl(4,3) - (-1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("c31") =~ expr("0")
assert result("c32") =~ expr("0")
assert result("c33") =~ expr("0")
assert result("c41") =~ expr("0")
assert result("c42") =~ expr("0")
assert result("c43") =~ expr("0")
*}}}
*
*{{{ ApartParser_13 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "4"
*
cfunction den;
symbols x,y;
*
Fill APdenTbl(1) = x+y-1;
Fill APdenTbl(2) = x+y;
Fill APdenTbl(3) = y;
Fill APdenTbl(4) = x;
*
local F = den(x)^2*den(y)*den(x+y)*den(x+y-1);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - APd4^2*APd3*APd2*APd1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartParser_14 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y,z;
*
local F = den(x)*den(y)*den(z)*den(x+y+z+1);
.sort
*
#call ApartParser(den,x,y,z)
*
.sort
*
local diff = F - APd1*APd2*APd3*APd4;
local d4 = APdenTbl(4) - (x+y+z+1);
local c41 = APcoeffTbl(4,1) - 1;
local c42 = APcoeffTbl(4,2) - 1;
local c43 = APcoeffTbl(4,3) - 1;
local c44 = APcoeffTbl(4,4) - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d4") =~ expr("0")
assert result("c41") =~ expr("0")
assert result("c42") =~ expr("0")
assert result("c43") =~ expr("0")
assert result("c44") =~ expr("0")
*}}}
*
*{{{ ApartParser_15 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y,a,b;
*
local F = den(a)*den(b);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - den(a)*den(b);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartParser_16 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = -5*den(x+1)*den(y-2);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - (-5*APd1*APd2);
local d1 = APdenTbl(1) - (x+1);
local d2 = APdenTbl(2) - (y-2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("d1") =~ expr("0")
assert result("d2") =~ expr("0")
*}}}
*
*{{{ ApartParser_17 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "2"
*
cfunction den;
symbols x,y,s,t;
*
Fill APdenTbl(1) = s*x+t;
Fill APdenTbl(2) = x+s*y;
*
local F = den(s*x+t)*den(x+s*y);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - APd1*APd2;
local c11 = APcoeffTbl(1,1) - s;
local c12 = APcoeffTbl(1,2) - 0;
local c13 = APcoeffTbl(1,3) - t;
local c21 = APcoeffTbl(2,1) - 1;
local c22 = APcoeffTbl(2,2) - s;
local c23 = APcoeffTbl(2,3) - 0;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("c11") =~ expr("0")
assert result("c12") =~ expr("0")
assert result("c13") =~ expr("0")
assert result("c21") =~ expr("0")
assert result("c22") =~ expr("0")
assert result("c23") =~ expr("0")
*}}}
*
*{{{ ApartParser_18 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "3"
*
cfunction den;
symbols x,y;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
Fill APdenTbl(3) = y+1;
*
local F = den(x)*den(y) + 2*den(x)*den(y+1);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - (APd1*APd2 + 2*APd1*APd3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartParser_19 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "5"
*
cfunction den;
symbols x,y;
*
Fill APdenTbl(1) = 2*x+y;
Fill APdenTbl(2) = x+3*y;
Fill APdenTbl(3) = x+y+1;
Fill APdenTbl(4) = x-y+2;
Fill APdenTbl(5) = 3*x+2*y-1;
*
local F = den(2*x+y)*den(x+3*y)*den(x+y+1)*den(x-y+2)*den(3*x+2*y-1);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - APd1*APd2*APd3*APd4*APd5;
local c11 = APcoeffTbl(1,1) - 2;
local c12 = APcoeffTbl(1,2) - 1;
local c13 = APcoeffTbl(1,3) - 0;
local c42 = APcoeffTbl(4,2) - (-1);
local c43 = APcoeffTbl(4,3) - 2;
local c51 = APcoeffTbl(5,1) - 3;
local c52 = APcoeffTbl(5,2) - 2;
local c53 = APcoeffTbl(5,3) - (-1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("c11") =~ expr("0")
assert result("c12") =~ expr("0")
assert result("c13") =~ expr("0")
assert result("c42") =~ expr("0")
assert result("c43") =~ expr("0")
assert result("c51") =~ expr("0")
assert result("c52") =~ expr("0")
assert result("c53") =~ expr("0")
*}}}
*
*{{{ ApartParser_20 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "5"
*
cfunction den;
symbols x,y,z,w;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
Fill APdenTbl(3) = z;
Fill APdenTbl(4) = w;
Fill APdenTbl(5) = x+y+z+w+1;
*
local F = den(x)*den(y)*den(z)*den(w)*den(x+y+z+w+1);
.sort
*
#call ApartParser(den,x,y,z,w)
*
.sort
*
local diff = F - APd1*APd2*APd3*APd4*APd5;
local c51 = APcoeffTbl(5,1) - 1;
local c52 = APcoeffTbl(5,2) - 1;
local c53 = APcoeffTbl(5,3) - 1;
local c54 = APcoeffTbl(5,4) - 1;
local c55 = APcoeffTbl(5,5) - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("c51") =~ expr("0")
assert result("c52") =~ expr("0")
assert result("c53") =~ expr("0")
assert result("c54") =~ expr("0")
assert result("c55") =~ expr("0")
*}}}
*
*{{{ ApartParser_21 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "1"
*
cfunction den;
symbols x;
*
Fill APdenTbl(1) = x+1;
*
local F = den(x+1)^7;
.sort
*
#call ApartParser(den,x)
*
.sort
*
local diff = F - APd1^7;
local c11 = APcoeffTbl(1,1) - 1;
local c12 = APcoeffTbl(1,2) - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("c11") =~ expr("0")
assert result("c12") =~ expr("0")
*}}}
*
*{{{ ApartParser_22 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "2"
*
cfunction den;
symbols x,y,s,t,u;
*
Fill APdenTbl(1) = s*x+t*y+u;
Fill APdenTbl(2) = x+y;
*
local F = den(s*x+t*y+u)^2*den(x+y);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - APd1^2*APd2;
local c11 = APcoeffTbl(1,1) - s;
local c12 = APcoeffTbl(1,2) - t;
local c13 = APcoeffTbl(1,3) - u;
local c21 = APcoeffTbl(2,1) - 1;
local c22 = APcoeffTbl(2,2) - 1;
local c23 = APcoeffTbl(2,3) - 0;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("c11") =~ expr("0")
assert result("c12") =~ expr("0")
assert result("c13") =~ expr("0")
assert result("c21") =~ expr("0")
assert result("c22") =~ expr("0")
assert result("c23") =~ expr("0")
*}}}
*
*{{{ ApartParser_23 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = x^2*den(x+1)*den(y);
.sort
*
#call ApartParser(den,x,y)
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
*}}}
*
*{{{ ApartParser_24 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "2"
*
cfunction den;
symbols x,y;
*
Fill APdenTbl(1) = x+1;
Fill APdenTbl(2) = y;
*
local F = x^2*den(x+1)*den(y);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - x^2*APd1*APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartParser_25 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "3"
*
cfunction den;
symbols x,y;
*
Fill APdenTbl(1) = x-1;
Fill APdenTbl(2) = y-2;
Fill APdenTbl(3) = x+y-3;
*
local F = den(x-1)*den(y-2)^2*den(x+y-3);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - APd1*APd2^2*APd3;
local c13 = APcoeffTbl(1,3) - (-1);
local c23 = APcoeffTbl(2,3) - (-2);
local c33 = APcoeffTbl(3,3) - (-3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("c13") =~ expr("0")
assert result("c23") =~ expr("0")
assert result("c33") =~ expr("0")
*}}}
*
*{{{ ApartParser_26 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "8"
*
cfunction den;
symbols x,y;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
Fill APdenTbl(3) = x+y;
Fill APdenTbl(4) = x-y;
Fill APdenTbl(5) = x+1;
Fill APdenTbl(6) = y+1;
Fill APdenTbl(7) = x+y+1;
Fill APdenTbl(8) = x-y+1;
*
local F = den(x)*den(y)*den(x+y)*den(x-y)*den(x+1)*den(y+1)*den(x+y+1)*den(x-y+1);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - APd1*APd2*APd3*APd4*APd5*APd6*APd7*APd8;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartParser_27 :
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
local F = den(x)*den(y) - 3*den(x)*den(x+y+1) + den(y)^2*den(x+y+1);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - (APd1*APd2 - 3*APd1*APd3 + APd2^2*APd3);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartParser_28 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "2"
*
cfunction den;
symbols x,y,s,t;
*
Fill APdenTbl(1) = x+t;
Fill APdenTbl(2) = y-t;
*
local F = s/7*den(x+t)*den(y-t);
.sort
*
#call ApartParser(den,x,y)
*
.sort
*
local diff = F - s/7*APd1*APd2;
local c11 = APcoeffTbl(1,1) - 1;
local c12 = APcoeffTbl(1,2) - 0;
local c13 = APcoeffTbl(1,3) - t;
local c21 = APcoeffTbl(2,1) - 0;
local c22 = APcoeffTbl(2,2) - 1;
local c23 = APcoeffTbl(2,3) - (-t);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
assert result("c11") =~ expr("0")
assert result("c12") =~ expr("0")
assert result("c13") =~ expr("0")
assert result("c21") =~ expr("0")
assert result("c22") =~ expr("0")
assert result("c23") =~ expr("0")
*}}}
*
*{{{ ApartParser_29 :
#include- ../src/formapart.h
*
cfunction den;
symbols x,y;
*
local F = 0;
.sort
*
#call ApartParser(den,x,y)
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
*{{{ ApartParser_30 :
#include- ../src/formapart.h
*
#Redefine APnumberOfDenominators "2"
*
cfunction Denom;
symbols x,y;
*
Fill APdenTbl(1) = x;
Fill APdenTbl(2) = y;
*
local F = Denom(x)*Denom(y);
.sort
*
#call ApartParser(Denom,x,y)
*
.sort
*
local diff = F - APd1*APd2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
