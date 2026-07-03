*{{{ ApartInvertMatrix_1 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 7;
*
local F = row(1)*col(1);
.sort
*
$Determinant = 7;
*
#call ApartInvertMatrix(M,c,1,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1/7);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_2 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
*
local F = row(1,2)*col(1,2);
.sort
*
$Determinant = 1;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2) + acc(3)*($M2c1) + acc(4)*($M2c2 - 1);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_3 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 3;
Fill MyTable(1,2) = 1;
Fill MyTable(2,1) = 2;
Fill MyTable(2,2) = 5;
*
local F = row(1,2)*col(1,2);
.sort
*
$Determinant = 13;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 5/13) + acc(2)*($M1c2 + 1/13) + acc(3)*($M2c1 + 2/13) + acc(4)*($M2c2 - 3/13);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_4 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 1;
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = -1;
*
local F = row(1,2)*col(1,2);
.sort
*
$Determinant = -2;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1/2) + acc(2)*($M1c2 - 1/2) + acc(3)*($M2c1 - 1/2) + acc(4)*($M2c2 + 1/2);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_5 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 2;
Fill MyTable(1,2) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 3;
*
local F = row(1,2)*col(1,2);
.sort
*
$Determinant = 6;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1/2) + acc(2)*($M1c2) + acc(3)*($M2c1) + acc(4)*($M2c2 - 1/3);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_6 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
$Determinant = 1;
*
#call ApartInvertMatrix(M,c,3,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2) + acc(3)*($M1c3) + acc(4)*($M2c1) + acc(5)*($M2c2 - 1) + acc(6)*($M2c3) + acc(7)*($M3c1) + acc(8)*($M3c2) +
    acc(9)*($M3c3 - 1);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_7 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 2;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 3;
Fill MyTable(2,3) = 1;
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 2;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
$Determinant = 13;
*
#call ApartInvertMatrix(M,c,3,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 6/13) + acc(2)*($M1c2 + 2/13) + acc(3)*($M1c3 - 1/13) + acc(4)*($M2c1 - 1/13) + acc(5)*($M2c2 - 4/13) + acc(6)*($M2c3 + 2/13) +
    acc(7)*($M3c1 + 3/13) + acc(8)*($M3c2 - 1/13) + acc(9)*($M3c3 - 6/13);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_8 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(3,2) = 4;
Fill MyTable(3,5) = 1;
Fill MyTable(7,2) = 2;
Fill MyTable(7,5) = 3;
*
local F = row(3,7)*col(2,5);
.sort
*
$Determinant = 10;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 3/10) + acc(2)*($M1c2 + 1/10) + acc(3)*($M2c1 + 1/5) + acc(4)*($M2c2 - 2/5);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_9 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 1;
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = -1;
*
local F = row(1,2)*col(1,2);
.sort
*
$Determinant = -2;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*(1*$M1c1 + 1*$M2c1 - 1) + acc(2)*(1*$M1c2 + 1*$M2c2) + acc(3)*(1*$M1c1 + (-1)*$M2c1) + acc(4)*(1*$M1c2 + (-1)*$M2c2 - 1);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_10 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4,s;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = s;
*
local F = row(1)*col(1);
.sort
*
$Determinant = s;
*
#call ApartInvertMatrix(M,c,1,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - s^-1);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_11 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4,s,t;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = s+t;
*
local F = row(1)*col(1);
.sort
*
$Determinant = s+t;
*
#call ApartInvertMatrix(M,c,1,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - den(s+t));
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_12 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4,s,t;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = s;
Fill MyTable(1,2) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = t;
*
local F = row(1,2)*col(1,2);
.sort
*
$Determinant = s*t;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - s^-1) + acc(2)*($M1c2) + acc(3)*($M2c1) + acc(4)*($M2c2 - t^-1);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_13 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 1;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
*
local F = row(1,2)*col(1,2);
.sort
*
$Determinant = 1;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2 + 1) + acc(3)*($M2c1) + acc(4)*($M2c2 - 1);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_14 :
*
*
*
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4,s,t;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = s;
Fill MyTable(1,2) = 1;
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = t;
*
local F = row(1,2)*col(1,2);
.sort
*
$Determinant = s*t - 1;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - t*den(s*t-1)) + acc(2)*($M1c2 + den(s*t-1)) + acc(3)*($M2c1 + den(s*t-1)) + acc(4)*($M2c2 - s*den(s*t-1));
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_15 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 2;
Fill MyTable(2,1) = 3;
Fill MyTable(2,2) = 4;
*
local F = row(1,2)*col(1,2);
.sort
*
$Determinant = -2;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 + 2) + acc(2)*($M1c2 - 1) + acc(3)*($M2c1 - 3/2) + acc(4)*($M2c2 + 1/2);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_16 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 3/5;
*
local F = row(1)*col(1);
.sort
*
$Determinant = 3/5;
*
#call ApartInvertMatrix(M,c,1,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 5/3);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_17 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 1;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 1;
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
$Determinant = 2;
*
#call ApartInvertMatrix(M,c,3,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 + 1/2) + acc(2)*($M1c2 - 1/2) + acc(3)*($M1c3 + 1/2) + acc(4)*($M2c1 - 1/2) + acc(5)*($M2c2 + 1/2) + acc(6)*($M2c3 + 1/2) + acc(7)*($M3c1 + 1/2) +
    acc(8)*($M3c2 + 1/2) + acc(9)*($M3c3 - 1/2);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_18 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(2,3) = 1;
