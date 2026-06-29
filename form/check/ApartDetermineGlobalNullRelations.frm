*{{{ ApartDetermineGlobalNullRelations_1 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "3"
#Define GtmpCount "0"
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
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) =-1;
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) =-1;
Fill MyTable(4,3) = 2;
Fill MyTable(5,1) = 2;
Fill MyTable(5,2) = 1;
Fill MyTable(5,3) =-3;
*
#call ApartDetermineGlobalNullRelations(NumberOfRows,NumberOfColumns,row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,aux2,aux3,aux4,aux5,gtmp,GtmpCount,NumRels,Rel,n1,n2,n3,n4)
*
.sort
*
local probeN = $NumRels - 2;
local probeSet = $Rel1 + $Rel2 - ( null(-3,-1,2,1,0) + null(1,2,-3,0,1) );
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probeN") =~ expr("0")
assert result("probeSet") =~ expr("0")
*}}}
*
*{{{ ApartDetermineGlobalNullRelations_2 :
#include- ../src/formapart.h
*
#Define NumberOfRows "3"
#Define NumberOfColumns "3"
#Define GtmpCount "0"
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
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
*
#call ApartDetermineGlobalNullRelations(NumberOfRows,NumberOfColumns,row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,aux2,aux3,aux4,aux5,gtmp,GtmpCount,NumRels,Rel,n1,n2,n3,n4)
*
.sort
*
local probeN = $NumRels - 1;
local probe1 = $Rel1 - null(-1,-1,1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probeN") =~ expr("0")
assert result("probe1") =~ expr("0")
*}}}
*
*{{{ ApartDetermineGlobalNullRelations_3 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "3"
#Define GtmpCount "0"
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
Fill MyTable(2,1) = 2;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 1;
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 1;
*
#call ApartDetermineGlobalNullRelations(NumberOfRows,NumberOfColumns,row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,aux2,aux3,aux4,aux5,gtmp,GtmpCount,NumRels,Rel,n1,n2,n3,n4)
*
.sort
*
local probeN = $NumRels - 1;
local probe1 = $Rel1 - null(1,0,1,-1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probeN") =~ expr("0")
assert result("probe1") =~ expr("0")
*}}}
*
*{{{ ApartDetermineGlobalNullRelations_4 :
#include- ../src/formapart.h
*
#Define NumberOfRows "3"
#Define NumberOfColumns "3"
#Define GtmpCount "0"
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
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 1;
*
#call ApartDetermineGlobalNullRelations(NumberOfRows,NumberOfColumns,row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,aux2,aux3,aux4,aux5,gtmp,GtmpCount,NumRels,Rel,n1,n2,n3,n4)
*
.sort
*
local probeN = $NumRels - 0;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probeN") =~ expr("0")
*}}}
*
*{{{ ApartDetermineGlobalNullRelations_5 :
#include- ../src/formapart.h
*
#Define NumberOfRows "3"
#Define NumberOfColumns "3"
#Define GtmpCount "0"
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
Fill MyTable(2,1) = 2;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 0;
Fill MyTable(3,1) = 3;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 0;
*
#call ApartDetermineGlobalNullRelations(NumberOfRows,NumberOfColumns,row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,aux2,aux3,aux4,aux5,gtmp,GtmpCount,NumRels,Rel,n1,n2,n3,n4)
*
.sort
*
local probeN = $NumRels - 2;
local probeSet = $Rel1 + $Rel2 - ( null(2,-1,0) + null(3,0,-1) );
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probeN") =~ expr("0")
assert result("probeSet") =~ expr("0")
*}}}
*
*{{{ ApartDetermineGlobalNullRelations_6 :
#include- ../src/formapart.h
*
#Define NumberOfRows "6"
#Define NumberOfColumns "3"
#Define GtmpCount "0"
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
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = -1;
Fill MyTable(4,3) = 0;
Fill MyTable(5,1) = 2;
Fill MyTable(5,2) = 1;
Fill MyTable(5,3) = 0;
Fill MyTable(6,1) = 1;
Fill MyTable(6,2) = 3;
Fill MyTable(6,3) = 0;
*
#call ApartDetermineGlobalNullRelations(NumberOfRows,NumberOfColumns,row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,aux2,aux3,aux4,aux5,gtmp,GtmpCount,NumRels,Rel,n1,n2,n3,n4)
*
.sort
*
local probeN = $NumRels - 4;
local probeSet = $Rel1 + $Rel2 + $Rel3 + $Rel4
  - ( null(-1,-1,1,0,0,0) + null(-1,1,0,1,0,0)
    + null(-2,-1,0,0,1,0) + null(-1,-3,0,0,0,1) );
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probeN") =~ expr("0")
assert result("probeSet") =~ expr("0")
*}}}
*
*{{{ ApartDetermineGlobalNullRelations_7 :
#include- ../src/formapart.h
*
#Define NumberOfRows "6"
#Define NumberOfColumns "4"
#Define GtmpCount "0"
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
Fill MyTable(4,3) = 0;
Fill MyTable(4,4) = 0;
Fill MyTable(5,1) = 1;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 1;
Fill MyTable(5,4) = 0;
Fill MyTable(6,1) = 0;
Fill MyTable(6,2) = 1;
Fill MyTable(6,3) = 1;
Fill MyTable(6,4) = 0;
*
#call ApartDetermineGlobalNullRelations(NumberOfRows,NumberOfColumns,row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,aux2,aux3,aux4,aux5,gtmp,GtmpCount,NumRels,Rel,n1,n2,n3,n4)
*
.sort
*
local probeN = $NumRels - 3;
local probeSet = $Rel1 + $Rel2 + $Rel3
  - ( null(1,1,0,-1,0,0) + null(1,0,1,0,-1,0) + null(0,1,1,0,0,-1) );
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probeN") =~ expr("0")
assert result("probeSet") =~ expr("0")
*}}}
*
*{{{ ApartDetermineGlobalNullRelations_8 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "5"
#Define GtmpCount "0"
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
Fill MyTable(5,5) = 0;
*
#call ApartDetermineGlobalNullRelations(NumberOfRows,NumberOfColumns,row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,aux2,aux3,aux4,aux5,gtmp,GtmpCount,NumRels,Rel,n1,n2,n3,n4)
*
.sort
*
local probeN = $NumRels - 1;
local probe1 = $Rel1 - null(-1,-1,-1,-1,1);
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probeN") =~ expr("0")
assert result("probe1") =~ expr("0")
*}}}
*
*{{{ ApartDetermineGlobalNullRelations_9 :
#include- ../src/formapart.h
*
#Define NumberOfRows "3"
#Define NumberOfColumns "3"
#Define GtmpCount "0"
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
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 1;
Fill MyTable(3,1) = 1;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 1;
*
#call ApartDetermineGlobalNullRelations(NumberOfRows,NumberOfColumns,row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,aux2,aux3,aux4,aux5,gtmp,GtmpCount,NumRels,Rel,n1,n2,n3,n4)
*
.sort
*
local probeN = $NumRels - 0;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probeN") =~ expr("0")
*}}}
*
*{{{ ApartDetermineGlobalNullRelations_10 :
#include- ../src/formapart.h
*
#Define NumberOfRows "5"
#Define NumberOfColumns "3"
#Define GtmpCount "0"
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
Fill MyTable(2,1) = 2;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 2;
Fill MyTable(3,1) = 0;
Fill MyTable(3,2) = 1;
Fill MyTable(3,3) = 0;
Fill MyTable(4,1) = 1;
Fill MyTable(4,2) = 1;
Fill MyTable(4,3) = 1;
Fill MyTable(5,1) = 3;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 3;
*
#call ApartDetermineGlobalNullRelations(NumberOfRows,NumberOfColumns,row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,aux2,aux3,aux4,aux5,gtmp,GtmpCount,NumRels,Rel,n1,n2,n3,n4)
*
.sort
*
local probeN = $NumRels - 3;
local probeSet = $Rel1 + $Rel2 + $Rel3
  - ( null(2,-1,0,0,0) + null(-1,0,-1,1,0) + null(-3,0,0,0,1) );
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probeN") =~ expr("0")
assert result("probeSet") =~ expr("0")
*}}}
*
*{{{ ApartDetermineGlobalNullRelations_11 :
#include- ../src/formapart.h
*
#Define NumberOfRows "4"
#Define NumberOfColumns "3"
#Define GtmpCount "0"
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
Fill MyTable(2,1) = 0;
Fill MyTable(2,2) = 1;
Fill MyTable(2,3) = 0;
Fill MyTable(3,1) = s;
Fill MyTable(3,2) = t;
Fill MyTable(3,3) = 0;
Fill MyTable(4,1) = u;
Fill MyTable(4,2) = v;
Fill MyTable(4,3) = 0;
*
#call ApartDetermineGlobalNullRelations(NumberOfRows,NumberOfColumns,row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,aux2,aux3,aux4,aux5,gtmp,GtmpCount,NumRels,Rel,n1,n2,n3,n4)
*
.sort
*
local probeN = $NumRels - 2;
local probeSet = $Rel1 + $Rel2 - ( null(-s,-t,1,0) + null(-u,-v,0,1) );
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probeN") =~ expr("0")
assert result("probeSet") =~ expr("0")
*}}}
*
*{{{ ApartDetermineGlobalNullRelations_12 :
#include- ../src/formapart.h
*
#Define NumberOfRows "6"
#Define NumberOfColumns "3"
#Define GtmpCount "0"
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
Fill MyTable(2,1) = 2;
Fill MyTable(2,2) = 0;
Fill MyTable(2,3) = 0;
Fill MyTable(3,1) = 3;
Fill MyTable(3,2) = 0;
Fill MyTable(3,3) = 0;
Fill MyTable(4,1) = 4;
Fill MyTable(4,2) = 0;
Fill MyTable(4,3) = 0;
Fill MyTable(5,1) = 5;
Fill MyTable(5,2) = 0;
Fill MyTable(5,3) = 0;
Fill MyTable(6,1) = 6;
Fill MyTable(6,2) = 0;
Fill MyTable(6,3) = 0;
*
#call ApartDetermineGlobalNullRelations(NumberOfRows,NumberOfColumns,row,col,MyTable,rank,null,BasisRow,BasisCol,NonBasisRow,SubRow,det,NullSet,aux1,aux2,aux3,aux4,aux5,gtmp,GtmpCount,NumRels,Rel,n1,n2,n3,n4)
*
.sort
*
local probeN = $NumRels - 5;
local probeSet = $Rel1 + $Rel2 + $Rel3 + $Rel4 + $Rel5
  - ( null(2,-1,0,0,0,0) + null(3,0,-1,0,0,0) + null(4,0,0,-1,0,0)
    + null(5,0,0,0,-1,0) + null(6,0,0,0,0,-1) );
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probeN") =~ expr("0")
assert result("probeSet") =~ expr("0")
*}}}
