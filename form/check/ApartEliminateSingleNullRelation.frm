*{{{ ApartEliminateSingleNullRelation_1 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "2"
*
symbols x,y;
symbols d1,d2;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2;
set NullSet: null1,null2;
set dSet: d1,d2;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2)*d1*d2;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - d1*d2
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
*{{{ ApartEliminateSingleNullRelation_2 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d2,d3)*d1^2*d2
    - dens(d1,d2,d3)*d1^2*d3
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
*{{{ ApartEliminateSingleNullRelation_3 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 1;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 2;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 3;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d2,d3)*d1^2*d2
    - dens(d1,d2,d3)*d1^2*d3
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
*{{{ ApartEliminateSingleNullRelation_4 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1^2*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d2,d3)*d1^3*d2
    - dens(d1,d2,d3)*d1^3*d3
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
*{{{ ApartEliminateSingleNullRelation_5 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "4"
*
symbols x,y;
symbols d1,d2,d3,d4;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4;
set NullSet: null1,null2,null3,null4;
set dSet: d1,d2,d3,d4;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
Fill CoeffTbl(4,1) = 1;
Fill CoeffTbl(4,2) = -1;
Fill CoeffTbl(4,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3,d4)*d1*d2*d3*d4;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d2,d3,d4)*d1^2*d2*d4
    - dens(d1,d2,d3,d4)*d1^2*d3*d4
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
*{{{ ApartEliminateSingleNullRelation_6 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d2,d3,d1)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d2,d3,d1)*d1*d2^2
    - dens(d2,d3,d1)*d2^2*d3
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
*
*{{{ ApartEliminateSingleNullRelation_7 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 1;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 2;
Fill CoeffTbl(3,1) = 2;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 4;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  (
    + 1/2*dens(d1,d2,d3)*d1^2*d2
    - 1/2*dens(d1,d2,d3)*d1^2*d3
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
*{{{ ApartEliminateSingleNullRelation_8 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "4"
*
symbols x,y,z;
symbols d1,d2,d3,d4;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4;
set NullSet: null1,null2,null3,null4;
set dSet: d1,d2,d3,d4;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(1,4) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(2,4) = 0;
Fill CoeffTbl(3,1) = 0;
Fill CoeffTbl(3,2) = 0;
Fill CoeffTbl(3,3) = 1;
Fill CoeffTbl(3,4) = 0;
Fill CoeffTbl(4,1) = 1;
Fill CoeffTbl(4,2) = 1;
Fill CoeffTbl(4,3) = 1;
Fill CoeffTbl(4,4) = 0;
*
#define Vars "x,y,z"
*
local F = dens(d1,d2,d3,d4)*d1*d2*d3*d4;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d2,d3,d4)*d1^2*d2*d3
    - dens(d1,d2,d3,d4)*d1^2*d2*d4
    - dens(d1,d2,d3,d4)*d1^2*d3*d4
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
*{{{ ApartEliminateSingleNullRelation_9 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 3;
Fill CoeffTbl(1,2) = 1;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 1;
Fill CoeffTbl(2,2) = 0;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 0;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  (
    + 3*dens(d1,d2,d3)*d1^2*d3
    + dens(d1,d2,d3)*d1^2*d2
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
*{{{ ApartEliminateSingleNullRelation_10 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = 5*dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - ( 5*dens(d1,d2,d3)*d1^2*d2 - 5*dens(d1,d2,d3)*d1^2*d3 )
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
*{{{ ApartEliminateSingleNullRelation_11 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y,a;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = a*dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - ( a*dens(d1,d2,d3)*d1^2*d2 - a*dens(d1,d2,d3)*d1^2*d3 )
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
*{{{ ApartEliminateSingleNullRelation_12 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "8"
*
symbols x,y;
symbols d1,...,d8;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4,null5,null6,null7,null8;
set NullSet: null1,null2,null3,null4,null5,null6,null7,null8;
set dSet: d1,d2,d3,d4,d5,d6,d7,d8;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(2,1) = 1;
Fill CoeffTbl(2,2) = 0;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(5,1) = 0;
Fill CoeffTbl(5,2) = 1;
Fill CoeffTbl(5,3) = 0;
Fill CoeffTbl(8,1) = 1;
Fill CoeffTbl(8,2) = 1;
Fill CoeffTbl(8,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d2,d5,d8)*d2*d5*d8;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - ( dens(d2,d5,d8)*d2^2*d5 - dens(d2,d5,d8)*d2^2*d8 )
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
*{{{ ApartEliminateSingleNullRelation_13 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1^5*d2^3*d3^2;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - ( dens(d1,d2,d3)*d1^7*d2*d3^2
      - 2*dens(d1,d2,d3)*d1^7*d2^2*d3
      + dens(d1,d2,d3)*d1^7*d2^3 )
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
*{{{ ApartEliminateSingleNullRelation_14 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "5"
*
symbols x,y;
symbols d1,d2,d3,d4,d5;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4,null5;
set NullSet: null1,null2,null3,null4,null5;
set dSet: d1,d2,d3,d4,d5;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
Fill CoeffTbl(4,1) = 1;
Fill CoeffTbl(4,2) = -1;
Fill CoeffTbl(4,3) = 0;
Fill CoeffTbl(5,1) = 2;
Fill CoeffTbl(5,2) = 1;
Fill CoeffTbl(5,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3,d4,d5)*d1*d2*d3*d4*d5;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d2,d3,d4,d5)*d1^2*d2*d4*d5
    - dens(d1,d2,d3,d4,d5)*d1^2*d3*d4*d5
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
*{{{ ApartEliminateSingleNullRelation_15 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 1;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff = F - d1*d2*d3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartEliminateSingleNullRelation_16 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(2,1) = 2;
Fill CoeffTbl(2,2) = 0;
Fill CoeffTbl(3,1) = 3;
Fill CoeffTbl(3,2) = 0;
*
#define Vars "x"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff = F - 1/2*dens(d1,d2,d3)*d1^2*d3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartEliminateSingleNullRelation_17 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "2"
*
symbols x;
symbols d1,d2;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2;
set NullSet: null1,null2;
set dSet: d1,d2;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(2,1) = -1;
Fill CoeffTbl(2,2) = 0;
*
#define Vars "x"
*
local F = dens(d1,d2)*d1*d2;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff = F - ( - dens(d1,d2)*d1^2 );
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartEliminateSingleNullRelation_18 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols k1,k2,m;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = m;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = -m;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "k1,k2"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - ( dens(d1,d2,d3)*d1^2*d2 - dens(d1,d2,d3)*d1^2*d3 )
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
*{{{ ApartEliminateSingleNullRelation_19 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "4"
*
symbols x,y,z;
symbols d1,d2,d3,d4;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4;
set NullSet: null1,null2,null3,null4;
set dSet: d1,d2,d3,d4;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(1,4) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(2,4) = 0;
Fill CoeffTbl(3,1) = 0;
Fill CoeffTbl(3,2) = 0;
Fill CoeffTbl(3,3) = 1;
Fill CoeffTbl(3,4) = 0;
Fill CoeffTbl(4,1) = 1;
Fill CoeffTbl(4,2) = 1;
Fill CoeffTbl(4,3) = 1;
Fill CoeffTbl(4,4) = 1;
*
#define Vars "x,y,z"
*
local F = dens(d1,d2,d3,d4)*d1*d2*d3*d4;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff = F - d1*d2*d3*d4;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartEliminateSingleNullRelation_20 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 2;
Fill CoeffTbl(1,2) = 1;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 1;
Fill CoeffTbl(2,2) = 3;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 3;
Fill CoeffTbl(3,2) = 4;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - ( dens(d1,d2,d3)*d1^2*d2 - dens(d1,d2,d3)*d1^2*d3 )
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
*{{{ ApartEliminateSingleNullRelation_21 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "2"
*
symbols x,y,a;
symbols d1,d2;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2;
set NullSet: null1,null2;
set dSet: d1,d2;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
*
#define Vars "x,y"
*
local F = a^2*dens(d1,d2)*d1^3*d2^2;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff = F - a^2*d1^3*d2^2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*
*{{{ ApartEliminateSingleNullRelation_22 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = -1;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 2;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 2;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff = F - ( dens(d1,d2,d3)*d1^2*d3 - dens(d1,d2,d3)*d1^2*d2 );
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartEliminateSingleNullRelation_23 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "4"
*
symbols x,y;
symbols d1,d2,d3,d4;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4;
set NullSet: null1,null2,null3,null4;
set dSet: d1,d2,d3,d4;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 1;
Fill CoeffTbl(1,3) = 1;
Fill CoeffTbl(2,1) = 2;
Fill CoeffTbl(2,2) = -1;
Fill CoeffTbl(2,3) = 3;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = -2;
Fill CoeffTbl(3,3) = 2;
Fill CoeffTbl(4,1) = 3;
Fill CoeffTbl(4,2) = 0;
Fill CoeffTbl(4,3) = 5;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3,d4)*d1*d2*d3*d4;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - ( dens(d1,d2,d3,d4)*d1^2*d3*d4 - dens(d1,d2,d3,d4)*d1^2*d2*d4 )
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
*{{{ ApartEliminateSingleNullRelation_24 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "5"
*
symbols x,y,z;
symbols d1,d2,d3,d4,d5;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4,null5;
set NullSet: null1,null2,null3,null4,null5;
set dSet: d1,d2,d3,d4,d5;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(1,4) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(2,4) = 0;
Fill CoeffTbl(3,1) = 0;
Fill CoeffTbl(3,2) = 0;
Fill CoeffTbl(3,3) = 1;
Fill CoeffTbl(3,4) = 0;
Fill CoeffTbl(4,1) = 1;
Fill CoeffTbl(4,2) = 1;
Fill CoeffTbl(4,3) = 0;
Fill CoeffTbl(4,4) = 0;
Fill CoeffTbl(5,1) = 0;
Fill CoeffTbl(5,2) = 1;
Fill CoeffTbl(5,3) = 1;
Fill CoeffTbl(5,4) = 0;
*
#define Vars "x,y,z"
*
local F = dens(d1,d2,d3,d4,d5)*d1*d2*d3*d4*d5;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - ( dens(d1,d2,d3,d4,d5)*d1^2*d2*d3*d5 - dens(d1,d2,d3,d4,d5)*d1^2*d3*d4*d5 )
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
*{{{ ApartEliminateSingleNullRelation_25 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 2;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = -1;
Fill CoeffTbl(3,1) = 2;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 3;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - ( 1/2*dens(d1,d2,d3)*d1^2*d2 - 1/2*dens(d1,d2,d3)*d1^2*d3 )
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
*{{{ ApartEliminateSingleNullRelation_26 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "4"
*
symbols x;
symbols d1,d2,d3,d4;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4;
set NullSet: null1,null2,null3,null4;
set dSet: d1,d2,d3,d4;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(2,1) = 3;
Fill CoeffTbl(2,2) = 0;
Fill CoeffTbl(3,1) = 5;
Fill CoeffTbl(3,2) = 0;
Fill CoeffTbl(4,1) = 7;
Fill CoeffTbl(4,2) = 0;
*
#define Vars "x"
*
local F = dens(d1,d2,d3,d4)*d1*d2*d3*d4;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff = F - 1/3*dens(d1,d2,d3,d4)*d1^2*d3*d4;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartEliminateSingleNullRelation_27 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "4"
*
symbols x,y;
symbols d1,d2,d3,d4;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4;
set NullSet: null1,null2,null3,null4;
set dSet: d1,d2,d3,d4;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 1;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 1;
Fill CoeffTbl(2,2) = -1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 2;
Fill CoeffTbl(3,2) = 0;
Fill CoeffTbl(3,3) = 0;
Fill CoeffTbl(4,1) = 0;
Fill CoeffTbl(4,2) = 2;
Fill CoeffTbl(4,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3,d4)*d1*d2*d3*d4;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - ( dens(d1,d2,d3,d4)*d1^2*d2*d4 - dens(d1,d2,d3,d4)*d1^2*d3*d4 )
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
*{{{ ApartEliminateSingleNullRelation_28 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "4"
*
symbols x,y,z;
symbols d1,d2,d3,d4;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4;
set NullSet: null1,null2,null3,null4;
set dSet: d1,d2,d3,d4;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 1;
Fill CoeffTbl(1,3) = 1;
Fill CoeffTbl(1,4) = 0;
Fill CoeffTbl(2,1) = 1;
Fill CoeffTbl(2,2) = -1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(2,4) = 0;
Fill CoeffTbl(3,1) = 0;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = -1;
Fill CoeffTbl(3,4) = 0;
Fill CoeffTbl(4,1) = 1;
Fill CoeffTbl(4,2) = 0;
Fill CoeffTbl(4,3) = -1;
Fill CoeffTbl(4,4) = 0;
*
#define Vars "x,y,z"
*
local F = dens(d1,d2,d3,d4)*d1*d2*d3*d4;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - ( dens(d1,d2,d3,d4)*d1*d2^2*d3 - dens(d1,d2,d3,d4)*d1*d2^2*d4 )
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
*{{{ ApartEliminateSingleNullRelation_29 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 1;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 1;
Fill CoeffTbl(2,2) = -1;
Fill CoeffTbl(2,3) = 1;
Fill CoeffTbl(3,1) = 2;
Fill CoeffTbl(3,2) = 0;
Fill CoeffTbl(3,3) = 1;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff = F - ( dens(d1,d2,d3)*d1^2*d2 - dens(d1,d2,d3)*d1^2*d3 );
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartEliminateSingleNullRelation_30 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "4"
*
symbols x,y;
symbols d1,d2,d3,d4;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4;
set NullSet: null1,null2,null3,null4;
set dSet: d1,d2,d3,d4;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 2;
Fill CoeffTbl(3,3) = 0;
Fill CoeffTbl(4,1) = 2;
Fill CoeffTbl(4,2) = 1;
Fill CoeffTbl(4,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3,d4)*d1*d2*d3*d4;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - ( dens(d1,d2,d3,d4)*d1^2*d2*d4 - 2*dens(d1,d2,d3,d4)*d1^2*d3*d4 )
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
*{{{ ApartEliminateSingleNullRelation_31 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = -7*dens(d1,d2,d3)*d1^3*d2^2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - ( 7*dens(d1,d2,d3)*d1^4*d2*d3 - 7*dens(d1,d2,d3)*d1^4*d2^2 )
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
*{{{ ApartEliminateSingleNullRelation_32 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "4"
*
symbols x,y;
symbols d1,d2,d3,d4;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4;
set NullSet: null1,null2,null3,null4;
set dSet: d1,d2,d3,d4;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
Fill CoeffTbl(4,1) = 2;
Fill CoeffTbl(4,2) = -1;
Fill CoeffTbl(4,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d3,d1,d4,d2)*d1*d2*d3*d4;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - ( 3*dens(d3,d1,d4,d2)*d2*d3^2*d4 - dens(d3,d1,d4,d2)*d1*d2*d3^2 )
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
*{{{ ApartEliminateSingleNullRelation_33 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "6"
*
symbols x,y;
symbols d1,d2,d3,d4,d5,d6;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4,null5,null6;
set NullSet: null1,null2,null3,null4,null5,null6;
set dSet: d1,d2,d3,d4,d5,d6;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
Fill CoeffTbl(4,1) = 1;
Fill CoeffTbl(4,2) = -1;
Fill CoeffTbl(4,3) = 0;
Fill CoeffTbl(5,1) = 2;
Fill CoeffTbl(5,2) = 1;
Fill CoeffTbl(5,3) = 0;
Fill CoeffTbl(6,1) = 1;
Fill CoeffTbl(6,2) = 3;
Fill CoeffTbl(6,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3,d4,d5,d6)*d1*d2*d3*d4*d5*d6;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d2,d3,d4,d5,d6)*d1^2*d2*d4*d5*d6
    - dens(d1,d2,d3,d4,d5,d6)*d1^2*d3*d4*d5*d6
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
*{{{ ApartEliminateSingleNullRelation_34 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 2;
Fill CoeffTbl(3,2) = 3;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - ( 1/2*dens(d1,d2,d3)*d1^2*d2 - 3/2*dens(d1,d2,d3)*d1^2*d3 )
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
*{{{ ApartEliminateSingleNullRelation_35 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 3;
Fill CoeffTbl(1,2) = -2;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 1;
Fill CoeffTbl(2,2) = 4;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 4;
Fill CoeffTbl(3,2) = 2;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff = F - ( dens(d1,d2,d3)*d1^2*d2 - dens(d1,d2,d3)*d1^2*d3 );
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartEliminateSingleNullRelation_36 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "5"
*
symbols x,y,z;
symbols d1,d2,d3,d4,d5;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4,null5;
set NullSet: null1,null2,null3,null4,null5;
set dSet: d1,d2,d3,d4,d5;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(1,4) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(2,4) = 0;
Fill CoeffTbl(3,1) = 0;
Fill CoeffTbl(3,2) = 0;
Fill CoeffTbl(3,3) = 1;
Fill CoeffTbl(3,4) = 0;
Fill CoeffTbl(4,1) = 1;
Fill CoeffTbl(4,2) = 1;
Fill CoeffTbl(4,3) = 1;
Fill CoeffTbl(4,4) = 0;
Fill CoeffTbl(5,1) = 1;
Fill CoeffTbl(5,2) = -1;
Fill CoeffTbl(5,3) = 1;
Fill CoeffTbl(5,4) = 0;
*
#define Vars "x,y,z"
*
local F = dens(d1,d2,d3,d4,d5)*d1*d2*d3*d4*d5;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d2,d3,d4,d5)*d1^2*d2*d3*d5
    - dens(d1,d2,d3,d4,d5)*d1^2*d2*d4*d5
    - dens(d1,d2,d3,d4,d5)*d1^2*d3*d4*d5
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
*{{{ ApartEliminateSingleNullRelation_37 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "4"
*
symbols x,y;
symbols d1,d2,d3,d4;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4;
set NullSet: null1,null2,null3,null4;
set dSet: d1,d2,d3,d4;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
Fill CoeffTbl(4,1) = 3;
Fill CoeffTbl(4,2) = 2;
Fill CoeffTbl(4,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d4,d2,d1,d3)*d1*d2*d3*d4;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - ( 3*dens(d4,d2,d1,d3)*d2*d3*d4^2 + 2*dens(d4,d2,d1,d3)*d1*d3*d4^2 )
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
*{{{ ApartEliminateSingleNullRelation_38 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "1"
*
symbols x;
symbols d1;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1;
set NullSet: null1;
set dSet: d1;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
*
#define Vars "x"
*
local F = dens(d1)*d1;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff = F - d1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartEliminateSingleNullRelation_39 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1^10*d2^7*d3^4;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - ( dens(d1,d2,d3)*d1^14*d2^3*d3^4
      - 4*dens(d1,d2,d3)*d1^14*d2^4*d3^3
      + 6*dens(d1,d2,d3)*d1^14*d2^5*d3^2
      - 4*dens(d1,d2,d3)*d1^14*d2^6*d3
      + dens(d1,d2,d3)*d1^14*d2^7 )
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
*{{{ ApartEliminateSingleNullRelation_40 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1/2;
Fill CoeffTbl(1,2) = 1/3;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 1/3;
Fill CoeffTbl(2,2) = 1/2;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 5/6;
Fill CoeffTbl(3,2) = 5/6;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff = F - ( dens(d1,d2,d3)*d1^2*d2 - dens(d1,d2,d3)*d1^2*d3 );
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*
*{{{ ApartEliminateSingleNullRelation_41 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y,a,b;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = a;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = b;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = a;
Fill CoeffTbl(3,2) = b;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff = F - ( dens(d1,d2,d3)*d1^2*d2 - dens(d1,d2,d3)*d1^2*d3 );
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartEliminateSingleNullRelation_42 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y,s,t;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = s;
Fill CoeffTbl(1,2) = t;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 1;
Fill CoeffTbl(2,2) = 0;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 0;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - ( s*dens(d1,d2,d3)*d1^2*d3 + t*dens(d1,d2,d3)*d1^2*d2 )
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
*{{{ ApartEliminateSingleNullRelation_43 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y,m1,m2;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = m1;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = m2;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = m1+m2;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff = F - ( dens(d1,d2,d3)*d1^2*d2 - dens(d1,d2,d3)*d1^2*d3 );
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartEliminateSingleNullRelation_44 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y,s;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = s;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = -s;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff = F - ( dens(d1,d2,d3)*d1^2*d2 - dens(d1,d2,d3)*d1^2*d3 );
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartEliminateSingleNullRelation_45 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,a;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = a;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(2,1) = 2*a;
Fill CoeffTbl(2,2) = 0;
Fill CoeffTbl(3,1) = 3*a;
Fill CoeffTbl(3,2) = 0;
*
#define Vars "x"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff = F - 1/2*dens(d1,d2,d3)*d1^2*d3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartEliminateSingleNullRelation_46 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "4"
*
symbols x,y,z,m;
symbols d1,d2,d3,d4;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4;
set NullSet: null1,null2,null3,null4;
set dSet: d1,d2,d3,d4;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(1,4) = m;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(2,4) = -m;
Fill CoeffTbl(3,1) = 0;
Fill CoeffTbl(3,2) = 0;
Fill CoeffTbl(3,3) = 1;
Fill CoeffTbl(3,4) = 0;
Fill CoeffTbl(4,1) = 1;
Fill CoeffTbl(4,2) = 1;
Fill CoeffTbl(4,3) = 1;
Fill CoeffTbl(4,4) = 0;
*
#define Vars "x,y,z"
*
local F = dens(d1,d2,d3,d4)*d1*d2*d3*d4;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d2,d3,d4)*d1^2*d2*d3
    - dens(d1,d2,d3,d4)*d1^2*d2*d4
    - dens(d1,d2,d3,d4)*d1^2*d3*d4
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
*{{{ ApartEliminateSingleNullRelation_47 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y,a,b,c,dd;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = a;
Fill CoeffTbl(1,2) = b;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = c;
Fill CoeffTbl(2,2) = dd;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = a+c;
Fill CoeffTbl(3,2) = b+dd;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  (
    + b*c*den(b*c-a*dd)*dens(d1,d2,d3)*d1^2*d2
    - a*dd*den(b*c-a*dd)*dens(d1,d2,d3)*d1^2*d2
    - b*c*den(b*c-a*dd)*dens(d1,d2,d3)*d1^2*d3
    + a*dd*den(b*c-a*dd)*dens(d1,d2,d3)*d1^2*d3
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
*{{{ ApartEliminateSingleNullRelation_48 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y,a,b,s,t;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = a;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = b;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = a;
Fill CoeffTbl(3,2) = b;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = s*t*dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - ( s*t*dens(d1,d2,d3)*d1^2*d2 - s*t*dens(d1,d2,d3)*d1^2*d3 )
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
*{{{ ApartEliminateSingleNullRelation_49 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y,s,t;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = s;
Fill CoeffTbl(1,2) = t;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 1;
Fill CoeffTbl(2,2) = 0;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 0;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1^3*d2^2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - ( s*dens(d1,d2,d3)*d1^4*d2*d3 + t*dens(d1,d2,d3)*d1^4*d2^2 )
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
*{{{ ApartEliminateSingleNullRelation_50 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "4"
*
symbols x,y,z,m1,m2;
symbols d1,d2,d3,d4;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4;
set NullSet: null1,null2,null3,null4;
set dSet: d1,d2,d3,d4;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(1,4) = m1;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(2,4) = m2;
Fill CoeffTbl(3,1) = 0;
Fill CoeffTbl(3,2) = 0;
Fill CoeffTbl(3,3) = 1;
Fill CoeffTbl(3,4) = -m1-m2;
Fill CoeffTbl(4,1) = 1;
Fill CoeffTbl(4,2) = 1;
Fill CoeffTbl(4,3) = 1;
Fill CoeffTbl(4,4) = 0;
*
#define Vars "x,y,z"
*
local F = dens(d1,d2,d3,d4)*d1*d2*d3*d4;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  (
    + dens(d1,d2,d3,d4)*d1^2*d2*d3
    - dens(d1,d2,d3,d4)*d1^2*d2*d4
    - dens(d1,d2,d3,d4)*d1^2*d3*d4
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
*{{{ ApartEliminateSingleNullRelation_51 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y,epsilon;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1 + epsilon^2;
Fill CoeffTbl(3,2) = epsilon;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  (
    - den(-1-epsilon^2)*dens(d1,d2,d3)*d1^2*d2
    + epsilon*den(-1-epsilon^2)*dens(d1,d2,d3)*d1^2*d3
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
*{{{ ApartEliminateSingleNullRelation_52 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y,epsilon;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = epsilon^2;
Fill CoeffTbl(3,2) = 1 - epsilon;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  (
    + epsilon^-2*dens(d1,d2,d3)*d1^2*d2
    + epsilon^-1*dens(d1,d2,d3)*d1^2*d3
    - epsilon^-2*dens(d1,d2,d3)*d1^2*d3
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
*{{{ ApartEliminateSingleNullRelation_53 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "5"
*
symbols x,y,epsilon;
symbols d1,d2,d3,d4,d5;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4,null5;
set NullSet: null1,null2,null3,null4,null5;
set dSet: d1,d2,d3,d4,d5;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 2 - epsilon;
Fill CoeffTbl(3,2) = 1 + epsilon;
Fill CoeffTbl(3,3) = -1;
Fill CoeffTbl(4,1) = 3 + 2*epsilon;
Fill CoeffTbl(4,2) = -1 + epsilon;
Fill CoeffTbl(4,3) = epsilon;
Fill CoeffTbl(5,1) = 1 + epsilon^2;
Fill CoeffTbl(5,2) = epsilon;
Fill CoeffTbl(5,3) = -2 + epsilon;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3,d4,d5)*d1*d2*d3*d4*d5;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  (
    + (epsilon^2+2*epsilon-1)*den(epsilon^2-4*epsilon-3)*dens(d1,d2,d3,d4,d5)*d1^2*d3*d4*d5
    - epsilon*den(epsilon^2-4*epsilon-3)*dens(d1,d2,d3,d4,d5)*d1^2*d2*d4*d5
    - den(epsilon^2-4*epsilon-3)*dens(d1,d2,d3,d4,d5)*d1^2*d2*d3*d5
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
*{{{ ApartEliminateSingleNullRelation_54 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y,s,t;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = den(s+t)*dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  (
    + den(s+t)*dens(d1,d2,d3)*d1^2*d2
    - den(s+t)*dens(d1,d2,d3)*d1^2*d3
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
*{{{ ApartEliminateSingleNullRelation_55 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y,epsilon;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1 + epsilon^2;
Fill CoeffTbl(3,2) = epsilon;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = den(1+2*epsilon)*dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  (
    - den(1+2*epsilon)*den(-1-epsilon^2)*dens(d1,d2,d3)*d1^2*d2
    + epsilon*den(1+2*epsilon)*den(-1-epsilon^2)*dens(d1,d2,d3)*d1^2*d3
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
*{{{ ApartEliminateSingleNullRelation_56 :
#include- ../src/formapart.h
*
#Define APnumberOfDenominators "3"
*
symbols x,y,epsilon;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,n2,n3,n4;
ctable,sparse,CoeffTbl(2);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1 + epsilon^2;
Fill CoeffTbl(3,2) = epsilon;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = den(1+2*epsilon)^2*dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  (
    - den(1+2*epsilon)^2*den(-1-epsilon^2)*dens(d1,d2,d3)*d1^2*d2
    + epsilon*den(1+2*epsilon)^2*den(-1-epsilon^2)*dens(d1,d2,d3)*d1^2*d3
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
*{{{ ApartEliminateSingleNullRelation_57 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Define APnumberOfDenominators "2"
*
symbols x,y;
symbols d1,d2;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2;
set NullSet: null1,null2;
set dSet: d1,d2;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,...,n5;
ctable,sparse,CoeffTbl(2);
ctable,sparse,APnullTbl(2);
*
Fill APnullTbl(1,1) = 1;
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2)*d1*d2;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - sig(1,1)*d1*d2
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
*{{{ ApartEliminateSingleNullRelation_58 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,...,n5;
ctable,sparse,CoeffTbl(2);
ctable,sparse,APnullTbl(3);
*
Fill APnullTbl(1,1,1) = null(-1,-1,1);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  sig(1,1,1)*(
    + dens(d1,d2,d3)*d1^2*d2
    - dens(d1,d2,d3)*d1^2*d3
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
*{{{ ApartEliminateSingleNullRelation_59 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,...,n5;
ctable,sparse,CoeffTbl(2);
ctable,sparse,APnullTbl(3);
*
Fill APnullTbl(1,1,1) = null(-1,-1,1);
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3)*d1^2*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  sig(1,1,1)*(
    + dens(d1,d2,d3)*d1^3*d2
    - dens(d1,d2,d3)*d1^3*d3
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
*{{{ ApartEliminateSingleNullRelation_60 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,...,n5;
ctable,sparse,CoeffTbl(2);
ctable,sparse,APnullTbl(3);
*
Fill APnullTbl(1,1,1) = null(-1,-1,1);
Fill APnullTbl(1,1,0) = 1;
*
Fill CoeffTbl(1,1) = 1;
Fill CoeffTbl(1,2) = 0;
Fill CoeffTbl(1,3) = 0;
Fill CoeffTbl(2,1) = 0;
Fill CoeffTbl(2,2) = 1;
Fill CoeffTbl(2,3) = 0;
Fill CoeffTbl(3,1) = 1;
Fill CoeffTbl(3,2) = 1;
Fill CoeffTbl(3,3) = 0;
*
#define Vars "x,y"
*
local F = dens(d1,d2)*d1*d2;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - sig(1,1,0)*d1*d2
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
*{{{ ApartEliminateSingleNullRelation_61 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Define APnumberOfDenominators "4"
*
symbols x,y;
symbols d1,d2,d3,d4;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4;
set NullSet: null1,null2,null3,null4;
set dSet: d1,d2,d3,d4;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,...,n5;
ctable,sparse,CoeffTbl(2);
ctable,sparse,APnullTbl(4);
*
Fill APnullTbl(1,1,1,1) = null(-1,-1,1,0)*null(0,0,-1,1);
Fill APnullTbl(0,0,1,1) = null(0,0,-1,1);
*
#define Vars "x,y"
*
local F = dens(d3,d4)*d3*d4;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - sig(0,0,1,1)*dens(d3,d4)*d3^2
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
*{{{ ApartEliminateSingleNullRelation_62 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,...,n5;
ctable,sparse,CoeffTbl(2);
ctable,sparse,APnullTbl(3);
*
Fill APnullTbl(1,1,1) = null(-1,-1,1);
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3) * d1^3*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  sig(1,1,1)*(
    + dens(d1,d2,d3)*d1^4*d2
    - dens(d1,d2,d3)*d1^4*d3
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
*{{{ ApartEliminateSingleNullRelation_63 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Define APnumberOfDenominators "4"
*
symbols x,y;
symbols d1,d2,d3,d4;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4;
set NullSet: null1,null2,null3,null4;
set dSet: d1,d2,d3,d4;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,...,n5;
ctable,sparse,CoeffTbl(2);
ctable,sparse,APnullTbl(4);
*
Fill APnullTbl(1,1,1,1) = null(-1,-1,1,0)*null(0,0,-1,1);
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3,d4) * d1*d2*d3*d4;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  sig(1,1,1,1)*(
    + dens(d1,d2,d3,d4)*d1^2*d2*d4
    - dens(d1,d2,d3,d4)*d1^2*d3*d4
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
*{{{ ApartEliminateSingleNullRelation_64 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Define APnumberOfDenominators "3"
*
symbols x,y,epsilon;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,...,n5;
ctable,sparse,CoeffTbl(2);
ctable,sparse,APnullTbl(3);
*
Fill APnullTbl(1,1,1) = null(1,-1,epsilon);
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3) * d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  sig(1,1,1)*(
    + dens(d1,d2,d3)*d1^2*d3
    - epsilon*dens(d1,d2,d3)*d1^2*d2
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
*{{{ ApartEliminateSingleNullRelation_65 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Define APnumberOfDenominators "4"
*
symbols x,y;
symbols d1,d2,d3,d4;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4;
set NullSet: null1,null2,null3,null4;
set dSet: d1,d2,d3,d4;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,...,n5;
ctable,sparse,CoeffTbl(2);
ctable,sparse,APnullTbl(4);
*
Fill APnullTbl(0,1,1,1) = null(0,0,-1,1);
*
#define Vars "x,y"
*
local F = dens(d2,d3,d4) * d2*d3*d4;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - sig(0,1,1,1)*dens(d2,d3,d4)*d2*d3^2
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
*{{{ ApartEliminateSingleNullRelation_66 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,...,n5;
ctable,sparse,CoeffTbl(2);
ctable,sparse,APnullTbl(3);
*
Fill APnullTbl(1,1,1) = null(-1,-1,1);
*
#define Vars "x,y"
*
local F = den(5)^2 * dens(d1,d2,d3) * d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  sig(1,1,1)*(
    + den(5)^2 * dens(d1,d2,d3) * d1^2*d2
    - den(5)^2 * dens(d1,d2,d3) * d1^2*d3
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
*{{{ ApartEliminateSingleNullRelation_67 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,...,n5;
ctable,sparse,CoeffTbl(2);
ctable,sparse,APnullTbl(3);
*
Fill APnullTbl(1,1,1) = null(0,1,-1);
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3) * d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - sig(1,1,1)*dens(d1,d2,d3)*d1*d2^2
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
*{{{ ApartEliminateSingleNullRelation_68 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,...,n5;
ctable,sparse,CoeffTbl(2);
ctable,sparse,APnullTbl(3);
*
Fill APnullTbl(1,1,1) = null(-1,-1,1);
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3) * d1*d2^2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  sig(1,1,1)*(
    + dens(d1,d2,d3)*d1^2*d2^2
    - dens(d1,d2,d3)*d1^2*d2*d3
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
*{{{ ApartEliminateSingleNullRelation_69 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,...,n5;
ctable,sparse,CoeffTbl(2);
ctable,sparse,APnullTbl(3);
*
Fill APnullTbl(1,1,1) = null(-1,-1,1);
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3) * d1*d2*d3^2;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  sig(1,1,1)*(
    + dens(d1,d2,d3)*d1^2*d2*d3
    - dens(d1,d2,d3)*d1^2*d3^2
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
*{{{ ApartEliminateSingleNullRelation_70 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,...,n5;
ctable,sparse,CoeffTbl(2);
ctable,sparse,APnullTbl(3);
*
Fill APnullTbl(1,1,1) = null(-1,-1,1);
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3) * d1^2*d2^3*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  sig(1,1,1)*(
    + dens(d1,d2,d3)*d1^3*d2^3
    - dens(d1,d2,d3)*d1^3*d2^2*d3
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
*{{{ ApartEliminateSingleNullRelation_71 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,...,n5;
ctable,sparse,CoeffTbl(2);
ctable,sparse,APnullTbl(3);
*
Fill APnullTbl(1,1,1) = null(-1,2,-3);
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3) * d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  sig(1,1,1)*(
    + 2*dens(d1,d2,d3)*d1^2*d3
    - 3*dens(d1,d2,d3)*d1^2*d2
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
*{{{ ApartEliminateSingleNullRelation_72 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Define APnumberOfDenominators "5"
*
symbols x,y;
symbols d1,d2,d3,d4,d5;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4,null5;
set NullSet: null1,null2,null3,null4,null5;
set dSet: d1,d2,d3,d4,d5;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,...,n6;
ctable,sparse,CoeffTbl(2);
ctable,sparse,APnullTbl(5);
*
Fill APnullTbl(1,1,1,1,1) = null(-1,-1,1,0,0);
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3,d4,d5) * d1*d2*d3*d4*d5;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  sig(1,1,1,1,1)*(
    + dens(d1,d2,d3,d4,d5)*d1^2*d2*d4*d5
    - dens(d1,d2,d3,d4,d5)*d1^2*d3*d4*d5
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
*{{{ ApartEliminateSingleNullRelation_73 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Define APnumberOfDenominators "5"
*
symbols x,y;
symbols d1,d2,d3,d4,d5;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4,null5;
set NullSet: null1,null2,null3,null4,null5;
set dSet: d1,d2,d3,d4,d5;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,...,n6;
ctable,sparse,CoeffTbl(2);
ctable,sparse,APnullTbl(5);
*
Fill APnullTbl(1,0,1,0,1) = null(0,0,1,0,-1);
*
#define Vars "x,y"
*
local F = dens(d1,d3,d5) * d1*d3*d5;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - sig(1,0,1,0,1)*dens(d1,d3,d5)*d1*d3^2
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
*{{{ ApartEliminateSingleNullRelation_74 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Define APnumberOfDenominators "4"
*
symbols x,y;
symbols d1,d2,d3,d4;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4;
set NullSet: null1,null2,null3,null4;
set dSet: d1,d2,d3,d4;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,...,n5;
ctable,sparse,CoeffTbl(2);
ctable,sparse,APnullTbl(4);
*
Fill APnullTbl(1,0,0,1) = null(1,0,0,-1);
*
#define Vars "x,y"
*
local F = dens(d1,d4) * d1*d4;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - sig(1,0,0,1)*dens(d1,d4)*d1^2
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
*{{{ ApartEliminateSingleNullRelation_75 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Define APnumberOfDenominators "4"
*
symbols x,y;
symbols d1,d2,d3,d4;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3,null4;
set NullSet: null1,null2,null3,null4;
set dSet: d1,d2,d3,d4;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,...,n5;
ctable,sparse,CoeffTbl(2);
ctable,sparse,APnullTbl(4);
*
Fill APnullTbl(1,1,1,1) = null(0,0,1,-1);
*
#define Vars "x,y"
*
local F = dens(d1,d2,d3,d4) * d1*d2*d3*d4;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F - sig(1,1,1,1)*dens(d1,d2,d3,d4)*d1*d2*d3^2
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
*{{{ ApartEliminateSingleNullRelation_76 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,...,n5;
ctable,sparse,CoeffTbl(2);
ctable,sparse,APnullTbl(3);
*
Fill APnullTbl(1,1,1) = null(2,-1,1);
*
#define Vars "x,y"
*
local F = dens(d2,d1,d3) * d1*d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  sig(1,1,1)*(
    + dens(d2,d1,d3)*d1*d2^2
    + 2*dens(d2,d1,d3)*d2^2*d3
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
*{{{ ApartEliminateSingleNullRelation_77 :
#include- ../src/formapart.h
*
#Redefine APuseGlobalNullRelations "1"
#Define APnumberOfDenominators "3"
*
symbols x,y;
symbols d1,d2,d3;
cfunctions dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det;
cfunctions selNull,selDen,den;
cfunctions null1,null2,null3;
set NullSet: null1,null2,null3;
set dSet: d1,d2,d3;
cfunctions aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8;
cfunctions sig;
symbols n1,...,n5;
ctable,sparse,CoeffTbl(2);
ctable,sparse,APnullTbl(3);
*
Fill APnullTbl(1,1,1) = null(-1,-1,1);
Fill APnullTbl(1,1,0) = 1;
Fill APnullTbl(0,1,1) = 1;
*
#define Vars "x,y"
*
local F =
    dens(d1,d2,d3) * d1*d2*d3
  + dens(d1,d2)    * d1*d2
  + dens(d2,d3)    * d2*d3;
.sort
*
#call ApartEliminateSingleNullRelation(dens,row,col,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,selNull,selDen,den,sig,NullSet,dSet,CoeffTbl,d,Vars,aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,n1,n2,n3,n4)
*
.sort
*
local diff =
  F
  -
  (
    + sig(1,1,1)*dens(d1,d2,d3)*d1^2*d2
    - sig(1,1,1)*dens(d1,d2,d3)*d1^2*d3
    + sig(1,1,0)*d1*d2
    + sig(0,1,1)*d2*d3
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