Fill MyTable(2,6) = 2;
Fill MyTable(2,8) = 0;
Fill MyTable(5,3) = 3;
Fill MyTable(5,6) = 1;
Fill MyTable(5,8) = 1;
Fill MyTable(9,3) = 0;
Fill MyTable(9,6) = 1;
Fill MyTable(9,8) = 4;
*
local F = row(2,5,9)*col(3,6,8);
.sort
*
$Determinant = -21;
*
#call ApartInvertMatrix(M,c,3,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 + 1/7) + acc(2)*($M1c2 - 8/21) + acc(3)*($M1c3 + 2/21) + acc(4)*($M2c1 - 4/7) + acc(5)*($M2c2 + 4/21) + acc(6)*($M2c3 - 1/21) +
    acc(7)*($M3c1 + 1/7) + acc(8)*($M3c2 - 1/21) + acc(9)*($M3c3 - 5/21);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_19 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4,s;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = s;
Fill MyTable(1,2) = 1;
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = s;
*
local F = row(1,2)*col(1,2);
.sort
*
$Determinant = s^2 - 1;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - s*den(s^2-1)) + acc(2)*($M1c2 + den(s^2-1)) + acc(3)*($M2c1 + den(s^2-1)) + acc(4)*($M2c2 - s*den(s^2-1));
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_20 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 2;
Fill MyTable(1,2) = 1;
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 1;
*
local F = row(1,2)*col(1,2);
.sort
*
$Determinant = 1;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2 + 1) + acc(3)*($M2c1 + 1) + acc(4)*($M2c2 - 2);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_21 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4,s;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = s;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = s;
Fill MyTable(2,3) = 0;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = s;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
$Determinant = s^3;
*
#call ApartInvertMatrix(M,c,3,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - s^-1) + acc(2)*($M1c2) + acc(3)*($M1c3) + acc(4)*($M2c1) + acc(5)*($M2c2 - s^-1) + acc(6)*($M2c3) + acc(7)*($M3c1) + acc(8)*($M3c2) +
    acc(9)*($M3c3 - s^-1);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_22 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 1;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 1;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
$Determinant = 1;
*
#call ApartInvertMatrix(M,c,3,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2 + 1) + acc(3)*($M1c3) + acc(4)*($M2c1) + acc(5)*($M2c2 - 1) + acc(6)*($M2c3 + 1) + acc(7)*($M3c1) + acc(8)*($M3c2) +
    acc(9)*($M3c3 - 1);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_23 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4,s;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = s;
