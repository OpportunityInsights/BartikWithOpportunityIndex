

clear all
set matsize 1000

global data_path "../data/"
use $data_path/input_BAR2, clear

local controls male race_white native_born educ_hs educ_coll veteran nchild
local weight pop1980

local y wage_ch
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
foreach ind_var of varlist sh_ind_* {
	gen `ind_var'_1980b = `ind_var' if year == 1980
	by czone (year): gen init_`ind_var' = `ind_var'_1980b[1]
	drop `ind_var'_1980b
	qui sum init_`ind_var'
	if r(mean) == 0 {
		drop init_`ind_var'
		if regexm("`ind_var'", "`ind_stub'(.*)") {
			local ind_num = regexs(1)
			}
		}
	}

foreach var of varlist init_sh_ind_* {
	if regexm("`var'", "init_sh_ind_(.*)") {
		local ind = regexs(1) 
		gen nat1980_empl_ind_`ind' = `growth_stub'`ind'
		}
	}

sort czone year
foreach control of varlist `controls' {
	gen `control'_1980b = `control' if year == 1980
	by czone (year): gen init_`control' = `control'_1980b[1]
	drop `control'_1980b
}

local ind_stub init_sh_ind_
local controls init_male init_race_white init_native_born init_educ_hs init_educ_coll init_veteran init_nchild
local growth_stub nat1980_empl_ind_



foreach year in `years' {
	foreach ind_var of varlist `ind_stub'* {
		gen t`year'_`ind_var' = `ind_var' * (year == `year')
		}
	foreach var of varlist `growth_stub'* {
		gen t`year'_`var'b = `var' if year == `year'
		egen t`year'_`var' = max(t`year'_`var'b), by(czone)
		drop t`year'_`var'b
		replace t`year'_`var' = 0 if t`year'_`var' == .
		}
	foreach ind_var of varlist `controls' {
		if `year' != 1980 {
			gen t`year'_`ind_var' = `ind_var' * (year == `year')
			}
		}
	}

qui desc t*_`growth_stub'*, varlist full
disp wordcount(r(varlist))
qui desc t*_`ind_stub'*, varlist
disp wordcount(r(varlist))

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


local controls t*_init_male t*_init_race_white t*_init_native_born t*_init_educ_hs t*_init_educ_coll t*_init_veteran t*_init_nchild year_*



drop if czone == .
qui gen bartikInst = 0
foreach var of varlist `ind_stub'* {
	if regexm("`var'", "`ind_stub'(.*)") {
		local ind = regexs(1) 
		}
	tempvar temp
	qui replace bartikInst = bartikInst + `var' * `growth_stub'`ind'
}
qui regress `x' bartikInst `controls' [aweight=`weight'], cluster(czone) absorb(czone)
	local pi_bart = _b[bartikInst]
	qui test bartikInst
	local F_bart = r(F)
	qui reghdfe  `y' bartikInst `controls'   [aweight=`weight'], cluster(czone) absorb(czone) 
	local gamma_bart = _b[bartikInst]
	qui ivreghdfe  `y' `controls' (`x'=bartikInst) [aweight=`weight'], cluster(czone) absorb(czone)
	local beta_bart = string(_b[`x'], "%9.3f") 


