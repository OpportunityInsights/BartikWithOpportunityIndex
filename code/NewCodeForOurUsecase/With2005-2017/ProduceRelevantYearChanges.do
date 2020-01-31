clear all
set matsize 1000
global bartikFolder "$dropbox\outside\Bartik_Shock"
global raw "$bartikFolder\raw"
global derived "$bartikFolder/derived$extraDerivedParam"

use "$raw/input_BARWithoutIndEmplCh1980-2017", clear

local delta = 6
levelsof year, local(years)
gen wage = .
gen empl = .
foreach year in `years' {
 replace wage = wage`year' if year == `year'
 replace empl = empl`year' if year == `year'
}

replace year = 2006 if year >= 2005 & year <= 2007
replace year = 2010 if year >= 2009 & year <= 2011
replace year = 2016 if year >= 2015 & year <= 2017

keep if inlist(year, 2000, 2006, 2010, 2016)

collapse (rawsum) population = perwt_cz (mean) wage* emp* natind* sh_ind* [aw = perwt_cz], by(czone year ageDecile educ_coll_lt4yrs educ_coll_4yrs)
capture drop nat_empl_ind_

foreach startYear in 2000 2010 {
preserve
local endYear = `startYear' + `delta'

keep if inlist(year, `startYear', `endYear')

local delta = (`endYear' - `startYear')

egen panelVar = group(czone ageDecile educ_coll_lt4yrs educ_coll_4yrs)
sort panelVar year
tsset panelVar year, delta(`delta')

gen wage_ch = ((F.wage-wage)/wage)/*/(`delta')*/
gen emp_ch = ((F.empl-empl)/empl)/*/(`delta')*/


foreach x of varlist natindwt_* {
	if regexm("`x'", "^natindwt_(.*)$") {
		local tail_stub "`=regexs(1)'"
		}

	gen nat_empl_ind_lo_`tail_stub' = ((F.natindwt_`tail_stub'-natindwt_`tail_stub')/natindwt_`tail_stub')/*/(`delta')*/
	gen nat_empl_ind_`tail_stub' = ((F.natindwt2_`tail_stub'-natindwt2_`tail_stub')/natindwt2_`tail_stub')/*/(`delta')*/
	
	}

foreach x of varlist nat_empl_ind_* nat_empl_ind_lo_* {
	egen _`x' = mean(`x'), by(year)
	replace `x' = _`x' if `x' == . & _`x' != .
	replace `x' = 0 if `x' == . & _`x' == .	
	drop _`x'
	}
drop natind*

keep if year == `startYear'

tempfile bartik`startYear'
save `bartik`startYear''
restore
}
use `bartik2000', clear
append using `bartik2010'

save "$derived/InputBartik2000-2017", replace
