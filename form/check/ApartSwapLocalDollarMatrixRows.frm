*{{{ ApartSwapLocalDollarMatrixRows_1 :
#include- ../src/formapart.h
cfunction acc;
*
local F = 1;
.sort
$mat1s1 = 11;
$mat1s2 = 12;
$mat1s3 = 13;
$mat2s1 = 21;
$mat2s2 = 22;
$mat2s3 = 23;
$ri = 1;
$rj = 2;
$cf = 1;
$cl = 3;
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,3)
multiply acc(1,1)*($mat1s1 - 21) + acc(1,2)*($mat1s2 - 22) + acc(1,3)*($mat1s3 - 23) + acc(2,1)*($mat2s1 - 11) + acc(2,2)*($mat2s2 - 12) + acc(2,3)*($mat2s3 - 13);
ModuleOption,Local,$mat1s1,$mat1s2,$mat1s3,$mat2s1,$mat2s2,$mat2s3,$ri,$rj,$cf,$cl;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_2 :
#include- ../src/formapart.h
cfunction acc;
*
local F = 1;
.sort
$mat1s1 = 11;
$mat1s2 = 12;
$mat1s3 = 13;
$mat2s1 = 21;
$mat2s2 = 22;
$mat2s3 = 23;
$ri = 1;
$rj = 2;
$cf = 2;
$cl = 3;
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,3)
multiply acc(1,1)*($mat1s1 - 11) + acc(2,1)*($mat2s1 - 21) + acc(1,2)*($mat1s2 - 22) + acc(2,2)*($mat2s2 - 12) + acc(1,3)*($mat1s3 - 23) + acc(2,3)*($mat2s3 - 13);
ModuleOption,Local,$mat1s1,$mat1s2,$mat1s3,$mat2s1,$mat2s2,$mat2s3,$ri,$rj,$cf,$cl;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_3 :
#include- ../src/formapart.h
cfunction acc;
*
local F = 1;
.sort
$mat1s1 = 11;
$mat1s2 = 12;
$mat1s3 = 13;
$mat2s1 = 21;
$mat2s2 = 22;
$mat2s3 = 23;
$ri = 2;
$rj = 2;
$cf = 1;
$cl = 3;
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,3)
multiply acc(1,1)*($mat1s1 - 11) + acc(1,2)*($mat1s2 - 12) + acc(1,3)*($mat1s3 - 13) + acc(2,1)*($mat2s1 - 21) + acc(2,2)*($mat2s2 - 22) + acc(2,3)*($mat2s3 - 23);
ModuleOption,Local,$mat1s1,$mat1s2,$mat1s3,$mat2s1,$mat2s2,$mat2s3,$ri,$rj,$cf,$cl;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_4 :
#include- ../src/formapart.h
cfunction acc;
*
local F = 1;
.sort
$mat1s1 = 11;
$mat1s2 = 12;
$mat1s3 = 13;
$mat2s1 = 21;
$mat2s2 = 22;
$mat2s3 = 23;
$ri = 1;
$rj = 2;
$cf = 2;
$cl = 2;
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,3)
multiply acc(1,1)*($mat1s1 - 11) + acc(2,1)*($mat2s1 - 21) + acc(1,2)*($mat1s2 - 22) + acc(2,2)*($mat2s2 - 12) + acc(1,3)*($mat1s3 - 13) + acc(2,3)*($mat2s3 - 23);
ModuleOption,Local,$mat1s1,$mat1s2,$mat1s3,$mat2s1,$mat2s2,$mat2s3,$ri,$rj,$cf,$cl;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_5 :
#include- ../src/formapart.h
cfunction acc;
*
symbol ep;
local F = 1;
.sort
$mat1s1 = ep;
$mat1s2 = ep^2;
$mat2s1 = 1-ep;
$mat2s2 = 2*ep;
$ri = 1;
$rj = 2;
$cf = 1;
$cl = 2;
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,2)
multiply acc(1,1)*($mat1s1 - (1-ep)) + acc(1,2)*($mat1s2 - 2*ep) + acc(2,1)*($mat2s1 - ep) + acc(2,2)*($mat2s2 - ep^2);
ModuleOption,Local,$mat1s1,$mat1s2,$mat2s1,$mat2s2,$ri,$rj,$cf,$cl;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_6 :
#include- ../src/formapart.h
cfunction acc;
*
local F = 1;
.sort
$mat1s1 = 11;
$mat1s2 = 12;
$mat1s3 = 13;
$mat2s1 = 21;
$mat2s2 = 22;
$mat2s3 = 23;
$mat3s1 = 31;
$mat3s2 = 32;
$mat3s3 = 33;
$ri = 1;
$rj = 3;
$cf = 1;
$cl = 3;
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,3,3)
multiply acc(1,1)*($mat1s1 - 31) + acc(1,2)*($mat1s2 - 32) + acc(1,3)*($mat1s3 - 33) + acc(2,1)*($mat2s1 - 21) + acc(2,2)*($mat2s2 - 22) + acc(2,3)*($mat2s3 - 23) +
    acc(3,1)*($mat3s1 - 11) + acc(3,2)*($mat3s2 - 12) + acc(3,3)*($mat3s3 - 13);
