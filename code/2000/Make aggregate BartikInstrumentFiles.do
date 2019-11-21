clear all
set matsize 1000
global bartikFolder "$dropbox\outside\Bartik_Shock"
global raw "$bartikFolder\raw"
global derived "$bartikFolder/derived"

// make allBartikData set
foreach baseYear in 1980 1990 2000 {
use "$derived/`baseYear'/IndustryWeights", clear
rename alpha1 alpha
rename beta2 beta
keep ind alpha beta
gen ones = 1
reshape wide alpha beta, i(ones) j(ind)

tempfile industryWeights
save `industryWeights'

use "$derived/`baseYear'/BartikInst", clear
keep czone bartikInst
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

merge 1:1 czone year using "$raw/input_BAR2"

drop _merge

save "$derived/aggregateBartikData", replace
