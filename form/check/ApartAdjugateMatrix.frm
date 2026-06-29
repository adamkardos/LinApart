*{{{ ApartAdjugateMatrix_1 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("d11") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_2 :
#include- ../src/formapart.h
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
*{{{ ApartAdjugateMatrix_3 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 5;
local d12 = $M1c2 + 1;
local d21 = $M2c1 + 2;
local d22 = $M2c2 - 3;
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
*{{{ ApartAdjugateMatrix_4 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 + 1;
local d12 = $M1c2 + 1;
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
*{{{ ApartAdjugateMatrix_5 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1;
local d12 = $M1c2 + 1;
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
*{{{ ApartAdjugateMatrix_6 :
#include- ../src/formapart.h
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
*{{{ ApartAdjugateMatrix_7 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 + 1;
local d12 = $M1c2;
local d13 = $M1c3;
local d21 = $M2c1 - 1;
local d22 = $M2c2 + 1;
local d23 = $M2c3;
local d31 = $M3c1;
local d32 = $M3c2 + 1;
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
*{{{ ApartAdjugateMatrix_8 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1;
local d12 = $M1c2 + 1;
local d13 = $M1c3 - 3;
local d21 = $M2c1 - 3;
local d22 = $M2c2 - 2;
local d23 = $M2c3 + 6;
local d31 = $M3c1 + 1;
local d32 = $M3c2 - 1;
local d33 = $M3c3 - 2;
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
*{{{ ApartAdjugateMatrix_9 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1;
local d12 = $M1c2;
local d13 = $M1c3;
local d14 = $M1c4;
local d21 = $M2c1;
local d22 = $M2c2 - 1;
local d23 = $M2c3;
local d24 = $M2c4;
local d31 = $M3c1;
local d32 = $M3c2;
local d33 = $M3c3 - 1;
local d34 = $M3c4;
local d41 = $M4c1 + 1;
local d42 = $M4c2 + 1;
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
*{{{ ApartAdjugateMatrix_10 :
#include- ../src/formapart.h
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
*{{{ ApartAdjugateMatrix_11 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1;
local d12 = $M1c2 + 1;
local d21 = $M2c1 + 1;
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
*{{{ ApartAdjugateMatrix_12 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1;
local d12 = $M1c2;
local d13 = $M1c3;
local d21 = $M2c1 + 1;
local d22 = $M2c2 - 1;
local d23 = $M2c3;
local d31 = $M3c1 - 1;
local d32 = $M3c2 + 1;
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
*{{{ ApartAdjugateMatrix_13 :
#include- ../src/formapart.h
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
*{{{ ApartAdjugateMatrix_14 :
#include- ../src/formapart.h
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
*{{{ ApartAdjugateMatrix_15 :
#include- ../src/formapart.h
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
.sort
*
*
local p11 = 2*$M1c1 + 1*$M2c1 - 5;
local p12 = 2*$M1c2 + 1*$M2c2;
local p13 = 2*$M1c3 + 1*$M2c3;
local p21 = 1*$M2c1 + 3*$M3c1;
local p22 = 1*$M2c2 + 3*$M3c2 - 5;
local p23 = 1*$M2c3 + 3*$M3c3;
local p31 = 1*$M1c1 + 1*$M3c1;
local p32 = 1*$M1c2 + 1*$M3c2;
local p33 = 1*$M1c3 + 1*$M3c3 - 5;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("p11") =~ expr("0")
assert result("p12") =~ expr("0")
assert result("p13") =~ expr("0")
assert result("p21") =~ expr("0")
assert result("p22") =~ expr("0")
assert result("p23") =~ expr("0")
assert result("p31") =~ expr("0")
assert result("p32") =~ expr("0")
assert result("p33") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_16 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 11;
local d12 = $M1c2 + 13;
local d21 = $M2c1 + 5;
local d22 = $M2c2 - 7;
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
*{{{ ApartAdjugateMatrix_17 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 + 5;
local d12 = $M1c2 - 1;
local d21 = $M2c1 - 2;
local d22 = $M2c2 + 3;
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
*{{{ ApartAdjugateMatrix_18 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1;
local d12 = $M1c2;
local d13 = $M1c3 + 1;
local d21 = $M2c1;
local d22 = $M2c2 + 1;
local d23 = $M2c3;
local d31 = $M3c1 + 1;
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
*{{{ ApartAdjugateMatrix_19 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1;
local d12 = $M1c2 - 1;
local d13 = $M1c3 - 1;
local d21 = $M2c1 - 1;
local d22 = $M2c2 - 1;
local d23 = $M2c3 - 1;
local d31 = $M3c1 - 1;
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
*{{{ ApartAdjugateMatrix_20 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 35;
local d12 = $M1c2 + 21;
local d13 = $M1c3 + 2;
local d21 = $M2c1;
local d22 = $M2c2 - 14;
local d23 = $M2c3 + 12;
local d31 = $M3c1;
local d32 = $M3c2;
local d33 = $M3c3 - 10;
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
*{{{ ApartAdjugateMatrix_21 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 86;
local d12 = $M1c2 + 20;
local d13 = $M1c3 + 19;
local d21 = $M2c1 + 27;
local d22 = $M2c2 - 30;
local d23 = $M2c3 - 3;
local d31 = $M3c1 + 133;
local d32 = $M3c2 - 25;
local d33 = $M3c3 - 62;
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
*{{{ ApartAdjugateMatrix_22 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 3;
local d12 = $M1c2 - 1;
local d13 = $M1c3 - 4;
local d14 = $M1c4 + 7;
local d21 = $M2c1 - 3;
local d22 = $M2c2 - 1;
local d23 = $M2c3;
local d24 = $M2c4 + 3;
local d31 = $M3c1 + 1;
local d32 = $M3c2 - 1;
local d33 = $M3c3;
local d34 = $M3c4 - 1;
local d41 = $M4c1 + 5;
local d42 = $M4c2 + 3;
local d43 = $M4c3 + 4;
local d44 = $M4c4 - 13;
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
*{{{ ApartAdjugateMatrix_23 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 3;
local d12 = $M1c2 - 2;
local d21 = $M2c1 + 1;
local d22 = $M2c2 - 4;
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
*{{{ ApartAdjugateMatrix_24 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1;
local d12 = $M1c2 - 4;
local d13 = $M1c3 + 2;
local d21 = $M2c1 + 3;
local d22 = $M2c2 - 1;
local d23 = $M2c3 - 6;
local d31 = $M3c1 - 6;
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
*{{{ ApartAdjugateMatrix_25 :
#include- ../src/formapart.h
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
*{{{ ApartAdjugateMatrix_26 :
#include- ../src/formapart.h
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
*{{{ ApartAdjugateMatrix_27 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1;
local d12 = $M1c2 + 3;
local d21 = $M2c1 + 2;
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
*{{{ ApartAdjugateMatrix_28 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 + 1;
local d12 = $M1c2 - 1;
local d13 = $M1c3 - 1;
local d21 = $M2c1 - 1;
local d22 = $M2c2 + 1;
local d23 = $M2c3 - 1;
local d31 = $M3c1 - 1;
local d32 = $M3c2 - 1;
local d33 = $M3c3 + 1;
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
*{{{ ApartAdjugateMatrix_29 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1;
local d12 = $M1c2;
local d13 = $M1c3;
local d14 = $M1c4;
local d15 = $M1c5;
local d22 = $M2c2 - 1;
local d33 = $M3c3 - 1;
local d44 = $M4c4 - 1;
local d51 = $M5c1 + 1;
local d52 = $M5c2 + 1;
local d53 = $M5c3 + 1;
local d54 = $M5c4 + 1;
local d55 = $M5c5 - 1;
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
assert result("d22") =~ expr("0")
assert result("d33") =~ expr("0")
assert result("d44") =~ expr("0")
assert result("d51") =~ expr("0")
assert result("d52") =~ expr("0")
assert result("d53") =~ expr("0")
assert result("d54") =~ expr("0")
assert result("d55") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_30 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - d;
local d12 = $M1c2 + b;
local d21 = $M2c1 + c;
local d22 = $M2c2 - a;
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
*{{{ ApartAdjugateMatrix_31 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - t;
local d12 = $M1c2 + 1;
local d21 = $M2c1;
local d22 = $M2c2 - s;
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
*{{{ ApartAdjugateMatrix_32 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - b*c;
local d12 = $M1c2;
local d13 = $M1c3;
local d21 = $M2c1;
local d22 = $M2c2 - a*c;
local d23 = $M2c3;
local d31 = $M3c1;
local d32 = $M3c2;
local d33 = $M3c3 - a*b;
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
*{{{ ApartAdjugateMatrix_33 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1;
local d12 = $M1c2 + s;
local d21 = $M2c1 + s;
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
*{{{ ApartAdjugateMatrix_34 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1;
local d12 = $M1c2 + s;
local d13 = $M1c3 - s*t;
local d21 = $M2c1;
local d22 = $M2c2 - 1;
local d23 = $M2c3 + t;
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
*{{{ ApartAdjugateMatrix_35 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - s + t;
local d12 = $M1c2 + 1;
local d21 = $M2c1 + 1;
local d22 = $M2c2 - s - t;
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
*{{{ ApartAdjugateMatrix_36 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - t;
local d12 = $M1c2 + s*t;
local d13 = $M1c3;
local d21 = $M2c1;
local d22 = $M2c2 - 2*t;
local d23 = $M2c3;
local d31 = $M3c1 + 1;
local d32 = $M3c2 - s;
local d33 = $M3c3 - 2;
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
*{{{ ApartAdjugateMatrix_37 :
#include- ../src/formapart.h
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
.sort
*
local p11 = a*$M1c1 + b*$M2c1 - (a*d - b*c);
local p12 = a*$M1c2 + b*$M2c2;
local p21 = c*$M1c1 + d*$M2c1;
local p22 = c*$M1c2 + d*$M2c2 - (a*d - b*c);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("p11") =~ expr("0")
assert result("p12") =~ expr("0")
assert result("p21") =~ expr("0")
assert result("p22") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_38 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 4;
local d12 = $M1c2 + 1;
local d13 = $M1c3 + 1;
local d14 = $M1c4 + 1;
local d21 = $M2c1 + 1;
local d22 = $M2c2 - 4;
local d23 = $M2c3 + 1;
local d24 = $M2c4 + 1;
local d31 = $M3c1 + 1;
local d32 = $M3c2 + 1;
local d33 = $M3c3 - 4;
local d34 = $M3c4 + 1;
local d41 = $M4c1 + 1;
local d42 = $M4c2 + 1;
local d43 = $M4c3 + 1;
local d44 = $M4c4 - 4;
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
*{{{ ApartAdjugateMatrix_39 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 17;
local d12 = $M1c2 - 11;
local d13 = $M1c3 - 26;
local d21 = $M2c1 - 11;
local d22 = $M2c2 - 11;
local d23 = $M2c3 - 22;
local d31 = $M3c1 - 15;
local d32 = $M3c2 - 11;
local d33 = $M3c3 - 32;
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
*{{{ ApartAdjugateMatrix_40 :
#include- ../src/formapart.h
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
*{{{ ApartAdjugateMatrix_41 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 22;
local d12 = $M1c2 + 1;
local d13 = $M1c3 + 13;
local d21 = $M2c1 - 1;
local d22 = $M2c2 - 7;
local d23 = $M2c3 + 2;
local d31 = $M3c1 + 4;
local d32 = $M3c2 - 3;
local d33 = $M3c3 - 8;
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
*{{{ ApartAdjugateMatrix_42 :
#include- ../src/formapart.h
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
*{{{ ApartAdjugateMatrix_43 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 200;
local d12 = $M1c2 + 37;
local d21 = $M2c1 + 59;
local d22 = $M2c2 - 100;
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
*{{{ ApartAdjugateMatrix_44 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1;
local d12 = $M1c2 + s;
local d13 = $M1c3 - s^2;
local d21 = $M2c1;
local d22 = $M2c2 - 1;
local d23 = $M2c3 + 2*s;
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
*{{{ ApartAdjugateMatrix_45 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - s + 1;
local d12 = $M1c2 + t;
local d21 = $M2c1 + t;
local d22 = $M2c2 - s - 1;
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
*{{{ ApartAdjugateMatrix_46 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - s^2 + s*t;
local d12 = $M1c2 + s;
local d13 = $M1c3 - 1;
local d21 = $M2c1 - 1;
local d22 = $M2c2 - s*t - s^2;
local d23 = $M2c3 + s + t;
local d31 = $M3c1 - t + s;
local d32 = $M3c2 - 1;
local d33 = $M3c3 - s^2 + t^2;
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
*{{{ ApartAdjugateMatrix_47 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - t;
local d12 = $M1c2;
local d13 = $M1c3;
local d14 = $M1c4;
local d21 = $M2c1;
local d22 = $M2c2 - s;
local d23 = $M2c3;
local d24 = $M2c4;
local d31 = $M3c1;
local d32 = $M3c2;
local d33 = $M3c3 - s*t;
local d34 = $M3c4;
local d41 = $M4c1 + t;
local d42 = $M4c2 + s;
local d43 = $M4c3 + s*t;
local d44 = $M4c4 - s*t;
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
*{{{ ApartAdjugateMatrix_48 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - 1;
local d12 = $M1c2 + a;
local d13 = $M1c3 - a*b;
local d21 = $M2c1 - a*b;
local d22 = $M2c2 - 1;
local d23 = $M2c3 + b;
local d31 = $M3c1 + a;
local d32 = $M3c2 - a^2;
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
*{{{ ApartAdjugateMatrix_49 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - b*d;
local d12 = $M1c2 + c*d;
local d21 = $M2c1 + a*c;
local d22 = $M2c2 - a*b;
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
*{{{ ApartAdjugateMatrix_50 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - s^2 + 1;
local d12 = $M1c2 + s;
local d13 = $M1c3 - 1;
local d21 = $M2c1 + s;
local d22 = $M2c2 - s^2;
local d23 = $M2c3 + s;
local d31 = $M3c1 - 1;
local d32 = $M3c2 + s;
local d33 = $M3c3 - s^2 + 1;
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
*{{{ ApartAdjugateMatrix_51 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - e*k + f*h;
local d12 = $M1c2 - c*h + b*k;
local d13 = $M1c3 - b*f + c*e;
local d21 = $M2c1 - f*g + d*k;
local d22 = $M2c2 - a*k + c*g;
local d23 = $M2c3 - c*d + a*f;
local d31 = $M3c1 - d*h + e*g;
local d32 = $M3c2 - b*g + a*h;
local d33 = $M3c3 - a*e + b*d;
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
*{{{ ApartAdjugateMatrix_52 :
#include- ../src/formapart.h
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
.sort
*
local p11 = s*$M1c1 + $M2c1 - (s^3 - 2*s);
local p12 = s*$M1c2 + $M2c2;
local p13 = s*$M1c3 + $M2c3;
local p21 = $M1c1 + s*$M2c1 + $M3c1;
local p22 = $M1c2 + s*$M2c2 + $M3c2 - (s^3 - 2*s);
local p23 = $M1c3 + s*$M2c3 + $M3c3;
local p31 = $M2c1 + s*$M3c1;
local p32 = $M2c2 + s*$M3c2;
local p33 = $M2c3 + s*$M3c3 - (s^3 - 2*s);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("p11") =~ expr("0")
assert result("p12") =~ expr("0")
assert result("p13") =~ expr("0")
assert result("p21") =~ expr("0")
assert result("p22") =~ expr("0")
assert result("p23") =~ expr("0")
assert result("p31") =~ expr("0")
assert result("p32") =~ expr("0")
assert result("p33") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_53 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - (1 - epsilon);
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
*{{{ ApartAdjugateMatrix_54 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - (1 - epsilon);
local d12 = $M1c2 + 1;
local d21 = $M2c1 + 1;
local d22 = $M2c2 - (1 + epsilon);
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
*{{{ ApartAdjugateMatrix_55 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 + epsilon;
local d12 = $M1c2 + 1;
local d21 = $M2c1 + 2 + epsilon^2;
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
*{{{ ApartAdjugateMatrix_56 :
#include- ../src/formapart.h
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
.sort
*
local d11 = $M1c1 - (3 - 2*epsilon);
local d12 = $M1c2 + 1;
local d21 = $M2c1 + epsilon;
local d22 = $M2c2 - (1 + epsilon);
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
*{{{ ApartAdjugateMatrix_57 :
#include- ../src/formapart.h
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
.sort
*
local p11 = (1+epsilon)*$M1c1 + 1*$M2c1 - (-epsilon^2);
local p12 = (1+epsilon)*$M1c2 + 1*$M2c2;
local p21 = 1*$M1c1 + (1-epsilon)*$M2c1;
local p22 = 1*$M1c2 + (1-epsilon)*$M2c2 - (-epsilon^2);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("p11") =~ expr("0")
assert result("p12") =~ expr("0")
assert result("p21") =~ expr("0")
assert result("p22") =~ expr("0")
*}}}
*
*{{{ ApartAdjugateMatrix_58 :
#include- ../src/formapart.h
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
.sort
*
local p11 = 0*$M1c1 + 1*$M2c1 - (-(epsilon^2+2));
local p12 = 0*$M1c2 + 1*$M2c2;
local p21 = (2+epsilon^2)*$M1c1 + (-epsilon)*$M2c1;
local p22 = (2+epsilon^2)*$M1c2 + (-epsilon)*$M2c2 - (-(epsilon^2+2));
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("p11") =~ expr("0")
assert result("p12") =~ expr("0")
assert result("p21") =~ expr("0")
assert result("p22") =~ expr("0")
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