ModuleOption,Local,$mat1s1,$mat1s2,$mat1s3,$mat2s1,$mat2s2,$mat2s3,$mat3s1,$mat3s2,$mat3s3,$ri,$rj,$cf,$cl;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_7 :
#include- ../src/formapart.h
cfunction acc;
*
local F = 1;
.sort
$mat1s1 = 11;
$mat1s2 = 12;
$mat1s3 = 13;
$mat2s1 = 21;
$mat2s2 = 22;
$mat2s3 = 23;
$mat3s1 = 31;
$mat3s2 = 32;
$mat3s3 = 33;
$ri = 1;
$rj = 3;
$cf = 2;
$cl = 3;
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,3,3)
multiply acc(1,1)*($mat1s1 - 11) + acc(1,2)*($mat1s2 - 32) + acc(1,3)*($mat1s3 - 33) + acc(2,1)*($mat2s1 - 21) + acc(2,2)*($mat2s2 - 22) + acc(2,3)*($mat2s3 - 23) +
    acc(3,1)*($mat3s1 - 31) + acc(3,2)*($mat3s2 - 12) + acc(3,3)*($mat3s3 - 13);
ModuleOption,Local,$mat1s1,$mat1s2,$mat1s3,$mat2s1,$mat2s2,$mat2s3,$mat3s1,$mat3s2,$mat3s3,$ri,$rj,$cf,$cl;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_8 :
#include- ../src/formapart.h
cfunction acc;
*
local F = 1;
.sort
$mat1c1 = 11;
$mat1c2 = 12;
$mat1c3 = 13;
$mat2c1 = 21;
$mat2c2 = 22;
$mat2c3 = 23;
$ri = 1;
$rj = 2;
$cf = 1;
$cl = 3;
*
#call ApartSwapLocalDollarMatrixRows(mat,c,ri,rj,cf,cl,2,3)
multiply acc(1,1)*($mat1c1 - 21) + acc(1,2)*($mat1c2 - 22) + acc(1,3)*($mat1c3 - 23) + acc(2,1)*($mat2c1 - 11) + acc(2,2)*($mat2c2 - 12) + acc(2,3)*($mat2c3 - 13);
ModuleOption,Local,$mat1c1,$mat1c2,$mat1c3,$mat2c1,$mat2c2,$mat2c3,$ri,$rj,$cf,$cl;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_9 :
#include- ../src/formapart.h
cfunction acc;
*
local F = 1;
.sort
$mat1s1 = 11;
$mat1s2 = 12;
$mat1s3 = 13;
$mat2s1 = 21;
$mat2s2 = 22;
$mat2s3 = 23;
$mat3s1 = 31;
$mat3s2 = 32;
$mat3s3 = 33;
$ri = 3;
$rj = 1;
$cf = 1;
$cl = 3;
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,3,3)
multiply acc(1,1)*($mat1s1 - 31) + acc(1,2)*($mat1s2 - 32) + acc(1,3)*($mat1s3 - 33) + acc(2,1)*($mat2s1 - 21) + acc(2,2)*($mat2s2 - 22) + acc(2,3)*($mat2s3 - 23) +
    acc(3,1)*($mat3s1 - 11) + acc(3,2)*($mat3s2 - 12) + acc(3,3)*($mat3s3 - 13);
