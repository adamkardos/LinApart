*{{{ ApartAdjugateMatrix_1 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 7;
*
local F = row(1)*col(1);
.sort
*
#call ApartAdjugateMatrix(M,c,1,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_2 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
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
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2) + acc(3)*($M2c1) + acc(4)*($M2c2 - 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_3 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
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
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 5) + acc(2)*($M1c2 + 1) + acc(3)*($M2c1 + 2) + acc(4)*($M2c2 - 3);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_4 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
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
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 + 1) + acc(2)*($M1c2 + 1) + acc(3)*($M2c1 + 1) + acc(4)*($M2c2 - 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_5 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 0;
Fill MyTable(1,2) = 1;
Fill MyTable(2,1) = -1;
Fill MyTable(2,2) = 0;
*
local F = row(1,2)*col(1,2);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1) + acc(2)*($M1c2 + 1) + acc(3)*($M2c1 - 1) + acc(4)*($M2c2);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_6 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
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
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2) + acc(3)*($M1c3) + acc(4)*($M2c1) + acc(5)*($M2c2 - 1) + acc(6)*($M2c3) + acc(7)*($M3c1) + acc(8)*($M3c2) +
    acc(9)*($M3c3 - 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_7 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = -1;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 + 1) + acc(2)*($M1c2) + acc(3)*($M1c3) + acc(4)*($M2c1 - 1) + acc(5)*($M2c2 + 1) + acc(6)*($M2c3) + acc(7)*($M3c1) + acc(8)*($M3c2 + 1) +
    acc(9)*($M3c3 - 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_8 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 2;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 3;
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2 + 1) + acc(3)*($M1c3 - 3) + acc(4)*($M2c1 - 3) + acc(5)*($M2c2 - 2) + acc(6)*($M2c3 + 6) + acc(7)*($M3c1 + 1) +
    acc(8)*($M3c2 - 1) + acc(9)*($M3c3 - 2);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_9 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 0;
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 1;
Fill MyTable(4,4) = 1;
*
local F = row(1,2,3,4)*col(1,2,3,4);
.sort
*
#call ApartAdjugateMatrix(M,c,4,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2) + acc(3)*($M1c3) + acc(4)*($M1c4) + acc(5)*($M2c1) + acc(6)*($M2c2 - 1) + acc(7)*($M2c3) + acc(8)*($M2c4) + acc(9)*($M3c1) +
    acc(10)*($M3c2) + acc(11)*($M3c3 - 1) + acc(12)*($M3c4) + acc(13)*($M4c1 + 1) + acc(14)*($M4c2 + 1) + acc(15)*($M4c3 + 1) + acc(16)*($M4c4 - 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_10 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
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
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2) + acc(3)*($M2c1 + 1) + acc(4)*($M2c2 - 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_11 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1;
*
local F = row(2,4)*col(1,2);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2 + 1) + acc(3)*($M2c1 + 1) + acc(4)*($M2c2);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_12 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 0;
Fill MyTable(5,1) = 0;
Fill MyTable(5,2) = 1;
Fill MyTable(5,3) = 1;
*
local F = row(1,4,5)*col(1,2,3);
.sort
*
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2) + acc(3)*($M1c3) + acc(4)*($M2c1 + 1) + acc(5)*($M2c2 - 1) + acc(6)*($M2c3) + acc(7)*($M3c1 - 1) + acc(8)*($M3c2 + 1) +
    acc(9)*($M3c3 - 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_13 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux,foo;
symbols n1,n2,n3,n4,s,x;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
*
local F = 7/3*s^2*foo(x)*row(1,2)*col(1,2);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2) + acc(3)*($M2c1) + acc(4)*($M2c2 - 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_14 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,APd1,APd3;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
*
local F = -5*APd1^2*APd3*row(1,3)*col(1,2);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2) + acc(3)*($M2c1 + 1) + acc(4)*($M2c2 - 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_15 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 2;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 3;
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*(2*$M1c1 + 1*$M2c1 - 5) + acc(2)*(2*$M1c2 + 1*$M2c2) + acc(3)*(2*$M1c3 + 1*$M2c3) + acc(4)*(1*$M2c1 + 3*$M3c1) + acc(5)*(1*$M2c2 + 3*$M3c2 - 5) +
    acc(6)*(1*$M2c3 + 3*$M3c3) + acc(7)*(1*$M1c1 + 1*$M3c1) + acc(8)*(1*$M1c2 + 1*$M3c2) + acc(9)*(1*$M1c3 + 1*$M3c3 - 5);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_16 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 7;
Fill MyTable(1,2) = 13;
Fill MyTable(2,1) = 5;
Fill MyTable(2,2) = 11;
*
local F = row(1,2)*col(1,2);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 11) + acc(2)*($M1c2 + 13) + acc(3)*($M2c1 + 5) + acc(4)*($M2c2 - 7);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_17 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = -3;
Fill MyTable(1,2) = -1;
Fill MyTable(2,1) = -2;
Fill MyTable(2,2) = -5;
*
local F = row(1,2)*col(1,2);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 + 5) + acc(2)*($M1c2 - 1) + acc(3)*($M2c1 - 2) + acc(4)*($M2c2 + 3);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_18 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 0;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 1;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 0;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1) + acc(2)*($M1c2) + acc(3)*($M1c3 + 1) + acc(4)*($M2c1) + acc(5)*($M2c2 + 1) + acc(6)*($M2c3) + acc(7)*($M3c1 + 1) + acc(8)*($M3c2) +
    acc(9)*($M3c3);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_19 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = -1;
