clear all
set matsize 1000
global bartikFolder "$dropbox\outside\Bartik_Shock"
global raw "$bartikFolder\raw"
global derived "$bartikFolder/derived"

use "$raw/input_BAR2", clear

local varsForCollapse nat_empl_ind_* sh_ind_* mtg mtg2 ///
	ownership foodstamp rent hhincome valueh hhwt hhwt_cz male married race_white ///
	race_black race_namerican race_asian race_other hispanic native_born yrs_us_lt10 ///
	educ_lt12 educ_hs educ_coll_more educ_coll in_lf full_time migr5_same_house ///
	migr5_same_state migr1_same_house migr1_same_state veteran famsize nchild nchlt5 ///
	age uhrswork inctot ftotinc incss incwelfr incearn sei hwsei perwt perwt_cz ///
	male_raw race_white_raw native_born_raw educ_hs_raw educ_coll_raw ///
	veteran_raw nchild_raw male_1980 race_white_1980 native_born_1980 educ_hs_1980 ///
	educ_coll_1980 veteran_1980 nchild_1980 male_1980_1990 race_white_1980_1990 ///
	native_born_1980_1990 educ_hs_1980_1990 educ_coll_1980_1990 veteran_1980_1990 ///
	nchild_1980_1990 male_1980_2000 race_white_1980_2000 native_born_1980_2000 ///
	educ_hs_1980_2000 educ_coll_1980_2000 veteran_1980_2000 nchild_1980_2000 year2 ///
	empl1980 wage1980 empl1990 wage1990 empl2000 wage2000 empl2010 wage2010 pop1980 ///
	yr1980_sh_ind* z2 median_rent state rent_ch hhinc_mean2000 mean_commutetime2000 ///
	frac_coll_plus2000 frac_coll_plus2010 foreign_share2010 med_hhinc2016 med_hhinc1990 ///
	poor_share2010 poor_share2000 poor_share1990 share_black2010 share_hisp2010 ///
	share_asian2010 share_black2000 share_white2000 share_hisp2000 share_asian2000 ///
	gsmn_math_g3_2013 rent_twobed2015 singleparent_share2010 singleparent_share1990 ///
	singleparent_share2000 traveltime15_2010 emp2000 mail_return_rate2010 ///
	ln_wage_growth_hs_grad nonwhite_share2010 popdensity2010 popdensity2000 ///
	job_growth_1990_2010 ann_avg_job_growth_2004_2013 job_density_2013 wrluri

gen empl = .
foreach year in 1980 1990 2000 {
replace empl = empl`year' if year == `year'
}
