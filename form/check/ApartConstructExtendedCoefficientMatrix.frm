*{{{ ApartConstructExtendedCoefficientMatrix_1 :
#include- ../src/formapart.h
*
symbols x;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = x + 3;
*
#define Vars "x"
*
local F = row(1)*col(1);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,1,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - 1)
  + row(1)*col(2)*(OutTbl(1,2) - 3)
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
*{{{ ApartConstructExtendedCoefficientMatrix_2 :
#include- ../src/formapart.h
*
symbols x,y;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = x + 2*y - 5;
*
#define Vars "x,y"
*
local F = row(1)*col(1);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,1,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - 1)
  + row(1)*col(2)*(OutTbl(1,2) - 2)
  + row(1)*col(3)*(OutTbl(1,3) - (-5))
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
*{{{ ApartConstructExtendedCoefficientMatrix_3 :
#include- ../src/formapart.h
*
symbols x,y;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = x + y - 1;
Fill VecTbl(2) = x - y + 2;
Fill VecTbl(3) = 2*x + 3*y - 7;
*
#define Vars "x,y"
*
local F = row(1,...,3)*col(1,...,3);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,3,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - 1)
  + row(1)*col(2)*(OutTbl(1,2) - 1)
  + row(1)*col(3)*(OutTbl(1,3) - (-1))
  + row(2)*col(1)*(OutTbl(2,1) - 1)
  + row(2)*col(2)*(OutTbl(2,2) - (-1))
  + row(2)*col(3)*(OutTbl(2,3) - 2)
  + row(3)*col(1)*(OutTbl(3,1) - 2)
  + row(3)*col(2)*(OutTbl(3,2) - 3)
  + row(3)*col(3)*(OutTbl(3,3) - (-7))
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
*{{{ ApartConstructExtendedCoefficientMatrix_4 :
#include- ../src/formapart.h
*
symbols x;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = 7;
*
#define Vars "x"
*
local F = row(1)*col(1);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,1,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - 0)
  + row(1)*col(2)*(OutTbl(1,2) - 7)
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
*{{{ ApartConstructExtendedCoefficientMatrix_5 :
#include- ../src/formapart.h
*
symbols x,y,a,b,m;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = a*x + b*y - m^2;
*
#define Vars "x,y"
*
local F = row(1)*col(1);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,1,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - a)
  + row(1)*col(2)*(OutTbl(1,2) - b)
  + row(1)*col(3)*(OutTbl(1,3) - (-m^2))
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
*{{{ ApartConstructExtendedCoefficientMatrix_6 :
#include- ../src/formapart.h
*
symbols x;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(3) = x + 1;
Fill VecTbl(4) = 2*x - 3;
Fill VecTbl(5) = -x + 4;
*
#define Vars "x"
*
local F = row(3,...,5)*col(1,...,2);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,3,5,Vars)
*
.sort
*
local diff =
  + row(3)*col(1)*(OutTbl(3,1) - 1)
  + row(3)*col(2)*(OutTbl(3,2) - 1)
  + row(4)*col(1)*(OutTbl(4,1) - 2)
  + row(4)*col(2)*(OutTbl(4,2) - (-3))
  + row(5)*col(1)*(OutTbl(5,1) - (-1))
  + row(5)*col(2)*(OutTbl(5,2) - 4)
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
*{{{ ApartConstructExtendedCoefficientMatrix_7 :
#include- ../src/formapart.h
*
symbols x,y,z;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = x + y + z - 10;
*
#define Vars "x,y,z"
*
local F = row(1)*col(1);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,1,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - 1)
  + row(1)*col(2)*(OutTbl(1,2) - 1)
  + row(1)*col(3)*(OutTbl(1,3) - 1)
  + row(1)*col(4)*(OutTbl(1,4) - (-10))
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
*{{{ ApartConstructExtendedCoefficientMatrix_8 :
#include- ../src/formapart.h
*
symbols x;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = x;
*
#define Vars "x"
*
local F = row(1)*col(1);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,1,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - 1)
  + row(1)*col(2)*(OutTbl(1,2) - 0)
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
*{{{ ApartConstructExtendedCoefficientMatrix_9 :
#include- ../src/formapart.h
*
symbols x,y;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = -3*x - 2*y - 7;
*
#define Vars "x,y"
*
local F = row(1)*col(1);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,1,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - (-3))
  + row(1)*col(2)*(OutTbl(1,2) - (-2))
  + row(1)*col(3)*(OutTbl(1,3) - (-7))
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
*{{{ ApartConstructExtendedCoefficientMatrix_10 :
#include- ../src/formapart.h
*
symbols x,y;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = 137*x - 991*y + 4523;
*
#define Vars "x,y"
*
local F = row(1)*col(1);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,1,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - 137)
  + row(1)*col(2)*(OutTbl(1,2) - (-991))
  + row(1)*col(3)*(OutTbl(1,3) - 4523)
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
*{{{ ApartConstructExtendedCoefficientMatrix_11 :
#include- ../src/formapart.h
*
symbols x,y,a,b,c,d,m,p;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = (a+b)*x + c*d*y - m^2 - p^2;
*
#define Vars "x,y"
*
local F = row(1)*col(1);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,1,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - (a+b))
  + row(1)*col(2)*(OutTbl(1,2) - c*d)
  + row(1)*col(3)*(OutTbl(1,3) - (-m^2-p^2))
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
*{{{ ApartConstructExtendedCoefficientMatrix_12 :
#include- ../src/formapart.h
*
symbols x;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = x + 1;
Fill VecTbl(2) = 2*x - 3;
Fill VecTbl(3) = -x + 5;
Fill VecTbl(4) = 3*x;
Fill VecTbl(5) = x - 1;
*
#define Vars "x"
*
local F = row(1,...,5)*col(1,...,2);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,5,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - 1)
  + row(1)*col(2)*(OutTbl(1,2) - 1)
  + row(2)*col(1)*(OutTbl(2,1) - 2)
  + row(2)*col(2)*(OutTbl(2,2) - (-3))
  + row(3)*col(1)*(OutTbl(3,1) - (-1))
  + row(3)*col(2)*(OutTbl(3,2) - 5)
  + row(4)*col(1)*(OutTbl(4,1) - 3)
  + row(4)*col(2)*(OutTbl(4,2) - 0)
  + row(5)*col(1)*(OutTbl(5,1) - 1)
  + row(5)*col(2)*(OutTbl(5,2) - (-1))
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
*{{{ ApartConstructExtendedCoefficientMatrix_13 :
#include- ../src/formapart.h
*
symbols x,y,z,w;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = x + 2*y - 3*z + 4*w + 5;
*
#define Vars "x,y,z,w"
*
local F = row(1)*col(1,...,5);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,1,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - 1)
  + row(1)*col(2)*(OutTbl(1,2) - 2)
  + row(1)*col(3)*(OutTbl(1,3) - (-3))
  + row(1)*col(4)*(OutTbl(1,4) - 4)
  + row(1)*col(5)*(OutTbl(1,5) - 5)
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
*{{{ ApartConstructExtendedCoefficientMatrix_14 :
#include- ../src/formapart.h
*
symbols x,y;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = x + y - 1;
Fill VecTbl(2) = x + y - 1;
*
#define Vars "x,y"
*
local F = row(1,...,2)*col(1,...,3);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,2,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - 1)
  + row(1)*col(2)*(OutTbl(1,2) - 1)
  + row(1)*col(3)*(OutTbl(1,3) - (-1))
  + row(2)*col(1)*(OutTbl(2,1) - 1)
  + row(2)*col(2)*(OutTbl(2,2) - 1)
  + row(2)*col(3)*(OutTbl(2,3) - (-1))
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
*{{{ ApartConstructExtendedCoefficientMatrix_15 :
#include- ../src/formapart.h
*
symbols x,y,z;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = x + y + z - 6;
Fill VecTbl(2) = y;
Fill VecTbl(3) = 13;
Fill VecTbl(4) = -z + 2;
*
#define Vars "x,y,z"
*
local F = row(1,...,4)*col(1,...,4);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,4,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - 1)
  + row(1)*col(2)*(OutTbl(1,2) - 1)
  + row(1)*col(3)*(OutTbl(1,3) - 1)
  + row(1)*col(4)*(OutTbl(1,4) - (-6))
  + row(2)*col(1)*(OutTbl(2,1) - 0)
  + row(2)*col(2)*(OutTbl(2,2) - 1)
  + row(2)*col(3)*(OutTbl(2,3) - 0)
  + row(2)*col(4)*(OutTbl(2,4) - 0)
  + row(3)*col(1)*(OutTbl(3,1) - 0)
  + row(3)*col(2)*(OutTbl(3,2) - 0)
  + row(3)*col(3)*(OutTbl(3,3) - 0)
  + row(3)*col(4)*(OutTbl(3,4) - 13)
  + row(4)*col(1)*(OutTbl(4,1) - 0)
  + row(4)*col(2)*(OutTbl(4,2) - 0)
  + row(4)*col(3)*(OutTbl(4,3) - (-1))
  + row(4)*col(4)*(OutTbl(4,4) - 2)
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
*{{{ ApartConstructExtendedCoefficientMatrix_16 :
#include- ../src/formapart.h
*
symbols x,y;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(10) = x - y + 3;
Fill VecTbl(11) = 2*x + y;
Fill VecTbl(12) = -x + 4*y - 1;
*
#define Vars "x,y"
*
local F = row(10,...,12)*col(1,...,3);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,10,12,Vars)
*
.sort
*
local diff =
  + row(10)*col(1)*(OutTbl(10,1) - 1)
  + row(10)*col(2)*(OutTbl(10,2) - (-1))
  + row(10)*col(3)*(OutTbl(10,3) - 3)
  + row(11)*col(1)*(OutTbl(11,1) - 2)
  + row(11)*col(2)*(OutTbl(11,2) - 1)
  + row(11)*col(3)*(OutTbl(11,3) - 0)
  + row(12)*col(1)*(OutTbl(12,1) - (-1))
  + row(12)*col(2)*(OutTbl(12,2) - 4)
  + row(12)*col(3)*(OutTbl(12,3) - (-1))
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
*{{{ ApartConstructExtendedCoefficientMatrix_17 :
#include- ../src/formapart.h
*
symbols x,y,z;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = x + y + z + 1;
*
#define Vars "x,y,z"
*
local F = row(1)*col(1,...,4);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,1,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - 1)
  + row(1)*col(2)*(OutTbl(1,2) - 1)
  + row(1)*col(3)*(OutTbl(1,3) - 1)
  + row(1)*col(4)*(OutTbl(1,4) - 1)
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
*{{{ ApartConstructExtendedCoefficientMatrix_18 :
#include- ../src/formapart.h
*
symbols x,y;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = -x - y - 1;
*
#define Vars "x,y"
*
local F = row(1)*col(1,...,3);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,1,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - (-1))
  + row(1)*col(2)*(OutTbl(1,2) - (-1))
  + row(1)*col(3)*(OutTbl(1,3) - (-1))
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
*{{{ ApartConstructExtendedCoefficientMatrix_19 :
#include- ../src/formapart.h
*
symbols v,w,x,y,z;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = v + w + x + y + z - 15;
Fill VecTbl(2) = 2*v - w + 3*x - y + 4*z + 7;
Fill VecTbl(3) = -v + 2*w - x + 3*y - 2*z;
*
#define Vars "v,w,x,y,z"
*
local F = row(1,...,3)*col(1,...,6);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,3,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - 1)
  + row(1)*col(2)*(OutTbl(1,2) - 1)
  + row(1)*col(3)*(OutTbl(1,3) - 1)
  + row(1)*col(4)*(OutTbl(1,4) - 1)
  + row(1)*col(5)*(OutTbl(1,5) - 1)
  + row(1)*col(6)*(OutTbl(1,6) - (-15))
  + row(2)*col(1)*(OutTbl(2,1) - 2)
  + row(2)*col(2)*(OutTbl(2,2) - (-1))
  + row(2)*col(3)*(OutTbl(2,3) - 3)
  + row(2)*col(4)*(OutTbl(2,4) - (-1))
  + row(2)*col(5)*(OutTbl(2,5) - 4)
  + row(2)*col(6)*(OutTbl(2,6) - 7)
  + row(3)*col(1)*(OutTbl(3,1) - (-1))
  + row(3)*col(2)*(OutTbl(3,2) - 2)
  + row(3)*col(3)*(OutTbl(3,3) - (-1))
  + row(3)*col(4)*(OutTbl(3,4) - 3)
  + row(3)*col(5)*(OutTbl(3,5) - (-2))
  + row(3)*col(6)*(OutTbl(3,6) - 0)
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
*{{{ ApartConstructExtendedCoefficientMatrix_20 :
#include- ../src/formapart.h
*
symbols x,y,a,b,c,d,e,f;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = (a+b+c)*x + (d*e-f)*y - a^2 - b^2;
Fill VecTbl(2) = a*x - d*y + c;
*
#define Vars "x,y"
*
local F = row(1,...,2)*col(1,...,3);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,2,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - (a+b+c))
  + row(1)*col(2)*(OutTbl(1,2) - (d*e-f))
  + row(1)*col(3)*(OutTbl(1,3) - (-a^2-b^2))
  + row(2)*col(1)*(OutTbl(2,1) - a)
  + row(2)*col(2)*(OutTbl(2,2) - (-d))
  + row(2)*col(3)*(OutTbl(2,3) - c)
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
*{{{ ApartConstructExtendedCoefficientMatrix_21 :
#include- ../src/formapart.h
*
symbols x,y,z,w;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = x + 1;
Fill VecTbl(2) = y - 2;
Fill VecTbl(3) = z + 3;
Fill VecTbl(4) = w - 4;
Fill VecTbl(5) = x + w;
*
#define Vars "x,y,z,w"
*
local F = row(1,...,5)*col(1,...,5);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,5,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - 1)
  + row(1)*col(2)*(OutTbl(1,2) - 0)
  + row(1)*col(3)*(OutTbl(1,3) - 0)
  + row(1)*col(4)*(OutTbl(1,4) - 0)
  + row(1)*col(5)*(OutTbl(1,5) - 1)
  + row(2)*col(1)*(OutTbl(2,1) - 0)
  + row(2)*col(2)*(OutTbl(2,2) - 1)
  + row(2)*col(3)*(OutTbl(2,3) - 0)
  + row(2)*col(4)*(OutTbl(2,4) - 0)
  + row(2)*col(5)*(OutTbl(2,5) - (-2))
  + row(3)*col(1)*(OutTbl(3,1) - 0)
  + row(3)*col(2)*(OutTbl(3,2) - 0)
  + row(3)*col(3)*(OutTbl(3,3) - 1)
  + row(3)*col(4)*(OutTbl(3,4) - 0)
  + row(3)*col(5)*(OutTbl(3,5) - 3)
  + row(4)*col(1)*(OutTbl(4,1) - 0)
  + row(4)*col(2)*(OutTbl(4,2) - 0)
  + row(4)*col(3)*(OutTbl(4,3) - 0)
  + row(4)*col(4)*(OutTbl(4,4) - 1)
  + row(4)*col(5)*(OutTbl(4,5) - (-4))
  + row(5)*col(1)*(OutTbl(5,1) - 1)
  + row(5)*col(2)*(OutTbl(5,2) - 0)
  + row(5)*col(3)*(OutTbl(5,3) - 0)
  + row(5)*col(4)*(OutTbl(5,4) - 1)
  + row(5)*col(5)*(OutTbl(5,5) - 0)
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
*{{{ ApartConstructExtendedCoefficientMatrix_22 :
#include- ../src/formapart.h
*
symbols x,y;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = x;
Fill VecTbl(2) = y;
Fill VecTbl(3) = x + y;
*
#define Vars "x,y"
*
local F = row(1,...,3)*col(1,...,3);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,3,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - 1)
  + row(1)*col(2)*(OutTbl(1,2) - 0)
  + row(1)*col(3)*(OutTbl(1,3) - 0)
  + row(2)*col(1)*(OutTbl(2,1) - 0)
  + row(2)*col(2)*(OutTbl(2,2) - 1)
  + row(2)*col(3)*(OutTbl(2,3) - 0)
  + row(3)*col(1)*(OutTbl(3,1) - 1)
  + row(3)*col(2)*(OutTbl(3,2) - 1)
  + row(3)*col(3)*(OutTbl(3,3) - 0)
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
*{{{ ApartConstructExtendedCoefficientMatrix_23 :
#include- ../src/formapart.h
*
symbols x;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = 3;
Fill VecTbl(2) = -5;
Fill VecTbl(3) = 11;
*
#define Vars "x"
*
local F = row(1,...,3)*col(1,...,2);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,3,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - 0)
  + row(1)*col(2)*(OutTbl(1,2) - 3)
  + row(2)*col(1)*(OutTbl(2,1) - 0)
  + row(2)*col(2)*(OutTbl(2,2) - (-5))
  + row(3)*col(1)*(OutTbl(3,1) - 0)
  + row(3)*col(2)*(OutTbl(3,2) - 11)
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
*{{{ ApartConstructExtendedCoefficientMatrix_24 :
#include- ../src/formapart.h
*
symbols k1,k2,k3,m1,m2,m3;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = k1 + m1;
Fill VecTbl(2) = k2 - m2;
Fill VecTbl(3) = k1 + k2;
Fill VecTbl(4) = k1 - k2 + m3;
Fill VecTbl(5) = k3 + m1 + m2;
Fill VecTbl(6) = k1 + k3 - m3;
Fill VecTbl(7) = k2 + k3 + m1;
Fill VecTbl(8) = k1 + k2 + k3 - m1 - m2 - m3;
*
#define Vars "k1,k2,k3"
*
local F = row(1,...,8)*col(1,...,4);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,8,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - 1)
  + row(1)*col(2)*(OutTbl(1,2) - 0)
  + row(1)*col(3)*(OutTbl(1,3) - 0)
  + row(1)*col(4)*(OutTbl(1,4) - m1)
  + row(2)*col(1)*(OutTbl(2,1) - 0)
  + row(2)*col(2)*(OutTbl(2,2) - 1)
  + row(2)*col(3)*(OutTbl(2,3) - 0)
  + row(2)*col(4)*(OutTbl(2,4) - (-m2))
  + row(3)*col(1)*(OutTbl(3,1) - 1)
  + row(3)*col(2)*(OutTbl(3,2) - 1)
  + row(3)*col(3)*(OutTbl(3,3) - 0)
  + row(3)*col(4)*(OutTbl(3,4) - 0)
  + row(4)*col(1)*(OutTbl(4,1) - 1)
  + row(4)*col(2)*(OutTbl(4,2) - (-1))
  + row(4)*col(3)*(OutTbl(4,3) - 0)
  + row(4)*col(4)*(OutTbl(4,4) - m3)
  + row(5)*col(1)*(OutTbl(5,1) - 0)
  + row(5)*col(2)*(OutTbl(5,2) - 0)
  + row(5)*col(3)*(OutTbl(5,3) - 1)
  + row(5)*col(4)*(OutTbl(5,4) - (m1+m2))
  + row(6)*col(1)*(OutTbl(6,1) - 1)
  + row(6)*col(2)*(OutTbl(6,2) - 0)
  + row(6)*col(3)*(OutTbl(6,3) - 1)
  + row(6)*col(4)*(OutTbl(6,4) - (-m3))
  + row(7)*col(1)*(OutTbl(7,1) - 0)
  + row(7)*col(2)*(OutTbl(7,2) - 1)
  + row(7)*col(3)*(OutTbl(7,3) - 1)
  + row(7)*col(4)*(OutTbl(7,4) - m1)
  + row(8)*col(1)*(OutTbl(8,1) - 1)
  + row(8)*col(2)*(OutTbl(8,2) - 1)
  + row(8)*col(3)*(OutTbl(8,3) - 1)
  + row(8)*col(4)*(OutTbl(8,4) - (-m1-m2-m3))
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
*{{{ ApartConstructExtendedCoefficientMatrix_25 :
#include- ../src/formapart.h
*
symbols x,y;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(99) = 5*x - 3*y + 17;
*
#define Vars "x,y"
*
local F = row(99)*col(1,...,3);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,99,99,Vars)
*
.sort
*
local diff =
  + row(99)*col(1)*(OutTbl(99,1) - 5)
  + row(99)*col(2)*(OutTbl(99,2) - (-3))
  + row(99)*col(3)*(OutTbl(99,3) - 17)
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
*{{{ ApartConstructExtendedCoefficientMatrix_26 :
#include- ../src/formapart.h
*
symbols x,y;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = x/2 + y/3 - 1/6;
*
#define Vars "x,y"
*
local F = row(1)*col(1,...,3);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,1,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - 1/2)
  + row(1)*col(2)*(OutTbl(1,2) - 1/3)
  + row(1)*col(3)*(OutTbl(1,3) - (-1/6))
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
*{{{ ApartConstructExtendedCoefficientMatrix_27 :
#include- ../src/formapart.h
*
symbols x;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(2) = x + 1;
Fill VecTbl(3) = 0;
Fill VecTbl(4) = -x + 2;
Fill VecTbl(5) = 0;
Fill VecTbl(6) = 3*x - 5;
*
#define Vars "x"
*
local F = row(2,...,6)*col(1,...,2);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,2,6,Vars)
*
.sort
*
local diff =
  + row(2)*col(1)*(OutTbl(2,1) - 1)
  + row(2)*col(2)*(OutTbl(2,2) - 1)
  + row(3)*col(1)*(OutTbl(3,1) - 0)
  + row(3)*col(2)*(OutTbl(3,2) - 0)
  + row(4)*col(1)*(OutTbl(4,1) - (-1))
  + row(4)*col(2)*(OutTbl(4,2) - 2)
  + row(5)*col(1)*(OutTbl(5,1) - 0)
  + row(5)*col(2)*(OutTbl(5,2) - 0)
  + row(6)*col(1)*(OutTbl(6,1) - 3)
  + row(6)*col(2)*(OutTbl(6,2) - (-5))
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
*{{{ ApartConstructExtendedCoefficientMatrix_28 :
#include- ../src/formapart.h
*
symbols x,y,a,b,c;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = a^2*x + b^3*y + c^4;
*
#define Vars "x,y"
*
local F = row(1)*col(1,...,3);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,1,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - a^2)
  + row(1)*col(2)*(OutTbl(1,2) - b^3)
  + row(1)*col(3)*(OutTbl(1,3) - c^4)
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
*{{{ ApartConstructExtendedCoefficientMatrix_29 :
#include- ../src/formapart.h
*
symbols x,y,z;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = x;
Fill VecTbl(2) = y;
Fill VecTbl(3) = z;
*
#define Vars "x,y,z"
*
local F = row(1,...,3)*col(1,...,4);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,3,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - 1)
  + row(1)*col(2)*(OutTbl(1,2) - 0)
  + row(1)*col(3)*(OutTbl(1,3) - 0)
  + row(1)*col(4)*(OutTbl(1,4) - 0)
  + row(2)*col(1)*(OutTbl(2,1) - 0)
  + row(2)*col(2)*(OutTbl(2,2) - 1)
  + row(2)*col(3)*(OutTbl(2,3) - 0)
  + row(2)*col(4)*(OutTbl(2,4) - 0)
  + row(3)*col(1)*(OutTbl(3,1) - 0)
  + row(3)*col(2)*(OutTbl(3,2) - 0)
  + row(3)*col(3)*(OutTbl(3,3) - 1)
  + row(3)*col(4)*(OutTbl(3,4) - 0)
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
*{{{ ApartConstructExtendedCoefficientMatrix_30 :
#include- ../src/formapart.h
*
symbols x,y,z,a,b,c,d,e,f,g,h,p,q,r,s;
cfunctions row,col;
ctable,sparse,VecTbl(1);
ctable,sparse,OutTbl(2);
*
Fill VecTbl(1) = a*b*x + c*d*y + e*f*z - g*h;
Fill VecTbl(2) = p*x + q*y + r*z - s;
Fill VecTbl(3) = (a+p)*x + (b+q)*y + (c+r)*z - d - s;
*
#define Vars "x,y,z"
*
local F = row(1,...,3)*col(1,...,4);
.sort
*
#call ApartConstructExtendedCoefficientMatrix(VecTbl,OutTbl,1,3,Vars)
*
.sort
*
local diff =
  + row(1)*col(1)*(OutTbl(1,1) - a*b)
  + row(1)*col(2)*(OutTbl(1,2) - c*d)
  + row(1)*col(3)*(OutTbl(1,3) - e*f)
  + row(1)*col(4)*(OutTbl(1,4) - (-g*h))
  + row(2)*col(1)*(OutTbl(2,1) - p)
  + row(2)*col(2)*(OutTbl(2,2) - q)
  + row(2)*col(3)*(OutTbl(2,3) - r)
  + row(2)*col(4)*(OutTbl(2,4) - (-s))
  + row(3)*col(1)*(OutTbl(3,1) - (a+p))
  + row(3)*col(2)*(OutTbl(3,2) - (b+q))
  + row(3)*col(3)*(OutTbl(3,3) - (c+r))
  + row(3)*col(4)*(OutTbl(3,4) - (-d-s))
;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