Fill MyTable(1,3) = 0;
Fill MyTable(2,1) = -1;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = -1;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = -1;
Fill MyTable(3,3) = 1;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1) + acc(2)*($M1c2 - 1) + acc(3)*($M1c3 - 1) + acc(4)*($M2c1 - 1) + acc(5)*($M2c2 - 1) + acc(6)*($M2c3 - 1) + acc(7)*($M3c1 - 1) + acc(8)*($M3c2 - 1) +
    acc(9)*($M3c3);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_20 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 2;
Fill MyTable(1,2) = 3;
Fill MyTable(1,3) = 4;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 5;
Fill MyTable(2,3) = 6;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 7;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 35) + acc(2)*($M1c2 + 21) + acc(3)*($M1c3 + 2) + acc(4)*($M2c1) + acc(5)*($M2c2 - 14) + acc(6)*($M2c3 + 12) + acc(7)*($M3c1) + acc(8)*($M3c2) +
    acc(9)*($M3c3 - 10);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_21 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 7;
Fill MyTable(1,2) = 3;
Fill MyTable(1,3) = 2;
Fill MyTable(2,1) = 5;
Fill MyTable(2,2) = 11;
Fill MyTable(2,3) = 1;
Fill MyTable(3,1) = 13;
Fill MyTable(3,2) = 2;
Fill MyTable(3,3) = 8;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 86) + acc(2)*($M1c2 + 20) + acc(3)*($M1c3 + 19) + acc(4)*($M2c1 + 27) + acc(5)*($M2c2 - 30) + acc(6)*($M2c3 - 3) + acc(7)*($M3c1 + 133) +
    acc(8)*($M3c2 - 25) + acc(9)*($M3c3 - 62);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_22 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 2;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 1;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 3;
Fill MyTable(2,4) = 0;
Fill MyTable(3,1) = 2;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 1;
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 1;
Fill MyTable(4,4) = 1;
*
local F = row(1,2,3,4)*col(1,2,3,4);
.sort
*
#call ApartAdjugateMatrix(M,c,4,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 3) + acc(2)*($M1c2 - 1) + acc(3)*($M1c3 - 4) + acc(4)*($M1c4 + 7) + acc(5)*($M2c1 - 3) + acc(6)*($M2c2 - 1) + acc(7)*($M2c3) + acc(8)*($M2c4 + 3) +
    acc(9)*($M3c1 + 1) + acc(10)*($M3c2 - 1) + acc(11)*($M3c3) + acc(12)*($M3c4 - 1) + acc(13)*($M4c1 + 5) + acc(14)*($M4c2 + 3) + acc(15)*($M4c3 + 4) +
    acc(16)*($M4c4 - 13);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_23 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(3,2) = 4;
