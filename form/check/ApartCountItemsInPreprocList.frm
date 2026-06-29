*{{{ ApartCountItemsInPreprocList_1 : 
#include- ../src/formapart.h
*
#define MyList ""
#define MyCount ""
*
#call ApartCountItemsInPreprocList(MyList,MyCount)
*
.sort
*
local diff = `MyCount' - 0;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCountItemsInPreprocList_2 : 
#include- ../src/formapart.h
*
#define MyList "a"
#define MyCount ""
*
#call ApartCountItemsInPreprocList(MyList,MyCount)
*
.sort
*
local diff = `MyCount' - 1;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCountItemsInPreprocList_3 : 
#include- ../src/formapart.h
*
#define MyList "a,b"
#define MyCount ""
*
#call ApartCountItemsInPreprocList(MyList,MyCount)
*
.sort
*
local diff = `MyCount' - 2;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCountItemsInPreprocList_4 : 
#include- ../src/formapart.h
*
#define MyList "a,b,c,d,e,f"
#define MyCount ""
*
#call ApartCountItemsInPreprocList(MyList,MyCount)
*
.sort
*
local diff = `MyCount' - 6;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCountItemsInPreprocList_5 : 
#include- ../src/formapart.h
*
#define MyList "a,b,c"
#define MyCount ""
*
#call ApartCountItemsInPreprocList(MyList,MyCount)
*
.sort
*
local diff = `MyCount' - 3;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCountItemsInPreprocList_6 : 
#include- ../src/formapart.h
*
#define MyList "a,b,c,d"
#define MyCount ""
*
#call ApartCountItemsInPreprocList(MyList,MyCount)
*
.sort
*
local diff = `MyCount' - 4;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCountItemsInPreprocList_7 : 
#include- ../src/formapart.h
*
#define MyList "foo"
#define MyCount ""
*
#call ApartCountItemsInPreprocList(MyList,MyCount)
*
.sort
*
local diff = `MyCount' - 1;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCountItemsInPreprocList_8 : 
#include- ../src/formapart.h
*
#define MyList "foo,bar,baz"
#define MyCount ""
*
#call ApartCountItemsInPreprocList(MyList,MyCount)
*
.sort
*
local diff = `MyCount' - 3;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCountItemsInPreprocList_9 : 
#include- ../src/formapart.h
*
#define MyList "x1,x2,x3,x4,x5"
#define MyCount ""
*
#call ApartCountItemsInPreprocList(MyList,MyCount)
*
.sort
*
local diff = `MyCount' - 5;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCountItemsInPreprocList_10 : 
#include- ../src/formapart.h
*
#define MyList "p,q,r,s,t,u,v"
#define MyCount ""
*
#call ApartCountItemsInPreprocList(MyList,MyCount)
*
.sort
*
local diff = `MyCount' - 7;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCountItemsInPreprocList_11 : 
#include- ../src/formapart.h
*
#define MyList "x,alpha,y2,beta3"
#define MyCount ""
*
#call ApartCountItemsInPreprocList(MyList,MyCount)
*
.sort
*
local diff = `MyCount' - 4;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartCountItemsInPreprocList_12 : 
#include- ../src/formapart.h
*
#define MyList "a,b,c,d,e,f,g,h,i,j"
#define MyCount ""
*
#call ApartCountItemsInPreprocList(MyList,MyCount)
*
.sort
*
local diff = `MyCount' - 10;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