Fill MyTable(2,1) = s;
Fill MyTable(2,2) = 1;
*
local F = row(1,2)*col(1,2);
.sort
*
$Determinant = 1 - s^2;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - den(1-s^2)) + acc(2)*($M1c2 + s*den(1-s^2)) + acc(3)*($M2c1 + s*den(1-s^2)) + acc(4)*($M2c2 - den(1-s^2));
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_24 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4,s,t;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = s+t;
Fill MyTable(1,2) = 1;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
*
local F = row(1,2)*col(1,2);
.sort
*
$Determinant = s+t;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - den(s+t)) + acc(2)*($M1c2 + den(s+t)) + acc(3)*($M2c1) + acc(4)*($M2c2 - (s+t)*den(s+t));
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_25 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
*
local F = row(1,3)*col(1,2);
.sort
*
$Determinant = 1;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2) + acc(3)*($M2c1 + 1) + acc(4)*($M2c2 - 1);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_26 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 2;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 3;
Fill MyTable(2,3) = 1;
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 2;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
$Determinant = 13;
*
#call ApartInvertMatrix(M,c,3,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*(2*$M1c1 + 1*$M2c1 + 0*$M3c1 - 1) + acc(2)*(2*$M1c2 + 1*$M2c2 + 0*$M3c2) + acc(3)*(2*$M1c3 + 1*$M2c3 + 0*$M3c3) + acc(4)*(0*$M1c1 + 3*$M2c1 + 1*$M3c1) +
    acc(5)*(0*$M1c2 + 3*$M2c2 + 1*$M3c2 - 1) + acc(6)*(0*$M1c3 + 3*$M2c3 + 1*$M3c3) + acc(7)*(1*$M1c1 + 0*$M2c1 + 2*$M3c1) + acc(8)*(1*$M1c2 + 0*$M2c2 + 2*$M3c2) +
    acc(9)*(1*$M1c3 + 0*$M2c3 + 2*$M3c3 - 1);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_27 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 0;
Fill MyTable(1,2) = 1;
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 0;
*
local F = row(1,2)*col(1,2);
.sort
*
$Determinant = -1;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1) + acc(2)*($M1c2 - 1) + acc(3)*($M2c1 - 1) + acc(4)*($M2c2);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_28 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 0;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 1;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 2;
Fill MyTable(2,3) = 0;
Fill MyTable(3,1) = 3;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 0;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
$Determinant = -6;
*
#call ApartInvertMatrix(M,c,3,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1) + acc(2)*($M1c2) + acc(3)*($M1c3 - 1/3) + acc(4)*($M2c1) + acc(5)*($M2c2 - 1/2) + acc(6)*($M2c3) + acc(7)*($M3c1 - 1) + acc(8)*($M3c2) +
    acc(9)*($M3c3);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_29 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 0;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 1;
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 0;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
$Determinant = 1;
*
#call ApartInvertMatrix(M,c,3,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1) + acc(2)*($M1c2) + acc(3)*($M1c3 - 1) + acc(4)*($M2c1 - 1) + acc(5)*($M2c2) + acc(6)*($M2c3) + acc(7)*($M3c1) + acc(8)*($M3c2 - 1) +
    acc(9)*($M3c3);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_30 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 2;
Fill MyTable(1,3) = 3;
Fill MyTable(2,1) = 4;
Fill MyTable(2,2) = 5;
Fill MyTable(2,3) = 6;
Fill MyTable(3,1) = 7;
Fill MyTable(3,2) = 8;
Fill MyTable(3,3) = 10;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
$Determinant = -3;
*
#call ApartInvertMatrix(M,c,3,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 + 2/3) + acc(2)*($M1c2 + 4/3) + acc(3)*($M1c3 - 1) + acc(4)*($M2c1 + 2/3) + acc(5)*($M2c2 - 11/3) + acc(6)*($M2c3 + 2) + acc(7)*($M3c1 - 1) +
    acc(8)*($M3c2 + 2) + acc(9)*($M3c3 - 1);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_31 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 100;
Fill MyTable(1,2) = 1;
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 100;
*
local F = row(1,2)*col(1,2);
.sort
*
$Determinant = 9999;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 100/9999) + acc(2)*($M1c2 + 1/9999) + acc(3)*($M2c1 + 1/9999) + acc(4)*($M2c2 - 100/9999);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_32 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1/2;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1/3;
Fill MyTable(2,3) = 0;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1/5;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
$Determinant = 1/30;
*
#call ApartInvertMatrix(M,c,3,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 2) + acc(2)*($M1c2) + acc(3)*($M1c3) + acc(4)*($M2c1) + acc(5)*($M2c2 - 3) + acc(6)*($M2c3) + acc(7)*($M3c1) + acc(8)*($M3c2) +
    acc(9)*($M3c3 - 5);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_33 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1/3;