Fill MyTable(3,5) = -2;
Fill MyTable(7,2) = 1;
Fill MyTable(7,5) = 3;
*
local F = row(3,7)*col(2,5);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 3) + acc(2)*($M1c2 - 2) + acc(3)*($M2c1 + 1) + acc(4)*($M2c2 - 4);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_24 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 2;
Fill MyTable(5,1) = 3;
Fill MyTable(5,3) = 1;
Fill MyTable(5,4) = 0;
Fill MyTable(9,1) = 0;
Fill MyTable(9,3) = 2;
Fill MyTable(9,4) = 1;
*
local F = row(2,5,9)*col(1,3,4);
.sort
*
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2 - 4) + acc(3)*($M1c3 + 2) + acc(4)*($M2c1 + 3) + acc(5)*($M2c2 - 1) + acc(6)*($M2c3 - 6) + acc(7)*($M3c1 - 6) +
    acc(8)*($M3c2 + 2) + acc(9)*($M3c3 - 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_25 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(5,1) = 1;
Fill MyTable(5,2) = 0;
Fill MyTable(10,1) = 0;
Fill MyTable(10,2) = 1;
*
local F = row(5,10)*col(1,2);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2) + acc(3)*($M2c1) + acc(4)*($M2c2 - 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_26 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
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
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1) + acc(2)*($M1c2) + acc(3)*($M1c3 - 1) + acc(4)*($M2c1 - 1) + acc(5)*($M2c2) + acc(6)*($M2c3) + acc(7)*($M3c1) + acc(8)*($M3c2 - 1) +
    acc(9)*($M3c3);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_27 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 0;
Fill MyTable(1,2) = 3;
Fill MyTable(2,1) = 2;
Fill MyTable(2,2) = 0;
*
local F = row(1,2)*col(1,2);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1) + acc(2)*($M1c2 + 3) + acc(3)*($M2c1 + 2) + acc(4)*($M2c2);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_28 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 0;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 1;
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 1;
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 + 1) + acc(2)*($M1c2 - 1) + acc(3)*($M1c3 - 1) + acc(4)*($M2c1 - 1) + acc(5)*($M2c2 + 1) + acc(6)*($M2c3 - 1) + acc(7)*($M3c1 - 1) +
    acc(8)*($M3c2 - 1) + acc(9)*($M3c3 + 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_29 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(1,5) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
Fill MyTable(2,5) = 0;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 0;
Fill MyTable(3,5) = 0;
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 1;
Fill MyTable(4,5) = 0;
Fill MyTable(5,1) = 1;
Fill MyTable(5,2) = 1;
Fill MyTable(5,3) = 1;
Fill MyTable(5,4) = 1;
Fill MyTable(5,5) = 1;
*
local F = row(1,2,3,4,5)*col(1,2,3,4,5);
.sort
*
#call ApartAdjugateMatrix(M,c,5,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2) + acc(3)*($M1c3) + acc(4)*($M1c4) + acc(5)*($M1c5) + acc(6)*($M2c2 - 1) + acc(7)*($M3c3 - 1) + acc(8)*($M4c4 - 1) +
    acc(9)*($M5c1 + 1) + acc(10)*($M5c2 + 1) + acc(11)*($M5c3 + 1) + acc(12)*($M5c4 + 1) + acc(13)*($M5c5 - 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_30 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,a,b,c,d;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = a;
Fill MyTable(1,2) = b;
Fill MyTable(2,1) = c;
Fill MyTable(2,2) = d;
*
local F = row(1,2)*col(1,2);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - d) + acc(2)*($M1c2 + b) + acc(3)*($M2c1 + c) + acc(4)*($M2c2 - a);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_31 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,s,t;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = s;
Fill MyTable(1,2) = 1;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = t;
*
local F = row(1,2)*col(1,2);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - t) + acc(2)*($M1c2 + 1) + acc(3)*($M2c1) + acc(4)*($M2c2 - s);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_32 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,a,b,c;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = a;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = b;
Fill MyTable(2,3) = 0;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = c;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - b*c) + acc(2)*($M1c2) + acc(3)*($M1c3) + acc(4)*($M2c1) + acc(5)*($M2c2 - a*c) + acc(6)*($M2c3) + acc(7)*($M3c1) + acc(8)*($M3c2) +
    acc(9)*($M3c3 - a*b);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_33 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
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
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2 + s) + acc(3)*($M2c1 + s) + acc(4)*($M2c2 - 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_34 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,s,t;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = s;
Fill MyTable(1,3) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = t;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2 + s) + acc(3)*($M1c3 - s*t) + acc(4)*($M2c1) + acc(5)*($M2c2 - 1) + acc(6)*($M2c3 + t) + acc(7)*($M3c1) + acc(8)*($M3c2) +
    acc(9)*($M3c3 - 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_35 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,s,t;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = s+t;
Fill MyTable(1,2) = 1;
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = s-t;
*
local F = row(1,2)*col(1,2);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - s + t) + acc(2)*($M1c2 + 1) + acc(3)*($M2c1 + 1) + acc(4)*($M2c2 - s - t);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_36 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,s,t;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 2;
Fill MyTable(1,2) = s;
Fill MyTable(1,3) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = t;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - t) + acc(2)*($M1c2 + s*t) + acc(3)*($M1c3) + acc(4)*($M2c1) + acc(5)*($M2c2 - 2*t) + acc(6)*($M2c3) + acc(7)*($M3c1 + 1) + acc(8)*($M3c2 - s) +
    acc(9)*($M3c3 - 2);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_37 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,a,b,c,d;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = a;
