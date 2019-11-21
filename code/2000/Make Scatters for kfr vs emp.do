clear all
set matsize 1000
global bartikFolder "$dropbox\outside\Bartik_Shock"
global raw "$bartikFolder\raw"
global derived "$bartikFolder/derived"
global results "$bartikFolder/results"

use "$derived/aggregateBartikData", clear
keep if year >1980
collapse (sum) emp_ch bartikInst (mean) kfr_pooled_pooled_p25, by(czone)
binscatter kfr_pooled_pooled_p25 emp_ch, title("KFR vs 1990-2010 Job Growth")
graph export "$results/1990-2010.pdf", as(pdf) replace

use "$derived/aggregateBartikData", clear
keep if year == 1990
binscatter kfr_pooled_pooled_p25 emp_ch, title("KFR vs 1990-2000 Job Growth")
graph export "$results/1990-2000.pdf", as(pdf) replace


use "$derived/aggregateBartikData", clear
keep if year == 2000
binscatter kfr_pooled_pooled_p25 emp_ch, title("KFR vs 2000-2010 Job Growth")
graph export "$results/2000-2010.pdf", as(pdf) replace


* Reduced form of Upward Mobility on Bartik
binscatter kfr_pooled_pooled_p25 bartikInst  [w=pop1980] , title("Upward Mobility vs. Bartik") name(reduced_form, replace)
graph export "$results/bartikInst.pdf", as(pdf) replace