Fill MyTable(1,2) = -1/2;
Fill MyTable(2,1) = -2/3;
Fill MyTable(2,2) = 1/4;
*
local F = row(1,2)*col(1,2);
.sort
*
$Determinant = -1/4;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 + 1) + acc(2)*($M1c2 + 2) + acc(3)*($M2c1 + 8/3) + acc(4)*($M2c2 + 4/3);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_34 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4,s,t;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = s;
Fill MyTable(1,2) = t;
Fill MyTable(2,1) = t;
Fill MyTable(2,2) = s;
*
local F = row(1,2)*col(1,2);
.sort
*
$Determinant = s^2 - t^2;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - s*den(s^2-t^2)) + acc(2)*($M1c2 + t*den(s^2-t^2)) + acc(3)*($M2c1 + t*den(s^2-t^2)) + acc(4)*($M2c2 - s*den(s^2-t^2));
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_35 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4,s;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = s;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(3,1) = s;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
$Determinant = 1 - s^2;
*
#call ApartInvertMatrix(M,c,3,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - den(1-s^2)) + acc(2)*($M1c2) + acc(3)*($M1c3 + s*den(1-s^2)) + acc(4)*($M2c1) + acc(5)*($M2c2 - (1-s^2)*den(1-s^2)) + acc(6)*($M2c3) +
    acc(7)*($M3c1 + s*den(1-s^2)) + acc(8)*($M3c2) + acc(9)*($M3c3 - den(1-s^2));
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_36 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4,s,t;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = s;
Fill MyTable(1,3) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = t;
Fill MyTable(3,1) = s;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
$Determinant = 1 + s^2*t;
*
#call ApartInvertMatrix(M,c,3,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - den(1+s^2*t)) + acc(2)*($M1c2 + s*den(1+s^2*t)) + acc(3)*($M1c3 - s*t*den(1+s^2*t)) + acc(4)*($M2c1 - s*t*den(1+s^2*t)) +
    acc(5)*($M2c2 - den(1+s^2*t)) + acc(6)*($M2c3 + t*den(1+s^2*t)) + acc(7)*($M3c1 + s*den(1+s^2*t)) + acc(8)*($M3c2 - s^2*den(1+s^2*t)) + acc(9)*($M3c3 - den(1+s^2*t));
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_37 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 2;
Fill MyTable(1,3) = 3;
Fill MyTable(1,4) = 4;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 5;
Fill MyTable(2,4) = 6;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 7;
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 1;
*
local F = row(1,2,3,4)*col(1,2,3,4);
.sort
*
$Determinant = 1;
*
#call ApartInvertMatrix(M,c,4,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2 + 2) + acc(3)*($M1c3 - 7) + acc(4)*($M1c4 + 41) + acc(5)*($M2c1) + acc(6)*($M2c2 - 1) + acc(7)*($M2c3 + 5) +
    acc(8)*($M2c4 - 29) + acc(9)*($M3c1) + acc(10)*($M3c2) + acc(11)*($M3c3 - 1) + acc(12)*($M3c4 + 7) + acc(13)*($M4c1) + acc(14)*($M4c2) + acc(15)*($M4c3) +
    acc(16)*($M4c4 - 1);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_38 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 2;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 3;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 2;
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 2;
Fill MyTable(4,4) = 1;
*
local F = row(1,2,3,4)*col(1,2,3,4);
.sort
*
$Determinant = -15;
*
#call ApartInvertMatrix(M,c,4,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 3/5) + acc(2)*($M1c2 + 1/5) + acc(3)*($M1c3) + acc(4)*($M1c4) + acc(5)*($M2c1 + 1/5) + acc(6)*($M2c2 - 2/5) + acc(7)*($M2c3) + acc(8)*($M2c4) +
    acc(9)*($M3c1) + acc(10)*($M3c2) + acc(11)*($M3c3 + 1/3) + acc(12)*($M3c4 - 2/3) + acc(13)*($M4c1) + acc(14)*($M4c2) + acc(15)*($M4c3 - 2/3) + acc(16)*($M4c4 + 1/3);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_39 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 2;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 2;
