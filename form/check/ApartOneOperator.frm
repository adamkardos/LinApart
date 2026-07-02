*{{{ ApartOneOperator_1 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(1,-2,1)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (2*d1/d2 - d1/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_2 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(0,-2,1)*selDen(d2)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (1/2*d2/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_3 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3*d4
    *dens(d1,d2,d3,d4)
    *selNull(0,0,2,-1)*selDen(d3)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (1/2*d3/d4);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_4 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(3,-6,3)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (2*d1/d2 - d1/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_5 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(-1,2,-1)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (2*d1/d2 - d1/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_6 :
#include- ../src/formapart.h
*
symbols d1,d2;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2
    *dens(d1,d2)
    *selNull(1,-1)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (d1/d2);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_7 :
#include- ../src/formapart.h
*
symbols d1,d2;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1^3*d2
    *dens(d2,d1)
    *selNull(3,-5)*selDen(d2)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (5/3*d2/d1);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_8 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3*d4
    *dens(d1,d2,d3,d4)
    *selNull(0,3,0,-7)*selDen(d2)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (7/3*d2/d4);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_9 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3*d4
    *dens(d1,d2,d3,d4)
    *selNull(2,-1,3,-4)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (1/2*d1/d2 - 3/2*d1/d3 + 2*d1/d4);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_10 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3*d4
    *dens(d1,d2,d3,d4)
    *selNull(0,0,5,-10)*selDen(d3)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (2*d3/d4);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_11 :
#include- ../src/formapart.h
*
symbols d1,...,d9;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d3^3*d5*d7^2
    *dens(d5,d7,d3)
    *selNull(2,-3,1)*selDen(d5)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (3/2*d5/d7 - 1/2*d5/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_12 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3*d4
    *dens(d1,d2,d3,d4)
    *selNull(1,-1,-1,-1)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (d1/d2 + d1/d3 + d1/d4);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_13 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3*d4*d5
    *dens(d1,d2,d3,d4,d5)
    *selNull(0,0,0,6,-3)*selDen(d4)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (1/2*d4/d5);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_14 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3*d4*d5
    *dens(d1,d2,d3,d4,d5)
    *selNull(1,-1,1,-1,1)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (d1/d2 - d1/d3 + d1/d4 - d1/d5);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_15 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(100,200,-300)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (-2*d1/d2 + 3*d1/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_16 :
#include- ../src/formapart.h
*
symbols d1,...,d9;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3*d4*d5*d6*d7*d8
    *dens(d1,d2,d3,d4,d5,d6,d7,d8)
    *selNull(0,0,0,4,0,0,0,-8)*selDen(d4)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (2*d4/d8);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_17 :
#include- ../src/formapart.h
*
symbols d1,...,d9;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1^7*d5^3*d9
    *dens(d9,d5,d1)
    *selNull(2,-3,1)*selDen(d9)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (3/2*d9/d5 - 1/2*d9/d1);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_18 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(1,-2,1)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op;
ModuleOption,Local,$Op;
*
.sort
*
local diff = F - dens(d1,d2,d3)*(2*d1^2*d3 - d1^2*d2);
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_19 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(0,1,-1)*selDen(d2)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op;
ModuleOption,Local,$Op;
*
.sort
*
local diff = F - dens(d1,d2,d3)*(d1*d2^2);
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_20 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3*d4
    *dens(d1,d2,d3,d4)
    *selNull(-3,1,1,1)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (1/3*d1/d2 + 1/3*d1/d3 + 1/3*d1/d4);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}

*
*{{{ ApartOneOperator_21 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1^10*d2^20*d3^30
    *dens(d1,d2,d3)
    *selNull(1,-2,1)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (2*d1/d2 - d1/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_22 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3*d4*d5
    *dens(d1,d2,d3,d4,d5)
    *selNull(7,0,0,0,-3)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (3/7*d1/d5);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_23 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3*d4*d5
    *dens(d1,d2,d3,d4,d5)
    *selNull(-4,1,1,1,1)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (1/4*d1/d2 + 1/4*d1/d3 + 1/4*d1/d4 + 1/4*d1/d5);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_24 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(12,-18,6)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (3/2*d1/d2 - 1/2*d1/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_25 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3*d4
    *dens(d1,d2,d3,d4)
    *selNull(2,-1,3,-4)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op;
ModuleOption,Local,$Op;
*
.sort
*
local diff = F - dens(d1,d2,d3,d4)*(1/2*d1^2*d3*d4 - 3/2*d1^2*d2*d4 + 2*d1^2*d2*d3);
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_26 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3*d4
    *dens(d1,d2,d3,d4)
    *selNull(0,3,0,-7)*selDen(d2)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op;
ModuleOption,Local,$Op;
*
.sort
*
local diff = F - dens(d1,d2,d3,d4)*(7/3*d1*d2^2*d3);
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_27 :
#include- ../src/formapart.h
*
symbols d1,...,d9;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d3^3*d5*d7^2
    *dens(d5,d7,d3)
    *selNull(2,-3,1)*selDen(d5)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op;
ModuleOption,Local,$Op;
*
.sort
*
local diff = F - dens(d5,d7,d3)*(3/2*d3^3*d5^2*d7 - 1/2*d3^2*d5^2*d7^2);
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_28 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5,d6;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3*d4*d5*d6
    *dens(d1,d2,d3,d4,d5,d6)
    *selNull(5,0,-2,0,3,0)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (2/5*d1/d3 - 3/5*d1/d5);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_29 :
#include- ../src/formapart.h
*
symbols d1,...,d9;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1^7*d5^3*d9
    *dens(d9,d5,d1)
    *selNull(2,-3,1)*selDen(d9)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op;
ModuleOption,Local,$Op;
*
.sort
*
local diff = F - dens(d9,d5,d1)*(3/2*d1^7*d5^2*d9^2 - 1/2*d1^6*d5^3*d9^2);
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_30 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5,d6;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3*d4*d5*d6
    *dens(d1,d2,d3,d4,d5,d6)
    *selNull(1,-1,1,-1,1,-1)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (d1/d2 - d1/d3 + d1/d4 - d1/d5 + d1/d6);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_31 :
#include- ../src/formapart.h
*
symbols d1,d2;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1^5*d2^3
    *dens(d2,d1)
    *selNull(-1,1)*selDen(d2)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (d2/d1);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_32 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(1000,-500,-500)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (1/2*d1/d2 + 1/2*d1/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_33 :
#include- ../src/formapart.h
*
symbols d1,d2;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2
    *dens(d1,d2)
    *selNull(1,-1)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op;
ModuleOption,Local,$Op;
*
.sort
*
local diff = F - dens(d1,d2)*(d1^2);
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_34 :
#include- ../src/formapart.h
*
symbols d1,...,d9;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3*d4*d5*d6*d7*d8*d9
    *dens(d1,d2,d3,d4,d5,d6,d7,d8,d9)
    *selNull(1,-1,1,-1,1,-1,1,-1,1)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (
  + d1/d2 - d1/d3 + d1/d4 - d1/d5
  + d1/d6 - d1/d7 + d1/d8 - d1/d9
);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_35 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(1,-999,998)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (999*d1/d2 - 998*d1/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_36 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1^10*d2^20*d3^30
    *dens(d1,d2,d3)
    *selNull(1,-2,1)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op;
ModuleOption,Local,$Op;
*
.sort
*
local diff = F - dens(d1,d2,d3)*(2*d1^11*d2^19*d3^30 - d1^11*d2^20*d3^29);
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_37 :
#include- ../src/formapart.h
*
symbols d1,...,d9;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1^5*d3^2*d7*d9^3
    *dens(d7,d3,d9,d1)
    *selNull(1,-1,2,-2)*selDen(d7)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (d7/d3 - 2*d7/d9 + 2*d7/d1);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_38 :
#include- ../src/formapart.h
*
symbols d1,...,d9;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1^5*d3^2*d7*d9^3
    *dens(d7,d3,d9,d1)
    *selNull(1,-1,2,-2)*selDen(d7)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op;
ModuleOption,Local,$Op;
*
.sort
*
local diff = F - dens(d7,d3,d9,d1)*(
  + d1^5*d3*d7^2*d9^3
  - 2*d1^5*d3^2*d7^2*d9^2
  + 2*d1^4*d3^2*d7^2*d9^3
);
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_39 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3*d4
    *dens(d1,d2,d3,d4)
    *selNull(3,-6,9,-12)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (2*d1/d2 - 3*d1/d3 + 4*d1/d4);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_40 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4,d5,d6;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3*d4*d5*d6
    *dens(d1,d2,d3,d4,d5,d6)
    *selNull(1,-1,1,-1,1,-1)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op;
ModuleOption,Local,$Op;
*
.sort
*
local diff = F - dens(d1,d2,d3,d4,d5,d6)*(
  + d1^2*d3*d4*d5*d6
  - d1^2*d2*d4*d5*d6
  + d1^2*d2*d3*d5*d6
  - d1^2*d2*d3*d4*d6
  + d1^2*d2*d3*d4*d5
);
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}

*
*{{{ ApartOneOperator_41 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols s;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(s,-s,1)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (d1/d2 - 1/s*d1/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_42 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols s,t;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(s,-t,t-s)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (t/s*d1/d2 + (s-t)/s*d1/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_43 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols s;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(s,-2,3)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (2/s*d1/d2 - 3/s*d1/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_44 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols s;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(2,-s,s-2)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (s/2*d1/d2 + (2-s)/2*d1/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_45 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols s;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(s,-s,1)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op;
ModuleOption,Local,$Op;
*
.sort
*
local diff = F - dens(d1,d2,d3)*(d1^2*d3 - 1/s*d1^2*d2);
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_46 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
symbols m;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3*d4
    *dens(d1,d2,d3,d4)
    *selNull(m,0,0,-m)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (d1/d4);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_47 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols s,t;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(s+t,-s,-t)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (s*den(s+t)*d1/d2 + t*den(s+t)*d1/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_48 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols s;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(s^2,-2*s,1)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (2/s*d1/d2 - 1/s^2*d1/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_49 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols s,t;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(s+t,-s,-t)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op;
ModuleOption,Local,$Op;
*
.sort
*
local diff = F - dens(d1,d2,d3)*(s*den(s+t)*d1^2*d3 + t*den(s+t)*d1^2*d2);
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_50 :
#include- ../src/formapart.h
*
symbols d1,...,d9;
symbols s;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d3^4*d7*d9^2
    *dens(d7,d9,d3)
    *selNull(s,-1,1-s)*selDen(d7)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (1/s*d7/d9 + (s-1)/s*d7/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}

*{{{ ApartOneOperator_51 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols s,t;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(s+t,-2,3)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (2*den(s+t)*d1/d2 - 3*den(s+t)*d1/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_52 :
#include- ../src/formapart.h
*
symbols a,b,d1,d2;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2
    *dens(d1,d2)
    *selNull(a-b,-(a-b))*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - ((a-b)*den(a-b)*d1/d2);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_53 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols s,t,u;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(s+t+u,-1,1)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (den(s+t+u)*d1/d2 - den(s+t+u)*d1/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_54 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols s,t;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(s^2+t,-3,2)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (3*den(s^2+t)*d1/d2 - 2*den(s^2+t)*d1/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_55 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols s,t;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(s+t,-s,s-t)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (s*den(s+t)*d1/d2 - (s-t)*den(s+t)*d1/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_56 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
symbols s,t;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3*d4
    *dens(d1,d2,d3,d4)
    *selNull(0,s+t,0,-3)*selDen(d2)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (3*den(s+t)*d2/d4);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_57 :
#include- ../src/formapart.h
*
symbols d1,d2,d3,d4;
symbols s,t;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3*d4
    *dens(d1,d2,d3,d4)
    *selNull(s+t,1,-2,1)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (-den(s+t)*d1/d2 + 2*den(s+t)*d1/d3 - den(s+t)*d1/d4);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_58 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols s,t;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(s+t,-2,3)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op;
ModuleOption,Local,$Op;
*
.sort
*
local diff = F - dens(d1,d2,d3)*(2*den(s+t)*d1^2*d3 - 3*den(s+t)*d1^2*d2);
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_59 :
#include- ../src/formapart.h
*
symbols d1,d2,d3;
symbols s,t;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d1*d2*d3
    *dens(d1,d2,d3)
    *selNull(2*s+3*t,-1,1)*selDen(d1)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op - (den(2*s+3*t)*d1/d2 - den(2*s+3*t)*d1/d3);
ModuleOption,Local,$Op;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartOneOperator_60 :
#include- ../src/formapart.h
*
symbols d1,...,d9;
symbols s,t;
symbols n1,n2;
cfunction dens;
cfunction selNull;
cfunction selDen;
cfunction den;
*
local F =
  + d3^3*d5*d7^2
    *dens(d5,d7,d3)
    *selNull(s+t,-3,1)*selDen(d5)
;
*
.sort
*
#call ApartOneOperator(Op,selNull,selDen,dens,den,n1,n2)
multiply $Op;
ModuleOption,Local,$Op;
*
.sort
*
local diff = F - dens(d5,d7,d3)*(3*den(s+t)*d3^3*d5^2*d7 - den(s+t)*d3^2*d5^2*d7^2);
*
print +s;
.end
assert succeeded?
assert result("diff") =~ expr("0")
*}}}
