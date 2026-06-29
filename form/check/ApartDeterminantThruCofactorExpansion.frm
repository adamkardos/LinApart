*{{{ ApartDeterminantThruCofactorExpansion_1 :
#include- ../src/formapart.h
*
#Define NumberOfRows "3"
#Define NumberOfColumns "3"
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 1;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 1;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
local F =
  + det(row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns'))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(-2)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_2 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 5;
*
local F =
  + det(row(1)*col(1))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(5)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_3 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols a,b,c,d;
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = a;
Fill MyTable(1,2) = b;
*
Fill MyTable(2,1) = c;
Fill MyTable(2,2) = d;
*
local F =
  + det(row(1,2)*col(1,2))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(a*d - b*c)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_4 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
*
local F =
  + det(row(1,2)*col(1,2))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(1)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_5 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
*
local F =
  + det(row(1,2,3)*col(1,2,3))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(1)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_6 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 2;
Fill MyTable(1,2) = 5;
Fill MyTable(1,3) = 7;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 3;
Fill MyTable(2,3) = 8;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 4;
*
local F =
  + det(row(1,2,3)*col(1,2,3))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(24)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_7 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 0;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 0;
*
local F =
  + det(row(1,2,3)*col(1,2,3))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(0)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_8 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols a11,a12,a13,a21,a22,a23,a31,a32,a33;
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = a11;
Fill MyTable(1,2) = a12;
Fill MyTable(1,3) = a13;
*
Fill MyTable(2,1) = a21;
Fill MyTable(2,2) = a22;
Fill MyTable(2,3) = a23;
*
Fill MyTable(3,1) = a31;
Fill MyTable(3,2) = a32;
Fill MyTable(3,3) = a33;
*
local F =
  + det(row(1,2,3)*col(1,2,3))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(
      + a11*a22*a33 - a11*a23*a32
      - a12*a21*a33 + a12*a23*a31
      + a13*a21*a32 - a13*a22*a31
    )
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_9 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 2;
Fill MyTable(1,3) = 3;
Fill MyTable(1,4) = 4;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 2;
Fill MyTable(2,4) = 3;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 2;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 1;
*
local F =
  + det(row(1,2,3,4)*col(1,2,3,4))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(1)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_10 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 2;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 2;
Fill MyTable(2,3) = 1;
Fill MyTable(2,4) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 2;
Fill MyTable(3,4) = 1;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 1;
Fill MyTable(4,4) = 2;
*
local F =
  + det(row(1,2,3,4)*col(1,2,3,4))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(5)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_11 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 1;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 1;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
local F =
  + det(row(1,3)*col(2,3))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(-1)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_12 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 1;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 1;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
local F =
  + det(row(2,3)*col(1,3))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(-1)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_13 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols a,b;
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = a;
Fill MyTable(1,2) = -b;
*
Fill MyTable(2,1) = b;
Fill MyTable(2,2) = a;
*
local F =
  + det(row(1,2)*col(1,2))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(a^2 + b^2)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_14 :
#include- ../src/formapart.h
*
cfunction det;
*
symbol a;
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = a;
*
local F =
  + det(row(1)*col(1))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(a)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_15 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 2;
Fill MyTable(1,3) = 3;
*
Fill MyTable(2,1) = 4;
Fill MyTable(2,2) = 5;
Fill MyTable(2,3) = 6;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 2;
Fill MyTable(3,3) = 3;
*
local F =
  + det(row(1,2,3)*col(1,2,3))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(0)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_16 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 1;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 1;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
local F =
  + det(row(3)*col(2))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(1)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_17 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 0;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 3;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 5;
Fill MyTable(2,3) = 0;
*
Fill MyTable(3,1) = 2;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 0;
*
local F =
  + det(row(1,2,3)*col(1,2,3))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(-30)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_18 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 0;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 0;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
*
local F =
  + det(row(1,2,3)*col(1,2,3))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(-1)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_19 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols a,b,c;
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 0;
Fill MyTable(1,2) = a;
Fill MyTable(1,3) = -b;
*
Fill MyTable(2,1) = -a;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = c;
*
Fill MyTable(3,1) = b;
Fill MyTable(3,2) = -c;
Fill MyTable(3,3) = 0;
*
local F =
  + det(row(1,2,3)*col(1,2,3))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(0)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_20 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols a,b,c;
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = a;
Fill MyTable(1,3) = a^2;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = b;
Fill MyTable(2,3) = b^2;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = c;
Fill MyTable(3,3) = c^2;
*
local F =
  + det(row(1,2,3)*col(1,2,3))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det((b-a)*(c-a)*(c-b))
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_21 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols a,b;
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = a+b;
Fill MyTable(1,2) = 1;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = a-b;
*
local F =
  + det(row(1,2)*col(1,2))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(a^2 - b^2 - 1)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_22 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 2;
Fill MyTable(1,3) = 3;
*
Fill MyTable(2,1) = 4;
Fill MyTable(2,2) = 5;
Fill MyTable(2,3) = 6;
*
Fill MyTable(3,1) = 2;
Fill MyTable(3,2) = 4;
Fill MyTable(3,3) = 6;
*
local F =
  + det(row(1,2,3)*col(1,2,3))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(0)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_23 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 2;
Fill MyTable(1,3) = 3;
Fill MyTable(1,4) = 4;
Fill MyTable(1,5) = 5;
*
Fill MyTable(2,1) = 6;
Fill MyTable(2,2) = 7;
Fill MyTable(2,3) = 8;
Fill MyTable(2,4) = 9;
Fill MyTable(2,5) = 10;
*
Fill MyTable(3,1) = 11;
Fill MyTable(3,2) = 12;
Fill MyTable(3,3) = 13;
Fill MyTable(3,4) = 14;
Fill MyTable(3,5) = 15;
*
Fill MyTable(4,1) = 16;
Fill MyTable(4,2) = 17;
Fill MyTable(4,3) = 18;
Fill MyTable(4,4) = 19;
Fill MyTable(4,5) = 20;
*
Fill MyTable(5,1) = 21;
Fill MyTable(5,2) = 22;
Fill MyTable(5,3) = 23;
Fill MyTable(5,4) = 24;
Fill MyTable(5,5) = 25;
*
local F =
  + det(row(1,3,5)*col(2,3,5))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(0)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_24 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1/2;
Fill MyTable(1,2) = 1/3;
Fill MyTable(1,3) = 1/4;
*
Fill MyTable(2,1) = 1/5;
Fill MyTable(2,2) = 1/6;
Fill MyTable(2,3) = 1/7;
*
Fill MyTable(3,1) = 1/8;
Fill MyTable(3,2) = 1/9;
Fill MyTable(3,3) = 1/10;
*
local F =
  + det(row(1,2,3)*col(1,2,3))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(1/33600)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_25 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols a,b,c,d;
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = a*b;
Fill MyTable(1,2) = c*d;
Fill MyTable(1,3) = 1;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = a*c;
Fill MyTable(2,3) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = b*d;
*
local F =
  + det(row(1,2,3)*col(1,2,3))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(a^2*b^2*c*d - b*c*d^2 + 1)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_26 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 2;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(1,5) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 3;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
Fill MyTable(2,5) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 4;
Fill MyTable(3,4) = 0;
Fill MyTable(3,5) = 0;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 5;
Fill MyTable(4,5) = 0;
*
Fill MyTable(5,1) = 0;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 0;
Fill MyTable(5,4) = 0;
Fill MyTable(5,5) = 6;
*
local F =
  + det(row(1,2,3,4,5)*col(1,2,3,4,5))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(720)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_27 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 0;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(1,5) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 1;
Fill MyTable(2,4) = 0;
Fill MyTable(2,5) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 0;
Fill MyTable(3,4) = 1;
Fill MyTable(3,5) = 0;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 0;
Fill MyTable(4,5) = 1;
*
Fill MyTable(5,1) = 1;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 0;
Fill MyTable(5,4) = 0;
Fill MyTable(5,5) = 0;
*
local F =
  + det(row(1,2,3,4,5)*col(1,2,3,4,5))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(1)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_28 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(1,5) = 0;
*
Fill MyTable(2,1) = 2;
Fill MyTable(2,2) = 3;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
Fill MyTable(2,5) = 0;
*
Fill MyTable(3,1) = 4;
Fill MyTable(3,2) = 5;
Fill MyTable(3,3) = 6;
Fill MyTable(3,4) = 0;
Fill MyTable(3,5) = 0;
*
Fill MyTable(4,1) = 7;
Fill MyTable(4,2) = 8;
Fill MyTable(4,3) = 9;
Fill MyTable(4,4) = 10;
Fill MyTable(4,5) = 0;
*
Fill MyTable(5,1) = 11;
Fill MyTable(5,2) = 12;
Fill MyTable(5,3) = 13;
Fill MyTable(5,4) = 14;
Fill MyTable(5,5) = 15;
*
local F =
  + det(row(1,2,3,4,5)*col(1,2,3,4,5))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(2700)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_29 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 2;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(1,5) = 0;
*
Fill MyTable(2,1) = 3;
Fill MyTable(2,2) = 4;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
Fill MyTable(2,5) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 5;
Fill MyTable(3,4) = 6;
Fill MyTable(3,5) = 0;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 7;
Fill MyTable(4,4) = 8;
Fill MyTable(4,5) = 0;
*
Fill MyTable(5,1) = 0;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 0;
Fill MyTable(5,4) = 0;
Fill MyTable(5,5) = 9;
*
local F =
  + det(row(1,2,3,4,5)*col(1,2,3,4,5))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(36)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_30 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 2;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 1;
Fill MyTable(1,4) = 1;
Fill MyTable(1,5) = 1;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 2;
Fill MyTable(2,3) = 1;
Fill MyTable(2,4) = 1;
Fill MyTable(2,5) = 1;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 2;
Fill MyTable(3,4) = 1;
Fill MyTable(3,5) = 1;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 1;
Fill MyTable(4,4) = 2;
Fill MyTable(4,5) = 1;
*
Fill MyTable(5,1) = 1;
Fill MyTable(5,2) = 1;
Fill MyTable(5,3) = 1;
Fill MyTable(5,4) = 1;
Fill MyTable(5,5) = 2;
*
local F =
  + det(row(1,2,3,4,5)*col(1,2,3,4,5))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(6)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartDeterminantThruCofactorExpansion_31 :
#include- ../src/formapart.h
*
cfunction det;
*
symbols a,b,c,d,e;
symbols n1,n2,n3,n4;
cfunctions row,col,aux;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = a;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(1,5) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = b;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
Fill MyTable(2,5) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = c;
Fill MyTable(3,4) = 0;
Fill MyTable(3,5) = 0;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = d;
Fill MyTable(4,5) = 0;
*
Fill MyTable(5,1) = 0;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 0;
Fill MyTable(5,4) = 0;
Fill MyTable(5,5) = e;
*
local F =
  + det(row(1,2,3,4,5)*col(1,2,3,4,5))
;
*
.sort
*
Argument det;
  #call ApartDeterminantThruCofactorExpansion(row,col,MyTable,aux,n1,...,n4)
EndArgument;
*
.sort
*
local diff =
  F
  -
  (
    det(a*b*c*d*e)
  )
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