Fill MyTable(2,3) = 1;
Fill MyTable(2,4) = 0;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 2;
Fill MyTable(3,4) = 1;
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 1;
Fill MyTable(4,4) = 2;
*
local F = row(1,2,3,4)*col(1,2,3,4);
.sort
*
$Determinant = 5;
*
#call ApartInvertMatrix(M,c,4,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 4/5) + acc(2)*($M1c2 + 3/5) + acc(3)*($M1c3 - 2/5) + acc(4)*($M1c4 + 1/5) + acc(5)*($M2c1 + 3/5) + acc(6)*($M2c2 - 6/5) + acc(7)*($M2c3 + 4/5) +
    acc(8)*($M2c4 - 2/5) + acc(9)*($M3c1 - 2/5) + acc(10)*($M3c2 + 4/5) + acc(11)*($M3c3 - 6/5) + acc(12)*($M3c4 + 3/5) + acc(13)*($M4c1 + 1/5) + acc(14)*($M4c2 - 2/5) +
    acc(15)*($M4c3 + 3/5) + acc(16)*($M4c4 - 4/5);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_40 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,3) = 1;
Fill MyTable(2,5) = 0;
Fill MyTable(2,7) = 0;
Fill MyTable(4,1) = 0;
Fill MyTable(4,3) = 1;
Fill MyTable(4,5) = 1;
Fill MyTable(4,7) = 0;
Fill MyTable(6,1) = 0;
Fill MyTable(6,3) = 0;
Fill MyTable(6,5) = 1;
Fill MyTable(6,7) = 1;
Fill MyTable(8,1) = 1;
Fill MyTable(8,3) = 0;
Fill MyTable(8,5) = 0;
Fill MyTable(8,7) = 2;
*
local F = row(2,4,6,8)*col(1,3,5,7);
.sort
*
$Determinant = 1;
*
#call ApartInvertMatrix(M,c,4,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 2) + acc(2)*($M1c2 + 2) + acc(3)*($M1c3 - 2) + acc(4)*($M1c4 + 1) + acc(5)*($M2c1 + 1) + acc(6)*($M2c2 - 2) + acc(7)*($M2c3 + 2) +
    acc(8)*($M2c4 - 1) + acc(9)*($M3c1 - 1) + acc(10)*($M3c2 + 1) + acc(11)*($M3c3 - 2) + acc(12)*($M3c4 + 1) + acc(13)*($M4c1 + 1) + acc(14)*($M4c2 - 1) +
    acc(15)*($M4c3 + 1) + acc(16)*($M4c4 - 1);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_41 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 2;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(1,5) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 3;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
Fill MyTable(2,5) = 0;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 5;
Fill MyTable(3,4) = 0;
Fill MyTable(3,5) = 0;
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 7;
Fill MyTable(4,5) = 0;
Fill MyTable(5,1) = 0;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 0;
Fill MyTable(5,4) = 0;
Fill MyTable(5,5) = 11;
*
local F = row(1,2,3,4,5)*col(1,2,3,4,5);
.sort
*
$Determinant = 2310;
*
#call ApartInvertMatrix(M,c,5,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1/2) + acc(2)*($M1c2) + acc(3)*($M1c3) + acc(4)*($M1c4) + acc(5)*($M1c5) + acc(6)*($M2c1) + acc(7)*($M2c2 - 1/3) + acc(8)*($M2c3) +
    acc(9)*($M2c4) + acc(10)*($M2c5) + acc(11)*($M3c1) + acc(12)*($M3c2) + acc(13)*($M3c3 - 1/5) + acc(14)*($M3c4) + acc(15)*($M3c5) + acc(16)*($M4c1) + acc(17)*($M4c2) +
    acc(18)*($M4c3) + acc(19)*($M4c4 - 1/7) + acc(20)*($M4c5) + acc(21)*($M5c1) + acc(22)*($M5c2) + acc(23)*($M5c3) + acc(24)*($M5c4) + acc(25)*($M5c5 - 1/11);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_42 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4,s,t;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = s+1;
