*{{{ ApartSwapLocalDollarMatrixRows_1 :
#include- ../src/formapart.h
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
.sort
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,3)
*
.sort
*
local a11 = $mat1s1 - 21;
local a12 = $mat1s2 - 22;
local a13 = $mat1s3 - 23;
local a21 = $mat2s1 - 11;
local a22 = $mat2s2 - 12;
local a23 = $mat2s3 - 13;
.sort
*
print +s;
.end
assert succeeded?
assert result("a11") =~ expr("0")
assert result("a12") =~ expr("0")
assert result("a13") =~ expr("0")
assert result("a21") =~ expr("0")
assert result("a22") =~ expr("0")
assert result("a23") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_2 :
#include- ../src/formapart.h
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
.sort
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,3)
*
.sort
*
local a11 = $mat1s1 - 11;
local a21 = $mat2s1 - 21;
local a12 = $mat1s2 - 22;
local a22 = $mat2s2 - 12;
local a13 = $mat1s3 - 23;
local a23 = $mat2s3 - 13;
.sort
*
print +s;
.end
assert succeeded?
assert result("a11") =~ expr("0")
assert result("a21") =~ expr("0")
assert result("a12") =~ expr("0")
assert result("a22") =~ expr("0")
assert result("a13") =~ expr("0")
assert result("a23") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_3 :
#include- ../src/formapart.h
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
.sort
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,3)
*
.sort
*
local a11 = $mat1s1 - 11;
local a12 = $mat1s2 - 12;
local a13 = $mat1s3 - 13;
local a21 = $mat2s1 - 21;
local a22 = $mat2s2 - 22;
local a23 = $mat2s3 - 23;
.sort
*
print +s;
.end
assert succeeded?
assert result("a11") =~ expr("0")
assert result("a12") =~ expr("0")
assert result("a13") =~ expr("0")
assert result("a21") =~ expr("0")
assert result("a22") =~ expr("0")
assert result("a23") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_4 :
#include- ../src/formapart.h
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
.sort
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,3)
*
.sort
*
local a11 = $mat1s1 - 11;
local a21 = $mat2s1 - 21;
local a12 = $mat1s2 - 22;
local a22 = $mat2s2 - 12;
local a13 = $mat1s3 - 13;
local a23 = $mat2s3 - 23;
.sort
*
print +s;
.end
assert succeeded?
assert result("a11") =~ expr("0")
assert result("a21") =~ expr("0")
assert result("a12") =~ expr("0")
assert result("a22") =~ expr("0")
assert result("a13") =~ expr("0")
assert result("a23") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_5 :
#include- ../src/formapart.h
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
.sort
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,2)
*
.sort
*
local a11 = $mat1s1 - (1-ep);
local a12 = $mat1s2 - 2*ep;
local a21 = $mat2s1 - ep;
local a22 = $mat2s2 - ep^2;
.sort
*
print +s;
.end
assert succeeded?
assert result("a11") =~ expr("0")
assert result("a12") =~ expr("0")
assert result("a21") =~ expr("0")
assert result("a22") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_6 :
#include- ../src/formapart.h
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
.sort
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,3,3)
*
.sort
*
local a11 = $mat1s1 - 31;
local a12 = $mat1s2 - 32;
local a13 = $mat1s3 - 33;
local a21 = $mat2s1 - 21;
local a22 = $mat2s2 - 22;
local a23 = $mat2s3 - 23;
local a31 = $mat3s1 - 11;
local a32 = $mat3s2 - 12;
local a33 = $mat3s3 - 13;
.sort
*
print +s;
.end
assert succeeded?
assert result("a11") =~ expr("0")
assert result("a12") =~ expr("0")
assert result("a13") =~ expr("0")
assert result("a21") =~ expr("0")
assert result("a22") =~ expr("0")
assert result("a23") =~ expr("0")
assert result("a31") =~ expr("0")
assert result("a32") =~ expr("0")
assert result("a33") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_7 :
#include- ../src/formapart.h
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
.sort
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,3,3)
*
.sort
*
local a11 = $mat1s1 - 11;
local a12 = $mat1s2 - 32;
local a13 = $mat1s3 - 33;
local a21 = $mat2s1 - 21;
local a22 = $mat2s2 - 22;
local a23 = $mat2s3 - 23;
local a31 = $mat3s1 - 31;
local a32 = $mat3s2 - 12;
local a33 = $mat3s3 - 13;
.sort
*
print +s;
.end
assert succeeded?
assert result("a11") =~ expr("0")
assert result("a12") =~ expr("0")
assert result("a13") =~ expr("0")
assert result("a21") =~ expr("0")
assert result("a22") =~ expr("0")
assert result("a23") =~ expr("0")
assert result("a31") =~ expr("0")
assert result("a32") =~ expr("0")
assert result("a33") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_8 :
#include- ../src/formapart.h
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
.sort
*
#call ApartSwapLocalDollarMatrixRows(mat,c,ri,rj,cf,cl,2,3)
*
.sort
*
local a11 = $mat1c1 - 21;
local a12 = $mat1c2 - 22;
local a13 = $mat1c3 - 23;
local a21 = $mat2c1 - 11;
local a22 = $mat2c2 - 12;
local a23 = $mat2c3 - 13;
.sort
*
print +s;
.end
assert succeeded?
assert result("a11") =~ expr("0")
assert result("a12") =~ expr("0")
assert result("a13") =~ expr("0")
assert result("a21") =~ expr("0")
assert result("a22") =~ expr("0")
assert result("a23") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_9 :
#include- ../src/formapart.h
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
.sort
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,3,3)
*
.sort
*
local a11 = $mat1s1 - 31;
local a12 = $mat1s2 - 32;
local a13 = $mat1s3 - 33;
local a21 = $mat2s1 - 21;
local a22 = $mat2s2 - 22;
local a23 = $mat2s3 - 23;
local a31 = $mat3s1 - 11;
local a32 = $mat3s2 - 12;
local a33 = $mat3s3 - 13;
.sort
*
print +s;
.end
assert succeeded?
assert result("a11") =~ expr("0")
assert result("a12") =~ expr("0")
assert result("a13") =~ expr("0")
assert result("a21") =~ expr("0")
assert result("a22") =~ expr("0")
assert result("a23") =~ expr("0")
assert result("a31") =~ expr("0")
assert result("a32") =~ expr("0")
assert result("a33") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_10 :
#include- ../src/formapart.h
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
.sort
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,5)
*
.sort
*
local a11 = $mat1s1 - 11;
local a15 = $mat1s5 - 15;
local a21 = $mat2s1 - 21;
local a25 = $mat2s5 - 25;
local a12 = $mat1s2 - 22;
local a13 = $mat1s3 - 23;
local a14 = $mat1s4 - 24;
local a22 = $mat2s2 - 12;
local a23 = $mat2s3 - 13;
local a24 = $mat2s4 - 14;
.sort
*
print +s;
.end
assert succeeded?
assert result("a11") =~ expr("0")
assert result("a15") =~ expr("0")
assert result("a21") =~ expr("0")
assert result("a25") =~ expr("0")
assert result("a12") =~ expr("0")
assert result("a13") =~ expr("0")
assert result("a14") =~ expr("0")
assert result("a22") =~ expr("0")
assert result("a23") =~ expr("0")
assert result("a24") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_11 :
#include- ../src/formapart.h
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
.sort
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,12)
*
.sort
*
local a11 = $mat1s1 - 21;
local a19 = $mat1s9 - 29;
local a110 = $mat1s10 - 30;
local a111 = $mat1s11 - 31;
local a112 = $mat1s12 - 32;
local a21 = $mat2s1 - 11;
local a29 = $mat2s9 - 19;
local a210 = $mat2s10 - 20;
local a211 = $mat2s11 - 21;
local a212 = $mat2s12 - 22;
.sort
*
print +s;
.end
assert succeeded?
assert result("a11") =~ expr("0")
assert result("a19") =~ expr("0")
assert result("a110") =~ expr("0")
assert result("a111") =~ expr("0")
assert result("a112") =~ expr("0")
assert result("a21") =~ expr("0")
assert result("a29") =~ expr("0")
assert result("a210") =~ expr("0")
assert result("a211") =~ expr("0")
assert result("a212") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_12 :
#include- ../src/formapart.h
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
.sort
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,12,1)
*
.sort
*
local a1 = $mat1s1 - 121;
local a12 = $mat12s1 - 11;
local a2 = $mat2s1 - 21;
local a6 = $mat6s1 - 61;
local a11 = $mat11s1 - 111;
.sort
*
print +s;
.end
assert succeeded?
assert result("a1") =~ expr("0")
assert result("a12") =~ expr("0")
assert result("a2") =~ expr("0")
assert result("a6") =~ expr("0")
assert result("a11") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_13 :
#include- ../src/formapart.h
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
.sort
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,3)
*
.sort
*
local a11 = $mat1s1 - ep;
local a21 = $mat2s1 - 3;
local a12 = $mat1s2 - 2*ep;
local a22 = $mat2s2 - 1/2;
local a13 = $mat1s3 - 5/7;
local a23 = $mat2s3 - (ep^2-1);
.sort
*
print +s;
.end
assert succeeded?
assert result("a11") =~ expr("0")
assert result("a21") =~ expr("0")
assert result("a12") =~ expr("0")
assert result("a22") =~ expr("0")
assert result("a13") =~ expr("0")
assert result("a23") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_14 :
#include- ../src/formapart.h
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
.sort
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,2)
*
.sort
*
local a11 = $mat1s1 + 7;
local a12 = $mat1s2 + 8;
local a21 = $mat2s1 + 5;
local a22 = $mat2s2 + 6;
.sort
*
print +s;
.end
assert succeeded?
assert result("a11") =~ expr("0")
assert result("a12") =~ expr("0")
assert result("a21") =~ expr("0")
assert result("a22") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_15 :
#include- ../src/formapart.h
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
.sort
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,3)
*
.sort
*
local a11 = $mat1s1 - 9;
local a12 = $mat1s2 + 1;
local a13 = $mat1s3 + 1;
local a21 = $mat2s1 - 8;
local a22 = $mat2s2;
local a23 = $mat2s3 - 1;
.sort
*
print +s;
.end
assert succeeded?
assert result("a11") =~ expr("0")
assert result("a12") =~ expr("0")
assert result("a13") =~ expr("0")
assert result("a21") =~ expr("0")
assert result("a22") =~ expr("0")
assert result("a23") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_16 :
#include- ../src/formapart.h
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
.sort
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,2,3)
*
.sort
*
local a11 = $mat1s1 - 7;
local a12 = $mat1s2 + 3;
local a13 = $mat1s3 + 3;
local a21 = $mat2s1 - 6;
local a22 = $mat2s2;
local a23 = $mat2s3 - 2;
.sort
*
print +s;
.end
assert succeeded?
assert result("a11") =~ expr("0")
assert result("a12") =~ expr("0")
assert result("a13") =~ expr("0")
assert result("a21") =~ expr("0")
assert result("a22") =~ expr("0")
assert result("a23") =~ expr("0")
*}}}
*
*{{{ ApartSwapLocalDollarMatrixRows_17 :
#include- ../src/formapart.h
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
.sort
*
#call ApartSwapLocalDollarMatrixRows(mat,s,ri,rj,cf,cl,3,3)
*
.sort
*
local a11 = $mat1s1 - 1;
local a12 = $mat1s2 - 1;
local a13 = $mat1s3 - 1;
local a21 = $mat2s1 - 5;
local a22 = $mat2s2 + 1;
local a23 = $mat2s3 + 1;
local a31 = $mat3s1 - 6;
local a32 = $mat3s2;
local a33 = $mat3s3 - 1;
.sort
*
print +s;
.end
assert succeeded?
assert result("a11") =~ expr("0")
assert result("a12") =~ expr("0")
assert result("a13") =~ expr("0")
assert result("a21") =~ expr("0")
assert result("a22") =~ expr("0")
assert result("a23") =~ expr("0")
assert result("a31") =~ expr("0")
assert result("a32") =~ expr("0")
assert result("a33") =~ expr("0")
*}}}
