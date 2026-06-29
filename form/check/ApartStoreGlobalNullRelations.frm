*{{{ ApartStoreGlobalNullRelations_1 :
#include- ../src/formapart.h
*
#Define stExpr "st"
#Define GtmpCount "0"
*
cfunctions b,null;
ctable,sparse,NullTbl(3);
*
#$NumRels = 2;
#$Rel1 = null(1,0,0);
#$Rel2 = null(0,1,1);
*
#call ApartStoreGlobalNullRelations(stExpr,GtmpCount,NumRels,Rel,3,b,NullTbl)
*
.sort
*
local diff = NullTbl(1,1,1) - null(1,0,0)*null(0,1,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartStoreGlobalNullRelations_2 :
#include- ../src/formapart.h
*
#Define stExpr "st"
#Define GtmpCount "0"
*
cfunctions b,null;
ctable,sparse,NullTbl(3);
*
#$NumRels = 1;
#$Rel1 = null(1,1,1);
*
#call ApartStoreGlobalNullRelations(stExpr,GtmpCount,NumRels,Rel,3,b,NullTbl)
*
.sort
*
local diff = NullTbl(1,1,1) - null(1,1,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartStoreGlobalNullRelations_3 :
#include- ../src/formapart.h
*
#Define stExpr "st"
#Define GtmpCount "0"
*
cfunctions b,null;
ctable,sparse,NullTbl(3);
*
#$NumRels = 0;
*
#call ApartStoreGlobalNullRelations(stExpr,GtmpCount,NumRels,Rel,3,b,NullTbl)
*
.sort
*
local diff = NullTbl(1,1,1) - 1;
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartStoreGlobalNullRelations_4 :
#include- ../src/formapart.h
*
#Define stExpr "st"
#Define GtmpCount "0"
*
cfunctions b,null;
ctable,sparse,NullTbl(4);
*
#$NumRels = 2;
#$Rel1 = null(1,0,0,1);
#$Rel2 = null(0,1,1,0);
*
#call ApartStoreGlobalNullRelations(stExpr,GtmpCount,NumRels,Rel,4,b,NullTbl)
*
.sort
*
local diff = NullTbl(1,1,1,1) - null(1,0,0,1)*null(0,1,1,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartStoreGlobalNullRelations_5 :
#include- ../src/formapart.h
*
#Define stExpr "st"
#Define GtmpCount "0"
*
cfunctions b,null;
ctable,sparse,NullTbl(2);
*
#$NumRels = 1;
#$Rel1 = null(1,1);
*
#call ApartStoreGlobalNullRelations(stExpr,GtmpCount,NumRels,Rel,2,b,NullTbl)
*
.sort
*
local diff = NullTbl(1,1) - null(1,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartStoreGlobalNullRelations_6 :
#include- ../src/formapart.h
*
#Define stExpr "st"
#Define GtmpCount "0"
*
cfunctions b,null;
ctable,sparse,NullTbl(5);
*
#$NumRels = 2;
#$Rel1 = null(1,0,0,0,1);
#$Rel2 = null(0,1,1,1,0);
*
#call ApartStoreGlobalNullRelations(stExpr,GtmpCount,NumRels,Rel,5,b,NullTbl)
*
.sort
*
local diff = NullTbl(1,1,1,1,1) - null(1,0,0,0,1)*null(0,1,1,1,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartStoreGlobalNullRelations_7 :
#include- ../src/formapart.h
*
#Define stExpr "st"
#Define GtmpCount "0"
*
cfunctions b,null;
ctable,sparse,NullTbl(3);
*
#$NumRels = 3;
#$Rel1 = null(1,0,0);
#$Rel2 = null(0,1,0);
#$Rel3 = null(0,0,1);
*
#call ApartStoreGlobalNullRelations(stExpr,GtmpCount,NumRels,Rel,3,b,NullTbl)
*
.sort
*
local diff = NullTbl(1,1,1) - null(1,0,0)*null(0,1,0)*null(0,0,1);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartStoreGlobalNullRelations_8 :
#include- ../src/formapart.h
*
#Define stExpr "st"
#Define GtmpCount "0"
*
cfunctions b,null;
symbol ep;
ctable,sparse,NullTbl(3);
*
#$NumRels = 1;
#$Rel1 = null(ep,1,0);
*
#call ApartStoreGlobalNullRelations(stExpr,GtmpCount,NumRels,Rel,3,b,NullTbl)
*
.sort
*
local diff = NullTbl(1,1,1) - null(ep,1,0);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartStoreGlobalNullRelations_9 :
#include- ../src/formapart.h
*
#Define stExpr "st"
#Define GtmpCount "0"
*
cfunctions b,null;
ctable,sparse,NullTbl(3);
*
#$NumRels = 1;
#$Rel1 = null(-1,2,-3);
*
#call ApartStoreGlobalNullRelations(stExpr,GtmpCount,NumRels,Rel,3,b,NullTbl)
*
.sort
*
local diff = NullTbl(1,1,1) - null(-1,2,-3);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartStoreGlobalNullRelations_10 :
#include- ../src/formapart.h
*
#Define stExpr "st"
#Define GtmpCount "0"
*
cfunctions b,null;
ctable,sparse,NullTbl(1);
*
#$NumRels = 1;
#$Rel1 = null(5);
*
#call ApartStoreGlobalNullRelations(stExpr,GtmpCount,NumRels,Rel,1,b,NullTbl)
*
.sort
*
local diff = NullTbl(1) - null(5);
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartStoreGlobalNullRelations_11 :
*
*
*
#include- ../src/formapart.h
*
#Define stExpr "st"
#Define GtmpCount "0"
*
cfunctions b,null;
ctable,sparse,NullTbl(1);
*
#$NumRels = 0;
*
#call ApartStoreGlobalNullRelations(stExpr,GtmpCount,NumRels,Rel,0,b,NullTbl)
*
.sort
*
print;
.end
assert succeeded?
*}}}
