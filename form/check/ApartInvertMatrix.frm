*{{{ ApartInvertMatrix_1 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1/7;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_2 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1;
local d12 = $M1c2;
local d21 = $M2c1;
local d22 = $M2c2 - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_3 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 5/13;
local d12 = $M1c2 + 1/13;
local d21 = $M2c1 + 2/13;
local d22 = $M2c2 - 3/13;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_4 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1/2;
local d12 = $M1c2 - 1/2;
local d21 = $M2c1 - 1/2;
local d22 = $M2c2 + 1/2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_5 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1/2;
local d12 = $M1c2;
local d21 = $M2c1;
local d22 = $M2c2 - 1/3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_6 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1;
local d12 = $M1c2;
local d13 = $M1c3;
local d21 = $M2c1;
local d22 = $M2c2 - 1;
local d23 = $M2c3;
local d31 = $M3c1;
local d32 = $M3c2;
local d33 = $M3c3 - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
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
*{{{ ApartInvertMatrix_7 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 6/13;
local d12 = $M1c2 + 2/13;
local d13 = $M1c3 - 1/13;
local d21 = $M2c1 - 1/13;
local d22 = $M2c2 - 4/13;
local d23 = $M2c3 + 2/13;
local d31 = $M3c1 + 3/13;
local d32 = $M3c2 - 1/13;
local d33 = $M3c3 - 6/13;
*
.sort
*
print +ss;
.end
assert succeeded?
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
*{{{ ApartInvertMatrix_8 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 3/10;
local d12 = $M1c2 + 1/10;
local d21 = $M2c1 + 1/5;
local d22 = $M2c2 - 2/5;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_9 :
#include- ../src/formapart.h
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
.sort
*
local prod11 = 1*$M1c1 + 1*$M2c1 - 1;
local prod12 = 1*$M1c2 + 1*$M2c2;
local prod21 = 1*$M1c1 + (-1)*$M2c1;
local prod22 = 1*$M1c2 + (-1)*$M2c2 - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("prod11") =~ expr("0")
assert result("prod12") =~ expr("0")
assert result("prod21") =~ expr("0")
assert result("prod22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_10 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - s^-1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_11 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - den(s+t);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_12 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - s^-1;
local d12 = $M1c2;
local d21 = $M2c1;
local d22 = $M2c2 - t^-1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_13 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1;
local d12 = $M1c2 + 1;
local d21 = $M2c1;
local d22 = $M2c2 - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_14 :
*
*
*
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - t*den(s*t-1);
local d12 = $M1c2 + den(s*t-1);
local d21 = $M2c1 + den(s*t-1);
local d22 = $M2c2 - s*den(s*t-1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_15 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 + 2;
local d12 = $M1c2 - 1;
local d21 = $M2c1 - 3/2;
local d22 = $M2c2 + 1/2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_16 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 5/3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_17 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 + 1/2;
local d12 = $M1c2 - 1/2;
local d13 = $M1c3 + 1/2;
local d21 = $M2c1 - 1/2;
local d22 = $M2c2 + 1/2;
local d23 = $M2c3 + 1/2;
local d31 = $M3c1 + 1/2;
local d32 = $M3c2 + 1/2;
local d33 = $M3c3 - 1/2;
*
.sort
*
print +ss;
.end
assert succeeded?
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
*{{{ ApartInvertMatrix_18 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 + 1/7;
local d12 = $M1c2 - 8/21;
local d13 = $M1c3 + 2/21;
local d21 = $M2c1 - 4/7;
local d22 = $M2c2 + 4/21;
local d23 = $M2c3 - 1/21;
local d31 = $M3c1 + 1/7;
local d32 = $M3c2 - 1/21;
local d33 = $M3c3 - 5/21;
*
.sort
*
print +ss;
.end
assert succeeded?
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
*{{{ ApartInvertMatrix_19 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - s*den(s^2-1);
local d12 = $M1c2 + den(s^2-1);
local d21 = $M2c1 + den(s^2-1);
local d22 = $M2c2 - s*den(s^2-1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_20 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1;
local d12 = $M1c2 + 1;
local d21 = $M2c1 + 1;
local d22 = $M2c2 - 2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_21 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - s^-1;
local d12 = $M1c2;
local d13 = $M1c3;
local d21 = $M2c1;
local d22 = $M2c2 - s^-1;
local d23 = $M2c3;
local d31 = $M3c1;
local d32 = $M3c2;
local d33 = $M3c3 - s^-1;
*
.sort
*
print +ss;
.end
assert succeeded?
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
*{{{ ApartInvertMatrix_22 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1;
local d12 = $M1c2 + 1;
local d13 = $M1c3;
local d21 = $M2c1;
local d22 = $M2c2 - 1;
local d23 = $M2c3 + 1;
local d31 = $M3c1;
local d32 = $M3c2;
local d33 = $M3c3 - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
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
*{{{ ApartInvertMatrix_23 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - den(1-s^2);
local d12 = $M1c2 + s*den(1-s^2);
local d21 = $M2c1 + s*den(1-s^2);
local d22 = $M2c2 - den(1-s^2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_24 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - den(s+t);
local d12 = $M1c2 + den(s+t);
local d21 = $M2c1;
local d22 = $M2c2 - (s+t)*den(s+t);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_25 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1;
local d12 = $M1c2;
local d21 = $M2c1 + 1;
local d22 = $M2c2 - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_26 :
#include- ../src/formapart.h
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
.sort
*
local prod11 = 2*$M1c1 + 1*$M2c1 + 0*$M3c1 - 1;
local prod12 = 2*$M1c2 + 1*$M2c2 + 0*$M3c2;
local prod13 = 2*$M1c3 + 1*$M2c3 + 0*$M3c3;
local prod21 = 0*$M1c1 + 3*$M2c1 + 1*$M3c1;
local prod22 = 0*$M1c2 + 3*$M2c2 + 1*$M3c2 - 1;
local prod23 = 0*$M1c3 + 3*$M2c3 + 1*$M3c3;
local prod31 = 1*$M1c1 + 0*$M2c1 + 2*$M3c1;
local prod32 = 1*$M1c2 + 0*$M2c2 + 2*$M3c2;
local prod33 = 1*$M1c3 + 0*$M2c3 + 2*$M3c3 - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("prod11") =~ expr("0")
assert result("prod12") =~ expr("0")
assert result("prod13") =~ expr("0")
assert result("prod21") =~ expr("0")
assert result("prod22") =~ expr("0")
assert result("prod23") =~ expr("0")
assert result("prod31") =~ expr("0")
assert result("prod32") =~ expr("0")
assert result("prod33") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_27 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1;
local d12 = $M1c2 - 1;
local d21 = $M2c1 - 1;
local d22 = $M2c2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_28 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1;
local d12 = $M1c2;
local d13 = $M1c3 - 1/3;
local d21 = $M2c1;
local d22 = $M2c2 - 1/2;
local d23 = $M2c3;
local d31 = $M3c1 - 1;
local d32 = $M3c2;
local d33 = $M3c3;
*
.sort
*
print +ss;
.end
assert succeeded?
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
*{{{ ApartInvertMatrix_29 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1;
local d12 = $M1c2;
local d13 = $M1c3 - 1;
local d21 = $M2c1 - 1;
local d22 = $M2c2;
local d23 = $M2c3;
local d31 = $M3c1;
local d32 = $M3c2 - 1;
local d33 = $M3c3;
*
.sort
*
print +ss;
.end
assert succeeded?
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
*{{{ ApartInvertMatrix_30 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 + 2/3;
local d12 = $M1c2 + 4/3;
local d13 = $M1c3 - 1;
local d21 = $M2c1 + 2/3;
local d22 = $M2c2 - 11/3;
local d23 = $M2c3 + 2;
local d31 = $M3c1 - 1;
local d32 = $M3c2 + 2;
local d33 = $M3c3 - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
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
*{{{ ApartInvertMatrix_31 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 100/9999;
local d12 = $M1c2 + 1/9999;
local d21 = $M2c1 + 1/9999;
local d22 = $M2c2 - 100/9999;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_32 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 2;
local d12 = $M1c2;
local d13 = $M1c3;
local d21 = $M2c1;
local d22 = $M2c2 - 3;
local d23 = $M2c3;
local d31 = $M3c1;
local d32 = $M3c2;
local d33 = $M3c3 - 5;
*
.sort
*
print +ss;
.end
assert succeeded?
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
*{{{ ApartInvertMatrix_33 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 + 1;
local d12 = $M1c2 + 2;
local d21 = $M2c1 + 8/3;
local d22 = $M2c2 + 4/3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_34 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - s*den(s^2-t^2);
local d12 = $M1c2 + t*den(s^2-t^2);
local d21 = $M2c1 + t*den(s^2-t^2);
local d22 = $M2c2 - s*den(s^2-t^2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_35 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - den(1-s^2);
local d12 = $M1c2;
local d13 = $M1c3 + s*den(1-s^2);
local d21 = $M2c1;
local d22 = $M2c2 - (1-s^2)*den(1-s^2);
local d23 = $M2c3;
local d31 = $M3c1 + s*den(1-s^2);
local d32 = $M3c2;
local d33 = $M3c3 - den(1-s^2);
*
.sort
*
print +ss;
.end
assert succeeded?
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
*{{{ ApartInvertMatrix_36 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - den(1+s^2*t);
local d12 = $M1c2 + s*den(1+s^2*t);
local d13 = $M1c3 - s*t*den(1+s^2*t);
local d21 = $M2c1 - s*t*den(1+s^2*t);
local d22 = $M2c2 - den(1+s^2*t);
local d23 = $M2c3 + t*den(1+s^2*t);
local d31 = $M3c1 + s*den(1+s^2*t);
local d32 = $M3c2 - s^2*den(1+s^2*t);
local d33 = $M3c3 - den(1+s^2*t);
*
.sort
*
print +ss;
.end
assert succeeded?
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
*{{{ ApartInvertMatrix_37 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1;
local d12 = $M1c2 + 2;
local d13 = $M1c3 - 7;
local d14 = $M1c4 + 41;
local d21 = $M2c1;
local d22 = $M2c2 - 1;
local d23 = $M2c3 + 5;
local d24 = $M2c4 - 29;
local d31 = $M3c1;
local d32 = $M3c2;
local d33 = $M3c3 - 1;
local d34 = $M3c4 + 7;
local d41 = $M4c1;
local d42 = $M4c2;
local d43 = $M4c3;
local d44 = $M4c4 - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d13") =~ expr("0")
assert result("d14") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
assert result("d23") =~ expr("0")
assert result("d24") =~ expr("0")
assert result("d31") =~ expr("0")
assert result("d32") =~ expr("0")
assert result("d33") =~ expr("0")
assert result("d34") =~ expr("0")
assert result("d41") =~ expr("0")
assert result("d42") =~ expr("0")
assert result("d43") =~ expr("0")
assert result("d44") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_38 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 3/5;
local d12 = $M1c2 + 1/5;
local d13 = $M1c3;
local d14 = $M1c4;
local d21 = $M2c1 + 1/5;
local d22 = $M2c2 - 2/5;
local d23 = $M2c3;
local d24 = $M2c4;
local d31 = $M3c1;
local d32 = $M3c2;
local d33 = $M3c3 + 1/3;
local d34 = $M3c4 - 2/3;
local d41 = $M4c1;
local d42 = $M4c2;
local d43 = $M4c3 - 2/3;
local d44 = $M4c4 + 1/3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d13") =~ expr("0")
assert result("d14") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
assert result("d23") =~ expr("0")
assert result("d24") =~ expr("0")
assert result("d31") =~ expr("0")
assert result("d32") =~ expr("0")
assert result("d33") =~ expr("0")
assert result("d34") =~ expr("0")
assert result("d41") =~ expr("0")
assert result("d42") =~ expr("0")
assert result("d43") =~ expr("0")
assert result("d44") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_39 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 4/5;
local d12 = $M1c2 + 3/5;
local d13 = $M1c3 - 2/5;
local d14 = $M1c4 + 1/5;
local d21 = $M2c1 + 3/5;
local d22 = $M2c2 - 6/5;
local d23 = $M2c3 + 4/5;
local d24 = $M2c4 - 2/5;
local d31 = $M3c1 - 2/5;
local d32 = $M3c2 + 4/5;
local d33 = $M3c3 - 6/5;
local d34 = $M3c4 + 3/5;
local d41 = $M4c1 + 1/5;
local d42 = $M4c2 - 2/5;
local d43 = $M4c3 + 3/5;
local d44 = $M4c4 - 4/5;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d13") =~ expr("0")
assert result("d14") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
assert result("d23") =~ expr("0")
assert result("d24") =~ expr("0")
assert result("d31") =~ expr("0")
assert result("d32") =~ expr("0")
assert result("d33") =~ expr("0")
assert result("d34") =~ expr("0")
assert result("d41") =~ expr("0")
assert result("d42") =~ expr("0")
assert result("d43") =~ expr("0")
assert result("d44") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_40 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 2;
local d12 = $M1c2 + 2;
local d13 = $M1c3 - 2;
local d14 = $M1c4 + 1;
local d21 = $M2c1 + 1;
local d22 = $M2c2 - 2;
local d23 = $M2c3 + 2;
local d24 = $M2c4 - 1;
local d31 = $M3c1 - 1;
local d32 = $M3c2 + 1;
local d33 = $M3c3 - 2;
local d34 = $M3c4 + 1;
local d41 = $M4c1 + 1;
local d42 = $M4c2 - 1;
local d43 = $M4c3 + 1;
local d44 = $M4c4 - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d13") =~ expr("0")
assert result("d14") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
assert result("d23") =~ expr("0")
assert result("d24") =~ expr("0")
assert result("d31") =~ expr("0")
assert result("d32") =~ expr("0")
assert result("d33") =~ expr("0")
assert result("d34") =~ expr("0")
assert result("d41") =~ expr("0")
assert result("d42") =~ expr("0")
assert result("d43") =~ expr("0")
assert result("d44") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_41 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1/2;
local d12 = $M1c2;
local d13 = $M1c3;
local d14 = $M1c4;
local d15 = $M1c5;
local d21 = $M2c1;
local d22 = $M2c2 - 1/3;
local d23 = $M2c3;
local d24 = $M2c4;
local d25 = $M2c5;
local d31 = $M3c1;
local d32 = $M3c2;
local d33 = $M3c3 - 1/5;
local d34 = $M3c4;
local d35 = $M3c5;
local d41 = $M4c1;
local d42 = $M4c2;
local d43 = $M4c3;
local d44 = $M4c4 - 1/7;
local d45 = $M4c5;
local d51 = $M5c1;
local d52 = $M5c2;
local d53 = $M5c3;
local d54 = $M5c4;
local d55 = $M5c5 - 1/11;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d13") =~ expr("0")
assert result("d14") =~ expr("0")
assert result("d15") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
assert result("d23") =~ expr("0")
assert result("d24") =~ expr("0")
assert result("d25") =~ expr("0")
assert result("d31") =~ expr("0")
assert result("d32") =~ expr("0")
assert result("d33") =~ expr("0")
assert result("d34") =~ expr("0")
assert result("d35") =~ expr("0")
assert result("d41") =~ expr("0")
assert result("d42") =~ expr("0")
assert result("d43") =~ expr("0")
assert result("d44") =~ expr("0")
assert result("d45") =~ expr("0")
assert result("d51") =~ expr("0")
assert result("d52") =~ expr("0")
assert result("d53") =~ expr("0")
assert result("d54") =~ expr("0")
assert result("d55") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_42 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - (s-1)*den(s^2-1-t^2);
local d12 = $M1c2 + t*den(s^2-1-t^2);
local d21 = $M2c1 + t*den(s^2-1-t^2);
local d22 = $M2c2 - (s+1)*den(s^2-1-t^2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_43 :
#include- ../src/formapart.h
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
.sort
*
local prod11 = 1*$M1c1 + 2*$M2c1 + 0*$M3c1 - 1;
local prod12 = 1*$M1c2 + 2*$M2c2 + 0*$M3c2;
local prod13 = 1*$M1c3 + 2*$M2c3 + 0*$M3c3;
local prod21 = 3*$M1c1 + 1*$M2c1 + 1*$M3c1;
local prod22 = 3*$M1c2 + 1*$M2c2 + 1*$M3c2 - 1;
local prod23 = 3*$M1c3 + 1*$M2c3 + 1*$M3c3;
local prod31 = 0*$M1c1 + 1*$M2c1 + 4*$M3c1;
local prod32 = 0*$M1c2 + 1*$M2c2 + 4*$M3c2;
local prod33 = 0*$M1c3 + 1*$M2c3 + 4*$M3c3 - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("prod11") =~ expr("0")
assert result("prod12") =~ expr("0")
assert result("prod13") =~ expr("0")
assert result("prod21") =~ expr("0")
assert result("prod22") =~ expr("0")
assert result("prod23") =~ expr("0")
assert result("prod31") =~ expr("0")
assert result("prod32") =~ expr("0")
assert result("prod33") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_44 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 + 1;
local d12 = $M1c2 - 1;
local d21 = $M2c1 - 1;
local d22 = $M2c2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_45 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 4;
local d12 = $M1c2 + 6;
local d21 = $M2c1 + 6;
local d22 = $M2c2 - 12;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
assert result("d12") =~ expr("0")
assert result("d21") =~ expr("0")
assert result("d22") =~ expr("0")
*}}}
*
*{{{ ApartInvertMatrix_46 :
#include- ../src/formapart.h
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
.sort
*
local prod11 = 2*$M1c1 + 1*$M2c1 - 1;
local prod12 = 2*$M1c2 + 1*$M2c2;
local prod13 = 2*$M1c3 + 1*$M2c3;
local prod14 = 2*$M1c4 + 1*$M2c4;
local prod21 = 1*$M1c1 + 3*$M2c1;
local prod22 = 1*$M1c2 + 3*$M2c2 - 1;
local prod23 = 1*$M1c3 + 3*$M2c3;
local prod24 = 1*$M1c4 + 3*$M2c4;
local prod31 = 1*$M3c1 + 2*$M4c1;
local prod32 = 1*$M3c2 + 2*$M4c2;
local prod33 = 1*$M3c3 + 2*$M4c3 - 1;
local prod34 = 1*$M3c4 + 2*$M4c4;
local prod41 = 2*$M3c1 + 1*$M4c1;
local prod42 = 2*$M3c2 + 1*$M4c2;
local prod43 = 2*$M3c3 + 1*$M4c3;
local prod44 = 2*$M3c4 + 1*$M4c4 - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("prod11") =~ expr("0")
assert result("prod12") =~ expr("0")
assert result("prod13") =~ expr("0")
assert result("prod14") =~ expr("0")
assert result("prod21") =~ expr("0")
assert result("prod22") =~ expr("0")
assert result("prod23") =~ expr("0")
assert result("prod24") =~ expr("0")
assert result("prod31") =~ expr("0")
assert result("prod32") =~ expr("0")
assert result("prod33") =~ expr("0")
assert result("prod34") =~ expr("0")
assert result("prod41") =~ expr("0")
assert result("prod42") =~ expr("0")
assert result("prod43") =~ expr("0")
assert result("prod44") =~ expr("0")
*}}}
