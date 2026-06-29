*{{{ ApartDetermineNullRelations_1 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) =-1;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) =-1;
Fill MyTable(4,3) = 2;
*
Fill MyTable(5,1) = 2;
Fill MyTable(5,2) = 1;
Fill MyTable(5,3) =-3;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(1,2,3)*
      BasisCol(1,2,3)*
      null1(-3,-1,2,1,0)*
      null2(1,2,-3,0,1)
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
*{{{ ApartDetermineNullRelations_2 :
#include- ../src/formapart.h
*
#Define NumberOfRows "3"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(-1,-1,1)
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
*{{{ ApartDetermineNullRelations_3 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
*
Fill MyTable(2,1) = 2;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 1;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 1;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(1,2,3)*
      BasisCol(1,2,3)*
      null1(1,0,1,-1)
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
*{{{ ApartDetermineNullRelations_4 :
#include- ../src/formapart.h
*
#Define NumberOfRows "3"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 1;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 2;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 3;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(-1,-1,1)
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
*{{{ ApartDetermineNullRelations_5 :
#include- ../src/formapart.h
*
#Define NumberOfRows "3"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
*
Fill MyTable(2,1) = 2;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 0;
*
Fill MyTable(3,1) = 3;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(1)*
      BasisRow(1)*
      BasisCol(1)*
      null1(2,-1,0)*
      null2(3,0,-1)
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
*{{{ ApartDetermineNullRelations_6 :
#include- ../src/formapart.h
*
#Define NumberOfRows "3"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4,s,t;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = s;
Fill MyTable(3,2) = t;
Fill MyTable(3,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(-s,-t,1)
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
*{{{ ApartDetermineNullRelations_7 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = -1;
Fill MyTable(4,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(-1,-1,1,0)*
      null2(-1,1,0,1)
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
*{{{ ApartDetermineNullRelations_8 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "4"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 1;
Fill MyTable(4,4) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(1,2,3)*
      BasisCol(1,2,3)*
      null1(1,1,1,-1)
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
*{{{ ApartDetermineNullRelations_9 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "4"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 1;
Fill MyTable(4,4) = 0;
*
Fill MyTable(5,1) = 1;
Fill MyTable(5,2) = -1;
Fill MyTable(5,3) = 0;
Fill MyTable(5,4) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(1,2,3)*
      BasisCol(1,2,3)*
      null1(1,1,1,-1,0)*
      null2(1,-1,0,0,-1)
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
*{{{ ApartDetermineNullRelations_10 :
#include- ../src/formapart.h
*
#Define NumberOfRows "6"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = -1;
Fill MyTable(4,3) = 0;
*
Fill MyTable(5,1) = 2;
Fill MyTable(5,2) = 1;
Fill MyTable(5,3) = 0;
*
Fill MyTable(6,1) = 1;
Fill MyTable(6,2) = 3;
Fill MyTable(6,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(-1,-1,1,0,0,0)*
      null2(-1,1,0,1,0,0)*
      null3(-2,-1,0,0,1,0)*
      null4(-1,-3,0,0,0,1)
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
*{{{ ApartDetermineNullRelations_11 :
#include- ../src/formapart.h
*
#Define NumberOfRows "3"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,3) = 1;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(1,2,3)*
      BasisCol(1,2,3)
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
*{{{ ApartDetermineNullRelations_12 :
#include- ../src/formapart.h
*
#Define NumberOfRows "3"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 1;
*
Fill MyTable(2,1) = 3;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 3;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,3)*
      BasisCol(1,2)*
      null1(3,-1,0)
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
*{{{ ApartDetermineNullRelations_13 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4,m;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = m;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = m;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = -1;
Fill MyTable(4,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(1,2,4)*
      BasisCol(1,2,3)*
      null1(m,m,-m,0)
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
*{{{ ApartDetermineNullRelations_14 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 1;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = -1;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = -1;
Fill MyTable(4,3) = 2;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(-1,-1,1,0)*
      null2(-1,1,0,1)
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
*{{{ ApartDetermineNullRelations_15 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 2;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = -1;
Fill MyTable(4,3) = 0;
*
Fill MyTable(5,1) = 2;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 2;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(1,2,3)*
      BasisCol(1,2,3)*
      null1(2,-2,0,-2,0)*
      null2(2,-2,2,0,-2)
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
*{{{ ApartDetermineNullRelations_16 :
#include- ../src/formapart.h
*
#Define NumberOfRows "3"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = 2;
Fill MyTable(3,2) = 3;
Fill MyTable(3,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(-2,-3,1)
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
*{{{ ApartDetermineNullRelations_17 :
#include- ../src/formapart.h
*
#Define NumberOfRows "6"
#Define NumberOfColumns "4"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 0;
*
Fill MyTable(5,1) = 1;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 1;
Fill MyTable(5,4) = 0;
*
Fill MyTable(6,1) = 0;
Fill MyTable(6,2) = 1;
Fill MyTable(6,3) = 1;
Fill MyTable(6,4) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(1,2,3)*
      BasisCol(1,2,3)*
      null1(1,1,0,-1,0,0)*
      null2(1,0,1,0,-1,0)*
      null3(0,1,1,0,0,-1)
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
*{{{ ApartDetermineNullRelations_18 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 0;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = -1;
Fill MyTable(2,3) = 0;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 0;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(1,1,-2,0)*
      null2(1,-1,0,-2)
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
*{{{ ApartDetermineNullRelations_19 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "5"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(1,5) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
Fill MyTable(2,5) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 0;
Fill MyTable(3,5) = 0;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 1;
Fill MyTable(4,5) = 0;
*
Fill MyTable(5,1) = 1;
Fill MyTable(5,2) = 1;
Fill MyTable(5,3) = 1;
Fill MyTable(5,4) = 1;
Fill MyTable(5,5) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(4)*
      BasisRow(1,2,3,4)*
      BasisCol(1,2,3,4)*
      null1(-1,-1,-1,-1,1)
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
*{{{ ApartDetermineNullRelations_20 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 1;
*
Fill MyTable(2,1) = 2;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 2;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 1;
*
Fill MyTable(5,1) = 3;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 3;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,3)*
      BasisCol(1,2)*
      null1(2,-1,0,0,0)*
      null2(-1,0,-1,1,0)*
      null3(-3,0,0,0,1)
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
*{{{ ApartDetermineNullRelations_21 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4,s,t,u,v;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = s;
Fill MyTable(3,2) = t;
Fill MyTable(3,3) = 0;
*
Fill MyTable(4,1) = u;
Fill MyTable(4,2) = v;
Fill MyTable(4,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(-s,-t,1,0)*
      null2(-u,-v,0,1)
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
*{{{ ApartDetermineNullRelations_22 :
#include- ../src/formapart.h
*
#Define NumberOfRows "3"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4,a;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = a;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = a;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(1,-1,1)
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
*{{{ ApartDetermineNullRelations_23 :
#include- ../src/formapart.h
*
#Define NumberOfRows "7"
#Define NumberOfColumns "4"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 0;
*
Fill MyTable(5,1) = 1;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = -1;
Fill MyTable(5,4) = 0;
*
Fill MyTable(6,1) = 0;
Fill MyTable(6,2) = 1;
Fill MyTable(6,3) = 1;
Fill MyTable(6,4) = 0;
*
Fill MyTable(7,1) = 1;
Fill MyTable(7,2) = -1;
Fill MyTable(7,3) = 1;
Fill MyTable(7,4) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(1,2,3)*
      BasisCol(1,2,3)*
      null1(1,1,0,-1,0,0,0)*
      null2(1,0,-1,0,-1,0,0)*
      null3(0,1,1,0,0,-1,0)*
      null4(1,-1,1,0,0,0,-1)
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
*{{{ ApartDetermineNullRelations_24 :
#include- ../src/formapart.h
*
#Define NumberOfRows "6"
#Define NumberOfColumns "5"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(1,5) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
Fill MyTable(2,5) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 0;
Fill MyTable(3,5) = 0;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 1;
Fill MyTable(4,5) = 0;
*
Fill MyTable(5,1) = 1;
Fill MyTable(5,2) = 1;
Fill MyTable(5,3) = 1;
Fill MyTable(5,4) = 1;
Fill MyTable(5,5) = 0;
*
Fill MyTable(6,1) = 1;
Fill MyTable(6,2) = -1;
Fill MyTable(6,3) = 1;
Fill MyTable(6,4) = -1;
Fill MyTable(6,5) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(4)*
      BasisRow(1,2,3,4)*
      BasisCol(1,2,3,4)*
      null1(-1,-1,-1,-1,1,0)*
      null2(-1,1,-1,1,0,1)
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
*{{{ ApartDetermineNullRelations_25 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "4"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
*
Fill MyTable(2,1) = 2;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
*
Fill MyTable(3,1) = 3;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 0;
Fill MyTable(3,4) = 0;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 0;
*
Fill MyTable(5,1) = 1;
Fill MyTable(5,2) = 1;
Fill MyTable(5,3) = 0;
Fill MyTable(5,4) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,4)*
      BasisCol(1,2)*
      null1(2,-1,0,0,0)*
      null2(3,0,-1,0,0)*
      null3(-1,0,0,-1,1)
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
*{{{ ApartDetermineNullRelations_26 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 0;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 2;
Fill MyTable(2,3) = 0;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 3;
Fill MyTable(3,3) = 0;
*
Fill MyTable(4,1) = 2;
Fill MyTable(4,2) = 3;
Fill MyTable(4,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(1,-2,1,0)*
      null2(-1,-1,0,1)
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
*{{{ ApartDetermineNullRelations_27 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4,s,t;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = -1;
Fill MyTable(4,3) = 0;
*
Fill MyTable(5,1) = s;
Fill MyTable(5,2) = t;
Fill MyTable(5,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(-1,-1,1,0,0)*
      null2(-1,1,0,1,0)*
      null3(-s,-t,0,0,1)
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
*{{{ ApartDetermineNullRelations_28 :
#include- ../src/formapart.h
*
#Define NumberOfRows "3"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4,a,b;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = a;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = b;
Fill MyTable(2,3) = 0;
*
Fill MyTable(3,1) = a;
Fill MyTable(3,2) = b;
Fill MyTable(3,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(-a*b,-a*b,a*b)
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
*{{{ ApartDetermineNullRelations_29 :
#include- ../src/formapart.h
*
#Define NumberOfRows "10"
#Define NumberOfColumns "4"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 0;
*
Fill MyTable(5,1) = 0;
Fill MyTable(5,2) = 1;
Fill MyTable(5,3) = 1;
Fill MyTable(5,4) = 0;
*
Fill MyTable(6,1) = 1;
Fill MyTable(6,2) = 0;
Fill MyTable(6,3) = 1;
Fill MyTable(6,4) = 0;
*
Fill MyTable(7,1) = 1;
Fill MyTable(7,2) = -1;
Fill MyTable(7,3) = 0;
Fill MyTable(7,4) = 0;
*
Fill MyTable(8,1) = 0;
Fill MyTable(8,2) = 1;
Fill MyTable(8,3) = -1;
Fill MyTable(8,4) = 0;
*
Fill MyTable(9,1) = 1;
Fill MyTable(9,2) = 0;
Fill MyTable(9,3) = -1;
Fill MyTable(9,4) = 0;
*
Fill MyTable(10,1) = 1;
Fill MyTable(10,2) = 1;
Fill MyTable(10,3) = 1;
Fill MyTable(10,4) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(1,2,3)*
      BasisCol(1,2,3)*
      null1(1,1,0,-1,0,0,0,0,0,0)*
      null2(0,1,1,0,-1,0,0,0,0,0)*
      null3(1,0,1,0,0,-1,0,0,0,0)*
      null4(1,-1,0,0,0,0,-1,0,0,0)*
      null5(0,1,-1,0,0,0,0,-1,0,0)*
      null6(1,0,-1,0,0,0,0,0,-1,0)*
      null7(1,1,1,0,0,0,0,0,0,-1)
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
*{{{ ApartDetermineNullRelations_30 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = -1;
Fill MyTable(1,2) = -1;
Fill MyTable(1,3) = 0;
*
Fill MyTable(2,1) = -1;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
*
Fill MyTable(3,1) = -2;
Fill MyTable(3,2) = -2;
Fill MyTable(3,3) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(4,0,-2,0)*
      null2(-1,-1,0,-2)
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
*{{{ ApartDetermineNullRelations_31 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "5"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(1,5) = 0;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
Fill MyTable(2,5) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 0;
Fill MyTable(3,5) = 0;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 1;
Fill MyTable(4,4) = 1;
Fill MyTable(4,5) = 0;
*
Fill MyTable(5,1) = 0;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 0;
Fill MyTable(5,4) = 1;
Fill MyTable(5,5) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(4)*
      BasisRow(1,2,3,4)*
      BasisCol(1,2,3,4)*
      null1(1,-1,1,-1,1)
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
*{{{ ApartDetermineNullRelations_32 :
#include- ../src/formapart.h
*
#Define NumberOfRows "3"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4,s,t;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = s+t;
Fill MyTable(3,2) = s*t;
Fill MyTable(3,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(-s-t,-s*t,1)
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
*{{{ ApartDetermineNullRelations_33 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 0;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = -1;
Fill MyTable(3,3) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 0;
*
Fill MyTable(5,1) = 1;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,3)*
      BasisCol(1,2)*
      null1(-2,2,0,0,0)*
      null2(2,0,0,-2,0)*
      null3(1,0,1,0,-2)
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
*{{{ ApartDetermineNullRelations_34 :
#include- ../src/formapart.h
*
#Define NumberOfRows "6"
#Define NumberOfColumns "6"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(1,5) = 0;
Fill MyTable(1,6) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
Fill MyTable(2,5) = 0;
Fill MyTable(2,6) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 0;
Fill MyTable(3,5) = 0;
Fill MyTable(3,6) = 0;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 1;
Fill MyTable(4,5) = 0;
Fill MyTable(4,6) = 0;
*
Fill MyTable(5,1) = 0;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 0;
Fill MyTable(5,4) = 0;
Fill MyTable(5,5) = 1;
Fill MyTable(5,6) = 0;
*
Fill MyTable(6,1) = 1;
Fill MyTable(6,2) = 1;
Fill MyTable(6,3) = 1;
Fill MyTable(6,4) = 1;
Fill MyTable(6,5) = 1;
Fill MyTable(6,6) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(5)*
      BasisRow(1,2,3,4,5)*
      BasisCol(1,2,3,4,5)*
      null1(1,1,1,1,1,-1)
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
*{{{ ApartDetermineNullRelations_35 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "4"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 2;
Fill MyTable(1,2) = 3;
Fill MyTable(1,3) = 1;
Fill MyTable(1,4) = 0;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = -1;
Fill MyTable(2,3) = 2;
Fill MyTable(2,4) = 0;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 5;
Fill MyTable(3,3) = -1;
Fill MyTable(3,4) = 0;
*
Fill MyTable(4,1) = 3;
Fill MyTable(4,2) = 2;
Fill MyTable(4,3) = 3;
Fill MyTable(4,4) = 0;
*
Fill MyTable(5,1) = 3;
Fill MyTable(5,2) = 1;
Fill MyTable(5,3) = 3;
Fill MyTable(5,4) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(1,2,3)*
      BasisCol(1,2,3)*
      null1(-3,-3,0,3,0)*
      null2(-6,0,3,0,3)
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
*{{{ ApartDetermineNullRelations_36 :
#include- ../src/formapart.h
*
#Define NumberOfRows "6"
#Define NumberOfColumns "4"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
Fill MyTable(3,4) = 0;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 1;
Fill MyTable(4,4) = 0;
*
Fill MyTable(5,1) = 0;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 0;
Fill MyTable(5,4) = 1;
*
Fill MyTable(6,1) = 0;
Fill MyTable(6,2) = 0;
Fill MyTable(6,3) = 1;
Fill MyTable(6,4) = 1;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(4)*
      BasisRow(1,2,4,5)*
      BasisCol(1,2,3,4)*
      null1(-1,-1,1,0,0,0)*
      null2(0,0,0,-1,-1,1)
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
*{{{ ApartDetermineNullRelations_37 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4,s,t;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = s;
Fill MyTable(3,2) = -s;
Fill MyTable(3,3) = 0;
*
Fill MyTable(4,1) = t;
Fill MyTable(4,2) = t;
Fill MyTable(4,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(-s,s,1,0)*
      null2(-t,-t,0,1)
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
*{{{ ApartDetermineNullRelations_38 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
*
Fill MyTable(2,1) = 2;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 0;
*
Fill MyTable(3,1) = 3;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 0;
*
Fill MyTable(4,1) = 4;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 0;
*
Fill MyTable(5,1) = 5;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(1)*
      BasisRow(1)*
      BasisCol(1)*
      null1(2,-1,0,0,0)*
      null2(3,0,-1,0,0)*
      null3(4,0,0,-1,0)*
      null4(5,0,0,0,-1)
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
*{{{ ApartDetermineNullRelations_39 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "4"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 2;
Fill MyTable(1,3) = 3;
Fill MyTable(1,4) = 0;
*
Fill MyTable(2,1) = 3;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 2;
Fill MyTable(2,4) = 0;
*
Fill MyTable(3,1) = 2;
Fill MyTable(3,2) = 3;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 0;
*
Fill MyTable(4,1) = 6;
Fill MyTable(4,2) = 6;
Fill MyTable(4,3) = 6;
Fill MyTable(4,4) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(1,2,3)*
      BasisCol(1,2,3)*
      null1(18,18,18,-18)
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
*{{{ ApartDetermineNullRelations_40 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 1;
*
Fill MyTable(4,1) = 2;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 1;
*
Fill MyTable(5,1) = 0;
Fill MyTable(5,2) = 2;
Fill MyTable(5,3) = 1;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(1,2,3)*
      BasisCol(1,2,3)*
      null1(1,-1,1,-1,0)*
      null2(-1,1,1,0,-1)
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
*{{{ ApartDetermineNullRelations_41 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "5"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 0;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 1;
Fill MyTable(1,5) = 0;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 1;
Fill MyTable(2,5) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 0;
Fill MyTable(3,4) = 1;
Fill MyTable(3,5) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 0;
Fill MyTable(4,5) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(1,2,3)*
      BasisCol(1,2,4)*
      null1(1,-1,0,1)
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
*{{{ ApartDetermineNullRelations_42 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4,a,b,c,d;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = a;
Fill MyTable(1,2) = b;
Fill MyTable(1,3) = 0;
*
Fill MyTable(2,1) = c;
Fill MyTable(2,2) = d;
Fill MyTable(2,3) = 0;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 0;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(-d,b,a*d-b*c,0)*
      null2(c,-a,0,a*d-b*c)
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
*{{{ ApartDetermineNullRelations_43 :
#include- ../src/formapart.h
*
#Define NumberOfRows "3"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4,s;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = s^2;
Fill MyTable(3,2) = s;
Fill MyTable(3,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(-s^2,-s,1)
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
*{{{ ApartDetermineNullRelations_44 :
#include- ../src/formapart.h
*
#Define NumberOfRows "12"
#Define NumberOfColumns "5"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(1,5) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
Fill MyTable(2,5) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 0;
Fill MyTable(3,5) = 0;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 1;
Fill MyTable(4,5) = 0;
*
Fill MyTable(5,1) = 1;
Fill MyTable(5,2) = 1;
Fill MyTable(5,3) = 0;
Fill MyTable(5,4) = 0;
Fill MyTable(5,5) = 0;
*
Fill MyTable(6,1) = 0;
Fill MyTable(6,2) = 1;
Fill MyTable(6,3) = 1;
Fill MyTable(6,4) = 0;
Fill MyTable(6,5) = 0;
*
Fill MyTable(7,1) = 0;
Fill MyTable(7,2) = 0;
Fill MyTable(7,3) = 1;
Fill MyTable(7,4) = 1;
Fill MyTable(7,5) = 0;
*
Fill MyTable(8,1) = 1;
Fill MyTable(8,2) = 0;
Fill MyTable(8,3) = 1;
Fill MyTable(8,4) = 0;
Fill MyTable(8,5) = 0;
*
Fill MyTable(9,1) = 0;
Fill MyTable(9,2) = 1;
Fill MyTable(9,3) = 0;
Fill MyTable(9,4) = 1;
Fill MyTable(9,5) = 0;
*
Fill MyTable(10,1) = 1;
Fill MyTable(10,2) = 0;
Fill MyTable(10,3) = 0;
Fill MyTable(10,4) = 1;
Fill MyTable(10,5) = 0;
*
Fill MyTable(11,1) = 1;
Fill MyTable(11,2) = 1;
Fill MyTable(11,3) = 1;
Fill MyTable(11,4) = 1;
Fill MyTable(11,5) = 0;
*
Fill MyTable(12,1) = 1;
Fill MyTable(12,2) = -1;
Fill MyTable(12,3) = 1;
Fill MyTable(12,4) = -1;
Fill MyTable(12,5) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(4)*
      BasisRow(1,2,3,4)*
      BasisCol(1,2,3,4)*
      null1(-1,-1,0,0,1,0,0,0,0,0,0,0)*
      null2(0,-1,-1,0,0,1,0,0,0,0,0,0)*
      null3(0,0,-1,-1,0,0,1,0,0,0,0,0)*
      null4(-1,0,-1,0,0,0,0,1,0,0,0,0)*
      null5(0,-1,0,-1,0,0,0,0,1,0,0,0)*
      null6(-1,0,0,-1,0,0,0,0,0,1,0,0)*
      null7(-1,-1,-1,-1,0,0,0,0,0,0,1,0)*
      null8(-1,1,-1,1,0,0,0,0,0,0,0,1)
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
*{{{ ApartDetermineNullRelations_45 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "5"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 0;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 1;
Fill MyTable(1,5) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 1;
Fill MyTable(2,5) = 0;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
Fill MyTable(3,4) = 1;
Fill MyTable(3,5) = 0;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 1;
Fill MyTable(4,5) = 0;
*
Fill MyTable(5,1) = 1;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 0;
Fill MyTable(5,4) = 1;
Fill MyTable(5,5) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(1,3,4)*
      BasisCol(1,2,4)*
      null1(-1,1,0,0,0)*
      null2(1,0,-1,-1,1)
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
*{{{ ApartDetermineNullRelations_46 :
#include- ../src/formapart.h
*
#Define NumberOfRows "8"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = -1;
Fill MyTable(4,3) = 0;
*
Fill MyTable(5,1) = 2;
Fill MyTable(5,2) = 1;
Fill MyTable(5,3) = 0;
*
Fill MyTable(6,1) = 1;
Fill MyTable(6,2) = 2;
Fill MyTable(6,3) = 0;
*
Fill MyTable(7,1) = 3;
Fill MyTable(7,2) = 1;
Fill MyTable(7,3) = 0;
*
Fill MyTable(8,1) = 1;
Fill MyTable(8,2) = 3;
Fill MyTable(8,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(-1,-1,1,0,0,0,0,0)*
      null2(-1,1,0,1,0,0,0,0)*
      null3(-2,-1,0,0,1,0,0,0)*
      null4(-1,-2,0,0,0,1,0,0)*
      null5(-3,-1,0,0,0,0,1,0)*
      null6(-1,-3,0,0,0,0,0,1)
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
*{{{ ApartDetermineNullRelations_47 :
#include- ../src/formapart.h
*
#Define NumberOfRows "6"
#Define NumberOfColumns "5"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(1,5) = 0;
*
Fill MyTable(2,1) = 2;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
Fill MyTable(2,5) = 0;
*
Fill MyTable(3,1) = 3;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 0;
Fill MyTable(3,4) = 0;
Fill MyTable(3,5) = 0;
*
Fill MyTable(4,1) = 4;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 0;
Fill MyTable(4,5) = 0;
*
Fill MyTable(5,1) = 5;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 0;
Fill MyTable(5,4) = 0;
Fill MyTable(5,5) = 0;
*
Fill MyTable(6,1) = 6;
Fill MyTable(6,2) = 0;
Fill MyTable(6,3) = 0;
Fill MyTable(6,4) = 0;
Fill MyTable(6,5) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(1)*
      BasisRow(1)*
      BasisCol(1)*
      null1(2,-1,0,0,0,0)*
      null2(3,0,-1,0,0,0)*
      null3(4,0,0,-1,0,0)*
      null4(5,0,0,0,-1,0)*
      null5(6,0,0,0,0,-1)
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
*{{{ ApartDetermineNullRelations_48 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "4"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 2;
Fill MyTable(1,3) = 3;
Fill MyTable(1,4) = 0;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 3;
Fill MyTable(2,3) = 5;
Fill MyTable(2,4) = 0;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 5;
Fill MyTable(3,3) = 9;
Fill MyTable(3,4) = 0;
*
Fill MyTable(4,1) = 3;
Fill MyTable(4,2) = 10;
Fill MyTable(4,3) = 17;
Fill MyTable(4,4) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(2,-3,1,0)*
      null2(1,-4,0,1)
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
*{{{ ApartDetermineNullRelations_49 :
*
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 1;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 1;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 1;
*
Fill MyTable(5,1) = 1;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(1,2,4)*
      BasisCol(1,2,3)*
      null1(-1,-1,1,0,0)*
      null2(1,1,0,-1,-1)
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
*{{{ ApartDetermineNullRelations_50 :
#include- ../src/formapart.h
*
#Define NumberOfRows "6"
#Define NumberOfColumns "4"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = -1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = -1;
Fill MyTable(4,4) = 0;
*
Fill MyTable(5,1) = 0;
Fill MyTable(5,2) = 1;
Fill MyTable(5,3) = 1;
Fill MyTable(5,4) = 0;
*
Fill MyTable(6,1) = 0;
Fill MyTable(6,2) = 1;
Fill MyTable(6,3) = -1;
Fill MyTable(6,4) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(1,2,3)*
      BasisCol(1,2,3)*
      null1(-2,-2,2,2,0,0)*
      null2(0,2,-2,0,2,0)*
      null3(-2,0,2,0,0,2)
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
*{{{ ApartDetermineNullRelations_51 :
#include- ../src/formapart.h
*
#Define NumberOfRows "3"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4,t;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 0;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = t;
Fill MyTable(2,3) = 0;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = t^2;
Fill MyTable(3,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(t^2-t,1-t^2,t-1)
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
*{{{ ApartDetermineNullRelations_52 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4,a,b,c;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = a;
Fill MyTable(1,2) = b;
Fill MyTable(1,3) = c;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 1;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(1,2,3)*
      BasisCol(1,2,3)*
      null1(1,-a,-b,-c)
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
*{{{ ApartDetermineNullRelations_53 :
#include- ../src/formapart.h
*
#Define NumberOfRows "3"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
local F =
  + row(3,2,1)*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(3,2,1)*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(3,2)*
      BasisCol(1,2)*
      null1(-1,1,1)
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
*{{{ ApartDetermineNullRelations_54 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = -1;
Fill MyTable(4,3) = 0;
*
local F =
  + row(4,3,2,1)*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(4,3,2,1)*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(4,3)*
      BasisCol(1,2)*
      null1(1,-1,2,0)*
      null2(-1,-1,0,2)
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
*{{{ ApartDetermineNullRelations_55 :
#include- ../src/formapart.h
*
#Define NumberOfRows "3"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = 2;
Fill MyTable(3,2) = 3;
Fill MyTable(3,3) = 0;
*
local F =
  + row(3,1,2)*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(3,1,2)*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(3,1)*
      BasisCol(1,2)*
      null1(1,-2,-3)
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
*{{{ ApartDetermineNullRelations_56 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
*
Fill MyTable(2,1) = 2;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 0;
*
Fill MyTable(3,1) = 3;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 0;
*
Fill MyTable(4,1) = 4;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 0;
*
Fill MyTable(5,1) = 5;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 0;
*
local F =
  + row(5,4,3,2,1)*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(5,4,3,2,1)*col(1,...,`NumberOfColumns')*
      rank(1)*
      BasisRow(5)*
      BasisCol(1)*
      null1(4,-5,0,0,0)*
      null2(3,0,-5,0,0)*
      null3(2,0,0,-5,0)*
      null4(1,0,0,0,-5)
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
*{{{ ApartDetermineNullRelations_57 :
#include- ../src/formapart.h
*
#Define NumberOfRows "3"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4,s,t;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = s;
Fill MyTable(3,2) = t;
Fill MyTable(3,3) = 0;
*
local F =
  + row(3,2,1)*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(3,2,1)*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(3,2)*
      BasisCol(1,2)*
      null1(-1,t,s)
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
*{{{ ApartDetermineNullRelations_58 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = -1;
Fill MyTable(4,3) = 0;
*
local F =
  + row(2,4,1,3)*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(2,4,1,3)*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(2,4)*
      BasisCol(1,2)*
      null1(1,1,-1,0)*
      null2(2,1,0,-1)
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
*{{{ ApartDetermineNullRelations_59 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "4"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 1;
Fill MyTable(4,4) = 0;
*
local F =
  + row(4,1,2,3)*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(4,1,2,3)*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(4,1,2)*
      BasisCol(1,2,3)*
      null1(1,-1,-1,-1)
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
*{{{ ApartDetermineNullRelations_60 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = -1;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = -1;
Fill MyTable(4,3) = 2;
*
Fill MyTable(5,1) = 2;
Fill MyTable(5,2) = 1;
Fill MyTable(5,3) = -3;
*
local F =
  + row(5,3,1,4,2)*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(5,3,1,4,2)*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(5,3,1)*
      BasisCol(1,2,3)*
      null1(-1,-1,5,-2,0)*
      null2(-1,3,-1,0,-2)
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
*{{{ ApartDetermineNullRelations_61 :
#include- ../src/formapart.h
*
#Define NumberOfRows "6"
#Define NumberOfColumns "4"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 0;
*
Fill MyTable(5,1) = 1;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 1;
Fill MyTable(5,4) = 0;
*
Fill MyTable(6,1) = 0;
Fill MyTable(6,2) = 1;
Fill MyTable(6,3) = 1;
Fill MyTable(6,4) = 0;
*
local F =
  + row(5,2,6,1,4,3)*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(5,2,6,1,4,3)*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(5,2,6)*
      BasisCol(1,2,3)*
      null1(1,1,-1,-1,0,0)*
      null2(1,2,-1,0,-1,0)*
      null3(0,-1,1,0,0,-1)
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
*{{{ ApartDetermineNullRelations_62 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "5"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(1,5) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
Fill MyTable(2,5) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 0;
Fill MyTable(3,5) = 0;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 1;
Fill MyTable(4,5) = 0;
*
Fill MyTable(5,1) = 1;
Fill MyTable(5,2) = 1;
Fill MyTable(5,3) = 1;
Fill MyTable(5,4) = 1;
Fill MyTable(5,5) = 0;
*
local F =
  + row(5,2,4,1,3)*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(5,2,4,1,3)*col(1,...,`NumberOfColumns')*
      rank(4)*
      BasisRow(5,2,4,1)*
      BasisCol(1,2,3,4)*
      null1(-1,1,1,1,1)
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
*{{{ ApartDetermineNullRelations_63 :
#include- ../src/formapart.h
*
#Define NumberOfRows "7"
#Define NumberOfColumns "4"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 0;
*
Fill MyTable(5,1) = 1;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = -1;
Fill MyTable(5,4) = 0;
*
Fill MyTable(6,1) = 0;
Fill MyTable(6,2) = 1;
Fill MyTable(6,3) = 1;
Fill MyTable(6,4) = 0;
*
Fill MyTable(7,1) = 1;
Fill MyTable(7,2) = -1;
Fill MyTable(7,3) = 1;
Fill MyTable(7,4) = 0;
*
local F =
  + row(4,6,1,7,3,2,5)*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(4,6,1,7,3,2,5)*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(4,6,1)*
      BasisCol(1,2,3)*
      null1(-2,1,3,-1,0,0,0)*
      null2(-1,1,1,0,-1,0,0)*
      null3(1,0,-1,0,0,-1,0)*
      null4(1,-1,0,0,0,0,-1)
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
*{{{ ApartDetermineNullRelations_64 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "4"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
*
Fill MyTable(2,1) = 2;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
*
Fill MyTable(3,1) = 3;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 0;
Fill MyTable(3,4) = 0;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 0;
*
Fill MyTable(5,1) = 1;
Fill MyTable(5,2) = 1;
Fill MyTable(5,3) = 0;
Fill MyTable(5,4) = 0;
*
local F =
  + row(3,5,1,2,4)*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(3,5,1,2,4)*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(3,5)*
      BasisCol(1,2)*
      null1(-1,0,3,0,0)*
      null2(-2,0,0,3,0)*
      null3(1,-3,0,0,3)
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
*{{{ ApartDetermineNullRelations_65 :
#include- ../src/formapart.h
*
#Define NumberOfRows "8"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = -1;
Fill MyTable(4,3) = 0;
*
Fill MyTable(5,1) = 2;
Fill MyTable(5,2) = 1;
Fill MyTable(5,3) = 0;
*
Fill MyTable(6,1) = 1;
Fill MyTable(6,2) = 2;
Fill MyTable(6,3) = 0;
*
Fill MyTable(7,1) = 3;
Fill MyTable(7,2) = 1;
Fill MyTable(7,3) = 0;
*
Fill MyTable(8,1) = 1;
Fill MyTable(8,2) = 3;
Fill MyTable(8,3) = 0;
*
local F =
  + row(3,7,1,8,5,2,6,4)*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(3,7,1,8,5,2,6,4)*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(3,7)*
      BasisCol(1,2)*
      null1(-1,1,-2,0,0,0,0,0)*
      null2(8,-2,0,-2,0,0,0,0)*
      null3(1,1,0,0,-2,0,0,0)*
      null4(3,-1,0,0,0,-2,0,0)*
      null5(5,-1,0,0,0,0,-2,0)*
      null6(-4,2,0,0,0,0,0,-2)
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
*{{{ ApartDetermineNullRelations_66 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "4"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 2;
Fill MyTable(1,3) = 3;
Fill MyTable(1,4) = 0;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 3;
Fill MyTable(2,3) = 5;
Fill MyTable(2,4) = 0;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 5;
Fill MyTable(3,3) = 9;
Fill MyTable(3,4) = 0;
*
Fill MyTable(4,1) = 3;
Fill MyTable(4,2) = 10;
Fill MyTable(4,3) = 17;
Fill MyTable(4,4) = 0;
*
local F =
  + row(3,4,1,2)*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(3,4,1,2)*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(3,4)*
      BasisCol(1,2)*
      null1(-4,3,-5,0)*
      null2(-1,2,0,-5)
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
*{{{ ApartDetermineNullRelations_67 :
#include- ../src/formapart.h
*
#Define NumberOfRows "6"
#Define NumberOfColumns "4"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
Fill MyTable(3,4) = 0;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 1;
Fill MyTable(4,4) = 0;
*
Fill MyTable(5,1) = 0;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 0;
Fill MyTable(5,4) = 1;
*
Fill MyTable(6,1) = 0;
Fill MyTable(6,2) = 0;
Fill MyTable(6,3) = 1;
Fill MyTable(6,4) = 1;
*
local F =
  + row(6,3,4,1,2,5)*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(6,3,4,1,2,5)*col(1,...,`NumberOfColumns')*
      rank(4)*
      BasisRow(6,3,4,1)*
      BasisCol(1,2,3,4)*
      null1(0,1,0,-1,-1,0)*
      null2(1,0,-1,0,0,-1)
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
*{{{ ApartDetermineNullRelations_68 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4,a,b,c,d;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = a;
Fill MyTable(1,2) = b;
Fill MyTable(1,3) = 0;
*
Fill MyTable(2,1) = c;
Fill MyTable(2,2) = d;
Fill MyTable(2,3) = 0;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 0;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 0;
*
local F =
  + row(3,4,1,2)*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(3,4,1,2)*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(3,4)*
      BasisCol(1,2)*
      null1(-a,-b,1,0)*
      null2(-c,-d,0,1)
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
*{{{ ApartDetermineNullRelations_69 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4,a,b,c;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = a;
Fill MyTable(1,2) = b;
Fill MyTable(1,3) = c;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 1;
*
local F =
  + row(2,3,4,1)*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(2,3,4,1)*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(2,3,4)*
      BasisCol(1,2,3)*
      null1(a,b,c,-1)
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
*{{{ ApartDetermineNullRelations_70 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4,epsilon;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = 1 + epsilon;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = -1;
*
Fill MyTable(4,1) = 1 + epsilon^2;
Fill MyTable(4,2) = epsilon;
Fill MyTable(4,3) = -2;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(1,2,3)*
      BasisCol(1,2,3)*
      null1(-epsilon^2+2*epsilon+1,2-epsilon,-2,1)
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
*{{{ ApartDetermineNullRelations_71 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "3"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4,epsilon;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
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
Fill MyTable(3,1) = 2 - epsilon;
Fill MyTable(3,2) = 1 + epsilon;
Fill MyTable(3,3) = -1;
*
Fill MyTable(4,1) = 3 + 2*epsilon;
Fill MyTable(4,2) = -1 + epsilon;
Fill MyTable(4,3) = epsilon;
*
Fill MyTable(5,1) = 1 + epsilon^2;
Fill MyTable(5,2) = epsilon;
Fill MyTable(5,3) = -2 + epsilon;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*
      BasisRow(1,2,3)*
      BasisCol(1,2,3)*
      null1(epsilon^2-4*epsilon-3,-epsilon^2-2*epsilon+1,epsilon,1,0)*
      null2(3-4*epsilon,2-epsilon^2,epsilon-2,0,1)
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
*{{{ ApartDetermineNullRelations_72 :
#include- ../src/formapart.h
*
#Define NumberOfRows "3"
#Define NumberOfColumns "2"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
symbols n1,...,n4,epsilon;
cfunctions row,col,null,rank;
cfunctions aux1,...,aux8;
cfunctions BasisRow,BasisCol,NonBasisRow;
cfunctions det,SubRow;
cfunctions null1,...,null`NumberOfRows';
set NullSet : null1,...,null`NumberOfRows';
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 1;
*
Fill MyTable(3,1) = 1 + epsilon^2;
Fill MyTable(3,2) = epsilon;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineNullRelations(row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,...,aux5,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*
      BasisRow(1,2)*
      BasisCol(1,2)*
      null1(epsilon-epsilon^2-1,-epsilon,1)
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
