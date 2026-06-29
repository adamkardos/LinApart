***************************
* PREPROCESSOR VARIABLES: *
***************************
#define APvariables ""
#define APnumberOfVariables ""
#define APnumberOfDenominators ""
#define APtempCounter "0"
#define APtempPrefix "TMP"
#define APglobalOrder "0"
#define APorderDescending "0"
#define APuseBareiss "0"
#define APuseGlobalNullRelations "0"
*
************************
* AUXILIARY FUNCTIONS: *
************************
cfunction APaux;
cfunction APaux1,...,APaux9;
*
************************
* AUXILIARY VARIABLES: *
************************
symbols APn1,...,APn99;
*
**************************
* DENOMINATOR FUNCTIONS: *
**************************
cfunction APden;
cfunction APdens;
cfunction APdensMult;
cfunction APselDen;
************************
* DENOMINATOR SYMBOLS: *
************************
symbols APd1,...,APd99;
set APdensSet : APd1,...,APd99;
*
*******************
* MATRIX-RELATED: *
*******************
cfunctions APdet,APrank;
cfunctions AProw,APcol,APbasisRow,APbasisCol,APnonBasisRow,APsubRow;
cfunction APselNull;
cfunctions APnull,APnull1,...,APnull99;
set APnullSet : APnull1,...,APnull99;
*
***********
* TABLES: *
***********
ctable,sparse,APdenTbl(1);
ctable,sparse,APcoeffTbl(2);
ctable,sparse,APpermTbl(1);
*
*******************
* NULL RELATIONS: *
*******************
cfunction APcollect;
cfunction APtoEliminate;
cfunction APtoReduce;
*
**********
* BASES: *
**********
cfunction APbasis,APnonBasis,APsubBasis;
*
************************
* GENERATING FUNCTION: *
************************
cfunction APgenDen;
cfunction APcoeff;
*
**************
* EXPANSION: *
**************
cfunction APordo;