Fill MyTable(1,2) = b;
Fill MyTable(2,1) = c;
Fill MyTable(2,2) = d;
*
local F = row(1,2)*col(1,2);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*(a*$M1c1 + b*$M2c1 - (a*d - b*c)) + acc(2)*(a*$M1c2 + b*$M2c2) + acc(3)*(c*$M1c1 + d*$M2c1) + acc(4)*(c*$M1c2 + d*$M2c2 - (a*d - b*c));
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_38 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 2;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 1;
Fill MyTable(1,4) = 1;
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 2;
Fill MyTable(2,3) = 1;
Fill MyTable(2,4) = 1;
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 2;
Fill MyTable(3,4) = 1;
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 1;
Fill MyTable(4,4) = 2;
*
local F = row(1,2,3,4)*col(1,2,3,4);
.sort
*
#call ApartAdjugateMatrix(M,c,4,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 4) + acc(2)*($M1c2 + 1) + acc(3)*($M1c3 + 1) + acc(4)*($M1c4 + 1) + acc(5)*($M2c1 + 1) + acc(6)*($M2c2 - 4) + acc(7)*($M2c3 + 1) +
    acc(8)*($M2c4 + 1) + acc(9)*($M3c1 + 1) + acc(10)*($M3c2 + 1) + acc(11)*($M3c3 - 4) + acc(12)*($M3c4 + 1) + acc(13)*($M4c1 + 1) + acc(14)*($M4c2 + 1) +
    acc(15)*($M4c3 + 1) + acc(16)*($M4c4 - 4);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_39 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = -5;
