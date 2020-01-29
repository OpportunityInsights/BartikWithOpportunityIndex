* Create Input file to Used Rotemberg Weights ado

set more off
clear all
set matsize 10000

local delta 1

global home "/n/scratchlfs02/chetty_lab/Bartik/ACS2000-2017"

local cutVariables czone  ageDecile educ_coll_lt4yrs educ_coll_4yrs

*these locals shouldn't change unless you want spec to change
local controls = "male race_white native_born educ_hs educ_coll veteran nchild"
local controls_1980 = "male_1980 race_white_1980 native_born_1980 educ_hs_1980 educ_coll_1980 veteran_1980 nchild_1980"



foreach ageSplit in "no" {
foreach educSplit in "no" {
local fileSuffix _ageSplit_`ageSplit'_educSplit_`educSplit'

*create national industry share
*create 1980 population to weight the mean
use "${home}/raw/Characteristics_CZone`fileSuffix'", clear							
collapse (sum) pop2010=perwt_cz_lf if year==2010, by(czone  ageDecile educ_coll_lt4yrs educ_coll_4yrs)
egen tot_pop = total(pop2010)
replace pop2010 = pop2010 / tot_pop
drop tot_pop
tempfile czone_pop
save `czone_pop'

*cleaning controls file
use "${home}/raw/Characteristics_CZone`fileSuffix'", clear	
gen empl = perwt_cz_ft
gen wage = incwage_lf

keep `cutVariables' empl wage year
reshape wide wage empl, i(`cutVariables') j(year)
tempfile yearlyVariableLevels
save `yearlyVariableLevels'

use "${home}/raw/Characteristics_CZone`fileSuffix'", clear	
gen population = perwt_cz_lf
gen emp_ch = ((F.perwt_cz_ft - perwt_cz_ft)/perwt_cz_ft)/`delta'								
label var emp_ch "$\Delta$ Emp"
gen wage_ch = ((F.incwage_lf - incwage_lf)/incwage_lf)/`delta'								
label var wage_ch "$\Delta$ Wage"

drop *_all *_lf employed_ft incwage_ft
ren *_ft *
	
*standardize controls ONLY
foreach var of varlist `controls' {
	gen `var'_raw = `var'
	qui summ `var'					 			//Store variance
	replace `var' = `var'/r(sd)						//Standardize to have variance 1
	}

*create 1980 version to use in model 
/*foreach var of varlist `controls' {
	bys czone (year): gen `var'_1980 = `var'[1] if year[1]==1980
	label var `var'_1980 `"`: var label `var''"'
	}
*/

*manually create interaction terms
/*local controls_1980_full "" 
forval t = 2000(`delta')2017 {
	foreach var of varlist `controls_1980' {
		gen `var'_`t' = `var' * (year == `t')
		local controls_1980_full `controls_1980_full' `var'_`t'
		}
	}

di "`controls_1980'"
*/

gen year2 = year		//Duplicate of year, to include as interaction with only 2000 and 2010 levels with controls
label val year2 YEAR

merge m:1 `cutVariables' using `yearlyVariableLevels'

tempfile chars
save `chars'

*merge in shares
use "${home}/raw/shares_long_ind3_czone`fileSuffix'", clear


gen natindwt2 = natindwt + indwt 	//reverse the "Leave-Out"
/*
drop nat_empl_ind_
gen nat_empl_ind_lo_ = ((F.natindwt-natindwt)/natindwt)/(`delta')
gen nat_empl_ind_ = ((F.natindwt2-natindwt2)/natindwt2)/(`delta')
*/

keep natindwt natindwt2 sh_ind_ year czone ind3  ageDecile educ_coll_lt4yrs educ_coll_4yrs
rename natindwt natindwt_
rename natindwt2 natindwt2_
reshape wide natindwt_ natindwt2_ sh_ind_ , i(year czone ageDecile educ_coll_lt4yrs educ_coll_4yrs) j(ind3)

egen panelVar = group(czone ageDecile educ_coll_lt4yrs educ_coll_4yrs)
sort panelVar year
tsset panelVar year, delta(`delta')


merge m:1 czone year ageDecile educ_coll_lt4yrs educ_coll_4yrs using `chars', assert(2 3) nogen
merge m:1 czone ageDecile educ_coll_lt4yrs educ_coll_4yrs using `czone_pop', keep(1 3) nogen


foreach x of varlist sh_ind_* {
	replace `x' = 0 if `x' == .
	}


/*
foreach x of varlist nat_empl_ind_* nat_empl_ind_lo_* {
	egen _`x' = mean(`x'), by(year)
	replace `x' = _`x' if `x' == . & _`x' != .
	replace `x' = 0 if `x' == . & _`x' == .	
	drop _`x'
	}
*/

/*
bys czone (year): drop if year[1]!=1980	
foreach var of varlist sh_ind_* {
	bys czone (year): gen yr1980_`var' = `var'[1] if year[1]==1980		
	}
*/

/*
foreach x of varlist sh_ind_* {
	if regexm("`x'", "^sh_ind_(.*)$") {
		local tail_stub "`=regexs(1)'"
		}

	gen test_`tail_stub' = yr1980_sh_ind_`tail_stub' * (nat_empl_ind_lo_`tail_stub' )
	qui sum yr1980_sh_ind_`tail_stub'
	if r(mean) == 0 {
		drop yr1980_sh_ind_`tail_stub'
		}
	
	}
*/

/*egen z2 = rowtotal(test_*)
drop test_**/
discard
//keep if year!=2017

save "${home}/input_BAR2`fileSuffix'2005-2017", replace
}
}

