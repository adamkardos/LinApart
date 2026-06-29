*{{{ ApartBareissDeterminant_1 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(2,3) = 7;
*
local F = rowf(2)*colf(3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - 7;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_2 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 1;
fill mtab(1,2) = 2;
fill mtab(2,1) = 3;
fill mtab(2,2) = 4;
*
local F = rowf(1,2)*colf(1,2);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det + 2;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_3 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,2) = 1;
fill mtab(2,1) = 1;
*
local F = rowf(1,2)*colf(1,2);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det + 1;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_4 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 1;
fill mtab(1,2) = 2;
fill mtab(1,3) = 3;
fill mtab(2,1) = 4;
fill mtab(2,2) = 5;
fill mtab(2,3) = 6;
fill mtab(3,1) = 7;
fill mtab(3,2) = 8;
fill mtab(3,3) = 10;
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det + 3;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_5 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 1;
fill mtab(1,2) = 2;
fill mtab(1,3) = 3;
fill mtab(2,1) = 4;
fill mtab(2,2) = 5;
fill mtab(2,3) = 6;
fill mtab(3,1) = 7;
fill mtab(3,2) = 8;
fill mtab(3,3) = 9;
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_6 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 2;
fill mtab(1,2) = 9;
fill mtab(1,3) = 8;
fill mtab(1,4) = 7;
fill mtab(2,2) = 3;
fill mtab(2,3) = 6;
fill mtab(2,4) = 5;
fill mtab(3,3) = 4;
fill mtab(3,4) = 4;
fill mtab(4,4) = 5;
*
local F = rowf(1,2,3,4)*colf(1,2,3,4);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - 120;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_7 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbols z,ep;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = ep;
fill mtab(1,2) = 1;
fill mtab(2,1) = 1;
fill mtab(2,2) = ep;
*
local F = rowf(1,2)*colf(1,2);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - (ep^2-1);
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_8 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbols z,ep;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = ep;
fill mtab(1,2) = 1;
fill mtab(2,2) = ep;
fill mtab(2,3) = 1;
fill mtab(3,1) = 1;
fill mtab(3,3) = ep;
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - (ep^3+1);
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_9 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 1/2;
fill mtab(1,2) = 1/3;
fill mtab(2,1) = 1/4;
fill mtab(2,2) = 1/5;
*
local F = rowf(1,2)*colf(1,2);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - 1/60;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_10 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(4,5) = 1;
fill mtab(4,1) = 2;
fill mtab(2,5) = 3;
fill mtab(2,1) = 4;
*
local F = rowf(4,2)*colf(5,1);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det + 2;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_11 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 2;
fill mtab(1,2) = 1;
fill mtab(1,5) = 4;
fill mtab(2,2) = 3;
fill mtab(2,4) = 2;
fill mtab(3,3) = 5;
fill mtab(3,5) = 9;
fill mtab(4,4) = 7;
fill mtab(5,5) = 11;
*
local F = rowf(1,2,3,4,5)*colf(1,2,3,4,5);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - 2310;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_12 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbols z,ep;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = ep;
fill mtab(1,2) = 1;
fill mtab(2,1) = 1;
fill mtab(2,2) = ep;
fill mtab(2,3) = 1;
fill mtab(3,2) = 1;
fill mtab(3,3) = ep;
fill mtab(3,4) = 1;
fill mtab(4,3) = 1;
fill mtab(4,4) = ep;
*
local F = rowf(1,2,3,4)*colf(1,2,3,4);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - (ep^4-3*ep^2+1);
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_13 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbols z,x,y;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = x;
fill mtab(1,2) = y;
fill mtab(2,1) = y;
fill mtab(2,2) = x;
*
local F = rowf(1,2)*colf(1,2);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - (x^2-y^2);
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_14 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbols z,x,y;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = x;
fill mtab(1,2) = 1;
fill mtab(2,2) = y;
fill mtab(2,3) = 1;
fill mtab(3,1) = 1;
fill mtab(3,3) = x;
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - (x^2*y+1);
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_15 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbols z,a,b,c;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 1;
fill mtab(1,2) = a;
fill mtab(1,3) = a^2;
fill mtab(2,1) = 1;
fill mtab(2,2) = b;
fill mtab(2,3) = b^2;
fill mtab(3,1) = 1;
fill mtab(3,2) = c;
fill mtab(3,3) = c^2;
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - (b-a)*(c-a)*(c-b);
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_16 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 1/2;
fill mtab(1,2) = 1;
fill mtab(2,2) = 1/3;
fill mtab(2,3) = 1;
fill mtab(3,1) = 1;
fill mtab(3,3) = 1/4;
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - 25/24;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_17 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 1;
fill mtab(2,2) = 1;
fill mtab(3,3) = 1;
fill mtab(4,4) = 1;
*
local F = rowf(1,2,3,4)*colf(1,2,3,4);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - 1;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_18 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 1;
fill mtab(1,2) = 2;
fill mtab(1,3) = 3;
fill mtab(2,1) = 4;
fill mtab(2,2) = 5;
fill mtab(2,3) = 6;
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_19 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 1;
fill mtab(1,3) = 1;
fill mtab(2,2) = 1;
fill mtab(2,3) = 1;
fill mtab(3,1) = 1;
fill mtab(3,2) = 1;
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det + 2;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_20 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbols z,a,b,c,d;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = a;
fill mtab(1,2) = b;
fill mtab(2,1) = c;
fill mtab(2,2) = d;
*
local F = rowf(1,2)*colf(1,2);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - (a*d-b*c);
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_21 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbols z,a;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = a;
*
local F = rowf(1)*colf(1);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - a;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_22 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbols z,a,b;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = a;
fill mtab(1,2) = -b;
fill mtab(2,1) = b;
fill mtab(2,2) = a;
*
local F = rowf(1,2)*colf(1,2);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - (a^2+b^2);
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_23 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbols z,a,b;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = a+b;
fill mtab(1,2) = 1;
fill mtab(2,1) = 1;
fill mtab(2,2) = a-b;
*
local F = rowf(1,2)*colf(1,2);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - (a^2-b^2-1);
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_24 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbols z,a11,a12,a13,a21,a22,a23,a31,a32,a33;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = a11;
fill mtab(1,2) = a12;
fill mtab(1,3) = a13;
fill mtab(2,1) = a21;
fill mtab(2,2) = a22;
fill mtab(2,3) = a23;
fill mtab(3,1) = a31;
fill mtab(3,2) = a32;
fill mtab(3,3) = a33;
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - (
  + a11*a22*a33 - a11*a23*a32
  - a12*a21*a33 + a12*a23*a31
  + a13*a21*a32 - a13*a22*a31
);
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_25 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbols z,a,b,c,d;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = a*b;
fill mtab(1,2) = c*d;
fill mtab(1,3) = 1;
fill mtab(2,1) = 1;
fill mtab(2,2) = a*c;
fill mtab(3,2) = 1;
fill mtab(3,3) = b*d;
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - (a^2*b^2*c*d - b*c*d^2 + 1);
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_26 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 1;
fill mtab(1,2) = 2;
fill mtab(1,3) = 3;
fill mtab(2,1) = 4;
fill mtab(2,2) = 5;
fill mtab(2,3) = 6;
fill mtab(3,1) = 1;
fill mtab(3,2) = 2;
fill mtab(3,3) = 3;
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_27 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,2) = 2;
fill mtab(1,3) = 3;
fill mtab(1,5) = 5;
fill mtab(3,2) = 12;
fill mtab(3,3) = 13;
fill mtab(3,5) = 15;
fill mtab(5,2) = 22;
fill mtab(5,3) = 23;
fill mtab(5,5) = 25;
*
local F = rowf(1,3,5)*colf(2,3,5);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_28 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 1/2;
fill mtab(1,2) = 1/3;
fill mtab(1,3) = 1/4;
fill mtab(2,1) = 1/5;
fill mtab(2,2) = 1/6;
fill mtab(2,3) = 1/7;
fill mtab(3,1) = 1/8;
fill mtab(3,2) = 1/9;
fill mtab(3,3) = 1/10;
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - 1/33600;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_29 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 2;
fill mtab(1,2) = 1;
fill mtab(2,1) = 1;
fill mtab(2,2) = 2;
fill mtab(2,3) = 1;
fill mtab(3,2) = 1;
fill mtab(3,3) = 2;
fill mtab(3,4) = 1;
fill mtab(4,3) = 1;
fill mtab(4,4) = 2;
*
local F = rowf(1,2,3,4)*colf(1,2,3,4);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - 5;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_30 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 1;
fill mtab(2,1) = 2;
fill mtab(2,2) = 3;
fill mtab(3,1) = 4;
fill mtab(3,2) = 5;
fill mtab(3,3) = 6;
fill mtab(4,1) = 7;
fill mtab(4,2) = 8;
fill mtab(4,3) = 9;
fill mtab(4,4) = 10;
fill mtab(5,1) = 11;
fill mtab(5,2) = 12;
fill mtab(5,3) = 13;
fill mtab(5,4) = 14;
fill mtab(5,5) = 15;
*
local F = rowf(1,2,3,4,5)*colf(1,2,3,4,5);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - 2700;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_31 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 1;
fill mtab(1,2) = 2;
fill mtab(2,1) = 3;
fill mtab(2,2) = 4;
fill mtab(3,3) = 5;
fill mtab(3,4) = 6;
fill mtab(4,3) = 7;
fill mtab(4,4) = 8;
fill mtab(5,5) = 9;
*
local F = rowf(1,2,3,4,5)*colf(1,2,3,4,5);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - 36;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_32 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 2;
fill mtab(1,2) = 1;
fill mtab(1,3) = 1;
fill mtab(1,4) = 1;
fill mtab(1,5) = 1;
fill mtab(2,1) = 1;
fill mtab(2,2) = 2;
fill mtab(2,3) = 1;
fill mtab(2,4) = 1;
fill mtab(2,5) = 1;
fill mtab(3,1) = 1;
fill mtab(3,2) = 1;
fill mtab(3,3) = 2;
fill mtab(3,4) = 1;
fill mtab(3,5) = 1;
fill mtab(4,1) = 1;
fill mtab(4,2) = 1;
fill mtab(4,3) = 1;
fill mtab(4,4) = 2;
fill mtab(4,5) = 1;
fill mtab(5,1) = 1;
fill mtab(5,2) = 1;
fill mtab(5,3) = 1;
fill mtab(5,4) = 1;
fill mtab(5,5) = 2;
*
local F = rowf(1,2,3,4,5)*colf(1,2,3,4,5);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - 6;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_33 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbols z,a,b,c,d,e;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = a;
fill mtab(2,2) = b;
fill mtab(3,3) = c;
fill mtab(4,4) = d;
fill mtab(5,5) = e;
*
local F = rowf(1,2,3,4,5)*colf(1,2,3,4,5);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - a*b*c*d*e;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_34 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbols z,a,b,c,d;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 1;
fill mtab(1,2) = a;
fill mtab(1,3) = a^2;
fill mtab(1,4) = a^3;
fill mtab(2,1) = 1;
fill mtab(2,2) = b;
fill mtab(2,3) = b^2;
fill mtab(2,4) = b^3;
fill mtab(3,1) = 1;
fill mtab(3,2) = c;
fill mtab(3,3) = c^2;
fill mtab(3,4) = c^3;
fill mtab(4,1) = 1;
fill mtab(4,2) = d;
fill mtab(4,3) = d^2;
fill mtab(4,4) = d^3;
*
local F = rowf(1,2,3,4)*colf(1,2,3,4);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - (b-a)*(c-a)*(d-a)*(c-b)*(d-b)*(d-c);
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_35 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbols z,a,b,c,d,e;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 1;
fill mtab(1,2) = a;
fill mtab(1,3) = a^2;
fill mtab(1,4) = a^3;
fill mtab(1,5) = a^4;
fill mtab(2,1) = 1;
fill mtab(2,2) = b;
fill mtab(2,3) = b^2;
fill mtab(2,4) = b^3;
fill mtab(2,5) = b^4;
fill mtab(3,1) = 1;
fill mtab(3,2) = c;
fill mtab(3,3) = c^2;
fill mtab(3,4) = c^3;
fill mtab(3,5) = c^4;
fill mtab(4,1) = 1;
fill mtab(4,2) = d;
fill mtab(4,3) = d^2;
fill mtab(4,4) = d^3;
fill mtab(4,5) = d^4;
fill mtab(5,1) = 1;
fill mtab(5,2) = e;
fill mtab(5,3) = e^2;
fill mtab(5,4) = e^3;
fill mtab(5,5) = e^4;
*
local F = rowf(1,2,3,4,5)*colf(1,2,3,4,5);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det
  - (b-a)*(c-a)*(d-a)*(e-a)*(c-b)*(d-b)*(e-b)*(d-c)*(e-c)*(e-d);
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_36 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbols z,ep;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = ep;
fill mtab(1,2) = 1;
fill mtab(2,1) = 1;
fill mtab(2,2) = ep;
fill mtab(2,3) = 1;
fill mtab(3,2) = 1;
fill mtab(3,3) = ep;
fill mtab(3,4) = 1;
fill mtab(4,3) = 1;
fill mtab(4,4) = ep;
fill mtab(4,5) = 1;
fill mtab(5,4) = 1;
fill mtab(5,5) = ep;
*
local F = rowf(1,2,3,4,5)*colf(1,2,3,4,5);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - (ep^5-4*ep^3+3*ep);
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_37 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbols z,x,y;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = x;
fill mtab(1,2) = y;
fill mtab(2,1) = 1;
fill mtab(2,2) = x;
fill mtab(2,3) = y;
fill mtab(3,2) = 1;
fill mtab(3,3) = x;
fill mtab(3,4) = y;
fill mtab(4,3) = 1;
fill mtab(4,4) = x;
*
local F = rowf(1,2,3,4)*colf(1,2,3,4);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - (x^4-3*x^2*y+y^2);
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_38 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbols z,x,y;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = x;
fill mtab(1,2) = y;
fill mtab(2,1) = 1;
fill mtab(2,2) = x;
fill mtab(2,3) = y;
fill mtab(3,2) = 1;
fill mtab(3,3) = x;
fill mtab(3,4) = y;
fill mtab(4,3) = 1;
fill mtab(4,4) = x;
fill mtab(4,5) = y;
fill mtab(5,4) = 1;
fill mtab(5,5) = x;
*
local F = rowf(1,2,3,4,5)*colf(1,2,3,4,5);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - (x^5-4*x^3*y+3*x*y^2);
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_39 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,2) = 1;
fill mtab(1,3) = 2;
fill mtab(2,1) = 3;
fill mtab(2,2) = 4;
fill mtab(2,3) = 5;
fill mtab(3,1) = 6;
fill mtab(3,2) = 7;
fill mtab(3,3) = 9;
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det + 3;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_40 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,3) = 3;
fill mtab(2,2) = 5;
fill mtab(3,1) = 2;
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det + 30;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_41 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,2) = 1;
fill mtab(2,1) = 1;
fill mtab(3,3) = 1;
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det + 1;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_42 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 1;
fill mtab(1,2) = 1;
fill mtab(1,3) = 1;
fill mtab(2,1) = 1;
fill mtab(2,2) = 1;
fill mtab(2,3) = 2;
fill mtab(3,1) = 1;
fill mtab(3,2) = 2;
fill mtab(3,3) = 1;
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det + 1;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_43 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbols z,a,b,c;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,2) = a;
fill mtab(1,3) = -b;
fill mtab(2,1) = -a;
fill mtab(2,3) = c;
fill mtab(3,1) = b;
fill mtab(3,2) = -c;
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_44 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_45 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,2) = 1;
fill mtab(2,3) = 1;
fill mtab(3,4) = 1;
fill mtab(4,5) = 1;
fill mtab(5,1) = 1;
*
local F = rowf(1,2,3,4,5)*colf(1,2,3,4,5);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - 1;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_46 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,2) = 1;
fill mtab(2,1) = 1;
fill mtab(3,3) = 1;
fill mtab(3,4) = 2;
fill mtab(4,3) = 3;
fill mtab(4,4) = 4;
*
local F = rowf(1,2,3,4)*colf(1,2,3,4);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - 2;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_47 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 1;
fill mtab(1,2) = 2;
fill mtab(1,3) = 3;
fill mtab(2,1) = 4;
fill mtab(2,2) = 5;
fill mtab(2,3) = 6;
fill mtab(3,1) = 7;
fill mtab(3,2) = 8;
fill mtab(3,3) = 10;
*
local F1 = rowf(1,2,3)*colf(1,2,3);
local F2 = rowf(2,1,3)*colf(1,2,3);
.sort
*
hide F2;
#call ApartBareissDeterminant(det1,rowf,colf,aux,mtab,5,z)
.sort
*
unhide F2;
hide F1;
#call ApartBareissDeterminant(det2,rowf,colf,aux,mtab,5,z)
.sort
*
unhide F1;
local D1 = $det1 + 3;
local D2 = $det2 - 3;
local Dsum = $det1 + $det2;
.sort
*
print +s;
.end
assert succeeded?
assert result("D1") =~ expr("0")
assert result("D2") =~ expr("0")
assert result("Dsum") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_48 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 1;
fill mtab(2,2) = 1;
fill mtab(3,4) = 1;
fill mtab(4,3) = 1;
*
local F = rowf(1,2,3,4)*colf(1,2,3,4);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det + 1;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_49 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 1;
fill mtab(1,3) = 2;
fill mtab(2,1) = 3;
fill mtab(2,3) = 4;
fill mtab(3,1) = 5;
fill mtab(3,3) = 6;
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*
*{{{ ApartBareissDeterminant_50 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,2) = 1;
fill mtab(1,4) = 1;
fill mtab(2,1) = 1;
fill mtab(2,2) = 1;
fill mtab(2,4) = 1;
fill mtab(3,4) = 1;
fill mtab(4,1) = 1;
*
local F = rowf(2,3,4)*colf(1,2,4);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - 1;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_51 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,2) = 1;
fill mtab(1,4) = 1;
fill mtab(2,1) = 1;
fill mtab(2,2) = 1;
fill mtab(2,4) = 1;
fill mtab(3,4) = 1;
fill mtab(4,1) = 1;
*
local F = rowf(1,3,4)*colf(1,2,4);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - 1;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_52 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,2) = 1;
fill mtab(1,4) = 1;
fill mtab(2,1) = 1;
fill mtab(2,2) = 1;
fill mtab(2,4) = 1;
fill mtab(3,4) = 1;
fill mtab(4,1) = 1;
*
local F = rowf(1,2,4)*colf(1,2,4);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_53 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,2) = 1;
fill mtab(1,4) = 1;
fill mtab(2,1) = 1;
fill mtab(2,2) = 1;
fill mtab(2,4) = 1;
fill mtab(3,4) = 1;
fill mtab(4,1) = 1;
*
local F = rowf(1,2,3)*colf(1,2,4);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det + 1;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_54 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,2) = 1;
fill mtab(1,4) = 1;
fill mtab(2,1) = 1;
fill mtab(2,2) = 1;
fill mtab(2,4) = 1;
fill mtab(3,4) = 1;
fill mtab(4,1) = 1;
*
local F = rowf(2,3,4)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_55 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 1;
fill mtab(1,2) = 1;
fill mtab(1,3) = 1;
fill mtab(2,3) = 1;
fill mtab(3,1) = 1;
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - 1;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
*
*{{{ ApartBareissDeterminant_56 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 1;
fill mtab(1,2) = 1;
fill mtab(1,3) = 1;
fill mtab(2,3) = 2;
fill mtab(3,1) = 3;
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartBareissDeterminant(det,rowf,colf,aux,mtab,5,z)
*
.sort
*
local D = $det - 6;
.sort
*
print +s;
.end
assert succeeded?
assert result("D") =~ expr("0")
*}}}
