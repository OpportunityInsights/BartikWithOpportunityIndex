clear all
set matsize 1000
global bartikFolder "$dropbox\outside\Bartik_Shock"
global raw "$bartikFolder\raw"
global derived "$bartikFolder/derived"
global results "$bartikFolder/results"

use "$derived/aggregateBartikData", clear
keep if year >1980
collapse (sum) emp_ch bartikInst (mean) kfr_pooled_pooled_p25 job_growth_1990_2010, by(czone)
binscatter kfr_pooled_pooled_p25 emp_ch, title("KFR vs 1990-2010 Job Growth")
graph export "$results/1990-2010.pdf", as(pdf) replace

binscatter job_growth_1990_2010 emp_ch, title("emp_ch vs 1990-2010 Job Growth")
graph export "$results/1990-2010_emp_ch_vs_job_growth.pdf", as(pdf) replace


use "$derived/aggregateBartikData", clear
keep if year == 1990
binscatter kfr_pooled_pooled_p25 emp_ch, title("KFR vs 1990-2000 Job Growth")
graph export "$results/1990-2000.pdf", as(pdf) replace


use "$derived/aggregateBartikData", clear
keep if year == 2000
binscatter kfr_pooled_pooled_p25 emp_ch, title("KFR vs 2000-2010 Job Growth")
graph export "$results/2000-2010.pdf", as(pdf) replace


* Reduced form of Upward Mobility on Bartik
binscatter kfr_pooled_pooled_p25 bartikInst  [w=pop2000] , title("Upward Mobility vs. Bartik") name(reduced_form, replace)
graph export "$results/bartikInst.pdf", as(pdf) replace

use "$derived/aggregateBartikData", clear
binscatter kfr_pooled_pooled_p25 rent_ch if year == 1980 [w=pop1980], title("Upward Mobility vs. Rent Change") name(reduced_form, replace)
graph export "$results/KFR_rent_ch_1980-1990.pdf", as(pdf) replace

binscatter kfr_pooled_pooled_p25 rent_ch if year == 1990 [w=pop1990], title("Upward Mobility vs. Rent Change") name(reduced_form, replace)
graph export "$results/KFR_rent_ch_1990-2000.pdf", as(pdf) replace

binscatter kfr_pooled_pooled_p25 rent_ch if year == 2000 [w=pop2000], title("Upward Mobility vs. Rent Change") name(reduced_form, replace)
graph export "$results/KFR_rent_ch_2000-2010.pdf", as(pdf) replace

binscatter kfr_pooled_pooled_p25 rent_ch if year == 2000 & pop2000>2000000, title("KFR vs. Rent Ch Pop>2,000,000") name(reduced_form, replace)
graph export "$results/KFR_rent_ch_2000-2010LargePop.pdf", as(pdf) replace
binscatter kfr_pooled_pooled_p25 rent_ch if year == 2000 & pop2000<=500000, title("KFR vs. Rent Ch Pop<=500,000") name(reduced_form, replace)
graph export "$results/KFR_rent_ch_2000-2010SmallPop.pdf", as(pdf) replace

binscatter kfr_pooled_pooled_p25 rent_ch if year == 1990 & pop1990>2000000, title("KFR vs. Rent Ch Pop>2,000,000") name(reduced_form, replace)
graph export "$results/KFR_rent_ch_1990-2000LargePop.pdf", as(pdf) replace
binscatter kfr_pooled_pooled_p25 rent_ch if year == 1990 & pop1990<=500000, title("KFR vs. Rent Ch Pop<=500,000") name(reduced_form, replace)
graph export "$results/KFR_rent_ch_1990-2000SmallPop.pdf", as(pdf) replace

binscatter kfr_pooled_pooled_p25 rent_ch if year == 1980 & pop1980>2000000, title("KFR vs. Rent Ch Pop>2,000,000") name(reduced_form, replace)
graph export "$results/KFR_rent_ch_1980-1990LargePop.pdf", as(pdf) replace
binscatter kfr_pooled_pooled_p25 rent_ch if year == 1980 & pop1980<=500000, title("KFR vs. Rent Ch Pop<=500,000") name(reduced_form, replace)
graph export "$results/KFR_rent_ch_1980-1990SmallPop.pdf", as(pdf) replace




binscatter kfr_pooled_pooled_p25 emp_ch if year == 2000 & pop2000>500000, title("KFR vs. Emp Ch Pop>500,000") name(reduced_form, replace)
graph export "$results/KFR_emp_ch_2000-2010LargePop.png", as(wmf) replace
binscatter kfr_pooled_pooled_p25 emp_ch if year == 2000 & pop2000<=500000, title("KFR vs. Emp Ch Pop<=500,000") name(reduced_form, replace)
graph export "$results/KFR_emp_ch_2000-2010SmallPop.png", as(wmf) replace

binscatter kfr_pooled_pooled_p25 bartikInst if year == 2000 & pop2000>500000, title("KFR vs. Bartik Pop>500,000") name(reduced_form, replace)
graph export "$results/KFR_bartikInst_2000-2010LargePop.png", as(wmf) replace
binscatter kfr_pooled_pooled_p25 bartikInst if year == 2000 & pop2000<=500000, title("KFR vs. Bartik Pop<=500,000") name(reduced_form, replace)
graph export "$results/KFR_bartikInst_2000-2010SmallPop.png", as(wmf) replace

