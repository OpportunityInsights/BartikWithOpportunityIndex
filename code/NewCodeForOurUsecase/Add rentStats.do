clear all
set matsize 1000

global bartikFolder "$dropbox\outside\Bartik_Shock"
global raw "$bartikFolder\raw"
global derived "$bartikFolder/derived"
global results "$bartikFolder/results"

use "$dropbox/outside/finer_geo/data/derived/covariates/covariates_tract_wide.dta", clear

rename tract10 tract
rename state10 state
rename county10 county

merge m:1 county state using "${dropbox}/outside/finer_geo/data/raw/crosswalks/cw_2010cty_1990cz.dta", keep(match) nogen

keep cz state county tract median_rent1980 median_rent1990 median_rent2000 median_rent2010 pop1980 pop1990 pop2000 pop2010

reshape long median_rent pop, i(cz state county tract) j(year)

collapse (mean) median_rent (first) state [aweight = pop], by(cz year)
 
*reshape wide median_rent, i(cz state) j(year)

rename cz czone
tsset czone year, delta(10)
gen rent_ch = F.median_rent - median_rent 

drop if year == 2010

drop if czone == .

save "$derived/rentCosts", replace
