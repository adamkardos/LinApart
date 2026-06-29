*
*
*
*{{{ ApartBuildGlobalDenominatorOrder_1 :
#include- ../src/formapart.h
*
#Define NumDenominators "4"
#Redefine APorderDescending "0"
*
symbols n,n1,...,n6;
cfunction null;
*
#$NumRels = 4;
#$Rel1 = null(1,1,0,0);
#$Rel2 = null(0,1,1,0);
#$Rel3 = null(0,1,0,1);
#$Rel4 = null(0,0,1,1);
*
#call ApartBuildGlobalDenominatorOrder(null,APpermTbl,NumRels,Rel,NumDenominators,n)
*
.sort
*
local probe1 = APpermTbl(1) - 1;
local probe2 = APpermTbl(2) - 3;
local probe3 = APpermTbl(3) - 4;
local probe4 = APpermTbl(4) - 2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probe1") =~ expr("0")
assert result("probe2") =~ expr("0")
assert result("probe3") =~ expr("0")
assert result("probe4") =~ expr("0")
*}}}
*
*{{{ ApartBuildGlobalDenominatorOrder_2 :
#include- ../src/formapart.h
*
#Define NumDenominators "4"
#Redefine APorderDescending "1"
*
symbols n,n1,...,n6;
cfunction null;
*
#$NumRels = 4;
#$Rel1 = null(1,1,0,0);
#$Rel2 = null(0,1,1,0);
#$Rel3 = null(0,1,0,1);
#$Rel4 = null(0,0,1,1);
*
#call ApartBuildGlobalDenominatorOrder(null,APpermTbl,NumRels,Rel,NumDenominators,n)
*
.sort
*
local probe1 = APpermTbl(1) - 2;
local probe2 = APpermTbl(2) - 3;
local probe3 = APpermTbl(3) - 4;
local probe4 = APpermTbl(4) - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probe1") =~ expr("0")
assert result("probe2") =~ expr("0")
assert result("probe3") =~ expr("0")
assert result("probe4") =~ expr("0")
*}}}
*
*{{{ ApartBuildGlobalDenominatorOrder_3 :
#include- ../src/formapart.h
*
#Define NumDenominators "4"
#Redefine APorderDescending "0"
*
symbols n,n1,...,n6;
cfunction null;
*
#$NumRels = 2;
#$Rel1 = null(1,0,1,0);
#$Rel2 = null(0,0,1,1);
*
#call ApartBuildGlobalDenominatorOrder(null,APpermTbl,NumRels,Rel,NumDenominators,n)
*
.sort
*
local probe1 = APpermTbl(1) - 2;
local probe2 = APpermTbl(2) - 1;
local probe3 = APpermTbl(3) - 4;
local probe4 = APpermTbl(4) - 3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probe1") =~ expr("0")
assert result("probe2") =~ expr("0")
assert result("probe3") =~ expr("0")
assert result("probe4") =~ expr("0")
*}}}
*
*{{{ ApartBuildGlobalDenominatorOrder_4 :
#include- ../src/formapart.h
*
#Define NumDenominators "4"
#Redefine APorderDescending "0"
*
symbols n,n1,...,n6;
cfunction null;
*
#$NumRels = 0;
*
#call ApartBuildGlobalDenominatorOrder(null,APpermTbl,NumRels,Rel,NumDenominators,n)
*
.sort
*
local probe1 = APpermTbl(1) - 1;
local probe2 = APpermTbl(2) - 2;
local probe3 = APpermTbl(3) - 3;
local probe4 = APpermTbl(4) - 4;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probe1") =~ expr("0")
assert result("probe2") =~ expr("0")
assert result("probe3") =~ expr("0")
assert result("probe4") =~ expr("0")
*}}}
*
*{{{ ApartBuildGlobalDenominatorOrder_5 :
#include- ../src/formapart.h
*
#Define NumDenominators "5"
#Redefine APorderDescending "0"
*
symbols n,n1,...,n6;
cfunction null;
*
#$NumRels = 4;
#$Rel1 = null(1,1,0,0,0);
#$Rel2 = null(1,0,1,0,0);
#$Rel3 = null(1,0,0,1,0);
#$Rel4 = null(0,1,1,1,1);
*
#call ApartBuildGlobalDenominatorOrder(null,APpermTbl,NumRels,Rel,NumDenominators,n)
*
.sort
*
local probe1 = APpermTbl(1) - 5;
local probe2 = APpermTbl(2) - 2;
local probe3 = APpermTbl(3) - 3;
local probe4 = APpermTbl(4) - 4;
local probe5 = APpermTbl(5) - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probe1") =~ expr("0")
assert result("probe2") =~ expr("0")
assert result("probe3") =~ expr("0")
assert result("probe4") =~ expr("0")
assert result("probe5") =~ expr("0")
*}}}
*
*{{{ ApartBuildGlobalDenominatorOrder_6 :
#include- ../src/formapart.h
*
#Define NumDenominators "4"
#Redefine APorderDescending "0"
*
symbols n,n1,...,n9;
cfunction null;
*
#$NumRels = 4;
#$Rel1 = null(1,1,0,0);
#$Rel2 = null(0,0,1,1);
#$Rel3 = null(1,0,1,0);
#$Rel4 = null(0,1,0,1);
*
#call ApartBuildGlobalDenominatorOrder(null,APpermTbl,NumRels,Rel,NumDenominators,n)
*
.sort
*
local probe1 = APpermTbl(1) - 1;
local probe2 = APpermTbl(2) - 2;
local probe3 = APpermTbl(3) - 3;
local probe4 = APpermTbl(4) - 4;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probe1") =~ expr("0")
assert result("probe2") =~ expr("0")
assert result("probe3") =~ expr("0")
assert result("probe4") =~ expr("0")
*}}}
*
*{{{ ApartBuildGlobalDenominatorOrder_7 :
#include- ../src/formapart.h
*
#Define NumDenominators "4"
#Redefine APorderDescending "1"
*
symbols n,n1,...,n9;
cfunction null;
*
#$NumRels = 4;
#$Rel1 = null(1,1,1,1);
#$Rel2 = null(0,1,1,1);
#$Rel3 = null(0,0,1,1);
#$Rel4 = null(0,0,0,1);
*
#call ApartBuildGlobalDenominatorOrder(null,APpermTbl,NumRels,Rel,NumDenominators,n)
*
.sort
*
local probe1 = APpermTbl(1) - 4;
local probe2 = APpermTbl(2) - 3;
local probe3 = APpermTbl(3) - 2;
local probe4 = APpermTbl(4) - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probe1") =~ expr("0")
assert result("probe2") =~ expr("0")
assert result("probe3") =~ expr("0")
assert result("probe4") =~ expr("0")
*}}}
*
*{{{ ApartBuildGlobalDenominatorOrder_8 :
#include- ../src/formapart.h
*
#Define NumDenominators "8"
#Redefine APorderDescending "0"
*
symbols n,n1,...,n9;
cfunction null;
*
#$NumRels = 3;
#$Rel1 = null(1,1,1,1,0,0,0,0);
#$Rel2 = null(1,0,0,0,1,0,0,0);
#$Rel3 = null(1,0,0,0,0,1,0,0);
*
#call ApartBuildGlobalDenominatorOrder(null,APpermTbl,NumRels,Rel,NumDenominators,n)
*
.sort
*
local probe1 = APpermTbl(1) - 7;
local probe2 = APpermTbl(2) - 8;
local probe3 = APpermTbl(3) - 2;
local probe4 = APpermTbl(4) - 3;
local probe5 = APpermTbl(5) - 4;
local probe6 = APpermTbl(6) - 5;
local probe7 = APpermTbl(7) - 6;
local probe8 = APpermTbl(8) - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probe1") =~ expr("0")
assert result("probe2") =~ expr("0")
assert result("probe3") =~ expr("0")
assert result("probe4") =~ expr("0")
assert result("probe5") =~ expr("0")
assert result("probe6") =~ expr("0")
assert result("probe7") =~ expr("0")
assert result("probe8") =~ expr("0")
*}}}
*
*{{{ ApartBuildGlobalDenominatorOrder_9 :
#include- ../src/formapart.h
*
#Define NumDenominators "4"
#Redefine APorderDescending "1"
*
symbols n,n1,...,n9;
cfunction null;
*
#$NumRels = 2;
#$Rel1 = null(1,0,1,0);
#$Rel2 = null(0,0,1,1);
*
#call ApartBuildGlobalDenominatorOrder(null,APpermTbl,NumRels,Rel,NumDenominators,n)
*
.sort
*
local probe1 = APpermTbl(1) - 3;
local probe2 = APpermTbl(2) - 1;
local probe3 = APpermTbl(3) - 4;
local probe4 = APpermTbl(4) - 2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probe1") =~ expr("0")
assert result("probe2") =~ expr("0")
assert result("probe3") =~ expr("0")
assert result("probe4") =~ expr("0")
*}}}
*
*{{{ ApartBuildGlobalDenominatorOrder_10 :
#include- ../src/formapart.h
*
#Define NumDenominators "4"
#Redefine APorderDescending "0"
*
symbols n,n1,...,n9,s,t;
cfunction null;
*
#$NumRels = 2;
#$Rel1 = null(s,1,0,0);
#$Rel2 = null(t,0,1,0);
*
#call ApartBuildGlobalDenominatorOrder(null,APpermTbl,NumRels,Rel,NumDenominators,n)
*
.sort
*
local probe1 = APpermTbl(1) - 4;
local probe2 = APpermTbl(2) - 2;
local probe3 = APpermTbl(3) - 3;
local probe4 = APpermTbl(4) - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probe1") =~ expr("0")
assert result("probe2") =~ expr("0")
assert result("probe3") =~ expr("0")
assert result("probe4") =~ expr("0")
*}}}
*
*{{{ ApartBuildGlobalDenominatorOrder_11 :
#include- ../src/formapart.h
*
#Define NumDenominators "3"
#Redefine APorderDescending "0"
*
symbols n,n1,...,n9,a,b,c,d;
cfunction null;
*
#$NumRels = 2;
#$Rel1 = null(b*c-a*d,1,0);
#$Rel2 = null(a-b,0,1);
*
#call ApartBuildGlobalDenominatorOrder(null,APpermTbl,NumRels,Rel,NumDenominators,n)
*
.sort
*
local probe1 = APpermTbl(1) - 2;
local probe2 = APpermTbl(2) - 3;
local probe3 = APpermTbl(3) - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probe1") =~ expr("0")
assert result("probe2") =~ expr("0")
assert result("probe3") =~ expr("0")
*}}}
*
*{{{ ApartBuildGlobalDenominatorOrder_12 :
#include- ../src/formapart.h
*
#Define NumDenominators "6"
#Redefine APorderDescending "0"
*
symbols n,n1,...,n9;
cfunction null;
*
#$NumRels = 3;
#$Rel1 = null(1,1,1,0,1,1);
#$Rel2 = null(1,1,0,1,1,1);
#$Rel3 = null(0,0,0,0,1,1);
*
#call ApartBuildGlobalDenominatorOrder(null,APpermTbl,NumRels,Rel,NumDenominators,n)
*
.sort
*
local probe1 = APpermTbl(1) - 3;
local probe2 = APpermTbl(2) - 4;
local probe3 = APpermTbl(3) - 1;
local probe4 = APpermTbl(4) - 2;
local probe5 = APpermTbl(5) - 5;
local probe6 = APpermTbl(6) - 6;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probe1") =~ expr("0")
assert result("probe2") =~ expr("0")
assert result("probe3") =~ expr("0")
assert result("probe4") =~ expr("0")
assert result("probe5") =~ expr("0")
assert result("probe6") =~ expr("0")
*}}}
*
*{{{ ApartBuildGlobalDenominatorOrder_13 :
#include- ../src/formapart.h
*
#Define NumDenominators "5"
#Redefine APorderDescending "0"
*
symbols n,n1,...,n9;
cfunction null;
*
#$NumRels = 5;
#$Rel1 = null(1,1,0,0,0);
#$Rel2 = null(1,0,1,0,0);
#$Rel3 = null(1,0,0,1,0);
#$Rel4 = null(1,0,0,0,1);
#$Rel5 = null(1,1,1,1,1);
*
#call ApartBuildGlobalDenominatorOrder(null,APpermTbl,NumRels,Rel,NumDenominators,n)
*
.sort
*
local probe1 = APpermTbl(1) - 2;
local probe2 = APpermTbl(2) - 3;
local probe3 = APpermTbl(3) - 4;
local probe4 = APpermTbl(4) - 5;
local probe5 = APpermTbl(5) - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probe1") =~ expr("0")
assert result("probe2") =~ expr("0")
assert result("probe3") =~ expr("0")
assert result("probe4") =~ expr("0")
assert result("probe5") =~ expr("0")
*}}}
*
*{{{ ApartBuildGlobalDenominatorOrder_14 :
#include- ../src/formapart.h
*
#Define NumDenominators "4"
#Redefine APorderDescending "0"
*
symbols n,n1,...,n9;
cfunction null;
*
#$NumRels = 3;
#$Rel1 = null(-1,2,0,0);
#$Rel2 = null(0,-3,5,0);
#$Rel3 = null(7,0,0,-2);
*
#call ApartBuildGlobalDenominatorOrder(null,APpermTbl,NumRels,Rel,NumDenominators,n)
*
.sort
*
local probe1 = APpermTbl(1) - 3;
local probe2 = APpermTbl(2) - 4;
local probe3 = APpermTbl(3) - 1;
local probe4 = APpermTbl(4) - 2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probe1") =~ expr("0")
assert result("probe2") =~ expr("0")
assert result("probe3") =~ expr("0")
assert result("probe4") =~ expr("0")
*}}}
*
*{{{ ApartBuildGlobalDenominatorOrder_15 :
#include- ../src/formapart.h
*
#Define NumDenominators "6"
#Redefine APorderDescending "1"
*
symbols n,n1,...,n9;
cfunction null;
*
#$NumRels = 3;
#$Rel1 = null(1,1,1,0,1,1);
#$Rel2 = null(1,1,0,1,1,1);
#$Rel3 = null(0,0,0,0,1,1);
*
#call ApartBuildGlobalDenominatorOrder(null,APpermTbl,NumRels,Rel,NumDenominators,n)
*
.sort
*
local probe1 = APpermTbl(1) - 5;
local probe2 = APpermTbl(2) - 6;
local probe3 = APpermTbl(3) - 1;
local probe4 = APpermTbl(4) - 2;
local probe5 = APpermTbl(5) - 3;
local probe6 = APpermTbl(6) - 4;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probe1") =~ expr("0")
assert result("probe2") =~ expr("0")
assert result("probe3") =~ expr("0")
assert result("probe4") =~ expr("0")
assert result("probe5") =~ expr("0")
assert result("probe6") =~ expr("0")
*}}}
*
*{{{ ApartBuildGlobalDenominatorOrder_16 :
#include- ../src/formapart.h
*
#Define NumDenominators "2"
#Redefine APorderDescending "0"
*
symbols n,n1,...,n9;
cfunction null;
*
#$NumRels = 1;
#$Rel1 = null(1,1);
*
#call ApartBuildGlobalDenominatorOrder(null,APpermTbl,NumRels,Rel,NumDenominators,n)
*
.sort
*
local probe1 = APpermTbl(1) - 1;
local probe2 = APpermTbl(2) - 2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probe1") =~ expr("0")
assert result("probe2") =~ expr("0")
*}}}
*
*{{{ ApartBuildGlobalDenominatorOrder_17 :
#include- ../src/formapart.h
*
#Define NumDenominators "4"
#Redefine APorderDescending "0"
*
symbols n,n1,...,n9,s,t;
cfunction null;
*
#$NumRels = 2;
#$Rel1 = null(s,2,0,0);
#$Rel2 = null(0,t,3,0);
*
#call ApartBuildGlobalDenominatorOrder(null,APpermTbl,NumRels,Rel,NumDenominators,n)
*
.sort
*
local probe1 = APpermTbl(1) - 4;
local probe2 = APpermTbl(2) - 1;
local probe3 = APpermTbl(3) - 3;
local probe4 = APpermTbl(4) - 2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("probe1") =~ expr("0")
assert result("probe2") =~ expr("0")
assert result("probe3") =~ expr("0")
assert result("probe4") =~ expr("0")
*}}}