ModuleOption,Local,$mat1s1,$mat1s2,$mat1s3,$mat2s1,$mat2s2,$mat2s3,$mat3s1,$mat3s2,$mat3s3,$ri,$rj,$cf,$cl;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_10 :
#include- ../src/formapart.h
cfunction acc;
*
local F = 1;
.sort
$mat1s1 = 11;
$mat1s2 = 12;
$mat1s3 = 13;
$mat1s4 = 14;
$mat1s5 = 15;
$mat2s1 = 21;
$mat2s2 = 22;
$mat2s3 = 23;
$mat2s4 = 24;
$mat2s5 = 25;
$ri = 1;
$rj = 2;
$cf = 2;
$cl = 4;
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,5)
multiply acc(1,1)*($mat1s1 - 11) + acc(1,5)*($mat1s5 - 15) + acc(2,1)*($mat2s1 - 21) + acc(2,5)*($mat2s5 - 25) + acc(1,2)*($mat1s2 - 22) + acc(1,3)*($mat1s3 - 23) +
    acc(1,4)*($mat1s4 - 24) + acc(2,2)*($mat2s2 - 12) + acc(2,3)*($mat2s3 - 13) + acc(2,4)*($mat2s4 - 14);
ModuleOption,Local,$mat1s1,$mat1s2,$mat1s3,$mat1s4,$mat1s5,$mat2s1,$mat2s2,$mat2s3,$mat2s4,$mat2s5,$ri,$rj,$cf,$cl;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_11 :
#include- ../src/formapart.h
cfunction acc;
*
local F = 1;
.sort
$mat1s1 = 11;
$mat1s2 = 12;
$mat1s3 = 13;
$mat1s4 = 14;
$mat1s5 = 15;
$mat1s6 = 16;
$mat1s7 = 17;
$mat1s8 = 18;
$mat1s9 = 19;
$mat1s10 = 20;
$mat1s11 = 21;
$mat1s12 = 22;
$mat2s1 = 21;
$mat2s2 = 22;
$mat2s3 = 23;
$mat2s4 = 24;
$mat2s5 = 25;
$mat2s6 = 26;
$mat2s7 = 27;
$mat2s8 = 28;
$mat2s9 = 29;
$mat2s10 = 30;
$mat2s11 = 31;
$mat2s12 = 32;
$ri = 1;
$rj = 2;
$cf = 1;
$cl = 12;
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,12)
multiply acc(1,1)*($mat1s1 - 21) + acc(1,9)*($mat1s9 - 29) + acc(1,10)*($mat1s10 - 30) + acc(1,11)*($mat1s11 - 31) + acc(1,12)*($mat1s12 - 32) + acc(2,1)*($mat2s1 - 11) +
    acc(2,9)*($mat2s9 - 19) + acc(2,10)*($mat2s10 - 20) + acc(2,11)*($mat2s11 - 21) + acc(2,12)*($mat2s12 - 22);
ModuleOption,Local,$mat1s1,$mat1s2,$mat1s3,$mat1s4,$mat1s5,$mat1s6,$mat1s7,$mat1s8,$mat1s9,$mat1s10,$mat1s11,$mat1s12,$mat2s1,$mat2s2,$mat2s3,$mat2s4,$mat2s5,$mat2s6,$mat2s7,
    $mat2s8,$mat2s9,$mat2s10,$mat2s11,$mat2s12,$ri,$rj,$cf,$cl;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_12 :
