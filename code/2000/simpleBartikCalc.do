clear all
set matsize 1000
 
local baseYear = 2000 


global data_path "C:\Users\per023\Documents\GitHub\gpss_replication\data/`baseYear'"
use $data_path/input_BAR2, clear

local controls male race_white native_born educ_hs educ_coll veteran nchild
local weight pop1980

local y kfr_pooled_pooled_p25
local x emp_ch

local ind_stub init_sh_ind_
local growth_stub nat_empl_ind_

local time_var year
local cluster_var czone

qui tab year2, gen(year_)
drop year_1

levelsof `time_var', local(years)

/** Demean growth rates **/
egen mean_growth = rowmean(`growth_stub'*)
foreach growth of varlist `growth_stub'* {
	qui replace `growth' = `growth' - mean_growth
	}
drop mean_growth

/* Construct initial industry shares  and controls */
sort czone year
// foreach ind_var of varlist sh_ind_* {
// 	gen `ind_var'_`baseYear'b = `ind_var' if year == `baseYear'
// 	by czone (year): gen init_`ind_var' = `ind_var'_`baseYear'b[1]
// 	drop `ind_var'_`baseYear'b
// 	qui sum init_`ind_var'
// 	if r(mean) == 0 {
// 		drop init_`ind_var'
// 		if regexm("`ind_var'", "`ind_stub'(.*)") {
// 			local ind_num = regexs(1)
// 			}
// 		}
// 	}
//
// foreach var of varlist init_sh_ind_* {
// 	if regexm("`var'", "init_sh_ind_(.*)") {
// 		local ind = regexs(1) 
// 		gen nat1980_empl_ind_`ind' = `growth_stub'`ind'
// 		}
// 	}

// sort czone year
// foreach control of varlist `controls' {
// 	gen `control'_`baseYear'b = `control' if year == `baseYear'
// 	by czone (year): gen init_`control' = `control'_`baseYear'b[1]
// 	drop `control'_`baseYear'b
// }

local ind_stub sh_ind_
local controls male race_white native_born educ_hs educ_coll veteran nchild
// local growth_stub nat1980_empl_ind_



// foreach year in `years' {
// 	foreach ind_var of varlist `ind_stub'* {
// 		gen t`year'_`ind_var' = `ind_var' * (year == `year')
// 		}
// 	foreach var of varlist `growth_stub'* {
// 		gen t`year'_`var'b = `var' if year == `year'
// 		egen t`year'_`var' = max(t`year'_`var'b), by(czone)
// 		drop t`year'_`var'b
// 		replace t`year'_`var' = 0 if t`year'_`var' == .
// 		}
// 	foreach ind_var of varlist `controls' {
// 		if `year' != 0 {
// 			gen t`year'_`ind_var' = `ind_var' * (year == `year')
// 			}
// 		}
// 	}

// qui desc t*_`growth_stub'*, varlist full
// disp wordcount(r(varlist))
// qui desc t*_`ind_stub'*, varlist
// disp wordcount(r(varlist))

egen test = rowtotal(`ind_stub'*), 
foreach ind_var of varlist `ind_stub'* {
	replace `ind_var' = `ind_var' / test
	if regexm("`ind_var'", "`ind_stub'(.*)") {
		local ind_num = regexs(1)
		replace `growth_stub'`ind_num' = 0 if `growth_stub'`ind_num' == .
		gen b_`ind_num' = `ind_var' * `growth_stub'`ind_num'
		}
	}
egen z3 = rowtotal(b_*)
drop b_*


local controls male race_white native_born educ_hs educ_coll veteran nchild



drop if czone == .


 foreach var of varlist `ind_stub'* {
 
	 qui summarize `var'
	 local max = r(max)
	 if `max' == 0 {
		drop `var'
			if regexm("`var'", "`ind_stub'(.*)") {
		local ind_num = regexs(1)
		drop `growth_stub'`ind_num'
		}
		
	 }
 }

drop if czone == .
qui gen bartikInst = 0
foreach var of varlist `ind_stub'* {
	if regexm("`var'", "`ind_stub'(.*)") {
		local ind = regexs(1) 
		}
	tempvar temp
	qui replace bartikInst = bartikInst + `var' * `growth_stub'`ind'
}
qui regress `x' bartikInst `controls' [aweight=`weight'], cluster(czone)
	local pi_bart = _b[bartikInst]
	qui test bartikInst
	local F_bart = r(F)
	qui reg  `y' bartikInst `controls'   [aweight=`weight'], cluster(czone)
	local gamma_bart = _b[bartikInst]
	qui ivreg2  `y' `controls' (`x'=bartikInst) [aweight=`weight'], cluster(czone) partial(`controls')
	local beta_bart = string(_b[`x'], "%9.3f") 

di `pi_bart' " " `gamma_bart' " " `beta_bart' 

keep czone czname kfr_pooled_pooled_p25 wage_ch emp_ch bartikInst
export delim "$data_path/Derived/BartikInst", replace
save "$data_path/Derived/BartikInst", replace
