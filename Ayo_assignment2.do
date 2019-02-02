*Change directory
cd "C:\Users\tbc\Desktop\PhD Sociology\stata"
*read data
use liquorstore.dta
*Describe data
describe

*frequency 
tab est

*Generating missing values for est_scale1
gen est_scale1=.
replace est_scale1=1 if est >=1 & est<=2
replace est_scale1=2 if est >=3 & est <=6
replace est_scale1=3 if est >=7 & est!=.

*Generating missing values for est_scales2 
gen est_scale2=.
replace est_scale2=1 if est >=1 & est<=4
replace est_scale2 = 2 if est >=5 & est!=.

* Creating Dummy variables from est_scale1. 
tab est_scale1, gen (estdummy)

* frequency for est_scale1 
tab est_scale1
*frequenct for est_scale2
tab est_scale2

* creating st_cnty_id
gen st_cnty_id=.
replace st_cnty_id= fipstate*1000+fipscty

save liquorstore.dta, replace





















