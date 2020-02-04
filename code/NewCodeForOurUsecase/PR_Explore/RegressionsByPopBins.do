global derived "${bartikFolder}/derived${extraDerivedParam}"

use "${derived}/bartikDataWithNeighbors_2000-2017", clear

sort population2010
gen populationBin = floor(_n/100) 

forvalues i = 0(1)7 {
	reg kfr_diff adj_bartik2010 if populationBin == `i'
}