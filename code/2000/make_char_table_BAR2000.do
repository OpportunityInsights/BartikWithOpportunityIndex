



clear all
set matsize 1000

global data_path "C:\Users\per023\Documents\GitHub\gpss_replication\data/2000"
use $data_path/input_BAR2, clear

local controls male race_white native_born educ_hs educ_coll veteran nchild
local weight pop1980

local y kfr_pooled_pooled_p25
local x emp_ch

local ind_stub sh_ind_
local growth_stub nat_empl_ind_

local time_var year
local cluster_var czone

qui tab year2, gen(year_)
drop year_1

levelsof `time_var', local(years)

egen mean_growth = rowmean(`growth_stub'*)
foreach growth of varlist `growth_stub'* {
	qui replace `growth' = `growth' - mean_growth
	}
drop mean_growth




foreach ind_var of varlist `ind_stub'* {
	if regexm("`ind_var'", "`ind_stub'(.*)") {
		local ind_num = regexs(1)
		replace `growth_stub'`ind_num' = 0 if `growth_stub'`ind_num' == .
		gen b_`ind_num' = `ind_var' * `growth_stub'`ind_num'
		}
	}
drop z2
egen z2 = rowtotal(b_*)
drop b_*


drop if czone == .


label var `ind_stub'42 "Oil and Gas Extraction"
label var `ind_stub'351 "Motor Vehicles"
label var z2 "Bartik"


label var male "Male"
label var race_white "White"
label var native_born "Native Born"
label var educ_hs "12th Grade Only"
label var educ_coll "Some College"
label var veteran "Veteran"
label var nchild "\# of Children"




eststo clear
preserve
foreach var of varlist `ind_stub'42 `ind_stub'351 z2 {
	replace `var' = `var' *100 if "`var'" != "`z'"
	if regexm("`var'", "`ind_stub'(.*)") {
		local ind = regexs(1) 
		}
	eststo: reg `var' male race_white native_born educ_hs educ_coll veteran nchild [aweight=`weight'], cluster(czone)
	estadd local pop_weight = "Yes"	
	}
restore

esttab using $data_path/results/bar_characteristics.tex, 	drop(_cons) b(3) not se replace nostar booktabs ///
	stats(pop_weight r2 N , fmt(0 2 0) labels("Population Weighted" `"$ R^2$"' "N")) label ///
	nonumbers compress collabels(none) nogaps									//Write regression output to LaTeX




