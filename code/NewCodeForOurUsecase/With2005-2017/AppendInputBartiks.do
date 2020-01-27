clear all
set matsize 1000
global bartikFolder "$dropbox\outside\Bartik_Shock"
global raw "$bartikFolder\raw"
global derived "$bartikFolder/derived"


foreach ageSplit in "no" {
foreach educSplit in "no" {
local fileSuffix _ageSplit_`ageSplit'_educSplit_`educSplit'
append using "$raw/input_BAR2`fileSuffix'2005-2017"
preserve
use "$raw/input_BAR2`fileSuffix'", clear
drop if year == 2010
tempfile Bartik19802000
save `Bartik19802000'
restore
append using `Bartik19802000'
}
}




drop wage_ch
drop emp_ch

preserve

collapse (first) wage* empl*, by (czone)
tempfile yearlyEmplWage
save `yearlyEmplWage'

restore

capture drop _merge

merge m:1 czone using `yearlyEmplWage', keepusing(empl* wage*) nogen




save "$raw/input_BARWithoutIndEmplCh1980-2017", replace
