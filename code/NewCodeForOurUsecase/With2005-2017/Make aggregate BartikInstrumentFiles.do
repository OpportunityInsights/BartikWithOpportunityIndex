clear all
set matsize 1000
global bartikFolder "$dropbox\outside\Bartik_Shock"
global raw "$bartikFolder\raw"
global derived "$bartikFolder/derived$extraDerivedParam"

// make allBartikData set
/*foreach baseYear in 1980 1990 2000 {
use "$derived/`baseYear'/IndustryWeights", clear
rename alpha1 alpha
rename beta2 beta
keep ind alpha beta
gen ones = 1
reshape wide alpha beta, i(ones) j(ind)

tempfile industryWeights
save `industryWeights'

use "$derived/`baseYear'/BartikInst", clear
keep czone bartikInst educ_coll_lt4yrs educ_coll_4yrs ageDecile 
gen ones = 1
merge m:1 ones using `industryWeights'
drop ones
drop _merge
gen year = `baseYear'

tempfile bartikDataYear`baseYear'
save `bartikDataYear`baseYear''
}

use `bartikDataYear1980', clear
append using `bartikDataYear1990'
append using `bartikDataYear2000'
*/
local delta = 6
clear
foreach startYear in 2000 2010 {
	local endYear = `startYear' + `delta'
	append using "$derived/`startYear'/BartikInst`startYear'-`endYear'"
}

merge 1:1 czone year educ_coll_lt4yrs educ_coll_4yrs ageDecile using  "$derived/InputBartik2000-2017", nogen

merge m:1 czone year using "$derived/rentCosts", keep(1 3) nogen

rename czone cz

merge m:1 cz using "$dropbox/outside/finer_geo/website/data/cz_covariates.dta", keep(1 3) nogen
preserve

use "$dropbox/outside\finer_geo\data\raw\census\data_for_paper\tract_race_gender_late_dp.dta", clear

keep state county kfr_pooled_pooled_p25 kfr_26_pooled_pooled_p25 kfr_pooled_pooled_n
merge m:1 state county using "$dropbox\outside\finer_geo\data\raw\crosswalks\cw_2010cty_1990cz", nogen keep(3) keepusing(cz)
collapse (mean) kfr_26_pooled_pooled_p25 ///
	kfr_pooled_pooled_p25 [aw = kfr_pooled_pooled_n], by(cz)

rename kfr_26_pooled_pooled_p25 kfr_26_pooled_pooled_p25_late
rename kfr_pooled_pooled_p25 kfr_2015_pooled_pooled_p25_late

save "$raw/kfr_late", replace
restore

preserve

use "$dropbox/outside\finer_geo\data\raw\census\data_for_paper\tract_race_gender_early_dp.dta", clear

keep state county kfr_pooled_pooled_p25 kfr_26_pooled_pooled_p25 kfr_pooled_pooled_n kfr_26_pooled_pooled_n
merge m:1 state county using "$dropbox\outside\finer_geo\data\raw\crosswalks\cw_2010cty_1990cz", nogen keep(3) keepusing(cz)
collapse (mean) kfr_26_pooled_pooled_p25 ///
	kfr_pooled_pooled_p25 [aw = kfr_pooled_pooled_n], by(cz)
	
rename kfr_26_pooled_pooled_p25 kfr_26_pooled_pooled_p25_early
rename kfr_pooled_pooled_p25 kfr_2015_pooled_pooled_p25_early

save "$raw/kfr_early", replace
restore


merge m:1 cz using "$raw/kfr_early", nogen

merge m:1 cz using "$raw/kfr_late", nogen

rename cz czone

gen kfr_diff = kfr_26_pooled_pooled_p25_late - kfr_26_pooled_pooled_p25_early

replace ageDecile = . if ageDecile == -1
replace educ_coll_lt4yrs = . if educ_coll_lt4yrs == -1
replace educ_coll_4yrs = . if educ_coll_4yrs == -1

gen educ_options = educ_coll_lt4yrs + 2* educ_coll_4yrs

	//capture drop wage_ch emp_ch

	
save "$derived/aggregateBartikData_2000-2017", replace

