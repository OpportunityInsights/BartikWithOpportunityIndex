clear all
global bartikFolder "${dropbox}/outside/Bartik_Shock"
global raw "${bartikFolder}/raw"
global derived "${bartikFolder}/derived${extraDerivedParam}"

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
	append using "${derived}/`startYear'/BartikInst`startYear'-`endYear'"
}

merge 1:1 czone year educ_coll_lt4yrs educ_coll_4yrs ageDecile using ///
	"$derived/InputBartik2000-2017", nogen
merge m:1 czone year using "$derived/rentCosts", keep(1 3) nogen

rename czone cz

merge m:1 cz ///
	using "$dropbox/outside/finer_geo/website/data/cz_covariates.dta", ///
	keep(1 3) nogen

preserve
use state county kfr_pooled_pooled_p25 kfr_26_pooled_pooled_p25 ///
	kfr_pooled_pooled_p75 kfr_26_pooled_pooled_75 kfr_pooled_pooled_n ///
	using "$dropbox/outside/finer_geo/data/raw/census/data_for_paper/tract_race_gender_late_dp.dta", clear

merge m:1 state county using ///
	"$dropbox/outside/finer_geo/data/raw/crosswalks/cw_2010cty_1990cz", ///
	nogen keep(3) keepusing(cz)

collapse (mean) kfr_26_pooled_pooled_p25 kfr_pooled_pooled_p25 ///
	kfr_pooled_pooled_p75 kfr_26_pooled_pooled_p75 ///
	[aw = kfr_pooled_pooled_n], by(cz)

rename (kfr_26_pooled_pooled_p25 kfr_pooled_pooled_p25 ///
		kfr_26_pooled_pooled_p75 kfr_pooled_pooled_p75) ///
	   (kfr_26_pooled_pooled_p25_late kfr_2015_pooled_pooled_p25_late ///
		kfr_26_pooled_pooled_p75_late kfr_2015_pooled_pooled_p75_late)

save "$raw/kfr_late", replace
restore

preserve
use state county kfr_pooled_pooled_p25 kfr_26_pooled_pooled_p25 ///
	kfr_pooled_pooled_p75 kfr_26_pooled_pooled_75 kfr_pooled_pooled_n ///
	using "$dropbox/outside/finer_geo/data/raw/census/data_for_paper/tract_race_gender_early_dp.dta", clear

merge m:1 state county using ///
	"$dropbox/outside/finer_geo/data/raw/crosswalks/cw_2010cty_1990cz", ///
	nogen keep(3) keepusing(cz)

collapse (mean) kfr_26_pooled_pooled_p25 kfr_pooled_pooled_p25 ///
	kfr_26_pooled_pooled_p75 kfr_pooled_pooled_p75 ///
	[aw = kfr_pooled_pooled_n], by(cz)

rename (kfr_26_pooled_pooled_p25 kfr_pooled_pooled_p25 ///
		kfr_26_pooled_pooled_p75 kfr_pooled_pooled_p75) ///
	   (kfr_26_pooled_pooled_p25_early kfr_2015_pooled_pooled_p25_early ///
		kfr_26_pooled_pooled_p75_early kfr_2015_pooled_pooled_p75_early)

save "$raw/kfr_early", replace
restore

merge m:1 cz using "$raw/kfr_early", nogen
merge m:1 cz using "$raw/kfr_late", nogen

rename cz czone

gen kfr_diff = kfr_26_pooled_pooled_p25_late - ///
			   kfr_26_pooled_pooled_p25_early

replace ageDecile = . if ageDecile == -1
replace educ_coll_lt4yrs = . if educ_coll_lt4yrs == -1
replace educ_coll_4yrs = . if educ_coll_4yrs == -1

gen educ_options = educ_coll_lt4yrs + 2 * educ_coll_4yrs

save "$derived/aggregateBartikData_2000-2017", replace

/*
local vars kfr* alpha* beta* bartikInst nat_empl_ind_* sh_ind_* mtg mtg2 ///
	ownership foodstamp rent hhincome valueh hhwt hhwt_cz male married race_white ///
	race_black race_namerican race_asian race_other hispanic native_born yrs_us_lt10 ///
	educ_lt12 educ_hs educ_coll_more educ_coll in_lf full_time migr5_same_house ///
	migr5_same_state migr1_same_house migr1_same_state veteran famsize nchild nchlt5 ///
	age uhrswork inctot ftotinc incss incwelfr incearn sei hwsei perwt perwt_cz ///
	male_raw race_white_raw native_born_raw educ_hs_raw educ_coll_raw ///
	veteran_raw nchild_raw male_1980 race_white_1980 native_born_1980 educ_hs_1980 ///
	educ_coll_1980 veteran_1980 nchild_1980 male_1980_1990 race_white_1980_1990 ///
	native_born_1980_1990 educ_hs_1980_1990 educ_coll_1980_1990 veteran_1980_1990 ///
	nchild_1980_1990 male_1980_2000 race_white_1980_2000 native_born_1980_2000 ///
	educ_hs_1980_2000 educ_coll_1980_2000 veteran_1980_2000 nchild_1980_2000 year2 ///
	empl1980 wage1980 empl1990 wage1990 empl2000 wage2000 empl2010 wage2010 pop1980 ///
	yr1980_sh_ind* z2 median_rent state rent_ch hhinc_mean2000 mean_commutetime2000 ///
	frac_coll_plus2000 frac_coll_plus2010 foreign_share2010 med_hhinc2016 med_hhinc1990 ///
	poor_share2010 poor_share2000 poor_share1990 share_black2010 share_hisp2010 ///
	share_asian2010 share_black2000 share_white2000 share_hisp2000 share_asian2000 ///
	gsmn_math_g3_2013 rent_twobed2015 singleparent_share2010 singleparent_share1990 ///
	singleparent_share2000 traveltime15_2010 emp2000 mail_return_rate2010 ///
	ln_wage_growth_hs_grad nonwhite_share2010 popdensity2010 popdensity2000 ///
	job_growth_1990_2010 ann_avg_job_growth_2004_2013 job_density_2013 wrluri

	*/
/*
gen ones = 1
collapse (mean) `vars' ones [aw = population], by(educ_options czone year)
rename ones population
save "$derived/aggregateBartikData_splitByEduc", replace

gen ones = 1
collapse (mean) `vars' ones [aw = population], by(czone year)
rename ones population
save "$derived/aggregateBartikData_splitByNone", replace

use "$derived/aggregateBartikData_splitByAgeEduc", clear
gen ones = 1
collapse (mean) `vars' ones [aw = population], by(ageDecile czone year)
rename ones population
save "$derived/aggregateBartikData_splitByAge", replace


use "$derived/aggregateBartikData_splitByAgeEduc", clear
append using "$derived/aggregateBartikData_splitByEduc"
append using "$derived/aggregateBartikData_splitByAge"
append using "$derived/aggregateBartikData_splitByNone"

*/
/*
gen wage_ch = .
gen emp_ch = .
foreach baseYear in 1980 1990 2000 {
	local endYear = `baseYear' + 10
	di `endYear'

		replace wage_ch = (wage`endYear' - wage`baseYear')/wage`baseYear' if year == `baseYear'
		replace emp_ch = (empl`endYear' - empl`baseYear')/empl`baseYear' if year == `baseYear'

}


save "$derived/aggregateBartikData_2000-2017", replace
*/
