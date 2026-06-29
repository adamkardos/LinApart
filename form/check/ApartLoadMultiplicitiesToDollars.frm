*{{{ ApartLoadMultiplicitiesToDollars_1 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
*
local F = APd1*APd2;
.sort
*
$BasisDen1 = APd1;
$BasisDen2 = APd2;
*
#call ApartLoadMultiplicitiesToDollars(BasisDen,Multiplicity,2)
*
.sort
*
local m1 = $Multiplicity1 - 1;
local m2 = $Multiplicity2 - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("m1") =~ expr("0")
assert result("m2") =~ expr("0")
*}}}
*
*{{{ ApartLoadMultiplicitiesToDollars_2 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
*
local F = APd1^2*APd2^3;
.sort
*
$BasisDen1 = APd1;
$BasisDen2 = APd2;
*
#call ApartLoadMultiplicitiesToDollars(BasisDen,Multiplicity,2)
*
.sort
*
local m1 = $Multiplicity1 - 2;
local m2 = $Multiplicity2 - 3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("m1") =~ expr("0")
assert result("m2") =~ expr("0")
*}}}
*
*{{{ ApartLoadMultiplicitiesToDollars_3 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
*
local F = APd1^4*APd2;
.sort
*
$BasisDen1 = APd1;
$BasisDen2 = APd2;
*
#call ApartLoadMultiplicitiesToDollars(BasisDen,Multiplicity,2)
*
.sort
*
local m1 = $Multiplicity1 - 4;
local m2 = $Multiplicity2 - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("m1") =~ expr("0")
assert result("m2") =~ expr("0")
*}}}
*
*{{{ ApartLoadMultiplicitiesToDollars_4 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
*
local F = APd3^2*APd7^5;
.sort
*
$BasisDen1 = APd3;
$BasisDen2 = APd7;
*
#call ApartLoadMultiplicitiesToDollars(BasisDen,Multiplicity,2)
*
.sort
*
local m1 = $Multiplicity1 - 2;
local m2 = $Multiplicity2 - 5;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("m1") =~ expr("0")
assert result("m2") =~ expr("0")
*}}}
*
*{{{ ApartLoadMultiplicitiesToDollars_5 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
*
symbols x;
*
local F = APd1^2*APd2*APd5^3*x^4;
.sort
*
$BasisDen1 = APd1;
$BasisDen2 = APd2;
*
#call ApartLoadMultiplicitiesToDollars(BasisDen,Multiplicity,2)
*
.sort
*
local m1 = $Multiplicity1 - 2;
local m2 = $Multiplicity2 - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("m1") =~ expr("0")
assert result("m2") =~ expr("0")
*}}}
*
*{{{ ApartLoadMultiplicitiesToDollars_6 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
*
local F = APd2^3;
.sort
*
$BasisDen1 = APd1;
$BasisDen2 = APd2;
*
#call ApartLoadMultiplicitiesToDollars(BasisDen,Multiplicity,2)
*
.sort
*
local m1 = $Multiplicity1 - 0;
local m2 = $Multiplicity2 - 3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("m1") =~ expr("0")
assert result("m2") =~ expr("0")
*}}}
*
*{{{ ApartLoadMultiplicitiesToDollars_7 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
*
symbols x;
*
local F = x*APd5^2;
.sort
*
$BasisDen1 = APd1;
$BasisDen2 = APd2;
*
#call ApartLoadMultiplicitiesToDollars(BasisDen,Multiplicity,2)
*
.sort
*
local m1 = $Multiplicity1 - 0;
local m2 = $Multiplicity2 - 0;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("m1") =~ expr("0")
assert result("m2") =~ expr("0")
*}}}
*
*{{{ ApartLoadMultiplicitiesToDollars_8 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
*
local F = APd1*APd2^2*APd3^3;
.sort
*
$BasisDen1 = APd1;
$BasisDen2 = APd2;
$BasisDen3 = APd3;
*
#call ApartLoadMultiplicitiesToDollars(BasisDen,Multiplicity,3)
*
.sort
*
local m1 = $Multiplicity1 - 1;
local m2 = $Multiplicity2 - 2;
local m3 = $Multiplicity3 - 3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("m1") =~ expr("0")
assert result("m2") =~ expr("0")
assert result("m3") =~ expr("0")
*}}}
*
*{{{ ApartLoadMultiplicitiesToDollars_9 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
*
local F = APd4^3*APd2*APd5^2;
.sort
*
$BasisDen1 = APd4;
$BasisDen2 = APd2;
$BasisDen3 = APd5;
*
#call ApartLoadMultiplicitiesToDollars(BasisDen,Multiplicity,3)
*
.sort
*
local m1 = $Multiplicity1 - 3;
local m2 = $Multiplicity2 - 1;
local m3 = $Multiplicity3 - 2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("m1") =~ expr("0")
assert result("m2") =~ expr("0")
assert result("m3") =~ expr("0")
*}}}
*
*{{{ ApartLoadMultiplicitiesToDollars_10 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "4"
*
local F = APd1*APd2*APd3*APd4;
.sort
*
$BasisDen1 = APd1;
$BasisDen2 = APd2;
$BasisDen3 = APd3;
$BasisDen4 = APd4;
*
#call ApartLoadMultiplicitiesToDollars(BasisDen,Multiplicity,4)
*
.sort
*
local m1 = $Multiplicity1 - 1;
local m2 = $Multiplicity2 - 1;
local m3 = $Multiplicity3 - 1;
local m4 = $Multiplicity4 - 1;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("m1") =~ expr("0")
assert result("m2") =~ expr("0")
assert result("m3") =~ expr("0")
assert result("m4") =~ expr("0")
*}}}
*
*{{{ ApartLoadMultiplicitiesToDollars_11 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "1"
*
local F = APd2^4;
.sort
*
$BasisDen1 = APd2;
*
#call ApartLoadMultiplicitiesToDollars(BasisDen,Multiplicity,1)
*
.sort
*
local m1 = $Multiplicity1 - 4;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("m1") =~ expr("0")
*}}}
*
*{{{ ApartLoadMultiplicitiesToDollars_12 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
*
symbols mark1,mark2,g1,g2;
*
local F = mark1*APd1^2*APd2^3 + mark2*APd1*APd2^5;
.sort
*
$BasisDen1 = APd1;
$BasisDen2 = APd2;
*
#call ApartLoadMultiplicitiesToDollars(BasisDen,Multiplicity,2)
id mark1 = ($Multiplicity1 - 2)*g1 + ($Multiplicity2 - 3)*g2;
id mark2 = ($Multiplicity1 - 1)*g1 + ($Multiplicity2 - 5)*g2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartLoadMultiplicitiesToDollars_13 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
*
symbols mark1,mark2,g1,g2,g3;
*
local F = mark1*APd1*APd2^2*APd3^3 + mark2*APd1^4*APd2*APd3^2;
.sort
*
$BasisDen1 = APd1;
$BasisDen2 = APd2;
$BasisDen3 = APd3;
*
#call ApartLoadMultiplicitiesToDollars(BasisDen,Multiplicity,3)
id mark1 = ($Multiplicity1 - 1)*g1 + ($Multiplicity2 - 2)*g2 + ($Multiplicity3 - 3)*g3;
id mark2 = ($Multiplicity1 - 4)*g1 + ($Multiplicity2 - 1)*g2 + ($Multiplicity3 - 2)*g3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartLoadMultiplicitiesToDollars_14 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
*
symbols mark1,mark2,g1,g2;
*
local F = mark1*APd1^2*APd2^3 + mark2*APd3*APd4^4;
.sort
*
if (count(mark1,1) > 0);
  $BasisDen1 = APd1;
  $BasisDen2 = APd2;
elseif (count(mark2,1) > 0);
  $BasisDen1 = APd3;
  $BasisDen2 = APd4;
endif;
*
#call ApartLoadMultiplicitiesToDollars(BasisDen,Multiplicity,2)
id mark1 = ($Multiplicity1 - 2)*g1 + ($Multiplicity2 - 3)*g2;
id mark2 = ($Multiplicity1 - 1)*g1 + ($Multiplicity2 - 4)*g2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartLoadMultiplicitiesToDollars_15 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
*
symbols mark1,mark2,g1,g2;
*
local F = mark1*APd1^3*APd2 + mark2*APd2^2*APd1^5;
.sort
*
if (count(mark1,1) > 0);
  $BasisDen1 = APd1;
  $BasisDen2 = APd2;
elseif (count(mark2,1) > 0);
  $BasisDen1 = APd2;
  $BasisDen2 = APd1;
endif;
*
#call ApartLoadMultiplicitiesToDollars(BasisDen,Multiplicity,2)
id mark1 = ($Multiplicity1 - 3)*g1 + ($Multiplicity2 - 1)*g2;
id mark2 = ($Multiplicity1 - 2)*g1 + ($Multiplicity2 - 5)*g2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartLoadMultiplicitiesToDollars_16 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
*
symbols mark1,mark2,g1,g2;
*
local F = mark1*APd1^2*APd2 + mark2*APd3^3;
.sort
*
if (count(mark1,1) > 0);
  $BasisDen1 = APd1;
  $BasisDen2 = APd2;
elseif (count(mark2,1) > 0);
  $BasisDen1 = APd3;
  $BasisDen2 = APd4;
endif;
*
#call ApartLoadMultiplicitiesToDollars(BasisDen,Multiplicity,2)
id mark1 = ($Multiplicity1 - 2)*g1 + ($Multiplicity2 - 1)*g2;
id mark2 = ($Multiplicity1 - 3)*g1 + ($Multiplicity2 - 0)*g2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartLoadMultiplicitiesToDollars_17 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
*
symbols mark1,mark2,mark3,g1,g2;
*
local F = mark1*APd1*APd2^2 + mark2*APd3^4*APd4 + mark3*APd5^2*APd6^3;
.sort
*
if (count(mark1,1) > 0);
  $BasisDen1 = APd1;
  $BasisDen2 = APd2;
elseif (count(mark2,1) > 0);
  $BasisDen1 = APd3;
  $BasisDen2 = APd4;
elseif (count(mark3,1) > 0);
  $BasisDen1 = APd5;
  $BasisDen2 = APd6;
endif;
*
#call ApartLoadMultiplicitiesToDollars(BasisDen,Multiplicity,2)
id mark1 = ($Multiplicity1 - 1)*g1 + ($Multiplicity2 - 2)*g2;
id mark2 = ($Multiplicity1 - 4)*g1 + ($Multiplicity2 - 1)*g2;
id mark3 = ($Multiplicity1 - 2)*g1 + ($Multiplicity2 - 3)*g2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartLoadMultiplicitiesToDollars_18 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "3"
*
symbols mark1,mark2,g1,g2,g3;
*
local F = mark1*APd1*APd2^2*APd3^3 + mark2*APd4^2*APd5^3*APd6;
.sort
*
if (count(mark1,1) > 0);
  $BasisDen1 = APd1;
  $BasisDen2 = APd2;
  $BasisDen3 = APd3;
elseif (count(mark2,1) > 0);
  $BasisDen1 = APd4;
  $BasisDen2 = APd5;
  $BasisDen3 = APd6;
endif;
*
#call ApartLoadMultiplicitiesToDollars(BasisDen,Multiplicity,3)
id mark1 = ($Multiplicity1 - 1)*g1 + ($Multiplicity2 - 2)*g2 + ($Multiplicity3 - 3)*g3;
id mark2 = ($Multiplicity1 - 2)*g1 + ($Multiplicity2 - 3)*g2 + ($Multiplicity3 - 1)*g3;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
*
*{{{ ApartLoadMultiplicitiesToDollars_19 :
#include- ../src/formapart.h
*
#Redefine APnumberOfVariables "2"
*
symbols mark1,mark2,g1,g2;
*
local F = mark1*APd1^2*APd2*APd9^3 + mark2*APd3*APd4^2*APd1^5;
.sort
*
if (count(mark1,1) > 0);
  $BasisDen1 = APd1;
  $BasisDen2 = APd2;
elseif (count(mark2,1) > 0);
  $BasisDen1 = APd3;
  $BasisDen2 = APd4;
endif;
*
#call ApartLoadMultiplicitiesToDollars(BasisDen,Multiplicity,2)
id mark1 = ($Multiplicity1 - 2)*g1 + ($Multiplicity2 - 1)*g2;
id mark2 = ($Multiplicity1 - 1)*g1 + ($Multiplicity2 - 2)*g2;
*
.sort
*
print +ss;
.end
assert succeeded?
assert result("F") =~ expr("0")
*}}}
