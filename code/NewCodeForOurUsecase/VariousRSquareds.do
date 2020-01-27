global derived "$bartikFolder/derived"

use "$derived/aggregateBartikData", clear
drop if educ_options ==.

//kfr_pooled_pooled_p25_late kfr_pooled_pooled_p25_early kfr_diff
local outcome kfr_pooled_pooled_p25_early 

keep bartikInst wage_ch `outcome' czone ageDecile year educ_options

reshape wide bartikInst wage_ch, i(`outcome' czone ageDecile year) j(educ_options)
reshape wide bartikInst* wage_ch*, i(`outcome' czone year) j(ageDecile)


reg `outcome' wage_ch* if year ==2000