#include- ../src/formapart.h
cfunction acc;
*
local F = 1;
.sort
$mat1s1 = 11;
$mat2s1 = 21;
$mat3s1 = 31;
$mat4s1 = 41;
$mat5s1 = 51;
$mat6s1 = 61;
$mat7s1 = 71;
$mat8s1 = 81;
$mat9s1 = 91;
$mat10s1 = 101;
$mat11s1 = 111;
$mat12s1 = 121;
$ri = 1;
$rj = 12;
$cf = 1;
$cl = 1;
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,12,1)
multiply acc(1,1)*($mat1s1 - 121) + acc(12,1)*($mat12s1 - 11) + acc(2,1)*($mat2s1 - 21) + acc(6,1)*($mat6s1 - 61) + acc(11,1)*($mat11s1 - 111);
ModuleOption,Local,$mat1s1,$mat2s1,$mat3s1,$mat4s1,$mat5s1,$mat6s1,$mat7s1,$mat8s1,$mat9s1,$mat10s1,$mat11s1,$mat12s1,$ri,$rj,$cf,$cl;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_13 :
#include- ../src/formapart.h
cfunction acc;
*
symbol ep;
local F = 1;
.sort
$mat1s1 = ep;
$mat1s2 = 1/2;
$mat1s3 = ep^2-1;
$mat2s1 = 3;
$mat2s2 = 2*ep;
$mat2s3 = 5/7;
$ri = 1;
$rj = 2;
$cf = 2;
$cl = 3;
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,3)
multiply acc(1,1)*($mat1s1 - ep) + acc(2,1)*($mat2s1 - 3) + acc(1,2)*($mat1s2 - 2*ep) + acc(2,2)*($mat2s2 - 1/2) + acc(1,3)*($mat1s3 - 5/7) + acc(2,3)*($mat2s3 - (ep^2-1));
ModuleOption,Local,$mat1s1,$mat1s2,$mat1s3,$mat2s1,$mat2s2,$mat2s3,$ri,$rj,$cf,$cl;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_14 :
#include- ../src/formapart.h
cfunction acc;
*
local F = 1;
.sort
$mat1s1 = -5;
$mat1s2 = -6;
$mat2s1 = -7;
$mat2s2 = -8;
$ri = 1;
$rj = 2;
$cf = 1;
$cl = 2;
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,2)
multiply acc(1,1)*($mat1s1 + 7) + acc(1,2)*($mat1s2 + 8) + acc(2,1)*($mat2s1 + 5) + acc(2,2)*($mat2s2 + 6);
ModuleOption,Local,$mat1s1,$mat1s2,$mat2s1,$mat2s2,$ri,$rj,$cf,$cl;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_15 :
#include- ../src/formapart.h
cfunction acc;
*
local F = 1;
.sort
$mat1s1 = 9;
$mat1s2 = 0;
$mat1s3 = 1;
$mat2s1 = 8;
$mat2s2 = -1;
$mat2s3 = -1;
$ri = 1;
$rj = 2;
$cf = 2;
$cl = 3;
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,3)
multiply acc(1,1)*($mat1s1 - 9) + acc(1,2)*($mat1s2 + 1) + acc(1,3)*($mat1s3 + 1) + acc(2,1)*($mat2s1 - 8) + acc(2,2)*($mat2s2) + acc(2,3)*($mat2s3 - 1);
ModuleOption,Local,$mat1s1,$mat1s2,$mat1s3,$mat2s1,$mat2s2,$mat2s3,$ri,$rj,$cf,$cl;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_16 :
#include- ../src/formapart.h
cfunction acc;
*
local F = 1;
.sort
$mat1s1 = 7;
$mat1s2 = 0;
$mat1s3 = 2;
$mat2s1 = 6;
$mat2s2 = -3;
$mat2s3 = -3;
$ri = 1;
$rj = 2;
$cf = 2;
$cl = 3;
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,3)
multiply acc(1,1)*($mat1s1 - 7) + acc(1,2)*($mat1s2 + 3) + acc(1,3)*($mat1s3 + 3) + acc(2,1)*($mat2s1 - 6) + acc(2,2)*($mat2s2) + acc(2,3)*($mat2s3 - 2);
ModuleOption,Local,$mat1s1,$mat1s2,$mat1s3,$mat2s1,$mat2s2,$mat2s3,$ri,$rj,$cf,$cl;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_17 :
#include- ../src/formapart.h
cfunction acc;
*
local F = 1;
.sort
$mat1s1 = 1;
$mat1s2 = 1;
$mat1s3 = 1;
$mat2s1 = 5;
$mat2s2 = 0;
$mat2s3 = 1;
$mat3s1 = 6;
$mat3s2 = -1;
$mat3s3 = -1;
$ri = 2;
$rj = 3;
$cf = 2;
$cl = 3;
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,3,3)
multiply acc(1,1)*($mat1s1 - 1) + acc(1,2)*($mat1s2 - 1) + acc(1,3)*($mat1s3 - 1) + acc(2,1)*($mat2s1 - 5) + acc(2,2)*($mat2s2 + 1) + acc(2,3)*($mat2s3 + 1) +
    acc(3,1)*($mat3s1 - 6) + acc(3,2)*($mat3s2) + acc(3,3)*($mat3s3 - 1);
ModuleOption,Local,$mat1s1,$mat1s2,$mat1s3,$mat2s1,$mat2s2,$mat2s3,$mat3s1,$mat3s2,$mat3s3,$ri,$rj,$cf,$cl;
*
.sort
*
print +s;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