Fill MyTable(1,2) = 3;
Fill MyTable(1,3) = 2;
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = -7;
Fill MyTable(2,3) = 4;
Fill MyTable(3,1) = 2;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = -3;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 17) + acc(2)*($M1c2 - 11) + acc(3)*($M1c3 - 26) + acc(4)*($M2c1 - 11) + acc(5)*($M2c2 - 11) + acc(6)*($M2c3 - 22) + acc(7)*($M3c1 - 15) +
    acc(8)*($M3c2 - 11) + acc(9)*($M3c3 - 32);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_40 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
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
#call ApartAdjugateMatrix(M,c,4,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2 + 2) + acc(3)*($M1c3 - 7) + acc(4)*($M1c4 + 41) + acc(5)*($M2c1) + acc(6)*($M2c2 - 1) + acc(7)*($M2c3 + 5) +
    acc(8)*($M2c4 - 29) + acc(9)*($M3c1) + acc(10)*($M3c2) + acc(11)*($M3c3 - 1) + acc(12)*($M3c4 + 7) + acc(13)*($M4c1) + acc(14)*($M4c2) + acc(15)*($M4c3) +
    acc(16)*($M4c4 - 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_41 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(3,2) = 2;
Fill MyTable(3,4) = -1;
Fill MyTable(3,7) = 3;
Fill MyTable(6,2) = 0;
Fill MyTable(6,4) = 4;
Fill MyTable(6,7) = 1;
Fill MyTable(10,2) = 1;
Fill MyTable(10,4) = -2;
Fill MyTable(10,7) = 5;
*
local F = row(3,6,10)*col(2,4,7);
.sort
*
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 22) + acc(2)*($M1c2 + 1) + acc(3)*($M1c3 + 13) + acc(4)*($M2c1 - 1) + acc(5)*($M2c2 - 7) + acc(6)*($M2c3 + 2) + acc(7)*($M3c1 + 4) +
    acc(8)*($M3c2 - 3) + acc(9)*($M3c3 - 8);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_42 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 0;
Fill MyTable(5,1) = 0;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 1;
Fill MyTable(5,4) = 1;
Fill MyTable(7,1) = 1;
Fill MyTable(7,2) = 0;
Fill MyTable(7,3) = 0;
Fill MyTable(7,4) = 2;
*
local F = row(1,3,5,7)*col(1,2,3,4);
.sort
*
#call ApartAdjugateMatrix(M,c,4,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 2) + acc(2)*($M1c2 + 2) + acc(3)*($M1c3 - 2) + acc(4)*($M1c4 + 1) + acc(5)*($M2c1 + 1) + acc(6)*($M2c2 - 2) + acc(7)*($M2c3 + 2) +
    acc(8)*($M2c4 - 1) + acc(9)*($M3c1 - 1) + acc(10)*($M3c2 + 1) + acc(11)*($M3c3 - 2) + acc(12)*($M3c4 + 1) + acc(13)*($M4c1 + 1) + acc(14)*($M4c2 - 1) +
    acc(15)*($M4c3 + 1) + acc(16)*($M4c4 - 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_43 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 100;
Fill MyTable(1,2) = 37;
Fill MyTable(2,1) = 59;
Fill MyTable(2,2) = 200;
*
local F = row(1,2)*col(1,2);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 200) + acc(2)*($M1c2 + 37) + acc(3)*($M2c1 + 59) + acc(4)*($M2c2 - 100);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_44 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,s;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = s;
Fill MyTable(1,3) = s^2;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 2*s;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2 + s) + acc(3)*($M1c3 - s^2) + acc(4)*($M2c1) + acc(5)*($M2c2 - 1) + acc(6)*($M2c3 + 2*s) + acc(7)*($M3c1) + acc(8)*($M3c2) +
    acc(9)*($M3c3 - 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_45 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
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
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - s + 1) + acc(2)*($M1c2 + t) + acc(3)*($M2c1 + t) + acc(4)*($M2c2 - s - 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_46 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,s,t;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = s+t;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = s-t;
Fill MyTable(2,3) = 1;
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = s;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - s^2 + s*t) + acc(2)*($M1c2 + s) + acc(3)*($M1c3 - 1) + acc(4)*($M2c1 - 1) + acc(5)*($M2c2 - s*t - s^2) + acc(6)*($M2c3 + s + t) +
    acc(7)*($M3c1 - t + s) + acc(8)*($M3c2 - 1) + acc(9)*($M3c3 - s^2 + t^2);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_47 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,s,t;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = s;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = t;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 0;
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 1;
Fill MyTable(4,4) = 1;
*
local F = row(1,2,3,4)*col(1,2,3,4);
.sort
*
#call ApartAdjugateMatrix(M,c,4,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - t) + acc(2)*($M1c2) + acc(3)*($M1c3) + acc(4)*($M1c4) + acc(5)*($M2c1) + acc(6)*($M2c2 - s) + acc(7)*($M2c3) + acc(8)*($M2c4) + acc(9)*($M3c1) +
    acc(10)*($M3c2) + acc(11)*($M3c3 - s*t) + acc(12)*($M3c4) + acc(13)*($M4c1 + t) + acc(14)*($M4c2 + s) + acc(15)*($M4c3 + s*t) + acc(16)*($M4c4 - s*t);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_48 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,a,b;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = a;