binscatter kfr_pooled_pooled_p25 wage_ch if year == 2000 & pop2000>500000, title("KFR vs. wage_ch Pop>500,000") name(reduced_form, replace)
graph export "$results/KFR_wage_ch_2000-2010LargePop.png", as(wmf) replace
binscatter kfr_pooled_pooled_p25 wage_ch if year == 2000 & pop2000<=500000, title("KFR vs. wage_ch Pop<=500,000") name(reduced_form, replace)
graph export "$results/KFR_wage_ch_2000-2010SmallPop.png", as(wmf) replace

binscatter  wage_ch bartikInst if year == 2000 & pop2000>500000, title("wageCh vs. Bartik Pop>500,000") name(reduced_form, replace)
graph export "$results/wageCh_bartikInst_2000-2010LargePop.png", as(wmf) replace
binscatter  wage_ch bartikInst if year == 2000 & pop2000<=500000, title("wageCh vs. Bartik Pop<=500,000") name(reduced_form, replace)
graph export "$results/wageCh_bartikInst_2000-2010SmallPop.png", as(wmf) replace


binscatter kfr_pooled_pooled_p25 emp_ch if year == 1990 & pop1990>500000, title("KFR vs. Emp Ch Pop>500,000") name(reduced_form, replace)
graph export "$results/KFR_emp_ch_1990-2000LargePop.png", as(wmf) replace
binscatter kfr_pooled_pooled_p25 emp_ch if year == 1990 & pop1990<=500000, title("KFR vs. Emp Ch Pop<=500,000") name(reduced_form, replace)
graph export "$results/KFR_emp_ch_1990-2000SmallPop.png", as(wmf) replace

binscatter kfr_pooled_pooled_p25 bartikInst if year == 1990 & pop1990>500000, title("KFR vs. Bartik Pop>500,000") name(reduced_form, replace)
graph export "$results/KFR_bartikInst_1990-2000LargePop.png", as(wmf) replace
binscatter kfr_pooled_pooled_p25 bartikInst if year == 1990 & pop1990<=500000, title("KFR vs. Bartik Pop<=500,000") name(reduced_form, replace)
graph export "$results/KFR_bartikInst_1990-2000SmallPop.png", as(wmf) replace

binscatter kfr_pooled_pooled_p25 wage_ch if year == 1990 & pop1990>500000, title("KFR vs. wage_ch Pop>500,000") name(reduced_form, replace)
graph export "$results/KFR_wage_ch_1990-2000LargePop.png", as(wmf) replace
binscatter kfr_pooled_pooled_p25 wage_ch if year == 1990 & pop1990<=500000, title("KFR vs. wage_ch Pop<=500,000") name(reduced_form, replace)
graph export "$results/KFR_wage_ch_1990-2000SmallPop.png", as(wmf) replace


binscatter kfr_pooled_pooled_p25 emp_ch if year == 1980 & pop1980>500000, title("KFR vs. Emp Ch Pop>500,000") name(reduced_form, replace)
graph export "$results/KFR_emp_ch_1980-1990LargePop.png", as(wmf) replace
binscatter kfr_pooled_pooled_p25 emp_ch if year == 1980 & pop1980<=500000, title("KFR vs. Emp Ch Pop<=500,000") name(reduced_form, replace)
graph export "$results/KFR_emp_ch_1980-1990SmallPop.png", as(wmf) replace

binscatter kfr_pooled_pooled_p25 bartikInst if year == 1980 & pop1980>500000, title("KFR vs. Bartik Pop>500,000") name(reduced_form, replace)
graph export "$results/KFR_bartikInst_1980-1990LargePop.png", as(wmf) replace
binscatter kfr_pooled_pooled_p25 bartikInst if year == 1980 & pop1980<=500000, title("KFR vs. Bartik Pop<=500,000") name(reduced_form, replace)
graph export "$results/KFR_bartikInst_1980-1990SmallPop.png", as(wmf) replace

binscatter kfr_pooled_pooled_p25 wage_ch if year == 1980 & pop1980>500000, title("KFR vs. wage_ch Pop>500,000") name(reduced_form, replace)
graph export "$results/KFR_wage_ch_1980-1990LargePop.png", as(wmf) replace
binscatter kfr_pooled_pooled_p25 wage_ch if year == 1980 & pop1980<=500000, title("KFR vs. wage_ch Pop<=500,000") name(reduced_form, replace)
graph export "$results/KFR_wage_ch_1980-1990SmallPop.png", as(wmf) replace


reg kfr_pooled_pooled_p25 bartikInst if year==2000 & pop2000>500000
reg kfr_pooled_pooled_p25 wage_ch if year==2000 & pop2000>500000
reg wage_ch bartikInst if year==2000 & pop2000>500000

reg kfr_pooled_pooled_p25 bartikInst if year==2000 & pop2000<=500000
reg kfr_pooled_pooled_p25 wage_ch if year==2000 & pop2000<=500000
reg wage_ch bartikInst if year==2000 & pop2000<=500000


reg kfr_pooled_pooled_p25 emp_ch if year==2000

reg kfr_pooled_pooled_p25 emp_ch popEmp pop2000 if year==2000
sum emp_ch popEmp logPop if year==2000
