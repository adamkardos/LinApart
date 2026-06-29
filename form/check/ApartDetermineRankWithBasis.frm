*{{{ ApartDetermineRankWithBasis_1 :
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
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 2;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 1;
Fill MyTable(1,5) = 3;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 1;
Fill MyTable(2,4) = 1;
Fill MyTable(2,5) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 0;
Fill MyTable(3,4) = 0;
Fill MyTable(3,5) = 0;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 2;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 1;
Fill MyTable(4,5) = 3;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*sR(1,2)*sC(1,3)
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
*{{{ ApartDetermineRankWithBasis_2 :
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
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
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
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*sR(1,2)*sC(1,2)
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
*{{{ ApartDetermineRankWithBasis_3 :
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
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
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
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*sR(1,2,3)*sC(1,2,3)
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
*{{{ ApartDetermineRankWithBasis_4 :
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
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
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
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(1)*sR(1)*sC(1)
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
*{{{ ApartDetermineRankWithBasis_5 :
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
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
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
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*sR(1,2,3)*sC(1,2,3)
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
*{{{ ApartDetermineRankWithBasis_6 :
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
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
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
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*sR(1,2,3)*sC(1,2,3)
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
*{{{ ApartDetermineRankWithBasis_7 :
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
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
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
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*sR(1,2,3)*sC(1,2,3)
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
*{{{ ApartDetermineRankWithBasis_8 :
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
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 0;
Fill MyTable(1,2) = 1;
Fill MyTable(1,3) = 1;
Fill MyTable(1,4) = 0;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 1;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = -2;
*
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 1;
Fill MyTable(4,4) = -1;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(4)*sR(1,2,3,4)*sC(1,2,3,4)
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
*{{{ ApartDetermineRankWithBasis_9 :
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
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
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
Fill MyTable(3,3) = 5;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*sR(1,2,3)*sC(1,2,3)
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
*{{{ ApartDetermineRankWithBasis_10 :
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
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
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
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*sR(1,3)*sC(1,2)
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
*{{{ ApartDetermineRankWithBasis_11 :
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
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
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
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = -1;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*sR(1,2)*sC(1,2)
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
*{{{ ApartDetermineRankWithBasis_12 :
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
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
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
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(4)*sR(1,2,3,4)*sC(1,2,3,4)
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
*{{{ ApartDetermineRankWithBasis_13 :
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
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(1,5) = 1;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
Fill MyTable(2,5) = 2;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
Fill MyTable(3,4) = 0;
Fill MyTable(3,5) = 3;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 1;
Fill MyTable(4,5) = 4;
*
Fill MyTable(5,1) = 2;
Fill MyTable(5,2) = 3;
Fill MyTable(5,3) = 1;
Fill MyTable(5,4) = 4;
Fill MyTable(5,5) = 27;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(4)*sR(1,2,3,4)*sC(1,2,3,4)
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
*{{{ ApartDetermineRankWithBasis_14 :
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
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
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
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
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
Fill MyTable(5,3) = 1;
Fill MyTable(5,4) = -1;
Fill MyTable(5,5) = 0;
*
Fill MyTable(6,1) = 0;
Fill MyTable(6,2) = 0;
Fill MyTable(6,3) = 1;
Fill MyTable(6,4) = 0;
Fill MyTable(6,5) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(4)*sR(1,2,4,5)*sC(1,2,3,4)
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
*{{{ ApartDetermineRankWithBasis_15 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "6"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
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
Fill MyTable(3,1) = 2;
Fill MyTable(3,2) = 3;
Fill MyTable(3,3) = 0;
Fill MyTable(3,4) = 0;
Fill MyTable(3,5) = 0;
Fill MyTable(3,6) = 0;
*
Fill MyTable(4,1) = 4;
Fill MyTable(4,2) = 5;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 0;
Fill MyTable(4,5) = 0;
Fill MyTable(4,6) = 0;
*
Fill MyTable(5,1) = 6;
Fill MyTable(5,2) = 7;
Fill MyTable(5,3) = 0;
Fill MyTable(5,4) = 0;
Fill MyTable(5,5) = 0;
Fill MyTable(5,6) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*sR(1,2)*sC(1,2)
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
*{{{ ApartDetermineRankWithBasis_16 :
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
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
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
Fill MyTable(6,1) = 0;
Fill MyTable(6,2) = 1;
Fill MyTable(6,3) = -1;
Fill MyTable(6,4) = 0;
*
Fill MyTable(7,1) = 1;
Fill MyTable(7,2) = 1;
Fill MyTable(7,3) = 1;
Fill MyTable(7,4) = 1;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(4)*sR(1,2,3,7)*sC(1,2,3,4)
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
*{{{ ApartDetermineRankWithBasis_17 :
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
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 0;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
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
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*sR(2,3,4)*sC(1,2,3)
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
*{{{ ApartDetermineRankWithBasis_18 :
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
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 0;
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
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*sR(1,3)*sC(1,2)
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
*{{{ ApartDetermineRankWithBasis_19 :
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
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 2;
Fill MyTable(1,3) = 3;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 2;
Fill MyTable(2,3) = 3;
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
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*sR(1,3,4)*sC(1,2,3)
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
*{{{ ApartDetermineRankWithBasis_20 :
#include- ../src/formapart.h
*
#Define NumberOfRows "8"
#Define NumberOfColumns "5"
#if (`NumberOfRows' > `NumberOfColumns')
#Define MaxRank "`NumberOfColumns'"
#else
#Define MaxRank "`NumberOfRows'"
#endif
*
cfunction det;
*
symbols n1,n2,n3,n4;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = 0;
Fill MyTable(1,4) = 0;
Fill MyTable(1,5) = 0;
*
Fill MyTable(2,1) = 1;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 0;
Fill MyTable(2,4) = 0;
Fill MyTable(2,5) = 0;
*
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
Fill MyTable(3,4) = 0;
Fill MyTable(3,5) = 0;
*
Fill MyTable(4,1) = 0;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 0;
Fill MyTable(4,5) = 0;
*
Fill MyTable(5,1) = 0;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 1;
Fill MyTable(5,4) = 0;
Fill MyTable(5,5) = 0;
*
Fill MyTable(6,1) = 0;
Fill MyTable(6,2) = 0;
Fill MyTable(6,3) = 0;
Fill MyTable(6,4) = 1;
Fill MyTable(6,5) = 0;
*
Fill MyTable(7,1) = 1;
Fill MyTable(7,2) = 1;
Fill MyTable(7,3) = 1;
Fill MyTable(7,4) = 1;
Fill MyTable(7,5) = 0;
*
Fill MyTable(8,1) = 0;
Fill MyTable(8,2) = 0;
Fill MyTable(8,3) = 0;
Fill MyTable(8,4) = 0;
Fill MyTable(8,5) = 1;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(5)*sR(1,3,5,6,8)*sC(1,2,3,4,5)
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
*{{{ ApartDetermineRankWithBasis_21 :
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
cfunction det;
*
symbols n1,n2,n3,n4,s,t;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
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
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*sR(1,2)*sC(1,2)
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
*{{{ ApartDetermineRankWithBasis_22 :
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
cfunction det;
*
symbols n1,n2,n3,n4,a,b,c;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = 1;
Fill MyTable(1,2) = 0;
Fill MyTable(1,3) = a;
*
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = b;
*
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = c;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*sR(1,2,3)*sC(1,2,3)
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
*{{{ ApartDetermineRankWithBasis_23 :
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
cfunction det;
*
symbols n1,n2,n3,n4,m;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
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
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*sR(1,2,4)*sC(1,2,3)
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
*{{{ ApartDetermineRankWithBasis_24 :
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
cfunction det;
*
symbols n1,n2,n3,n4,a,b,c,d,e,f,g,h,i;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
ctable,sparse,MyTable(2);
*
Fill MyTable(1,1) = a;
Fill MyTable(1,2) = b;
Fill MyTable(1,3) = c;
*
Fill MyTable(2,1) = d;
Fill MyTable(2,2) = e;
Fill MyTable(2,3) = f;
*
Fill MyTable(3,1) = g;
Fill MyTable(3,2) = h;
Fill MyTable(3,3) = i;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(3)*sR(1,2,3)*sC(1,2,3)
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
*{{{ ApartDetermineRankWithBasis_25 :
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
cfunction det;
*
symbols n1,n2,n3,n4,s;
cfunctions row,col,sR,sC,rank,aux,availR,availC;
cfunctions tryR,tryC;
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
Fill MyTable(4,1) = s;
Fill MyTable(4,2) = s;
Fill MyTable(4,3) = 0;
*
Fill MyTable(5,1) = s+1;
Fill MyTable(5,2) = s+1;
Fill MyTable(5,3) = 0;
*
local F =
  + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')
;
*
.sort
*
#call ApartDetermineRankWithBasis(row,col,MyTable,sR,sC,availR,availC,tryR,tryC,det,rank,aux,`MaxRank',n1,...,n4)
*
.sort
*
local diff =
  F
  -
  (
    + row(1,...,`NumberOfRows')*col(1,...,`NumberOfColumns')*
      rank(2)*sR(1,2)*sC(1,2)
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