Fill MyTable(1,3) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = b;
Fill MyTable(3,1) = a;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - 1) + acc(2)*($M1c2 + a) + acc(3)*($M1c3 - a*b) + acc(4)*($M2c1 - a*b) + acc(5)*($M2c2 - 1) + acc(6)*($M2c3 + b) + acc(7)*($M3c1 + a) +
    acc(8)*($M3c2 - a^2) + acc(9)*($M3c3 - 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_49 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,a,b,c,d;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = a*b;
Fill MyTable(1,2) = c*d;
Fill MyTable(2,1) = a*c;
Fill MyTable(2,2) = b*d;
*
local F = row(1,2)*col(1,2);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - b*d) + acc(2)*($M1c2 + c*d) + acc(3)*($M2c1 + a*c) + acc(4)*($M2c2 - a*b);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_50 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,s;
ctable,sparse,MyTable(2);
*
Fill MyTable(2,1) = s;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = s;
Fill MyTable(4,3) = 1;
Fill MyTable(6,1) = 0;
Fill MyTable(6,2) = 1;
Fill MyTable(6,3) = s;
*
local F = row(2,4,6)*col(1,2,3);
.sort
*
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - s^2 + 1) + acc(2)*($M1c2 + s) + acc(3)*($M1c3 - 1) + acc(4)*($M2c1 + s) + acc(5)*($M2c2 - s^2) + acc(6)*($M2c3 + s) + acc(7)*($M3c1 - 1) +
    acc(8)*($M3c2 + s) + acc(9)*($M3c3 - s^2 + 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_51 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,a,b,c,d,e,f,g,h,k;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = a;
Fill MyTable(1,2) = b;
Fill MyTable(1,3) = c;
Fill MyTable(2,1) = d;
Fill MyTable(2,2) = e;
Fill MyTable(2,3) = f;
Fill MyTable(3,1) = g;
Fill MyTable(3,2) = h;
Fill MyTable(3,3) = k;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - e*k + f*h) + acc(2)*($M1c2 - c*h + b*k) + acc(3)*($M1c3 - b*f + c*e) + acc(4)*($M2c1 - f*g + d*k) + acc(5)*($M2c2 - a*k + c*g) +
    acc(6)*($M2c3 - c*d + a*f) + acc(7)*($M3c1 - d*h + e*g) + acc(8)*($M3c2 - b*g + a*h) + acc(9)*($M3c3 - a*e + b*d);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_52 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,s;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = s;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 0;
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = s;
Fill MyTable(2,3) = 1;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = s;
*
local F = row(1,2,3)*col(1,2,3);
.sort
*
#call ApartAdjugateMatrix(M,c,3,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*(s*$M1c1 + $M2c1 - (s^3 - 2*s)) + acc(2)*(s*$M1c2 + $M2c2) + acc(3)*(s*$M1c3 + $M2c3) + acc(4)*($M1c1 + s*$M2c1 + $M3c1) +
    acc(5)*($M1c2 + s*$M2c2 + $M3c2 - (s^3 - 2*s)) + acc(6)*($M1c3 + s*$M2c3 + $M3c3) + acc(7)*($M2c1 + s*$M3c1) + acc(8)*($M2c2 + s*$M3c2) +
    acc(9)*($M2c3 + s*$M3c3 - (s^3 - 2*s));
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_53 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,epsilon;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1 - epsilon;
*
local F = row(1,4)*col(1,2);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - (1 - epsilon)) + acc(2)*($M1c2) + acc(3)*($M2c1 + 1) + acc(4)*($M2c2 - 1);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_54 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,epsilon;
ctable,sparse,MyTable(2);
*
Fill MyTable(3,1) = 1 + epsilon;
Fill MyTable(3,2) = 1;
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1 - epsilon;
*
local F = row(3,4)*col(1,2);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - (1 - epsilon)) + acc(2)*($M1c2 + 1) + acc(3)*($M2c1 + 1) + acc(4)*($M2c2 - (1 + epsilon));
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_55 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,epsilon;
ctable,sparse,MyTable(2);
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(5,1) = 2 + epsilon^2;
Fill MyTable(5,2) = -epsilon;
*
local F = row(2,5)*col(1,2);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 + epsilon) + acc(2)*($M1c2 + 1) + acc(3)*($M2c1 + 2 + epsilon^2) + acc(4)*($M2c2);
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_56 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,epsilon;
ctable,sparse,MyTable(2);
*
Fill MyTable(3,1) = 1 + epsilon;
Fill MyTable(3,2) = 1;
Fill MyTable(6,1) = epsilon;
Fill MyTable(6,2) = 3 - 2*epsilon;
*
local F = row(3,6)*col(1,2);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*($M1c1 - (3 - 2*epsilon)) + acc(2)*($M1c2 + 1) + acc(3)*($M2c1 + epsilon) + acc(4)*($M2c2 - (1 + epsilon));
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_57 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,epsilon;
ctable,sparse,MyTable(2);
*
Fill MyTable(3,1) = 1 + epsilon;
Fill MyTable(3,2) = 1;
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1 - epsilon;
*
local F = row(3,4)*col(1,2);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*((1+epsilon)*$M1c1 + 1*$M2c1 - (-epsilon^2)) + acc(2)*((1+epsilon)*$M1c2 + 1*$M2c2) + acc(3)*(1*$M1c1 + (1-epsilon)*$M2c1) +
    acc(4)*(1*$M1c2 + (1-epsilon)*$M2c2 - (-epsilon^2));
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_58 :
#include- ../src/formapart.h
cfunction acc;
*
cfunctions row,col,aux;
symbols n1,n2,n3,n4,epsilon;
ctable,sparse,MyTable(2);
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(5,1) = 2 + epsilon^2;
Fill MyTable(5,2) = -epsilon;
*
local F = row(2,5)*col(1,2);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
multiply acc(1)*(0*$M1c1 + 1*$M2c1 - (-(epsilon^2+2))) + acc(2)*(0*$M1c2 + 1*$M2c2) + acc(3)*((2+epsilon^2)*$M1c1 + (-epsilon)*$M2c1) +
    acc(4)*((2+epsilon^2)*$M1c2 + (-epsilon)*$M2c2 - (-(epsilon^2+2)));
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_59 :
#include- ../src/formapart.h
*
cfunctions row,col,aux;
cfunctions f1,f2,g11,g12,g21,g22;
symbols n1,n2,n3,n4;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
*
local F = f1*row(1,2)*col(1,2) + f2*row(1,3)*col(1,2);
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
id f1 = ($M1c1-1)*g11 + ($M1c2)*g12 + ($M2c1)*g21 + ($M2c2-1)*g22;
id f2 = ($M1c1-1)*g11 + ($M1c2)*g12 + ($M2c1+1)*g21 + ($M2c2-1)*g22;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_60 :
#include- ../src/formapart.h
*
cfunctions row,col,aux;
cfunctions f1,f2,f3,g11,g12,g21,g22;
symbols n1,n2,n3,n4,epsilon;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(3,1) = 1 + epsilon;
Fill MyTable(3,2) = 1;
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1 - epsilon;
*
local F =
  + f1*row(1,2)*col(1,2)
  + f2*row(1,4)*col(1,2)
  + f3*row(3,4)*col(1,2)
;
.sort
*
#call ApartAdjugateMatrix(M,c,2,row,col,aux,MyTable,n1,...,n4)
*
id f1 = ($M1c1-1)*g11 + ($M1c2)*g12 + ($M2c1)*g21 + ($M2c2-1)*g22;
id f2 = ($M1c1-(1-epsilon))*g11 + ($M1c2)*g12 + ($M2c1+1)*g21 + ($M2c2-1)*g22;
id f3 = ($M1c1-(1-epsilon))*g11 + ($M1c2+1)*g12 + ($M2c1+1)*g21 + ($M2c2-(1+epsilon))*g22;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