Fill MyTable(1,2) = t;
Fill MyTable(2,1) = t;
Fill MyTable(2,2) = s-1;
*
local F = row(1,2)*col(1,2);
.sort
*
$Determinant = s^2 - 1 - t^2;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - (s-1)*den(s^2-1-t^2)) + acc(2)*($M1c2 + t*den(s^2-1-t^2)) + acc(3)*($M2c1 + t*den(s^2-1-t^2)) + acc(4)*($M2c2 - (s+1)*den(s^2-1-t^2));
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_43 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(2,3) = 1;
Fill MyTable(2,6) = 2;
Fill MyTable(2,8) = 0;
Fill MyTable(5,3) = 3;
Fill MyTable(5,6) = 1;
Fill MyTable(5,8) = 1;
Fill MyTable(9,3) = 0;
Fill MyTable(9,6) = 1;
Fill MyTable(9,8) = 4;
*
local F = row(2,5,9)*col(3,6,8);
.sort
*
$Determinant = -21;
*
#call ApartInvertMatrix(M,c,3,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*(1*$M1c1 + 2*$M2c1 + 0*$M3c1 - 1) + acc(2)*(1*$M1c2 + 2*$M2c2 + 0*$M3c2) + acc(3)*(1*$M1c3 + 2*$M2c3 + 0*$M3c3) + acc(4)*(3*$M1c1 + 1*$M2c1 + 1*$M3c1) +
    acc(5)*(3*$M1c2 + 1*$M2c2 + 1*$M3c2 - 1) + acc(6)*(3*$M1c3 + 1*$M2c3 + 1*$M3c3) + acc(7)*(0*$M1c1 + 1*$M2c1 + 4*$M3c1) + acc(8)*(0*$M1c2 + 1*$M2c2 + 4*$M3c2) +
    acc(9)*(0*$M1c3 + 1*$M2c3 + 4*$M3c3 - 1);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_44 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 0;
Fill MyTable(1,2) = 1;
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 1;
*
local F = row(1,2)*col(1,2);
.sort
*
$Determinant = -1;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 + 1) + acc(2)*($M1c2 - 1) + acc(3)*($M2c1 - 1) + acc(4)*($M2c2);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_45 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 1/2;
Fill MyTable(2,1) = 1/2;
Fill MyTable(2,2) = 1/3;
*
local F = row(1,2)*col(1,2);
.sort
*
$Determinant = 1/12;
*
#call ApartInvertMatrix(M,c,2,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 4) + acc(2)*($M1c2 + 6) + acc(3)*($M2c1 + 6) + acc(4)*($M2c2 - 12);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_46 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,den,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 2;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 3;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 2;
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 2;
Fill MyTable(4,4) = 1;
*
local F = row(1,2,3,4)*col(1,2,3,4);
.sort
*
$Determinant = -15;
*
#call ApartInvertMatrix(M,c,4,Determinant,row,col,den,aux,MyTable,n1,...,n4)
*
multiply acc(1)*(2*$M1c1 + 1*$M2c1 - 1) + acc(2)*(2*$M1c2 + 1*$M2c2) + acc(3)*(2*$M1c3 + 1*$M2c3) + acc(4)*(2*$M1c4 + 1*$M2c4) + acc(5)*(1*$M1c1 + 3*$M2c1) +
    acc(6)*(1*$M1c2 + 3*$M2c2 - 1) + acc(7)*(1*$M1c3 + 3*$M2c3) + acc(8)*(1*$M1c4 + 3*$M2c4) + acc(9)*(1*$M3c1 + 2*$M4c1) + acc(10)*(1*$M3c2 + 2*$M4c2) +
    acc(11)*(1*$M3c3 + 2*$M4c3 - 1) + acc(12)*(1*$M3c4 + 2*$M4c4) + acc(13)*(2*$M3c1 + 1*$M4c1) + acc(14)*(2*$M3c2 + 1*$M4c2) + acc(15)*(2*$M3c3 + 1*$M4c3) +
    acc(16)*(2*$M3c4 + 1*$M4c4 - 1);
ModuleOption,Local,$Determinant;
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
