clear all
set matsize 1000
global bartikFolder "$dropbox\outside\Bartik_Shock"
global raw "$bartikFolder\raw"
global derived "$bartikFolder/derived"


foreach ageSplit in "yes" "no" {
foreach educSplit in "yes" "no" {
local fileSuffix _ageSplit_`ageSplit'_educSplit_`educSplit'
append using "$raw/input_BAR2`fileSuffix'"


}
}

capture drop _merge
save "$raw/input_BAR2", replace
