*{{{ ApartFillLocalDollarMatrixWithTableElements_1 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(2,1) = 21;
fill mtab(2,3) = 23;
fill mtab(2,5) = 25;
fill mtab(4,1) = 41;
fill mtab(4,3) = 43;
fill mtab(4,5) = 45;
*
local F = rowf(2,4)*colf(1,3,5);
.sort
*
#call ApartFillLocalDollarMatrixWithTableElements(mat,s,rowf,colf,mtab,aux,5,5,0,z)
*
.sort
*
local d11 = $mat1s1 - 21;
local d12 = $mat1s2 - 23;
local d13 = $mat1s3 - 25;
local d21 = $mat2s1 - 41;
local d22 = $mat2s2 - 43;
local d23 = $mat2s3 - 45;
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("+1")
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d13") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
assert result("d23") =~ expr("0")
*}}}
*
*{{{ ApartFillLocalDollarMatrixWithTableElements_2 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux,den;
symbols z,x;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(2,1) = 21;
fill mtab(2,3) = 23;
fill mtab(2,5) = 25;
fill mtab(4,1) = 41;
fill mtab(4,3) = 43;
fill mtab(4,5) = 45;
*
local F = 7*den(x)*rowf(2,4)*colf(1,3,5);
.sort
*
#call ApartFillLocalDollarMatrixWithTableElements(mat,s,rowf,colf,mtab,aux,5,5,1,z)
*
.sort
*
local Fdiff = F - 7*den(x)*rowf(2,4)*colf(1,3,5);
local d11 = $mat1s1 - 21;
local d12 = $mat1s2 - 23;
local d13 = $mat1s3 - 25;
local d21 = $mat2s1 - 41;
local d22 = $mat2s2 - 43;
local d23 = $mat2s3 - 45;
.sort
*
print +s;
.end
assert succeeded?
assert result("Fdiff") =~ expr("0")
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d13") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
assert result("d23") =~ expr("0")
*}}}
*
*{{{ ApartFillLocalDollarMatrixWithTableElements_3 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(4,5) = 45;
fill mtab(4,1) = 41;
fill mtab(2,5) = 25;
fill mtab(2,1) = 21;
*
local F = rowf(4,2)*colf(5,1);
.sort
*
#call ApartFillLocalDollarMatrixWithTableElements(mat,c,rowf,colf,mtab,aux,5,5,0,z)
*
.sort
*
local e11 = $mat1c1 - 45;
local e12 = $mat1c2 - 41;
local e21 = $mat2c1 - 25;
local e22 = $mat2c2 - 21;
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("+1")
assert result("e11") =~ expr("0")
assert result("e12") =~ expr("0")
assert result("e21") =~ expr("0")
assert result("e22") =~ expr("0")
*}}}
*
*{{{ ApartFillLocalDollarMatrixWithTableElements_4 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(3,3) = 33;
*
local F = rowf(3)*colf(3);
.sort
*
#call ApartFillLocalDollarMatrixWithTableElements(mat,s,rowf,colf,mtab,aux,5,5,0,z)
*
.sort
*
local d11 = $mat1s1 - 33;
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("+1")
assert result("d11") =~ expr("0")
*}}}
*
*{{{ ApartFillLocalDollarMatrixWithTableElements_5 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 11;
fill mtab(1,2) = 12;
fill mtab(1,3) = 13;
fill mtab(2,1) = 21;
fill mtab(2,2) = 22;
fill mtab(2,3) = 23;
fill mtab(3,1) = 31;
fill mtab(3,2) = 32;
fill mtab(3,3) = 33;
*
local F = rowf(1,2,3)*colf(1,2,3);
.sort
*
#call ApartFillLocalDollarMatrixWithTableElements(mat,s,rowf,colf,mtab,aux,5,5,0,z)
*
.sort
*
local d11 = $mat1s1 - 11;
local d12 = $mat1s2 - 12;
local d13 = $mat1s3 - 13;
local d21 = $mat2s1 - 21;
local d22 = $mat2s2 - 22;
local d23 = $mat2s3 - 23;
local d31 = $mat3s1 - 31;
local d32 = $mat3s2 - 32;
local d33 = $mat3s3 - 33;
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("+1")
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d13") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
assert result("d23") =~ expr("0")
assert result("d31") =~ expr("0")
assert result("d32") =~ expr("0")
assert result("d33") =~ expr("0")
*}}}
*
*{{{ ApartFillLocalDollarMatrixWithTableElements_6 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbols z,ep;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = ep;
fill mtab(1,2) = ep^2+1;
fill mtab(2,1) = 2-ep;
fill mtab(2,2) = 3*ep;
*
local F = rowf(1,2)*colf(1,2);
.sort
*
#call ApartFillLocalDollarMatrixWithTableElements(mat,s,rowf,colf,mtab,aux,5,5,0,z)
*
.sort
*
local d11 = $mat1s1 - ep;
local d12 = $mat1s2 - (ep^2+1);
local d21 = $mat2s1 - (2-ep);
local d22 = $mat2s2 - 3*ep;
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("+1")
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartFillLocalDollarMatrixWithTableElements_7 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbols z,x,y;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(2,1) = 1/3;
fill mtab(2,2) = x^2-2*y;
fill mtab(2,3) = 7/2;
*
local F = rowf(2)*colf(1,2,3);
.sort
*
#call ApartFillLocalDollarMatrixWithTableElements(mat,s,rowf,colf,mtab,aux,5,5,0,z)
*
.sort
*
local d11 = $mat1s1 - 1/3;
local d12 = $mat1s2 - (x^2-2*y);
local d13 = $mat1s3 - 7/2;
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("+1")
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d13") =~ expr("0")
*}}}
*
*{{{ ApartFillLocalDollarMatrixWithTableElements_8 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,4) = -5;
fill mtab(2,4) = -12;
*
local F = -3*rowf(1,2)*colf(4);
.sort
*
#call ApartFillLocalDollarMatrixWithTableElements(mat,s,rowf,colf,mtab,aux,5,5,0,z)
*
.sort
*
local d11 = $mat1s1 + 5;
local d21 = $mat2s1 + 12;
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("-3")
assert result("d11") =~ expr("0")
assert result("d21") =~ expr("0")
*}}}
*
*{{{ ApartFillLocalDollarMatrixWithTableElements_9 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,2) = 12;
fill mtab(1,4) = 14;
fill mtab(3,2) = 32;
*
local F = rowf(1,3)*colf(2,4);
.sort
*
#call ApartFillLocalDollarMatrixWithTableElements(mat,s,rowf,colf,mtab,aux,5,5,0,z)
*
.sort
*
local d11 = $mat1s1 - 12;
local d12 = $mat1s2 - 14;
local d21 = $mat2s1 - 32;
local d22 = $mat2s2;
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("+1")
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartFillLocalDollarMatrixWithTableElements_10 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(2,3) = 23;
*
local F = rowf(2,2)*colf(3,3);
.sort
*
#call ApartFillLocalDollarMatrixWithTableElements(mat,s,rowf,colf,mtab,aux,5,5,0,z)
*
.sort
*
local d11 = $mat1s1 - 23;
local d12 = $mat1s2 - 23;
local d21 = $mat2s1 - 23;
local d22 = $mat2s2 - 23;
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("+1")
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartFillLocalDollarMatrixWithTableElements_11 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:12,1:12);
fill mtab(5,1) = 51;
fill mtab(5,2) = 52;
fill mtab(5,3) = 53;
fill mtab(5,4) = 54;
fill mtab(5,5) = 55;
fill mtab(5,6) = 56;
fill mtab(5,7) = 57;
fill mtab(5,8) = 58;
fill mtab(5,9) = 59;
fill mtab(5,10) = 60;
*
local F = rowf(5)*colf(1,2,3,4,5,6,7,8,9,10);
.sort
*
#call ApartFillLocalDollarMatrixWithTableElements(mat,s,rowf,colf,mtab,aux,12,12,0,z)
*
.sort
*
local p1 = $mat1s1 - 51;
local p2 = $mat1s2 - 52;
local p3 = $mat1s3 - 53;
local p4 = $mat1s4 - 54;
local p5 = $mat1s5 - 55;
local p6 = $mat1s6 - 56;
local p7 = $mat1s7 - 57;
local p8 = $mat1s8 - 58;
local p9 = $mat1s9 - 59;
local p10 = $mat1s10 - 60;
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("+1")
assert result("p1") =~ expr("0")
assert result("p2") =~ expr("0")
assert result("p3") =~ expr("0")
assert result("p4") =~ expr("0")
assert result("p5") =~ expr("0")
assert result("p6") =~ expr("0")
assert result("p7") =~ expr("0")
assert result("p8") =~ expr("0")
assert result("p9") =~ expr("0")
assert result("p10") =~ expr("0")
*}}}
*
*{{{ ApartFillLocalDollarMatrixWithTableElements_12 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,1) = 11;
fill mtab(1,2) = 12;
fill mtab(2,1) = 21;
fill mtab(2,2) = 22;
*
local F = rowf(1,2)*colf(1,2);
.sort
*
#call ApartFillLocalDollarMatrixWithTableElements(mat,q,rowf,colf,mtab,aux,5,5,0,z)
*
.sort
*
local d11 = $mat1q1 - 11;
local d12 = $mat1q2 - 12;
local d21 = $mat2q1 - 21;
local d22 = $mat2q2 - 22;
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("+1")
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartFillLocalDollarMatrixWithTableElements_13 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux,den;
symbols z,x,y;
ctable,zerofill,mtab(1:5,1:5);
fill mtab(1,2) = 12;
fill mtab(3,2) = 32;
*
local F = 4*den(x)^2*den(x+y)*rowf(1,3)*colf(2);
.sort
*
#call ApartFillLocalDollarMatrixWithTableElements(mat,s,rowf,colf,mtab,aux,5,5,1,z)
*
.sort
*
local Fdiff = F - 4*den(x)^2*den(x+y)*rowf(1,3)*colf(2);
local d11 = $mat1s1 - 12;
local d21 = $mat2s1 - 32;
.sort
*
print +s;
.end
assert succeeded?
assert result("Fdiff") =~ expr("0")
assert result("d11") =~ expr("0")
assert result("d21") =~ expr("0")
*}}}
*
*{{{ ApartFillLocalDollarMatrixWithTableElements_14 :
#include- ../src/formapart.h
*
cfunction rowf,colf,aux;
symbol z;
ctable,zerofill,mtab(1:9,1:9);
fill mtab(9,9) = 99;
fill mtab(9,5) = 95;
fill mtab(1,9) = 19;
fill mtab(1,5) = 15;
*
local F = rowf(9,1)*colf(9,5);
.sort
*
#call ApartFillLocalDollarMatrixWithTableElements(mat,s,rowf,colf,mtab,aux,9,9,0,z)
*
.sort
*
local d11 = $mat1s1 - 99;
local d12 = $mat1s2 - 95;
local d21 = $mat2s1 - 19;
local d22 = $mat2s2 - 15;
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("+1")
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
