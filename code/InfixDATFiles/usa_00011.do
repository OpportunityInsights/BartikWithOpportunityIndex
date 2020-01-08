* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                 ///
  int     year       1-4      ///
  long    sample     5-10     ///
  double  serial     11-18    ///
  double  cbserial   19-31    ///
  double  hhwt       32-41    ///
  byte    statefip   42-43    ///
  int     conspuma   44-46    ///
  int     cpuma0010  47-50    ///
  byte    gq         51-51    ///
  byte    ownershp   52-52    ///
  byte    ownershpd  53-54    ///
  byte    mortgage   55-55    ///
  byte    mortgag2   56-56    ///
  int     rent       57-60    ///
  int     rentgrs    61-64    ///
  long    hhincome   65-71    ///
  byte    foodstmp   72-72    ///
  long    valueh     73-79    ///
  byte    nfams      80-81    ///
  byte    nsubfam    82-82    ///
  byte    ncouples   83-83    ///
  byte    nmothers   84-84    ///
  byte    nfathers   85-85    ///
  byte    multgen    86-86    ///
  byte    multgend   87-88    ///
  byte    qfoodstm   89-89    ///
  byte    qmortg2a   90-90    ///
  byte    qmortga2   91-91    ///
  byte    qmortgag   92-92    ///
  byte    qownersh   93-93    ///
  byte    qrent      94-94    ///
  byte    qrentgrs   95-95    ///
  byte    qvalueh    96-96    ///
  byte    qhhincome  97-97    ///
  int     pernum     98-101   ///
  double  perwt      102-111  ///
  byte    famunit    112-113  ///
  byte    famsize    114-115  ///
  byte    nchild     116-116  ///
  byte    nchlt5     117-117  ///
  byte    eldch      118-119  ///
  byte    relate     120-121  ///
  int     related    122-125  ///
  byte    sex        126-126  ///
  int     age        127-129  ///
  byte    marst      130-130  ///
  int     birthyr    131-134  ///
  byte    race       135-135  ///
  int     raced      136-138  ///
  byte    hispan     139-139  ///
  int     hispand    140-142  ///
  int     ancestr1   143-145  ///
  int     ancestr1d  146-149  ///
  int     ancestr2   150-152  ///
  int     ancestr2d  153-156  ///
  byte    citizen    157-157  ///
  byte    yrsusa2    158-158  ///
  byte    speakeng   159-159  ///
  byte    racesing   160-160  ///
  byte    racesingd  161-162  ///
  byte    school     163-163  ///
  byte    educ       164-165  ///
  int     educd      166-168  ///
  byte    gradeatt   169-169  ///
  byte    gradeattd  170-171  ///
  byte    schltype   172-172  ///
  byte    empstat    173-173  ///
  byte    empstatd   174-175  ///
  byte    labforce   176-176  ///
  int     occ        177-180  ///
  int     ind        181-184  ///
  byte    classwkr   185-185  ///
  byte    classwkrd  186-187  ///
  byte    wkswork2   188-188  ///
  byte    uhrswork   189-190  ///
  byte    wrklstwk   191-191  ///
  byte    absent     192-192  ///
  byte    looking    193-193  ///
  byte    availble   194-194  ///
  byte    wrkrecal   195-195  ///
  byte    workedyr   196-196  ///
  long    inctot     197-203  ///
  long    ftotinc    204-210  ///
  long    incwage    211-216  ///
  long    incbus00   217-222  ///
  long    incss      223-227  ///
  long    incwelfr   228-232  ///
  long    incinvst   233-238  ///
  long    incretir   239-244  ///
  long    incsupp    245-249  ///
  long    incother   250-254  ///
  long    incearn    255-261  ///
  int     poverty    262-264  ///
  byte    occscore   265-266  ///
  byte    sei        267-268  ///
  double  hwsei      269-272  ///
  double  presgl     273-275  ///
  double  prent      276-278  ///
  double  erscor90   279-282  ///
  double  edscor90   283-286  ///
  double  npboss90   287-290  ///
  byte    migrate1   291-291  ///
  byte    migrate1d  292-293  ///
  int     migplac1   294-296  ///
  byte    movedin    297-297  ///
  byte    vetstat    298-298  ///
  byte    vetstatd   299-300  ///
  byte    pwstate2   301-302  ///
  int     trantime   303-305  ///
  byte    qage       306-306  ///
  byte    qmarst     307-307  ///
  byte    qrelate    308-308  ///
  byte    qsex       309-309  ///
  byte    qcitizen   310-310  ///
  byte    qhispan    311-311  ///
  byte    qlanguag   312-312  ///
  byte    qrace      313-313  ///
  byte    qspeaken   314-314  ///
  byte    qyrimm     315-315  ///
  byte    qeduc      316-316  ///
  byte    qgradeat   317-317  ///
  byte    qschool    318-318  ///
  byte    qclasswk   319-319  ///
  byte    qempstat   320-320  ///
  byte    qind       321-321  ///
  byte    qocc       322-322  ///
  byte    quhrswor   323-323  ///
  byte    qwkswork   324-324  ///
  byte    qworkedy   325-325  ///
  byte    qincearn   326-326  ///
  byte    qincbus    327-327  ///
  byte    qincinvs   328-328  ///
  byte    qincothe   329-329  ///
  byte    qincreti   330-330  ///
  byte    qincss     331-331  ///
  byte    qincsupp   332-332  ///
  byte    qinctot    333-333  ///
  byte    qftotinc   334-334  ///
  byte    qincwage   335-335  ///
  byte    qincwelf   336-336  ///
  byte    qmigplc1   337-337  ///
  byte    qmigrat1   338-338  ///
  byte    qmovedin   339-339  ///
  byte    qvetper    340-340  ///
  byte    qvetstat   341-341  ///
  byte    qpwstat2   342-342  ///
  byte    qtrantim   343-343  ///
  using `"C:\Users\per023\Downloads\usa_00011.dat"'

replace hhwt      = hhwt      / 100
replace perwt     = perwt     / 100
replace hwsei     = hwsei     / 100
replace presgl    = presgl    / 10
replace prent     = prent     / 10
replace erscor90  = erscor90  / 10
replace edscor90  = edscor90  / 10
replace npboss90  = npboss90  / 10

format serial    %8.0g
format cbserial  %13.0g
format hhwt      %10.2f
format perwt     %10.2f
format hwsei     %4.2f
format presgl    %3.1f
format prent     %3.1f
format erscor90  %4.1f
format edscor90  %4.1f
format npboss90  %4.1f

label var year      `"Census year"'
label var sample    `"IPUMS sample identifier"'
label var serial    `"Household serial number"'
label var cbserial  `"Original Census Bureau household serial number"'
label var hhwt      `"Household weight"'
label var statefip  `"State (FIPS code)"'
label var conspuma  `"Consistent PUMA, 1980-1990-2000"'
label var cpuma0010 `"Consistent PUMA, 2000-2010"'
label var gq        `"Group quarters status"'
label var ownershp  `"Ownership of dwelling (tenure) [general version]"'
label var ownershpd `"Ownership of dwelling (tenure) [detailed version]"'
label var mortgage  `"Mortgage status"'
label var mortgag2  `"Second mortgage status"'
label var rent      `"Monthly contract rent"'
label var rentgrs   `"Monthly gross rent"'
label var hhincome  `"Total household income"'
label var foodstmp  `"Food stamp recipiency"'
label var valueh    `"House value"'
label var nfams     `"Number of families in household"'
label var nsubfam   `"Number of subfamilies in household"'
label var ncouples  `"Number of couples in household"'
label var nmothers  `"Number of mothers in household"'
label var nfathers  `"Number of fathers in household"'
label var multgen   `"Multigenerational household [general version]"'
label var multgend  `"Multigenerational household [detailed version]"'
label var qfoodstm  `"Flag for Foodstmp and Fdstpamt"'
label var qmortg2a  `"Flag for Mortgag2"'
label var qmortga2  `"Flag for Mortgag2"'
label var qmortgag  `"Flag for Mortgage"'
label var qownersh  `"Flag for Ownershp"'
label var qrent     `"Flag for Rent, Rent30"'
label var qrentgrs  `"Flag for Rentgrs"'
label var qvalueh   `"Flag for Valueh"'
label var qhhincome `"Flag for HHINCOME"'
label var pernum    `"Person number in sample unit"'
label var perwt     `"Person weight"'
label var famunit   `"Family unit membership"'
label var famsize   `"Number of own family members in household"'
label var nchild    `"Number of own children in the household"'
label var nchlt5    `"Number of own children under age 5 in household"'
label var eldch     `"Age of eldest own child in household"'
label var relate    `"Relationship to household head [general version]"'
label var related   `"Relationship to household head [detailed version]"'
label var sex       `"Sex"'
label var age       `"Age"'
label var marst     `"Marital status"'
label var birthyr   `"Year of birth"'
label var race      `"Race [general version]"'
label var raced     `"Race [detailed version]"'
label var hispan    `"Hispanic origin [general version]"'
label var hispand   `"Hispanic origin [detailed version]"'
label var ancestr1  `"Ancestry, first response [general version]"'
label var ancestr1d `"Ancestry, first response [detailed version]"'
label var ancestr2  `"Ancestry, second response [general version]"'
label var ancestr2d `"Ancestry, second response [detailed version]"'
label var citizen   `"Citizenship status"'
label var yrsusa2   `"Years in the United States, intervalled"'
label var speakeng  `"Speaks English"'
label var racesing  `"Race: Single race identification [general version]"'
label var racesingd `"Race: Single race identification [detailed version]"'
label var school    `"School attendance"'
label var educ      `"Educational attainment [general version]"'
label var educd     `"Educational attainment [detailed version]"'
label var gradeatt  `"Grade level attending [general version]"'
label var gradeattd `"Grade level attending [detailed version]"'
label var schltype  `"Public or private school"'
label var empstat   `"Employment status [general version]"'
label var empstatd  `"Employment status [detailed version]"'
label var labforce  `"Labor force status"'
label var occ       `"Occupation"'
label var ind       `"Industry"'
label var classwkr  `"Class of worker [general version]"'
label var classwkrd `"Class of worker [detailed version]"'
label var wkswork2  `"Weeks worked last year, intervalled"'
label var uhrswork  `"Usual hours worked per week"'
label var wrklstwk  `"Worked last week"'
label var absent    `"Absent from work last week"'
label var looking   `"Looking for work"'
label var availble  `"Available for work"'
label var wrkrecal  `"Informed of work recall"'
label var workedyr  `"Worked last year"'
label var inctot    `"Total personal income"'
label var ftotinc   `"Total family income"'
label var incwage   `"Wage and salary income"'
label var incbus00  `"Business and farm income, 2000"'
label var incss     `"Social Security income"'
label var incwelfr  `"Welfare (public assistance) income"'
label var incinvst  `"Interest, dividend, and rental income"'
label var incretir  `"Retirement income"'
label var incsupp   `"Supplementary Security Income"'
label var incother  `"Other income"'
label var incearn   `"Total personal earned income"'
label var poverty   `"Poverty status"'
label var occscore  `"Occupational income score"'
label var sei       `"Duncan Socioeconomic Index"'
label var hwsei     `"Socioeconomic Index, Hauser and Warren"'
label var presgl    `"Occupational prestige score, Siegel"'
label var prent     `"Occupational prestige score, Nakao and Treas"'
label var erscor90  `"Occupational earnings score, 1990 basis"'
label var edscor90  `"Occupational education score, 1990 basis"'
label var npboss90  `"Nam-Powers-Boyd occupational status score, 1990 basis"'
label var migrate1  `"Migration status, 1 year [general version]"'
label var migrate1d `"Migration status, 1 year [detailed version]"'
label var migplac1  `"State or country of residence 1 year ago"'
label var movedin   `"When occupant moved into residence"'
label var vetstat   `"Veteran status [general version]"'
label var vetstatd  `"Veteran status [detailed version]"'
label var pwstate2  `"Place of work: state"'
label var trantime  `"Travel time to work"'
label var qage      `"Flag for Age"'
label var qmarst    `"Flag for Marst"'
label var qrelate   `"Flag for Relate"'
label var qsex      `"Flag for Sex"'
label var qcitizen  `"Flag for Citizen"'
label var qhispan   `"Flag for Hispan"'
label var qlanguag  `"Flag for Language, Speakeng"'
label var qrace     `"Flag for Race, Racamind, Racasian, Racblk, Racpais, Racwht, Racoth, Racnum, Race"'
label var qspeaken  `"Flag for Speakeng"'
label var qyrimm    `"Flag for Yrimmig, Yrsusa1, Yrsusa2"'
label var qeduc     `"Flag for Educrec, Higrade, Educ99"'
label var qgradeat  `"Flag for Gradeatt"'
label var qschool   `"Flag for School, Schltype"'
label var qclasswk  `"Flag for Classwkr"'
label var qempstat  `"Flag for Empstat, Labforce"'
label var qind      `"Flag for Ind, Ind1950"'
label var qocc      `"Flag for Occ, Occ1950, SEI, Occscore, Occsoc, Labforce"'
label var quhrswor  `"Flag for Uhrswork"'
label var qwkswork  `"Flag for Wkswork1, Wkswork2"'
label var qworkedy  `"Flag for Workedyr"'
label var qincearn  `"Flag for INCEARN"'
label var qincbus   `"Flag for Incbus, Inctot, Incearn"'
label var qincinvs  `"Flag for Incinvst, Inctot"'
label var qincothe  `"Flag for Incother, Inctot"'
label var qincreti  `"Flag for Incretir, Inctot"'
label var qincss    `"Flag for Incss, Inctot"'
label var qincsupp  `"Flag for Incsupp"'
label var qinctot   `"Flag for Inctot"'
label var qftotinc  `"Data quality flag for FTOTINC"'
label var qincwage  `"Flag for Incwage, Inctot, Incearn"'
label var qincwelf  `"Flag for Incwelfr, Inctot"'
label var qmigplc1  `"Flag for Migplac1"'
label var qmigrat1  `"Flag for Migrate1"'
label var qmovedin  `"Flag for Movedin"'
label var qvetper   `"Flag for Vetper, Vetstat, Vet55x64, Vet75x80, Vet80x90, Vet90x95, Vet95x00, Vetk"'
label var qvetstat  `"Flag for Vetstat, Vet55x64, Vet75x80, Vet80x90, Vet90x95, Vetkorea, Vetother, Ve"'
label var qpwstat2  `"Flag for Pwstate2"'
label var qtrantim  `"Flag for Trantime"'

label define year_lbl 1850 `"1850"'
label define year_lbl 1860 `"1860"', add
label define year_lbl 1870 `"1870"', add
label define year_lbl 1880 `"1880"', add
label define year_lbl 1900 `"1900"', add
label define year_lbl 1910 `"1910"', add
label define year_lbl 1920 `"1920"', add
label define year_lbl 1930 `"1930"', add
label define year_lbl 1940 `"1940"', add
label define year_lbl 1950 `"1950"', add
label define year_lbl 1960 `"1960"', add
label define year_lbl 1970 `"1970"', add
label define year_lbl 1980 `"1980"', add
label define year_lbl 1990 `"1990"', add
label define year_lbl 2000 `"2000"', add
label define year_lbl 2001 `"2001"', add
label define year_lbl 2002 `"2002"', add
label define year_lbl 2003 `"2003"', add
label define year_lbl 2004 `"2004"', add
label define year_lbl 2005 `"2005"', add
label define year_lbl 2006 `"2006"', add
label define year_lbl 2007 `"2007"', add
label define year_lbl 2008 `"2008"', add
label define year_lbl 2009 `"2009"', add
label define year_lbl 2010 `"2010"', add
label define year_lbl 2011 `"2011"', add
label define year_lbl 2012 `"2012"', add
label define year_lbl 2013 `"2013"', add
label define year_lbl 2014 `"2014"', add
label define year_lbl 2015 `"2015"', add
label define year_lbl 2016 `"2016"', add
label define year_lbl 2017 `"2017"', add
label values year year_lbl

label define sample_lbl 201704 `"2013-2017, PRCS 5-year"'
label define sample_lbl 201703 `"2013-2017, ACS 5-year"', add
label define sample_lbl 201702 `"2017 PRCS"', add
label define sample_lbl 201701 `"2017 ACS"', add
label define sample_lbl 201604 `"2012-2016, PRCS 5-year"', add
label define sample_lbl 201603 `"2012-2016, ACS 5-year"', add
label define sample_lbl 201602 `"2016 PRCS"', add
label define sample_lbl 201601 `"2016 ACS"', add
label define sample_lbl 201504 `"2011-2015, PRCS 5-year"', add
label define sample_lbl 201503 `"2011-2015, ACS 5-year"', add
label define sample_lbl 201502 `"2015 PRCS"', add
label define sample_lbl 201501 `"2015 ACS"', add
label define sample_lbl 201404 `"2010-2014, PRCS 5-year"', add
label define sample_lbl 201403 `"2010-2014, ACS 5-year"', add
label define sample_lbl 201402 `"2014 PRCS"', add
label define sample_lbl 201401 `"2014 ACS"', add
label define sample_lbl 201306 `"2009-2013, PRCS 5-year"', add
label define sample_lbl 201305 `"2009-2013, ACS 5-year"', add
label define sample_lbl 201304 `"2011-2013, PRCS 3-year"', add
label define sample_lbl 201303 `"2011-2013, ACS 3-year"', add
label define sample_lbl 201302 `"2013 PRCS"', add
label define sample_lbl 201301 `"2013 ACS"', add
label define sample_lbl 201206 `"2008-2012, PRCS 5-year"', add
label define sample_lbl 201205 `"2008-2012, ACS 5-year"', add
label define sample_lbl 201204 `"2010-2012, PRCS 3-year"', add
label define sample_lbl 201203 `"2010-2012, ACS 3-year"', add
label define sample_lbl 201202 `"2012 PRCS"', add
label define sample_lbl 201201 `"2012 ACS"', add
label define sample_lbl 201106 `"2007-2011, PRCS 5-year"', add
label define sample_lbl 201105 `"2007-2011, ACS 5-year"', add
label define sample_lbl 201104 `"2009-2011, PRCS 3-year"', add
label define sample_lbl 201103 `"2009-2011, ACS 3-year"', add
label define sample_lbl 201102 `"2011 PRCS"', add
label define sample_lbl 201101 `"2011 ACS"', add
label define sample_lbl 201008 `"2010 Puerto Rico 10%"', add
label define sample_lbl 201007 `"2010 10%"', add
label define sample_lbl 201006 `"2006-2010, PRCS 5-year"', add
label define sample_lbl 201005 `"2006-2010, ACS 5-year"', add
label define sample_lbl 201004 `"2008-2010, PRCS 3-year"', add
label define sample_lbl 201003 `"2008-2010, ACS 3-year"', add
label define sample_lbl 201002 `"2010 PRCS"', add
label define sample_lbl 201001 `"2010 ACS"', add
label define sample_lbl 200906 `"2005-2009, PRCS 5-year"', add
label define sample_lbl 200905 `"2005-2009, ACS 5-year"', add
label define sample_lbl 200904 `"2007-2009, PRCS 3-year"', add
label define sample_lbl 200903 `"2007-2009, ACS 3-year"', add
label define sample_lbl 200902 `"2009 PRCS"', add
label define sample_lbl 200901 `"2009 ACS"', add
label define sample_lbl 200804 `"2006-2008, PRCS 3-year"', add
label define sample_lbl 200803 `"2006-2008, ACS 3-year"', add
label define sample_lbl 200802 `"2008 PRCS"', add
label define sample_lbl 200801 `"2008 ACS"', add
label define sample_lbl 200704 `"2005-2007, PRCS 3-year"', add
label define sample_lbl 200703 `"2005-2007, ACS 3-year"', add
label define sample_lbl 200702 `"2007 PRCS"', add
label define sample_lbl 200701 `"2007 ACS"', add
label define sample_lbl 200602 `"2006 PRCS"', add
label define sample_lbl 200601 `"2006 ACS"', add
label define sample_lbl 200502 `"2005 PRCS"', add
label define sample_lbl 200501 `"2005 ACS"', add
label define sample_lbl 200401 `"2004 ACS"', add
label define sample_lbl 200301 `"2003 ACS"', add
label define sample_lbl 200201 `"2002 ACS"', add
label define sample_lbl 200101 `"2001 ACS"', add
label define sample_lbl 200008 `"2000 Puerto Rico 1%"', add
label define sample_lbl 200007 `"2000 1%"', add
label define sample_lbl 200006 `"2000 Puerto Rico 1% sample (old version)"', add
label define sample_lbl 200005 `"2000 Puerto Rico 5%"', add
label define sample_lbl 200004 `"2000 ACS"', add
label define sample_lbl 200003 `"2000 Unweighted 1%"', add
label define sample_lbl 200002 `"2000 1% sample (old version)"', add
label define sample_lbl 200001 `"2000 5%"', add
label define sample_lbl 199007 `"1990 Puerto Rico 1%"', add
label define sample_lbl 199006 `"1990 Puerto Rico 5%"', add
label define sample_lbl 199005 `"1990 Labor Market Area"', add
label define sample_lbl 199004 `"1990 Elderly"', add
label define sample_lbl 199003 `"1990 Unweighted 1%"', add
label define sample_lbl 199002 `"1990 1%"', add
label define sample_lbl 199001 `"1990 5%"', add
label define sample_lbl 198007 `"1980 Puerto Rico 1%"', add
label define sample_lbl 198006 `"1980 Puerto Rico 5%"', add
label define sample_lbl 198005 `"1980 Detailed metro/non-metro"', add
label define sample_lbl 198004 `"1980 Labor Market Area"', add
label define sample_lbl 198003 `"1980 Urban/Rural"', add
label define sample_lbl 198002 `"1980 1%"', add
label define sample_lbl 198001 `"1980 5%"', add
label define sample_lbl 197009 `"1970 Puerto Rico Neighborhood"', add
label define sample_lbl 197008 `"1970 Puerto Rico Municipio"', add
label define sample_lbl 197007 `"1970 Puerto Rico State"', add
label define sample_lbl 197006 `"1970 Form 2 Neighborhood"', add
label define sample_lbl 197005 `"1970 Form 1 Neighborhood"', add
label define sample_lbl 197004 `"1970 Form 2 Metro"', add
label define sample_lbl 197003 `"1970 Form 1 Metro"', add
label define sample_lbl 197002 `"1970 Form 2 State"', add
label define sample_lbl 197001 `"1970 Form 1 State"', add
label define sample_lbl 196002 `"1960 5%"', add
label define sample_lbl 196001 `"1960 1%"', add
label define sample_lbl 195001 `"1950 1%"', add
label define sample_lbl 194002 `"1940 100% database"', add
label define sample_lbl 194001 `"1940 1%"', add
label define sample_lbl 193004 `"1930 100% database"', add
label define sample_lbl 193003 `"1930 Puerto Rico"', add
label define sample_lbl 193002 `"1930 5%"', add
label define sample_lbl 193001 `"1930 1%"', add
label define sample_lbl 192003 `"1920 100% database"', add
label define sample_lbl 192002 `"1920 Puerto Rico sample"', add
label define sample_lbl 192001 `"1920 1%"', add
label define sample_lbl 191004 `"1910 100% database"', add
label define sample_lbl 191003 `"1910 1.4% sample with oversamples"', add
label define sample_lbl 191002 `"1910 1%"', add
label define sample_lbl 191001 `"1910 Puerto Rico"', add
label define sample_lbl 190004 `"1900 100% database"', add
label define sample_lbl 190003 `"1900 1% sample with oversamples"', add
label define sample_lbl 190002 `"1900 1%"', add
label define sample_lbl 190001 `"1900 5%"', add
label define sample_lbl 188003 `"1880 100% database"', add
label define sample_lbl 188002 `"1880 10%"', add
label define sample_lbl 188001 `"1880 1%"', add
label define sample_lbl 187003 `"1870 100% database"', add
label define sample_lbl 187002 `"1870 1% sample with black oversample"', add
label define sample_lbl 187001 `"1870 1%"', add
label define sample_lbl 186003 `"1860 100% database"', add
label define sample_lbl 186002 `"1860 1% sample with black oversample"', add
label define sample_lbl 186001 `"1860 1%"', add
label define sample_lbl 185002 `"1850 100% database"', add
label define sample_lbl 185001 `"1850 1%"', add
label values sample sample_lbl

label define statefip_lbl 01 `"Alabama"'
label define statefip_lbl 02 `"Alaska"', add
label define statefip_lbl 04 `"Arizona"', add
label define statefip_lbl 05 `"Arkansas"', add
label define statefip_lbl 06 `"California"', add
label define statefip_lbl 08 `"Colorado"', add
label define statefip_lbl 09 `"Connecticut"', add
label define statefip_lbl 10 `"Delaware"', add
label define statefip_lbl 11 `"District of Columbia"', add
label define statefip_lbl 12 `"Florida"', add
label define statefip_lbl 13 `"Georgia"', add
label define statefip_lbl 15 `"Hawaii"', add
label define statefip_lbl 16 `"Idaho"', add
label define statefip_lbl 17 `"Illinois"', add
label define statefip_lbl 18 `"Indiana"', add
label define statefip_lbl 19 `"Iowa"', add
label define statefip_lbl 20 `"Kansas"', add
label define statefip_lbl 21 `"Kentucky"', add
label define statefip_lbl 22 `"Louisiana"', add
label define statefip_lbl 23 `"Maine"', add
label define statefip_lbl 24 `"Maryland"', add
label define statefip_lbl 25 `"Massachusetts"', add
label define statefip_lbl 26 `"Michigan"', add
label define statefip_lbl 27 `"Minnesota"', add
label define statefip_lbl 28 `"Mississippi"', add
label define statefip_lbl 29 `"Missouri"', add
label define statefip_lbl 30 `"Montana"', add
label define statefip_lbl 31 `"Nebraska"', add
label define statefip_lbl 32 `"Nevada"', add
label define statefip_lbl 33 `"New Hampshire"', add
label define statefip_lbl 34 `"New Jersey"', add
label define statefip_lbl 35 `"New Mexico"', add
label define statefip_lbl 36 `"New York"', add
label define statefip_lbl 37 `"North Carolina"', add
label define statefip_lbl 38 `"North Dakota"', add
label define statefip_lbl 39 `"Ohio"', add
label define statefip_lbl 40 `"Oklahoma"', add
label define statefip_lbl 41 `"Oregon"', add
label define statefip_lbl 42 `"Pennsylvania"', add
label define statefip_lbl 44 `"Rhode Island"', add
label define statefip_lbl 45 `"South Carolina"', add
label define statefip_lbl 46 `"South Dakota"', add
label define statefip_lbl 47 `"Tennessee"', add
label define statefip_lbl 48 `"Texas"', add
label define statefip_lbl 49 `"Utah"', add
label define statefip_lbl 50 `"Vermont"', add
label define statefip_lbl 51 `"Virginia"', add
label define statefip_lbl 53 `"Washington"', add
label define statefip_lbl 54 `"West Virginia"', add
label define statefip_lbl 55 `"Wisconsin"', add
label define statefip_lbl 56 `"Wyoming"', add
label define statefip_lbl 61 `"Maine-New Hampshire-Vermont"', add
label define statefip_lbl 62 `"Massachusetts-Rhode Island"', add
label define statefip_lbl 63 `"Minnesota-Iowa-Missouri-Kansas-Nebraska-S.Dakota-N.Dakota"', add
label define statefip_lbl 64 `"Maryland-Delaware"', add
label define statefip_lbl 65 `"Montana-Idaho-Wyoming"', add
label define statefip_lbl 66 `"Utah-Nevada"', add
label define statefip_lbl 67 `"Arizona-New Mexico"', add
label define statefip_lbl 68 `"Alaska-Hawaii"', add
label define statefip_lbl 72 `"Puerto Rico"', add
label define statefip_lbl 97 `"Military/Mil. Reservation"', add
label define statefip_lbl 99 `"State not identified"', add
label values statefip statefip_lbl

label define gq_lbl 0 `"Vacant unit"'
label define gq_lbl 1 `"Households under 1970 definition"', add
label define gq_lbl 2 `"Additional households under 1990 definition"', add
label define gq_lbl 3 `"Group quarters--Institutions"', add
label define gq_lbl 4 `"Other group quarters"', add
label define gq_lbl 5 `"Additional households under 2000 definition"', add
label define gq_lbl 6 `"Fragment"', add
label values gq gq_lbl

label define ownershp_lbl 0 `"N/A"'
label define ownershp_lbl 1 `"Owned or being bought (loan)"', add
label define ownershp_lbl 2 `"Rented"', add
label values ownershp ownershp_lbl

label define ownershpd_lbl 00 `"N/A"'
label define ownershpd_lbl 10 `"Owned or being bought"', add
label define ownershpd_lbl 11 `"Check mark (owns?)"', add
label define ownershpd_lbl 12 `"Owned free and clear"', add
label define ownershpd_lbl 13 `"Owned with mortgage or loan"', add
label define ownershpd_lbl 20 `"Rented"', add
label define ownershpd_lbl 21 `"No cash rent"', add
label define ownershpd_lbl 22 `"With cash rent"', add
label values ownershpd ownershpd_lbl

label define mortgage_lbl 0 `"N/A"'
label define mortgage_lbl 1 `"No, owned free and clear"', add
label define mortgage_lbl 2 `"Check mark on manuscript (probably yes)"', add
label define mortgage_lbl 3 `"Yes, mortgaged/ deed of trust or similar debt"', add
label define mortgage_lbl 4 `"Yes, contract to purchase"', add
label values mortgage mortgage_lbl

label define mortgag2_lbl 0 `"N/A"'
label define mortgag2_lbl 1 `"No"', add
label define mortgag2_lbl 2 `"Yes"', add
label define mortgag2_lbl 3 `"Yes, 2nd mortgage"', add
label define mortgag2_lbl 4 `"Yes, home equity loan"', add
label define mortgag2_lbl 5 `"Yes, 2nd mortgage and home equity loan"', add
label values mortgag2 mortgag2_lbl

label define foodstmp_lbl 0 `"N/A"'
label define foodstmp_lbl 1 `"No"', add
label define foodstmp_lbl 2 `"Yes"', add
label values foodstmp foodstmp_lbl

label define nfams_lbl 00 `"0 families (vacant unit)"'
label define nfams_lbl 01 `"1 family or N/A"', add
label define nfams_lbl 02 `"2 families"', add
label define nfams_lbl 03 `"3"', add
label define nfams_lbl 04 `"4"', add
label define nfams_lbl 05 `"5"', add
label define nfams_lbl 06 `"6"', add
label define nfams_lbl 07 `"7"', add
label define nfams_lbl 08 `"8"', add
label define nfams_lbl 09 `"9"', add
label define nfams_lbl 10 `"10"', add
label define nfams_lbl 11 `"11"', add
label define nfams_lbl 12 `"12"', add
label define nfams_lbl 13 `"13"', add
label define nfams_lbl 14 `"14"', add
label define nfams_lbl 15 `"15"', add
label define nfams_lbl 16 `"16"', add
label define nfams_lbl 17 `"17"', add
label define nfams_lbl 18 `"18"', add
label define nfams_lbl 19 `"19"', add
label define nfams_lbl 20 `"20"', add
label define nfams_lbl 21 `"21"', add
label define nfams_lbl 22 `"22"', add
label define nfams_lbl 23 `"23"', add
label define nfams_lbl 24 `"24"', add
label define nfams_lbl 25 `"25"', add
label define nfams_lbl 26 `"26"', add
label define nfams_lbl 27 `"27"', add
label define nfams_lbl 28 `"28"', add
label define nfams_lbl 29 `"29"', add
label define nfams_lbl 30 `"30"', add
label values nfams nfams_lbl

label define nsubfam_lbl 0 `"No subfamilies or N/A (GQ/vacant unit)"'
label define nsubfam_lbl 1 `"1 subfamily"', add
label define nsubfam_lbl 2 `"2 subfamilies"', add
label define nsubfam_lbl 3 `"3"', add
label define nsubfam_lbl 4 `"4"', add
label define nsubfam_lbl 5 `"5"', add
label define nsubfam_lbl 6 `"6"', add
label define nsubfam_lbl 7 `"7"', add
label define nsubfam_lbl 8 `"8"', add
label define nsubfam_lbl 9 `"9"', add
label values nsubfam nsubfam_lbl

label define ncouples_lbl 0 `"0 couples or N/A"'
label define ncouples_lbl 1 `"1"', add
label define ncouples_lbl 2 `"2"', add
label define ncouples_lbl 3 `"3"', add
label define ncouples_lbl 4 `"4"', add
label define ncouples_lbl 5 `"5"', add
label define ncouples_lbl 6 `"6"', add
label define ncouples_lbl 7 `"7"', add
label define ncouples_lbl 8 `"8"', add
label define ncouples_lbl 9 `"9"', add
label values ncouples ncouples_lbl

label define nmothers_lbl 0 `"0 mothers or N/A"'
label define nmothers_lbl 1 `"1"', add
label define nmothers_lbl 2 `"2"', add
label define nmothers_lbl 3 `"3"', add
label define nmothers_lbl 4 `"4"', add
label define nmothers_lbl 5 `"5"', add
label define nmothers_lbl 6 `"6"', add
label define nmothers_lbl 7 `"7"', add
label define nmothers_lbl 8 `"8"', add
label values nmothers nmothers_lbl

label define nfathers_lbl 0 `"0 fathers or N/A"'
label define nfathers_lbl 1 `"1"', add
label define nfathers_lbl 2 `"2"', add
label define nfathers_lbl 3 `"3"', add
label define nfathers_lbl 4 `"4"', add
label define nfathers_lbl 5 `"5"', add
label define nfathers_lbl 6 `"6"', add
label values nfathers nfathers_lbl

label define multgen_lbl 0 `"N/A"'
label define multgen_lbl 1 `"1 generation"', add
label define multgen_lbl 2 `"2 generations"', add
label define multgen_lbl 3 `"3+ generations"', add
label values multgen multgen_lbl

label define multgend_lbl 00 `"N/A"'
label define multgend_lbl 10 `"1 generation"', add
label define multgend_lbl 20 `"1-2 generations (Census 2008 definition)"', add
label define multgend_lbl 21 `"2 adjacent generations, adult-children"', add
label define multgend_lbl 22 `"2 adjacent generations, adult-adult"', add
label define multgend_lbl 23 `"2 nonadjacent generations"', add
label define multgend_lbl 31 `"3+ generations (Census 2008 definition)"', add
label define multgend_lbl 32 `"3+ generations (Additional IPUMS definition)"', add
label values multgend multgend_lbl

label define qfoodstm_lbl 0 `"Not allocated"'
label define qfoodstm_lbl 4 `"Allocated"', add
label values qfoodstm qfoodstm_lbl

label define qmortg2a_lbl 0 `"Not allocated"'
label define qmortg2a_lbl 4 `"Allocated"', add
label values qmortg2a qmortg2a_lbl

label define qmortga2_lbl 0 `"Not allocated"'
label define qmortga2_lbl 4 `"Allocated"', add
label values qmortga2 qmortga2_lbl

label define qmortgag_lbl 0 `"Not allocated"'
label define qmortgag_lbl 2 `"Logical hand edit by Census Office or by census sample research staff"', add
label define qmortgag_lbl 3 `"Allocated, direct"', add
label define qmortgag_lbl 4 `"Allocated"', add
label define qmortgag_lbl 5 `"Cold deck allocation--select variables"', add
label define qmortgag_lbl 9 `"Allocated, direct/indirect"', add
label values qmortgag qmortgag_lbl

label define qownersh_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define qownersh_lbl 1 `"Failed edit"', add
label define qownersh_lbl 2 `"Illegible"', add
label define qownersh_lbl 3 `"Missing"', add
label define qownersh_lbl 4 `"Allocated"', add
label define qownersh_lbl 5 `"Illegible"', add
label define qownersh_lbl 6 `"Missing"', add
label define qownersh_lbl 7 `"Original entry illegible"', add
label define qownersh_lbl 8 `"Original entry missing or failed edit"', add
label define qownersh_lbl 9 `"Allocated, direct/indirect"', add
label values qownersh qownersh_lbl

label define qrent_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define qrent_lbl 1 `"Failed edit"', add
label define qrent_lbl 2 `"Illegible"', add
label define qrent_lbl 3 `"Missing"', add
label define qrent_lbl 4 `"Allocated (method not specified)"', add
label define qrent_lbl 5 `"Illegible"', add
label define qrent_lbl 6 `"Missing"', add
label define qrent_lbl 7 `"Original entry illegible"', add
label define qrent_lbl 8 `"Original entry missing or failed edit"', add
label define qrent_lbl 9 `"Allocated, direct/indirect"', add
label values qrent qrent_lbl

label define qrentgrs_lbl 0 `"Not edited"'
label define qrentgrs_lbl 3 `"Edited"', add
label define qrentgrs_lbl 6 `"Allocated, direct or indirect"', add
label values qrentgrs qrentgrs_lbl

label define qvalueh_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define qvalueh_lbl 1 `"Failed edit"', add
label define qvalueh_lbl 2 `"Illegible"', add
label define qvalueh_lbl 3 `"Missing"', add
label define qvalueh_lbl 4 `"Allocated"', add
label define qvalueh_lbl 5 `"Illegible"', add
label define qvalueh_lbl 6 `"Missing"', add
label define qvalueh_lbl 7 `"Original entry illegible"', add
label define qvalueh_lbl 8 `"Original entry missing or failed edit"', add
label values qvalueh qvalueh_lbl

label define qhhincome_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define qhhincome_lbl 1 `"Failed edit"', add
label define qhhincome_lbl 2 `"Entry illegible"', add
label define qhhincome_lbl 3 `"Missing"', add
label define qhhincome_lbl 4 `"Allocated"', add
label define qhhincome_lbl 5 `"Illegible"', add
label define qhhincome_lbl 6 `"Missing"', add
label define qhhincome_lbl 7 `"Illegible"', add
label define qhhincome_lbl 8 `"Missing or failed edit"', add
label values qhhincome qhhincome_lbl

label define famunit_lbl 01 `"1st family in household or group quarters"'
label define famunit_lbl 02 `"2nd family in household or group quarters"', add
label define famunit_lbl 03 `"3rd"', add
label define famunit_lbl 04 `"4th"', add
label define famunit_lbl 05 `"5th"', add
label define famunit_lbl 06 `"6th"', add
label define famunit_lbl 07 `"7th"', add
label define famunit_lbl 08 `"8th"', add
label define famunit_lbl 09 `"9th"', add
label define famunit_lbl 10 `"10th"', add
label define famunit_lbl 11 `"11th"', add
label define famunit_lbl 12 `"12th"', add
label define famunit_lbl 13 `"13th"', add
label define famunit_lbl 14 `"14th"', add
label define famunit_lbl 15 `"15th"', add
label define famunit_lbl 16 `"16th"', add
label define famunit_lbl 17 `"17th"', add
label define famunit_lbl 18 `"18th"', add
label define famunit_lbl 19 `"19th"', add
label define famunit_lbl 20 `"20th"', add
label define famunit_lbl 21 `"21th"', add
label define famunit_lbl 22 `"22th"', add
label define famunit_lbl 23 `"23th"', add
label define famunit_lbl 24 `"24th"', add
label define famunit_lbl 25 `"25th"', add
label define famunit_lbl 26 `"26th"', add
label define famunit_lbl 27 `"27th"', add
label define famunit_lbl 28 `"28th"', add
label define famunit_lbl 29 `"29th"', add
label define famunit_lbl 30 `"30th"', add
label values famunit famunit_lbl

label define famsize_lbl 01 `"1 family member present"'
label define famsize_lbl 02 `"2 family members present"', add
label define famsize_lbl 03 `"3"', add
label define famsize_lbl 04 `"4"', add
label define famsize_lbl 05 `"5"', add
label define famsize_lbl 06 `"6"', add
label define famsize_lbl 07 `"7"', add
label define famsize_lbl 08 `"8"', add
label define famsize_lbl 09 `"9"', add
label define famsize_lbl 10 `"10"', add
label define famsize_lbl 11 `"11"', add
label define famsize_lbl 12 `"12"', add
label define famsize_lbl 13 `"13"', add
label define famsize_lbl 14 `"14"', add
label define famsize_lbl 15 `"15"', add
label define famsize_lbl 16 `"16"', add
label define famsize_lbl 17 `"17"', add
label define famsize_lbl 18 `"18"', add
label define famsize_lbl 19 `"19"', add
label define famsize_lbl 20 `"20"', add
label define famsize_lbl 21 `"21"', add
label define famsize_lbl 22 `"22"', add
label define famsize_lbl 23 `"23"', add
label define famsize_lbl 24 `"24"', add
label define famsize_lbl 25 `"25"', add
label define famsize_lbl 26 `"26"', add
label define famsize_lbl 27 `"27"', add
label define famsize_lbl 28 `"28"', add
label define famsize_lbl 29 `"29"', add
label values famsize famsize_lbl

label define nchild_lbl 0 `"0 children present"'
label define nchild_lbl 1 `"1 child present"', add
label define nchild_lbl 2 `"2"', add
label define nchild_lbl 3 `"3"', add
label define nchild_lbl 4 `"4"', add
label define nchild_lbl 5 `"5"', add
label define nchild_lbl 6 `"6"', add
label define nchild_lbl 7 `"7"', add
label define nchild_lbl 8 `"8"', add
label define nchild_lbl 9 `"9+"', add
label values nchild nchild_lbl

label define nchlt5_lbl 0 `"No children under age 5"'
label define nchlt5_lbl 1 `"1 child under age 5"', add
label define nchlt5_lbl 2 `"2"', add
label define nchlt5_lbl 3 `"3"', add
label define nchlt5_lbl 4 `"4"', add
label define nchlt5_lbl 5 `"5"', add
label define nchlt5_lbl 6 `"6"', add
label define nchlt5_lbl 7 `"7"', add
label define nchlt5_lbl 8 `"8"', add
label define nchlt5_lbl 9 `"9+"', add
label values nchlt5 nchlt5_lbl

label define eldch_lbl 00 `"Less than 1 year old"'
label define eldch_lbl 01 `"1"', add
label define eldch_lbl 02 `"2"', add
label define eldch_lbl 03 `"3"', add
label define eldch_lbl 04 `"4"', add
label define eldch_lbl 05 `"5"', add
label define eldch_lbl 06 `"6"', add
label define eldch_lbl 07 `"7"', add
label define eldch_lbl 08 `"8"', add
label define eldch_lbl 09 `"9"', add
label define eldch_lbl 10 `"10"', add
label define eldch_lbl 11 `"11"', add
label define eldch_lbl 12 `"12"', add
label define eldch_lbl 13 `"13"', add
label define eldch_lbl 14 `"14"', add
label define eldch_lbl 15 `"15"', add
label define eldch_lbl 16 `"16"', add
label define eldch_lbl 17 `"17"', add
label define eldch_lbl 18 `"18"', add
label define eldch_lbl 19 `"19"', add
label define eldch_lbl 20 `"20"', add
label define eldch_lbl 21 `"21"', add
label define eldch_lbl 22 `"22"', add
label define eldch_lbl 23 `"23"', add
label define eldch_lbl 24 `"24"', add
label define eldch_lbl 25 `"25"', add
label define eldch_lbl 26 `"26"', add
label define eldch_lbl 27 `"27"', add
label define eldch_lbl 28 `"28"', add
label define eldch_lbl 29 `"29"', add
label define eldch_lbl 30 `"30"', add
label define eldch_lbl 31 `"31"', add
label define eldch_lbl 32 `"32"', add
label define eldch_lbl 33 `"33"', add
label define eldch_lbl 34 `"34"', add
label define eldch_lbl 35 `"35"', add
label define eldch_lbl 36 `"36"', add
label define eldch_lbl 37 `"37"', add
label define eldch_lbl 38 `"38"', add
label define eldch_lbl 39 `"39"', add
label define eldch_lbl 40 `"40"', add
label define eldch_lbl 41 `"41"', add
label define eldch_lbl 42 `"42"', add
label define eldch_lbl 43 `"43"', add
label define eldch_lbl 44 `"44"', add
label define eldch_lbl 45 `"45"', add
label define eldch_lbl 46 `"46"', add
label define eldch_lbl 47 `"47"', add
label define eldch_lbl 48 `"48"', add
label define eldch_lbl 49 `"49"', add
label define eldch_lbl 50 `"50"', add
label define eldch_lbl 51 `"51"', add
label define eldch_lbl 52 `"52"', add
label define eldch_lbl 53 `"53"', add
label define eldch_lbl 54 `"54"', add
label define eldch_lbl 55 `"55"', add
label define eldch_lbl 56 `"56"', add
label define eldch_lbl 57 `"57"', add
label define eldch_lbl 58 `"58"', add
label define eldch_lbl 59 `"59"', add
label define eldch_lbl 60 `"60"', add
label define eldch_lbl 61 `"61"', add
label define eldch_lbl 62 `"62"', add
label define eldch_lbl 63 `"63"', add
label define eldch_lbl 64 `"64"', add
label define eldch_lbl 65 `"65"', add
label define eldch_lbl 66 `"66"', add
label define eldch_lbl 67 `"67"', add
label define eldch_lbl 68 `"68"', add
label define eldch_lbl 69 `"69"', add
label define eldch_lbl 70 `"70"', add
label define eldch_lbl 71 `"71"', add
label define eldch_lbl 72 `"72"', add
label define eldch_lbl 73 `"73"', add
label define eldch_lbl 74 `"74"', add
label define eldch_lbl 75 `"75"', add
label define eldch_lbl 76 `"76"', add
label define eldch_lbl 77 `"77"', add
label define eldch_lbl 78 `"78"', add
label define eldch_lbl 79 `"79"', add
label define eldch_lbl 80 `"80"', add
label define eldch_lbl 81 `"81"', add
label define eldch_lbl 82 `"82"', add
label define eldch_lbl 83 `"83"', add
label define eldch_lbl 84 `"84"', add
label define eldch_lbl 85 `"85"', add
label define eldch_lbl 86 `"86"', add
label define eldch_lbl 87 `"87"', add
label define eldch_lbl 88 `"88"', add
label define eldch_lbl 89 `"89"', add
label define eldch_lbl 90 `"90"', add
label define eldch_lbl 91 `"91"', add
label define eldch_lbl 92 `"92"', add
label define eldch_lbl 93 `"93"', add
label define eldch_lbl 94 `"94"', add
label define eldch_lbl 95 `"95"', add
label define eldch_lbl 96 `"96"', add
label define eldch_lbl 97 `"97"', add
label define eldch_lbl 98 `"98"', add
label define eldch_lbl 99 `"N/A"', add
label values eldch eldch_lbl

label define relate_lbl 01 `"Head/Householder"'
label define relate_lbl 02 `"Spouse"', add
label define relate_lbl 03 `"Child"', add
label define relate_lbl 04 `"Child-in-law"', add
label define relate_lbl 05 `"Parent"', add
label define relate_lbl 06 `"Parent-in-Law"', add
label define relate_lbl 07 `"Sibling"', add
label define relate_lbl 08 `"Sibling-in-Law"', add
label define relate_lbl 09 `"Grandchild"', add
label define relate_lbl 10 `"Other relatives"', add
label define relate_lbl 11 `"Partner, friend, visitor"', add
label define relate_lbl 12 `"Other non-relatives"', add
label define relate_lbl 13 `"Institutional inmates"', add
label values relate relate_lbl

label define related_lbl 0101 `"Head/Householder"'
label define related_lbl 0201 `"Spouse"', add
label define related_lbl 0202 `"2nd/3rd Wife (Polygamous)"', add
label define related_lbl 0301 `"Child"', add
label define related_lbl 0302 `"Adopted Child"', add
label define related_lbl 0303 `"Stepchild"', add
label define related_lbl 0304 `"Adopted, n.s."', add
label define related_lbl 0401 `"Child-in-law"', add
label define related_lbl 0402 `"Step Child-in-law"', add
label define related_lbl 0501 `"Parent"', add
label define related_lbl 0502 `"Stepparent"', add
label define related_lbl 0601 `"Parent-in-Law"', add
label define related_lbl 0602 `"Stepparent-in-law"', add
label define related_lbl 0701 `"Sibling"', add
label define related_lbl 0702 `"Step/Half/Adopted Sibling"', add
label define related_lbl 0801 `"Sibling-in-Law"', add
label define related_lbl 0802 `"Step/Half Sibling-in-law"', add
label define related_lbl 0901 `"Grandchild"', add
label define related_lbl 0902 `"Adopted Grandchild"', add
label define related_lbl 0903 `"Step Grandchild"', add
label define related_lbl 0904 `"Grandchild-in-law"', add
label define related_lbl 1000 `"Other Relatives:"', add
label define related_lbl 1001 `"Other Relatives"', add
label define related_lbl 1011 `"Grandparent"', add
label define related_lbl 1012 `"Step Grandparent"', add
label define related_lbl 1013 `"Grandparent-in-law"', add
label define related_lbl 1021 `"Aunt or Uncle"', add
label define related_lbl 1022 `"Aunt,Uncle-in-law"', add
label define related_lbl 1031 `"Nephew, Niece"', add
label define related_lbl 1032 `"Neph/Niece-in-law"', add
label define related_lbl 1033 `"Step/Adopted Nephew/Niece"', add
label define related_lbl 1034 `"Grand Niece/Nephew"', add
label define related_lbl 1041 `"Cousin"', add
label define related_lbl 1042 `"Cousin-in-law"', add
label define related_lbl 1051 `"Great Grandchild"', add
label define related_lbl 1061 `"Other relatives, nec"', add
label define related_lbl 1100 `"Partner, Friend, Visitor"', add
label define related_lbl 1110 `"Partner/friend"', add
label define related_lbl 1111 `"Friend"', add
label define related_lbl 1112 `"Partner"', add
label define related_lbl 1113 `"Partner/roommate"', add
label define related_lbl 1114 `"Unmarried Partner"', add
label define related_lbl 1115 `"Housemate/Roomate"', add
label define related_lbl 1120 `"Relative of partner"', add
label define related_lbl 1130 `"Concubine/Mistress"', add
label define related_lbl 1131 `"Visitor"', add
label define related_lbl 1132 `"Companion and family of companion"', add
label define related_lbl 1139 `"Allocated partner/friend/visitor"', add
label define related_lbl 1200 `"Other non-relatives"', add
label define related_lbl 1201 `"Roomers/boarders/lodgers"', add
label define related_lbl 1202 `"Boarders"', add
label define related_lbl 1203 `"Lodgers"', add
label define related_lbl 1204 `"Roomer"', add
label define related_lbl 1205 `"Tenant"', add
label define related_lbl 1206 `"Foster child"', add
label define related_lbl 1210 `"Employees:"', add
label define related_lbl 1211 `"Servant"', add
label define related_lbl 1212 `"Housekeeper"', add
label define related_lbl 1213 `"Maid"', add
label define related_lbl 1214 `"Cook"', add
label define related_lbl 1215 `"Nurse"', add
label define related_lbl 1216 `"Other probable domestic employee"', add
label define related_lbl 1217 `"Other employee"', add
label define related_lbl 1219 `"Relative of employee"', add
label define related_lbl 1221 `"Military"', add
label define related_lbl 1222 `"Students"', add
label define related_lbl 1223 `"Members of religious orders"', add
label define related_lbl 1230 `"Other non-relatives"', add
label define related_lbl 1239 `"Allocated other non-relative"', add
label define related_lbl 1240 `"Roomers/boarders/lodgers and foster children"', add
label define related_lbl 1241 `"Roomers/boarders/lodgers"', add
label define related_lbl 1242 `"Foster children"', add
label define related_lbl 1250 `"Employees"', add
label define related_lbl 1251 `"Domestic employees"', add
label define related_lbl 1252 `"Non-domestic employees"', add
label define related_lbl 1253 `"Relative of employee"', add
label define related_lbl 1260 `"Other non-relatives (1990 includes employees)"', add
label define related_lbl 1270 `"Non-inmate 1990"', add
label define related_lbl 1281 `"Head of group quarters"', add
label define related_lbl 1282 `"Employees of group quarters"', add
label define related_lbl 1283 `"Relative of head, staff, or employee group quarters"', add
label define related_lbl 1284 `"Other non-inmate 1940-1959"', add
label define related_lbl 1291 `"Military"', add
label define related_lbl 1292 `"College dormitories"', add
label define related_lbl 1293 `"Residents of rooming houses"', add
label define related_lbl 1294 `"Other non-inmate 1980 (includes employees and non-inmates in"', add
label define related_lbl 1295 `"Other non-inmates 1960-1970 (includes employees)"', add
label define related_lbl 1296 `"Non-inmates in institutions"', add
label define related_lbl 1301 `"Institutional inmates"', add
label define related_lbl 9996 `"Unclassifiable"', add
label define related_lbl 9997 `"Unknown"', add
label define related_lbl 9998 `"Illegible"', add
label define related_lbl 9999 `"Missing"', add
label values related related_lbl

label define sex_lbl 1 `"Male"'
label define sex_lbl 2 `"Female"', add
label values sex sex_lbl

label define age_lbl 000 `"Less than 1 year old"'
label define age_lbl 001 `"1"', add
label define age_lbl 002 `"2"', add
label define age_lbl 003 `"3"', add
label define age_lbl 004 `"4"', add
label define age_lbl 005 `"5"', add
label define age_lbl 006 `"6"', add
label define age_lbl 007 `"7"', add
label define age_lbl 008 `"8"', add
label define age_lbl 009 `"9"', add
label define age_lbl 010 `"10"', add
label define age_lbl 011 `"11"', add
label define age_lbl 012 `"12"', add
label define age_lbl 013 `"13"', add
label define age_lbl 014 `"14"', add
label define age_lbl 015 `"15"', add
label define age_lbl 016 `"16"', add
label define age_lbl 017 `"17"', add
label define age_lbl 018 `"18"', add
label define age_lbl 019 `"19"', add
label define age_lbl 020 `"20"', add
label define age_lbl 021 `"21"', add
label define age_lbl 022 `"22"', add
label define age_lbl 023 `"23"', add
label define age_lbl 024 `"24"', add
label define age_lbl 025 `"25"', add
label define age_lbl 026 `"26"', add
label define age_lbl 027 `"27"', add
label define age_lbl 028 `"28"', add
label define age_lbl 029 `"29"', add
label define age_lbl 030 `"30"', add
label define age_lbl 031 `"31"', add
label define age_lbl 032 `"32"', add
label define age_lbl 033 `"33"', add
label define age_lbl 034 `"34"', add
label define age_lbl 035 `"35"', add
label define age_lbl 036 `"36"', add
label define age_lbl 037 `"37"', add
label define age_lbl 038 `"38"', add
label define age_lbl 039 `"39"', add
label define age_lbl 040 `"40"', add
label define age_lbl 041 `"41"', add
label define age_lbl 042 `"42"', add
label define age_lbl 043 `"43"', add
label define age_lbl 044 `"44"', add
label define age_lbl 045 `"45"', add
label define age_lbl 046 `"46"', add
label define age_lbl 047 `"47"', add
label define age_lbl 048 `"48"', add
label define age_lbl 049 `"49"', add
label define age_lbl 050 `"50"', add
label define age_lbl 051 `"51"', add
label define age_lbl 052 `"52"', add
label define age_lbl 053 `"53"', add
label define age_lbl 054 `"54"', add
label define age_lbl 055 `"55"', add
label define age_lbl 056 `"56"', add
label define age_lbl 057 `"57"', add
label define age_lbl 058 `"58"', add
label define age_lbl 059 `"59"', add
label define age_lbl 060 `"60"', add
label define age_lbl 061 `"61"', add
label define age_lbl 062 `"62"', add
label define age_lbl 063 `"63"', add
label define age_lbl 064 `"64"', add
label define age_lbl 065 `"65"', add
label define age_lbl 066 `"66"', add
label define age_lbl 067 `"67"', add
label define age_lbl 068 `"68"', add
label define age_lbl 069 `"69"', add
label define age_lbl 070 `"70"', add
label define age_lbl 071 `"71"', add
label define age_lbl 072 `"72"', add
label define age_lbl 073 `"73"', add
label define age_lbl 074 `"74"', add
label define age_lbl 075 `"75"', add
label define age_lbl 076 `"76"', add
label define age_lbl 077 `"77"', add
label define age_lbl 078 `"78"', add
label define age_lbl 079 `"79"', add
label define age_lbl 080 `"80"', add
label define age_lbl 081 `"81"', add
label define age_lbl 082 `"82"', add
label define age_lbl 083 `"83"', add
label define age_lbl 084 `"84"', add
label define age_lbl 085 `"85"', add
label define age_lbl 086 `"86"', add
label define age_lbl 087 `"87"', add
label define age_lbl 088 `"88"', add
label define age_lbl 089 `"89"', add
label define age_lbl 090 `"90 (90+ in 1980 and 1990)"', add
label define age_lbl 091 `"91"', add
label define age_lbl 092 `"92"', add
label define age_lbl 093 `"93"', add
label define age_lbl 094 `"94"', add
label define age_lbl 095 `"95"', add
label define age_lbl 096 `"96"', add
label define age_lbl 097 `"97"', add
label define age_lbl 098 `"98"', add
label define age_lbl 099 `"99"', add
label define age_lbl 100 `"100 (100+ in 1960-1970)"', add
label define age_lbl 101 `"101"', add
label define age_lbl 102 `"102"', add
label define age_lbl 103 `"103"', add
label define age_lbl 104 `"104"', add
label define age_lbl 105 `"105"', add
label define age_lbl 106 `"106"', add
label define age_lbl 107 `"107"', add
label define age_lbl 108 `"108"', add
label define age_lbl 109 `"109"', add
label define age_lbl 110 `"110"', add
label define age_lbl 111 `"111"', add
label define age_lbl 112 `"112 (112+ in the 1980 internal data)"', add
label define age_lbl 113 `"113"', add
label define age_lbl 114 `"114"', add
label define age_lbl 115 `"115 (115+ in the 1990 internal data)"', add
label define age_lbl 116 `"116"', add
label define age_lbl 117 `"117"', add
label define age_lbl 118 `"118"', add
label define age_lbl 119 `"119"', add
label define age_lbl 120 `"120"', add
label define age_lbl 121 `"121"', add
label define age_lbl 122 `"122"', add
label define age_lbl 123 `"123"', add
label define age_lbl 124 `"124"', add
label define age_lbl 125 `"125"', add
label define age_lbl 126 `"126"', add
label define age_lbl 129 `"129"', add
label define age_lbl 130 `"130"', add
label define age_lbl 135 `"135"', add
label values age age_lbl

label define marst_lbl 1 `"Married, spouse present"'
label define marst_lbl 2 `"Married, spouse absent"', add
label define marst_lbl 3 `"Separated"', add
label define marst_lbl 4 `"Divorced"', add
label define marst_lbl 5 `"Widowed"', add
label define marst_lbl 6 `"Never married/single"', add
label values marst marst_lbl

label define race_lbl 1 `"White"'
label define race_lbl 2 `"Black/African American/Negro"', add
label define race_lbl 3 `"American Indian or Alaska Native"', add
label define race_lbl 4 `"Chinese"', add
label define race_lbl 5 `"Japanese"', add
label define race_lbl 6 `"Other Asian or Pacific Islander"', add
label define race_lbl 7 `"Other race, nec"', add
label define race_lbl 8 `"Two major races"', add
label define race_lbl 9 `"Three or more major races"', add
label values race race_lbl

label define raced_lbl 100 `"White"'
label define raced_lbl 110 `"Spanish write_in"', add
label define raced_lbl 120 `"Blank (white) (1850)"', add
label define raced_lbl 130 `"Portuguese"', add
label define raced_lbl 140 `"Mexican (1930)"', add
label define raced_lbl 150 `"Puerto Rican (1910 Hawaii)"', add
label define raced_lbl 200 `"Black/African American/Negro"', add
label define raced_lbl 210 `"Mulatto"', add
label define raced_lbl 300 `"American Indian/Alaska Native"', add
label define raced_lbl 302 `"Apache"', add
label define raced_lbl 303 `"Blackfoot"', add
label define raced_lbl 304 `"Cherokee"', add
label define raced_lbl 305 `"Cheyenne"', add
label define raced_lbl 306 `"Chickasaw"', add
label define raced_lbl 307 `"Chippewa"', add
label define raced_lbl 308 `"Choctaw"', add
label define raced_lbl 309 `"Comanche"', add
label define raced_lbl 310 `"Creek"', add
label define raced_lbl 311 `"Crow"', add
label define raced_lbl 312 `"Iroquois"', add
label define raced_lbl 313 `"Kiowa"', add
label define raced_lbl 314 `"Lumbee"', add
label define raced_lbl 315 `"Navajo"', add
label define raced_lbl 316 `"Osage"', add
label define raced_lbl 317 `"Paiute"', add
label define raced_lbl 318 `"Pima"', add
label define raced_lbl 319 `"Potawatomi"', add
label define raced_lbl 320 `"Pueblo"', add
label define raced_lbl 321 `"Seminole"', add
label define raced_lbl 322 `"Shoshone"', add
label define raced_lbl 323 `"Sioux"', add
label define raced_lbl 324 `"Tlingit (Tlingit_Haida, 2000/ACS)"', add
label define raced_lbl 325 `"Tohono O Odham"', add
label define raced_lbl 326 `"All other tribes (1990)"', add
label define raced_lbl 328 `"Hopi"', add
label define raced_lbl 329 `"Central American Indian"', add
label define raced_lbl 330 `"Spanish American Indian"', add
label define raced_lbl 350 `"Delaware"', add
label define raced_lbl 351 `"Latin American Indian"', add
label define raced_lbl 352 `"Puget Sound Salish"', add
label define raced_lbl 353 `"Yakama"', add
label define raced_lbl 354 `"Yaqui"', add
label define raced_lbl 355 `"Colville"', add
label define raced_lbl 356 `"Houma"', add
label define raced_lbl 357 `"Menominee"', add
label define raced_lbl 358 `"Yuman"', add
label define raced_lbl 359 `"South American Indian"', add
label define raced_lbl 360 `"Mexican American Indian"', add
label define raced_lbl 361 `"Other Amer. Indian tribe (2000,ACS)"', add
label define raced_lbl 362 `"2+ Amer. Indian tribes (2000,ACS)"', add
label define raced_lbl 370 `"Alaskan Athabaskan"', add
label define raced_lbl 371 `"Aleut"', add
label define raced_lbl 372 `"Eskimo"', add
label define raced_lbl 373 `"Alaskan mixed"', add
label define raced_lbl 374 `"Inupiat"', add
label define raced_lbl 375 `"Yup'ik"', add
label define raced_lbl 379 `"Other Alaska Native tribe(s) (2000,ACS)"', add
label define raced_lbl 398 `"Both Am. Ind. and Alaska Native (2000,ACS)"', add
label define raced_lbl 399 `"Tribe not specified"', add
label define raced_lbl 400 `"Chinese"', add
label define raced_lbl 410 `"Taiwanese"', add
label define raced_lbl 420 `"Chinese and Taiwanese"', add
label define raced_lbl 500 `"Japanese"', add
label define raced_lbl 600 `"Filipino"', add
label define raced_lbl 610 `"Asian Indian (Hindu 1920_1940)"', add
label define raced_lbl 620 `"Korean"', add
label define raced_lbl 630 `"Hawaiian"', add
label define raced_lbl 631 `"Hawaiian and Asian (1900,1920)"', add
label define raced_lbl 632 `"Hawaiian and European (1900,1920)"', add
label define raced_lbl 634 `"Hawaiian mixed"', add
label define raced_lbl 640 `"Vietnamese"', add
label define raced_lbl 641 `"Bhutanese"', add
label define raced_lbl 642 `"Mongolian"', add
label define raced_lbl 643 `"Nepalese"', add
label define raced_lbl 650 `"Other Asian or Pacific Islander (1920,1980)"', add
label define raced_lbl 651 `"Asian only (CPS)"', add
label define raced_lbl 652 `"Pacific Islander only (CPS)"', add
label define raced_lbl 653 `"Asian or Pacific Islander, n.s. (1990 Internal Census files)"', add
label define raced_lbl 660 `"Cambodian"', add
label define raced_lbl 661 `"Hmong"', add
label define raced_lbl 662 `"Laotian"', add
label define raced_lbl 663 `"Thai"', add
label define raced_lbl 664 `"Bangladeshi"', add
label define raced_lbl 665 `"Burmese"', add
label define raced_lbl 666 `"Indonesian"', add
label define raced_lbl 667 `"Malaysian"', add
label define raced_lbl 668 `"Okinawan"', add
label define raced_lbl 669 `"Pakistani"', add
label define raced_lbl 670 `"Sri Lankan"', add
label define raced_lbl 671 `"Other Asian, n.e.c."', add
label define raced_lbl 672 `"Asian, not specified"', add
label define raced_lbl 673 `"Chinese and Japanese"', add
label define raced_lbl 674 `"Chinese and Filipino"', add
label define raced_lbl 675 `"Chinese and Vietnamese"', add
label define raced_lbl 676 `"Chinese and Asian write_in"', add
label define raced_lbl 677 `"Japanese and Filipino"', add
label define raced_lbl 678 `"Asian Indian and Asian write_in"', add
label define raced_lbl 679 `"Other Asian race combinations"', add
label define raced_lbl 680 `"Samoan"', add
label define raced_lbl 681 `"Tahitian"', add
label define raced_lbl 682 `"Tongan"', add
label define raced_lbl 683 `"Other Polynesian (1990)"', add
label define raced_lbl 684 `"1+ other Polynesian races (2000,ACS)"', add
label define raced_lbl 685 `"Guamanian/Chamorro"', add
label define raced_lbl 686 `"Northern Mariana Islander"', add
label define raced_lbl 687 `"Palauan"', add
label define raced_lbl 688 `"Other Micronesian (1990)"', add
label define raced_lbl 689 `"1+ other Micronesian races (2000,ACS)"', add
label define raced_lbl 690 `"Fijian"', add
label define raced_lbl 691 `"Other Melanesian (1990)"', add
label define raced_lbl 692 `"1+ other Melanesian races (2000,ACS)"', add
label define raced_lbl 698 `"2+ PI races from 2+ PI regions"', add
label define raced_lbl 699 `"Pacific Islander, n.s."', add
label define raced_lbl 700 `"Other race, n.e.c."', add
label define raced_lbl 801 `"White and Black"', add
label define raced_lbl 802 `"White and AIAN"', add
label define raced_lbl 810 `"White and Asian"', add
label define raced_lbl 811 `"White and Chinese"', add
label define raced_lbl 812 `"White and Japanese"', add
label define raced_lbl 813 `"White and Filipino"', add
label define raced_lbl 814 `"White and Asian Indian"', add
label define raced_lbl 815 `"White and Korean"', add
label define raced_lbl 816 `"White and Vietnamese"', add
label define raced_lbl 817 `"White and Asian write_in"', add
label define raced_lbl 818 `"White and other Asian race(s)"', add
label define raced_lbl 819 `"White and two or more Asian groups"', add
label define raced_lbl 820 `"White and PI"', add
label define raced_lbl 821 `"White and Native Hawaiian"', add
label define raced_lbl 822 `"White and Samoan"', add
label define raced_lbl 823 `"White and Guamanian"', add
label define raced_lbl 824 `"White and PI write_in"', add
label define raced_lbl 825 `"White and other PI race(s)"', add
label define raced_lbl 826 `"White and other race write_in"', add
label define raced_lbl 827 `"White and other race, n.e.c."', add
label define raced_lbl 830 `"Black and AIAN"', add
label define raced_lbl 831 `"Black and Asian"', add
label define raced_lbl 832 `"Black and Chinese"', add
label define raced_lbl 833 `"Black and Japanese"', add
label define raced_lbl 834 `"Black and Filipino"', add
label define raced_lbl 835 `"Black and Asian Indian"', add
label define raced_lbl 836 `"Black and Korean"', add
label define raced_lbl 837 `"Black and Asian write_in"', add
label define raced_lbl 838 `"Black and other Asian race(s)"', add
label define raced_lbl 840 `"Black and PI"', add
label define raced_lbl 841 `"Black and PI write_in"', add
label define raced_lbl 842 `"Black and other PI race(s)"', add
label define raced_lbl 845 `"Black and other race write_in"', add
label define raced_lbl 850 `"AIAN and Asian"', add
label define raced_lbl 851 `"AIAN and Filipino (2000 1%)"', add
label define raced_lbl 852 `"AIAN and Asian Indian"', add
label define raced_lbl 853 `"AIAN and Asian write_in (2000 1%)"', add
label define raced_lbl 854 `"AIAN and other Asian race(s)"', add
label define raced_lbl 855 `"AIAN and PI"', add
label define raced_lbl 856 `"AIAN and other race write_in"', add
label define raced_lbl 860 `"Asian and PI"', add
label define raced_lbl 861 `"Chinese and Hawaiian"', add
label define raced_lbl 862 `"Chinese, Filipino, Hawaiian (2000 1%)"', add
label define raced_lbl 863 `"Japanese and Hawaiian (2000 1%)"', add
label define raced_lbl 864 `"Filipino and Hawaiian"', add
label define raced_lbl 865 `"Filipino and PI write_in"', add
label define raced_lbl 866 `"Asian Indian and PI write_in (2000 1%)"', add
label define raced_lbl 867 `"Asian write_in and PI write_in"', add
label define raced_lbl 868 `"Other Asian race(s) and PI race(s)"', add
label define raced_lbl 869 `"Japanese and Korean (ACS)"', add
label define raced_lbl 880 `"Asian and other race write_in"', add
label define raced_lbl 881 `"Chinese and other race write_in"', add
label define raced_lbl 882 `"Japanese and other race write_in"', add
label define raced_lbl 883 `"Filipino and other race write_in"', add
label define raced_lbl 884 `"Asian Indian and other race write_in"', add
label define raced_lbl 885 `"Asian write_in and other race write_in"', add
label define raced_lbl 886 `"Other Asian race(s) and other race write_in"', add
label define raced_lbl 887 `"Chinese and Korean"', add
label define raced_lbl 890 `"PI and other race write_in:"', add
label define raced_lbl 891 `"PI write_in and other race write_in"', add
label define raced_lbl 892 `"Other PI race(s) and other race write_in"', add
label define raced_lbl 893 `"Native Hawaiian or PI other race(s)"', add
label define raced_lbl 899 `"API and other race write_in"', add
label define raced_lbl 901 `"White, Black, AIAN"', add
label define raced_lbl 902 `"White, Black, Asian"', add
label define raced_lbl 903 `"White, Black, PI"', add
label define raced_lbl 904 `"White, Black, other race write_in"', add
label define raced_lbl 905 `"White, AIAN, Asian"', add
label define raced_lbl 906 `"White, AIAN, PI"', add
label define raced_lbl 907 `"White, AIAN, other race write_in"', add
label define raced_lbl 910 `"White, Asian, PI"', add
label define raced_lbl 911 `"White, Chinese, Hawaiian"', add
label define raced_lbl 912 `"White, Chinese, Filipino, Hawaiian (2000 1%)"', add
label define raced_lbl 913 `"White, Japanese, Hawaiian (2000 1%)"', add
label define raced_lbl 914 `"White, Filipino, Hawaiian"', add
label define raced_lbl 915 `"Other White, Asian race(s), PI race(s)"', add
label define raced_lbl 916 `"White, AIAN and Filipino"', add
label define raced_lbl 917 `"White, Black, and Filipino"', add
label define raced_lbl 920 `"White, Asian, other race write_in"', add
label define raced_lbl 921 `"White, Filipino, other race write_in (2000 1%)"', add
label define raced_lbl 922 `"White, Asian write_in, other race write_in (2000 1%)"', add
label define raced_lbl 923 `"Other White, Asian race(s), other race write_in (2000 1%)"', add
label define raced_lbl 925 `"White, PI, other race write_in"', add
label define raced_lbl 930 `"Black, AIAN, Asian"', add
label define raced_lbl 931 `"Black, AIAN, PI"', add
label define raced_lbl 932 `"Black, AIAN, other race write_in"', add
label define raced_lbl 933 `"Black, Asian, PI"', add
label define raced_lbl 934 `"Black, Asian, other race write_in"', add
label define raced_lbl 935 `"Black, PI, other race write_in"', add
label define raced_lbl 940 `"AIAN, Asian, PI"', add
label define raced_lbl 941 `"AIAN, Asian, other race write_in"', add
label define raced_lbl 942 `"AIAN, PI, other race write_in"', add
label define raced_lbl 943 `"Asian, PI, other race write_in"', add
label define raced_lbl 944 `"Asian (Chinese, Japanese, Korean, Vietnamese); and Native Hawaiian or PI; and Other"', add
label define raced_lbl 949 `"2 or 3 races (CPS)"', add
label define raced_lbl 950 `"White, Black, AIAN, Asian"', add
label define raced_lbl 951 `"White, Black, AIAN, PI"', add
label define raced_lbl 952 `"White, Black, AIAN, other race write_in"', add
label define raced_lbl 953 `"White, Black, Asian, PI"', add
label define raced_lbl 954 `"White, Black, Asian, other race write_in"', add
label define raced_lbl 955 `"White, Black, PI, other race write_in"', add
label define raced_lbl 960 `"White, AIAN, Asian, PI"', add
label define raced_lbl 961 `"White, AIAN, Asian, other race write_in"', add
label define raced_lbl 962 `"White, AIAN, PI, other race write_in"', add
label define raced_lbl 963 `"White, Asian, PI, other race write_in"', add
label define raced_lbl 964 `"White, Chinese, Japanese, Native Hawaiian"', add
label define raced_lbl 970 `"Black, AIAN, Asian, PI"', add
label define raced_lbl 971 `"Black, AIAN, Asian, other race write_in"', add
label define raced_lbl 972 `"Black, AIAN, PI, other race write_in"', add
label define raced_lbl 973 `"Black, Asian, PI, other race write_in"', add
label define raced_lbl 974 `"AIAN, Asian, PI, other race write_in"', add
label define raced_lbl 975 `"AIAN, Asian, PI, Hawaiian other race write_in"', add
label define raced_lbl 976 `"Two specified Asian  (Chinese and other Asian, Chinese and Japanese, Japanese and other Asian, Korean and other Asian); Native Hawaiian/PI; and Other Race"', add
label define raced_lbl 980 `"White, Black, AIAN, Asian, PI"', add
label define raced_lbl 981 `"White, Black, AIAN, Asian, other race write_in"', add
label define raced_lbl 982 `"White, Black, AIAN, PI, other race write_in"', add
label define raced_lbl 983 `"White, Black, Asian, PI, other race write_in"', add
label define raced_lbl 984 `"White, AIAN, Asian, PI, other race write_in"', add
label define raced_lbl 985 `"Black, AIAN, Asian, PI, other race write_in"', add
label define raced_lbl 986 `"Black, AIAN, Asian, PI, Hawaiian, other race write_in"', add
label define raced_lbl 989 `"4 or 5 races (CPS)"', add
label define raced_lbl 990 `"White, Black, AIAN, Asian, PI, other race write_in"', add
label define raced_lbl 991 `"White race; Some other race; Black or African American race and/or American Indian and Alaska Native race and/or Asian groups and/or Native Hawaiian and Other Pacific Islander groups"', add
label define raced_lbl 996 `"2+ races, n.e.c. (CPS)"', add
label values raced raced_lbl

label define hispan_lbl 0 `"Not Hispanic"'
label define hispan_lbl 1 `"Mexican"', add
label define hispan_lbl 2 `"Puerto Rican"', add
label define hispan_lbl 3 `"Cuban"', add
label define hispan_lbl 4 `"Other"', add
label define hispan_lbl 9 `"Not Reported"', add
label values hispan hispan_lbl

label define hispand_lbl 000 `"Not Hispanic"'
label define hispand_lbl 100 `"Mexican"', add
label define hispand_lbl 102 `"Mexican American"', add
label define hispand_lbl 103 `"Mexicano/Mexicana"', add
label define hispand_lbl 104 `"Chicano/Chicana"', add
label define hispand_lbl 105 `"La Raza"', add
label define hispand_lbl 106 `"Mexican American Indian"', add
label define hispand_lbl 107 `"Mexico"', add
label define hispand_lbl 200 `"Puerto Rican"', add
label define hispand_lbl 300 `"Cuban"', add
label define hispand_lbl 401 `"Central American Indian"', add
label define hispand_lbl 402 `"Canal Zone"', add
label define hispand_lbl 411 `"Costa Rican"', add
label define hispand_lbl 412 `"Guatemalan"', add
label define hispand_lbl 413 `"Honduran"', add
label define hispand_lbl 414 `"Nicaraguan"', add
label define hispand_lbl 415 `"Panamanian"', add
label define hispand_lbl 416 `"Salvadoran"', add
label define hispand_lbl 417 `"Central American, n.e.c."', add
label define hispand_lbl 420 `"Argentinean"', add
label define hispand_lbl 421 `"Bolivian"', add
label define hispand_lbl 422 `"Chilean"', add
label define hispand_lbl 423 `"Colombian"', add
label define hispand_lbl 424 `"Ecuadorian"', add
label define hispand_lbl 425 `"Paraguayan"', add
label define hispand_lbl 426 `"Peruvian"', add
label define hispand_lbl 427 `"Uruguayan"', add
label define hispand_lbl 428 `"Venezuelan"', add
label define hispand_lbl 429 `"South American Indian"', add
label define hispand_lbl 430 `"Criollo"', add
label define hispand_lbl 431 `"South American, n.e.c."', add
label define hispand_lbl 450 `"Spaniard"', add
label define hispand_lbl 451 `"Andalusian"', add
label define hispand_lbl 452 `"Asturian"', add
label define hispand_lbl 453 `"Castillian"', add
label define hispand_lbl 454 `"Catalonian"', add
label define hispand_lbl 455 `"Balearic Islander"', add
label define hispand_lbl 456 `"Gallego"', add
label define hispand_lbl 457 `"Valencian"', add
label define hispand_lbl 458 `"Canarian"', add
label define hispand_lbl 459 `"Spanish Basque"', add
label define hispand_lbl 460 `"Dominican"', add
label define hispand_lbl 465 `"Latin American"', add
label define hispand_lbl 470 `"Hispanic"', add
label define hispand_lbl 480 `"Spanish"', add
label define hispand_lbl 490 `"Californio"', add
label define hispand_lbl 491 `"Tejano"', add
label define hispand_lbl 492 `"Nuevo Mexicano"', add
label define hispand_lbl 493 `"Spanish American"', add
label define hispand_lbl 494 `"Spanish American Indian"', add
label define hispand_lbl 495 `"Meso American Indian"', add
label define hispand_lbl 496 `"Mestizo"', add
label define hispand_lbl 498 `"Other, n.s."', add
label define hispand_lbl 499 `"Other, n.e.c."', add
label define hispand_lbl 900 `"Not Reported"', add
label values hispand hispand_lbl

label define ancestr1_lbl 001 `"Alsatian, Alsace-Lorraine"'
label define ancestr1_lbl 002 `"Andorran"', add
label define ancestr1_lbl 003 `"Austrian"', add
label define ancestr1_lbl 004 `"Tirolean"', add
label define ancestr1_lbl 005 `"Basque"', add
label define ancestr1_lbl 006 `"French Basque"', add
label define ancestr1_lbl 008 `"Belgian"', add
label define ancestr1_lbl 009 `"Flemish"', add
label define ancestr1_lbl 010 `"Walloon"', add
label define ancestr1_lbl 011 `"British"', add
label define ancestr1_lbl 012 `"British Isles"', add
label define ancestr1_lbl 013 `"Channel Islander"', add
label define ancestr1_lbl 014 `"Gibraltan"', add
label define ancestr1_lbl 015 `"Cornish"', add
label define ancestr1_lbl 016 `"Corsican"', add
label define ancestr1_lbl 017 `"Cypriot"', add
label define ancestr1_lbl 018 `"Greek Cypriote"', add
label define ancestr1_lbl 019 `"Turkish Cypriote"', add
label define ancestr1_lbl 020 `"Danish"', add
label define ancestr1_lbl 021 `"Dutch"', add
label define ancestr1_lbl 022 `"English"', add
label define ancestr1_lbl 023 `"Faeroe Islander"', add
label define ancestr1_lbl 024 `"Finnish"', add
label define ancestr1_lbl 025 `"Karelian"', add
label define ancestr1_lbl 026 `"French"', add
label define ancestr1_lbl 027 `"Lorrainian"', add
label define ancestr1_lbl 028 `"Breton"', add
label define ancestr1_lbl 029 `"Frisian"', add
label define ancestr1_lbl 030 `"Friulian"', add
label define ancestr1_lbl 032 `"German"', add
label define ancestr1_lbl 033 `"Bavarian"', add
label define ancestr1_lbl 034 `"Berliner"', add
label define ancestr1_lbl 035 `"Hamburger"', add
label define ancestr1_lbl 036 `"Hanoverian"', add
label define ancestr1_lbl 037 `"Hessian"', add
label define ancestr1_lbl 038 `"Lubecker"', add
label define ancestr1_lbl 039 `"Pomeranian"', add
label define ancestr1_lbl 040 `"Prussian"', add
label define ancestr1_lbl 041 `"Saxon"', add
label define ancestr1_lbl 042 `"Sudetenlander"', add
label define ancestr1_lbl 043 `"Westphalian"', add
label define ancestr1_lbl 046 `"Greek"', add
label define ancestr1_lbl 047 `"Cretan"', add
label define ancestr1_lbl 048 `"Cycladic Islander, Dodecanese Islander, Peloponnesian"', add
label define ancestr1_lbl 049 `"Icelander"', add
label define ancestr1_lbl 050 `"Irish, various subheads,"', add
label define ancestr1_lbl 051 `"Italian"', add
label define ancestr1_lbl 053 `"Abruzzi"', add
label define ancestr1_lbl 054 `"Apulian"', add
label define ancestr1_lbl 055 `"Basilicata"', add
label define ancestr1_lbl 056 `"Calabrian"', add
label define ancestr1_lbl 057 `"Amalfin"', add
label define ancestr1_lbl 058 `"Emilia Romagna"', add
label define ancestr1_lbl 059 `"Rome"', add
label define ancestr1_lbl 060 `"Ligurian"', add
label define ancestr1_lbl 061 `"Lombardian"', add
label define ancestr1_lbl 062 `"Marches"', add
label define ancestr1_lbl 063 `"Molise"', add
label define ancestr1_lbl 064 `"Neapolitan"', add
label define ancestr1_lbl 065 `"Piedmontese"', add
label define ancestr1_lbl 066 `"Puglia"', add
label define ancestr1_lbl 067 `"Sardinian"', add
label define ancestr1_lbl 068 `"Sicilian"', add
label define ancestr1_lbl 069 `"Tuscan"', add
label define ancestr1_lbl 070 `"Trentino"', add
label define ancestr1_lbl 071 `"Umbrian"', add
label define ancestr1_lbl 072 `"Valle dAosta"', add
label define ancestr1_lbl 073 `"Venetian"', add
label define ancestr1_lbl 075 `"Lapp"', add
label define ancestr1_lbl 076 `"Liechtensteiner"', add
label define ancestr1_lbl 077 `"Luxemburger"', add
label define ancestr1_lbl 078 `"Maltese"', add
label define ancestr1_lbl 079 `"Manx"', add
label define ancestr1_lbl 080 `"Monegasque"', add
label define ancestr1_lbl 081 `"Northern Irelander"', add
label define ancestr1_lbl 082 `"Norwegian"', add
label define ancestr1_lbl 084 `"Portuguese"', add
label define ancestr1_lbl 085 `"Azorean"', add
label define ancestr1_lbl 086 `"Madeiran"', add
label define ancestr1_lbl 087 `"Scotch Irish"', add
label define ancestr1_lbl 088 `"Scottish"', add
label define ancestr1_lbl 089 `"Swedish"', add
label define ancestr1_lbl 090 `"Aland Islander"', add
label define ancestr1_lbl 091 `"Swiss"', add
label define ancestr1_lbl 092 `"Suisse"', add
label define ancestr1_lbl 095 `"Romansch"', add
label define ancestr1_lbl 096 `"Suisse Romane"', add
label define ancestr1_lbl 097 `"Welsh"', add
label define ancestr1_lbl 098 `"Scandinavian, Nordic"', add
label define ancestr1_lbl 100 `"Albanian"', add
label define ancestr1_lbl 101 `"Azerbaijani"', add
label define ancestr1_lbl 102 `"Belorussian"', add
label define ancestr1_lbl 103 `"Bulgarian"', add
label define ancestr1_lbl 105 `"Carpathian"', add
label define ancestr1_lbl 108 `"Cossack"', add
label define ancestr1_lbl 109 `"Croatian"', add
label define ancestr1_lbl 111 `"Czechoslovakian"', add
label define ancestr1_lbl 112 `"Bohemian"', add
label define ancestr1_lbl 115 `"Estonian"', add
label define ancestr1_lbl 116 `"Livonian"', add
label define ancestr1_lbl 117 `"Finno Ugrian"', add
label define ancestr1_lbl 118 `"Mordovian"', add
label define ancestr1_lbl 119 `"Voytak"', add
label define ancestr1_lbl 120 `"Georgian"', add
label define ancestr1_lbl 122 `"Germans from Russia"', add
label define ancestr1_lbl 123 `"Gruziia"', add
label define ancestr1_lbl 124 `"Rom"', add
label define ancestr1_lbl 125 `"Hungarian"', add
label define ancestr1_lbl 126 `"Magyar"', add
label define ancestr1_lbl 128 `"Latvian"', add
label define ancestr1_lbl 129 `"Lithuanian"', add
label define ancestr1_lbl 130 `"Macedonian"', add
label define ancestr1_lbl 132 `"North Caucasian"', add
label define ancestr1_lbl 133 `"North Caucasian Turkic"', add
label define ancestr1_lbl 140 `"Ossetian"', add
label define ancestr1_lbl 142 `"Polish"', add
label define ancestr1_lbl 143 `"Kashubian"', add
label define ancestr1_lbl 144 `"Romanian"', add
label define ancestr1_lbl 145 `"Bessarabian"', add
label define ancestr1_lbl 146 `"Moldavian"', add
label define ancestr1_lbl 147 `"Wallachian"', add
label define ancestr1_lbl 148 `"Russian"', add
label define ancestr1_lbl 150 `"Muscovite"', add
label define ancestr1_lbl 152 `"Serbian"', add
label define ancestr1_lbl 153 `"Slovak"', add
label define ancestr1_lbl 154 `"Slovene"', add
label define ancestr1_lbl 155 `"Sorb/Wend"', add
label define ancestr1_lbl 156 `"Soviet Turkic"', add
label define ancestr1_lbl 157 `"Bashkir"', add
label define ancestr1_lbl 158 `"Chevash"', add
label define ancestr1_lbl 159 `"Gagauz"', add
label define ancestr1_lbl 160 `"Mesknetian"', add
label define ancestr1_lbl 163 `"Yakut"', add
label define ancestr1_lbl 164 `"Soviet Union, nec"', add
label define ancestr1_lbl 165 `"Tatar"', add
label define ancestr1_lbl 169 `"Uzbek"', add
label define ancestr1_lbl 171 `"Ukrainian"', add
label define ancestr1_lbl 176 `"Yugoslavian"', add
label define ancestr1_lbl 178 `"Slav"', add
label define ancestr1_lbl 179 `"Slavonian"', add
label define ancestr1_lbl 181 `"Central European, nec"', add
label define ancestr1_lbl 183 `"Northern European, nec"', add
label define ancestr1_lbl 185 `"Southern European, nec"', add
label define ancestr1_lbl 187 `"Western European, nec"', add
label define ancestr1_lbl 190 `"Eastern European, nec"', add
label define ancestr1_lbl 195 `"European, nec"', add
label define ancestr1_lbl 200 `"Spaniard"', add
label define ancestr1_lbl 201 `"Andalusian"', add
label define ancestr1_lbl 202 `"Astorian"', add
label define ancestr1_lbl 204 `"Catalonian"', add
label define ancestr1_lbl 205 `"Balearic Islander"', add
label define ancestr1_lbl 206 `"Galician"', add
label define ancestr1_lbl 210 `"Mexican"', add
label define ancestr1_lbl 211 `"Mexican American"', add
label define ancestr1_lbl 213 `"Chicano/Chicana"', add
label define ancestr1_lbl 218 `"Nuevo Mexicano"', add
label define ancestr1_lbl 219 `"Californio"', add
label define ancestr1_lbl 221 `"Costa Rican"', add
label define ancestr1_lbl 222 `"Guatemalan"', add
label define ancestr1_lbl 223 `"Honduran"', add
label define ancestr1_lbl 224 `"Nicaraguan"', add
label define ancestr1_lbl 225 `"Panamanian"', add
label define ancestr1_lbl 226 `"Salvadoran"', add
label define ancestr1_lbl 227 `"Latin American"', add
label define ancestr1_lbl 231 `"Argentinean"', add
label define ancestr1_lbl 232 `"Bolivian"', add
label define ancestr1_lbl 233 `"Chilean"', add
label define ancestr1_lbl 234 `"Colombian"', add
label define ancestr1_lbl 235 `"Ecuadorian"', add
label define ancestr1_lbl 236 `"Paraguayan"', add
label define ancestr1_lbl 237 `"Peruvian"', add
label define ancestr1_lbl 238 `"Uruguayan"', add
label define ancestr1_lbl 239 `"Venezuelan"', add
label define ancestr1_lbl 248 `"South American"', add
label define ancestr1_lbl 261 `"Puerto Rican"', add
label define ancestr1_lbl 271 `"Cuban"', add
label define ancestr1_lbl 275 `"Dominican"', add
label define ancestr1_lbl 290 `"Hispanic"', add
label define ancestr1_lbl 291 `"Spanish"', add
label define ancestr1_lbl 295 `"Spanish American"', add
label define ancestr1_lbl 296 `"Other Spanish/Hispanic"', add
label define ancestr1_lbl 300 `"Bahamian"', add
label define ancestr1_lbl 301 `"Barbadian"', add
label define ancestr1_lbl 302 `"Belizean"', add
label define ancestr1_lbl 303 `"Bermudan"', add
label define ancestr1_lbl 304 `"Cayman Islander"', add
label define ancestr1_lbl 308 `"Jamaican"', add
label define ancestr1_lbl 310 `"Dutch West Indies"', add
label define ancestr1_lbl 311 `"Aruba Islander"', add
label define ancestr1_lbl 312 `"St Maarten Islander"', add
label define ancestr1_lbl 314 `"Trinidadian/Tobagonian"', add
label define ancestr1_lbl 315 `"Trinidadian"', add
label define ancestr1_lbl 316 `"Tobagonian"', add
label define ancestr1_lbl 317 `"U.S. Virgin Islander"', add
label define ancestr1_lbl 321 `"British Virgin Islander"', add
label define ancestr1_lbl 322 `"British West Indian"', add
label define ancestr1_lbl 323 `"Turks and Caicos Islander"', add
label define ancestr1_lbl 324 `"Anguilla Islander"', add
label define ancestr1_lbl 328 `"Dominica Islander"', add
label define ancestr1_lbl 329 `"Grenadian"', add
label define ancestr1_lbl 331 `"St Lucia Islander"', add
label define ancestr1_lbl 332 `"French West Indies"', add
label define ancestr1_lbl 333 `"Guadeloupe Islander"', add
label define ancestr1_lbl 334 `"Cayenne"', add
label define ancestr1_lbl 335 `"West Indian"', add
label define ancestr1_lbl 336 `"Haitian"', add
label define ancestr1_lbl 337 `"Other West Indian"', add
label define ancestr1_lbl 360 `"Brazilian"', add
label define ancestr1_lbl 365 `"San Andres"', add
label define ancestr1_lbl 370 `"Guyanese/British Guiana"', add
label define ancestr1_lbl 375 `"Providencia"', add
label define ancestr1_lbl 380 `"Surinam/Dutch Guiana"', add
label define ancestr1_lbl 400 `"Algerian"', add
label define ancestr1_lbl 402 `"Egyptian"', add
label define ancestr1_lbl 404 `"Libyan"', add
label define ancestr1_lbl 406 `"Moroccan"', add
label define ancestr1_lbl 407 `"Ifni"', add
label define ancestr1_lbl 408 `"Tunisian"', add
label define ancestr1_lbl 411 `"North African"', add
label define ancestr1_lbl 412 `"Alhucemas"', add
label define ancestr1_lbl 413 `"Berber"', add
label define ancestr1_lbl 414 `"Rio de Oro"', add
label define ancestr1_lbl 415 `"Bahraini"', add
label define ancestr1_lbl 416 `"Iranian"', add
label define ancestr1_lbl 417 `"Iraqi"', add
label define ancestr1_lbl 419 `"Israeli"', add
label define ancestr1_lbl 421 `"Jordanian"', add
label define ancestr1_lbl 423 `"Kuwaiti"', add
label define ancestr1_lbl 425 `"Lebanese"', add
label define ancestr1_lbl 427 `"Saudi Arabian"', add
label define ancestr1_lbl 429 `"Syrian"', add
label define ancestr1_lbl 431 `"Armenian"', add
label define ancestr1_lbl 434 `"Turkish"', add
label define ancestr1_lbl 435 `"Yemeni"', add
label define ancestr1_lbl 436 `"Omani"', add
label define ancestr1_lbl 437 `"Muscat"', add
label define ancestr1_lbl 438 `"Trucial Oman"', add
label define ancestr1_lbl 439 `"Qatar"', add
label define ancestr1_lbl 442 `"Kurdish"', add
label define ancestr1_lbl 444 `"Kuria Muria Islander"', add
label define ancestr1_lbl 465 `"Palestinian"', add
label define ancestr1_lbl 466 `"Gazan"', add
label define ancestr1_lbl 467 `"West Bank"', add
label define ancestr1_lbl 470 `"South Yemeni"', add
label define ancestr1_lbl 471 `"Aden"', add
label define ancestr1_lbl 480 `"United Arab Emirates"', add
label define ancestr1_lbl 482 `"Assyrian/Chaldean/Syriac"', add
label define ancestr1_lbl 490 `"Middle Eastern"', add
label define ancestr1_lbl 495 `"Arab"', add
label define ancestr1_lbl 496 `"Other Arab"', add
label define ancestr1_lbl 500 `"Angolan"', add
label define ancestr1_lbl 502 `"Benin"', add
label define ancestr1_lbl 504 `"Botswana"', add
label define ancestr1_lbl 506 `"Burundian"', add
label define ancestr1_lbl 508 `"Cameroonian"', add
label define ancestr1_lbl 510 `"Cape Verdean"', add
label define ancestr1_lbl 513 `"Chadian"', add
label define ancestr1_lbl 515 `"Congolese"', add
label define ancestr1_lbl 516 `"Congo-Brazzaville"', add
label define ancestr1_lbl 519 `"Djibouti"', add
label define ancestr1_lbl 520 `"Equatorial Guinea"', add
label define ancestr1_lbl 522 `"Ethiopian"', add
label define ancestr1_lbl 523 `"Eritrean"', add
label define ancestr1_lbl 525 `"Gabonese"', add
label define ancestr1_lbl 527 `"Gambian"', add
label define ancestr1_lbl 529 `"Ghanian"', add
label define ancestr1_lbl 530 `"Guinean"', add
label define ancestr1_lbl 531 `"Guinea Bissau"', add
label define ancestr1_lbl 532 `"Ivory Coast"', add
label define ancestr1_lbl 534 `"Kenyan"', add
label define ancestr1_lbl 538 `"Lesotho"', add
label define ancestr1_lbl 541 `"Liberian"', add
label define ancestr1_lbl 543 `"Madagascan"', add
label define ancestr1_lbl 545 `"Malawian"', add
label define ancestr1_lbl 546 `"Malian"', add
label define ancestr1_lbl 549 `"Mozambican"', add
label define ancestr1_lbl 550 `"Namibian"', add
label define ancestr1_lbl 551 `"Niger"', add
label define ancestr1_lbl 553 `"Nigerian"', add
label define ancestr1_lbl 554 `"Fulani"', add
label define ancestr1_lbl 555 `"Hausa"', add
label define ancestr1_lbl 556 `"Ibo"', add
label define ancestr1_lbl 557 `"Tiv"', add
label define ancestr1_lbl 561 `"Rwandan"', add
label define ancestr1_lbl 564 `"Senegalese"', add
label define ancestr1_lbl 566 `"Sierra Leonean"', add
label define ancestr1_lbl 568 `"Somalian"', add
label define ancestr1_lbl 569 `"Swaziland"', add
label define ancestr1_lbl 570 `"South African"', add
label define ancestr1_lbl 571 `"Union of South Africa"', add
label define ancestr1_lbl 572 `"Afrikaner"', add
label define ancestr1_lbl 573 `"Natalian"', add
label define ancestr1_lbl 574 `"Zulu"', add
label define ancestr1_lbl 576 `"Sudanese"', add
label define ancestr1_lbl 577 `"Dinka"', add
label define ancestr1_lbl 578 `"Nuer"', add
label define ancestr1_lbl 579 `"Fur"', add
label define ancestr1_lbl 582 `"Tanzanian"', add
label define ancestr1_lbl 583 `"Tanganyikan"', add
label define ancestr1_lbl 584 `"Zanzibar Islander"', add
label define ancestr1_lbl 586 `"Togo"', add
label define ancestr1_lbl 588 `"Ugandan"', add
label define ancestr1_lbl 589 `"Upper Voltan"', add
label define ancestr1_lbl 591 `"Zairian"', add
label define ancestr1_lbl 592 `"Zambian"', add
label define ancestr1_lbl 593 `"Zimbabwean"', add
label define ancestr1_lbl 594 `"African Islands"', add
label define ancestr1_lbl 595 `"Other Subsaharan Africa"', add
label define ancestr1_lbl 596 `"Central African"', add
label define ancestr1_lbl 597 `"East African"', add
label define ancestr1_lbl 598 `"West African"', add
label define ancestr1_lbl 599 `"African"', add
label define ancestr1_lbl 600 `"Afghan"', add
label define ancestr1_lbl 601 `"Baluchi"', add
label define ancestr1_lbl 602 `"Pathan"', add
label define ancestr1_lbl 603 `"Bengali"', add
label define ancestr1_lbl 607 `"Bhutanese"', add
label define ancestr1_lbl 609 `"Nepali"', add
label define ancestr1_lbl 615 `"Asian Indian"', add
label define ancestr1_lbl 622 `"Andaman Islander"', add
label define ancestr1_lbl 624 `"Andhra Pradesh"', add
label define ancestr1_lbl 626 `"Assamese"', add
label define ancestr1_lbl 628 `"Goanese"', add
label define ancestr1_lbl 630 `"Gujarati"', add
label define ancestr1_lbl 632 `"Karnatakan"', add
label define ancestr1_lbl 634 `"Keralan"', add
label define ancestr1_lbl 638 `"Maharashtran"', add
label define ancestr1_lbl 640 `"Madrasi"', add
label define ancestr1_lbl 642 `"Mysore"', add
label define ancestr1_lbl 644 `"Naga"', add
label define ancestr1_lbl 648 `"Pondicherry"', add
label define ancestr1_lbl 650 `"Punjabi"', add
label define ancestr1_lbl 656 `"Tamil"', add
label define ancestr1_lbl 675 `"East Indies"', add
label define ancestr1_lbl 680 `"Pakistani"', add
label define ancestr1_lbl 690 `"Sri Lankan"', add
label define ancestr1_lbl 691 `"Singhalese"', add
label define ancestr1_lbl 692 `"Veddah"', add
label define ancestr1_lbl 695 `"Maldivian"', add
label define ancestr1_lbl 700 `"Burmese"', add
label define ancestr1_lbl 702 `"Shan"', add
label define ancestr1_lbl 703 `"Cambodian"', add
label define ancestr1_lbl 704 `"Khmer"', add
label define ancestr1_lbl 706 `"Chinese"', add
label define ancestr1_lbl 707 `"Cantonese"', add
label define ancestr1_lbl 708 `"Manchurian"', add
label define ancestr1_lbl 709 `"Mandarin"', add
label define ancestr1_lbl 712 `"Mongolian"', add
label define ancestr1_lbl 714 `"Tibetan"', add
label define ancestr1_lbl 716 `"Hong Kong"', add
label define ancestr1_lbl 718 `"Macao"', add
label define ancestr1_lbl 720 `"Filipino"', add
label define ancestr1_lbl 730 `"Indonesian"', add
label define ancestr1_lbl 740 `"Japanese"', add
label define ancestr1_lbl 746 `"Ryukyu Islander"', add
label define ancestr1_lbl 748 `"Okinawan"', add
label define ancestr1_lbl 750 `"Korean"', add
label define ancestr1_lbl 765 `"Laotian"', add
label define ancestr1_lbl 766 `"Meo"', add
label define ancestr1_lbl 768 `"Hmong"', add
label define ancestr1_lbl 770 `"Malaysian"', add
label define ancestr1_lbl 774 `"Singaporean"', add
label define ancestr1_lbl 776 `"Thai"', add
label define ancestr1_lbl 777 `"Black Thai"', add
label define ancestr1_lbl 778 `"Western Lao"', add
label define ancestr1_lbl 782 `"Taiwanese"', add
label define ancestr1_lbl 785 `"Vietnamese"', add
label define ancestr1_lbl 786 `"Katu"', add
label define ancestr1_lbl 787 `"Ma"', add
label define ancestr1_lbl 788 `"Mnong"', add
label define ancestr1_lbl 790 `"Montagnard"', add
label define ancestr1_lbl 792 `"Indochinese"', add
label define ancestr1_lbl 793 `"Eurasian"', add
label define ancestr1_lbl 795 `"Asian"', add
label define ancestr1_lbl 796 `"Other Asian"', add
label define ancestr1_lbl 800 `"Australian"', add
label define ancestr1_lbl 801 `"Tasmanian"', add
label define ancestr1_lbl 802 `"Australian Aborigine"', add
label define ancestr1_lbl 803 `"New Zealander"', add
label define ancestr1_lbl 808 `"Polynesian"', add
label define ancestr1_lbl 810 `"Maori"', add
label define ancestr1_lbl 811 `"Hawaiian"', add
label define ancestr1_lbl 813 `"Part Hawaiian"', add
label define ancestr1_lbl 814 `"Samoan"', add
label define ancestr1_lbl 815 `"Tongan"', add
label define ancestr1_lbl 816 `"Tokelauan"', add
label define ancestr1_lbl 817 `"Cook Islander"', add
label define ancestr1_lbl 818 `"Tahitian"', add
label define ancestr1_lbl 819 `"Niuean"', add
label define ancestr1_lbl 820 `"Micronesian"', add
label define ancestr1_lbl 821 `"Guamanian"', add
label define ancestr1_lbl 822 `"Chamorro Islander"', add
label define ancestr1_lbl 823 `"Saipanese"', add
label define ancestr1_lbl 824 `"Palauan"', add
label define ancestr1_lbl 825 `"Marshall Islander"', add
label define ancestr1_lbl 826 `"Kosraean"', add
label define ancestr1_lbl 827 `"Ponapean"', add
label define ancestr1_lbl 828 `"Chuukese"', add
label define ancestr1_lbl 829 `"Yap Islander"', add
label define ancestr1_lbl 830 `"Caroline Islander"', add
label define ancestr1_lbl 831 `"Kiribatese"', add
label define ancestr1_lbl 832 `"Nauruan"', add
label define ancestr1_lbl 833 `"Tarawa Islander"', add
label define ancestr1_lbl 834 `"Tinian Islander"', add
label define ancestr1_lbl 840 `"Melanesian Islander"', add
label define ancestr1_lbl 841 `"Fijian"', add
label define ancestr1_lbl 843 `"New Guinean"', add
label define ancestr1_lbl 844 `"Papuan"', add
label define ancestr1_lbl 845 `"Solomon Islander"', add
label define ancestr1_lbl 846 `"New Caledonian Islander"', add
label define ancestr1_lbl 847 `"Vanuatuan"', add
label define ancestr1_lbl 850 `"Pacific Islander"', add
label define ancestr1_lbl 860 `"Oceania"', add
label define ancestr1_lbl 862 `"Chamolinian"', add
label define ancestr1_lbl 863 `"Reserved Codes"', add
label define ancestr1_lbl 870 `"Other Pacific"', add
label define ancestr1_lbl 900 `"Afro-American"', add
label define ancestr1_lbl 902 `"African-American"', add
label define ancestr1_lbl 913 `"Central American Indian"', add
label define ancestr1_lbl 914 `"South American Indian"', add
label define ancestr1_lbl 920 `"American Indian  (all tribes)"', add
label define ancestr1_lbl 921 `"Aleut"', add
label define ancestr1_lbl 922 `"Eskimo"', add
label define ancestr1_lbl 923 `"Inuit"', add
label define ancestr1_lbl 924 `"White/Caucasian"', add
label define ancestr1_lbl 930 `"Greenlander"', add
label define ancestr1_lbl 931 `"Canadian"', add
label define ancestr1_lbl 933 `"Newfoundland"', add
label define ancestr1_lbl 934 `"Nova Scotian"', add
label define ancestr1_lbl 935 `"French Canadian"', add
label define ancestr1_lbl 936 `"Acadian"', add
label define ancestr1_lbl 939 `"American"', add
label define ancestr1_lbl 940 `"United States"', add
label define ancestr1_lbl 941 `"Alabama"', add
label define ancestr1_lbl 942 `"Alaska"', add
label define ancestr1_lbl 943 `"Arizona"', add
label define ancestr1_lbl 944 `"Arkansas"', add
label define ancestr1_lbl 945 `"California"', add
label define ancestr1_lbl 946 `"Colorado"', add
label define ancestr1_lbl 947 `"Connecticut"', add
label define ancestr1_lbl 948 `"District of Columbia"', add
label define ancestr1_lbl 949 `"Delaware"', add
label define ancestr1_lbl 950 `"Florida"', add
label define ancestr1_lbl 951 `"Georgia"', add
label define ancestr1_lbl 952 `"Idaho"', add
label define ancestr1_lbl 953 `"Illinois"', add
label define ancestr1_lbl 954 `"Indiana"', add
label define ancestr1_lbl 955 `"Iowa"', add
label define ancestr1_lbl 956 `"Kansas"', add
label define ancestr1_lbl 957 `"Kentucky"', add
label define ancestr1_lbl 958 `"Louisiana"', add
label define ancestr1_lbl 959 `"Maine"', add
label define ancestr1_lbl 960 `"Maryland"', add
label define ancestr1_lbl 961 `"Massachusetts"', add
label define ancestr1_lbl 962 `"Michigan"', add
label define ancestr1_lbl 963 `"Minnesota"', add
label define ancestr1_lbl 964 `"Mississippi"', add
label define ancestr1_lbl 965 `"Missouri"', add
label define ancestr1_lbl 966 `"Montana"', add
label define ancestr1_lbl 967 `"Nebraska"', add
label define ancestr1_lbl 968 `"Nevada"', add
label define ancestr1_lbl 969 `"New Hampshire"', add
label define ancestr1_lbl 970 `"New Jersey"', add
label define ancestr1_lbl 971 `"New Mexico"', add
label define ancestr1_lbl 972 `"New York"', add
label define ancestr1_lbl 973 `"North Carolina"', add
label define ancestr1_lbl 974 `"North Dakota"', add
label define ancestr1_lbl 975 `"Ohio"', add
label define ancestr1_lbl 976 `"Oklahoma"', add
label define ancestr1_lbl 977 `"Oregon"', add
label define ancestr1_lbl 978 `"Pennsylvania"', add
label define ancestr1_lbl 979 `"Rhode Island"', add
label define ancestr1_lbl 980 `"South Carolina"', add
label define ancestr1_lbl 981 `"South Dakota"', add
label define ancestr1_lbl 982 `"Tennessee"', add
label define ancestr1_lbl 983 `"Texas"', add
label define ancestr1_lbl 984 `"Utah"', add
label define ancestr1_lbl 985 `"Vermont"', add
label define ancestr1_lbl 986 `"Virginia"', add
label define ancestr1_lbl 987 `"Washington"', add
label define ancestr1_lbl 988 `"West Virginia"', add
label define ancestr1_lbl 989 `"Wisconsin"', add
label define ancestr1_lbl 990 `"Wyoming"', add
label define ancestr1_lbl 993 `"Southerner"', add
label define ancestr1_lbl 994 `"North American"', add
label define ancestr1_lbl 995 `"Mixture"', add
label define ancestr1_lbl 996 `"Uncodable"', add
label define ancestr1_lbl 998 `"Other"', add
label define ancestr1_lbl 999 `"Not Reported"', add
label values ancestr1 ancestr1_lbl

label define ancestr1d_lbl 0010 `"Alsatian"'
label define ancestr1d_lbl 0020 `"Andorran"', add
label define ancestr1d_lbl 0030 `"Austrian"', add
label define ancestr1d_lbl 0040 `"Tirolean"', add
label define ancestr1d_lbl 0051 `"Basque (1980)"', add
label define ancestr1d_lbl 0052 `"Spanish Basque (1980)"', add
label define ancestr1d_lbl 0053 `"Basque (1990-2000)"', add
label define ancestr1d_lbl 0054 `"Spanish Basque (1990-2000, 2001-2004 ACS)"', add
label define ancestr1d_lbl 0060 `"French Basque"', add
label define ancestr1d_lbl 0080 `"Belgian"', add
label define ancestr1d_lbl 0090 `"Flemish"', add
label define ancestr1d_lbl 0100 `"Walloon"', add
label define ancestr1d_lbl 0110 `"British"', add
label define ancestr1d_lbl 0120 `"British Isles"', add
label define ancestr1d_lbl 0130 `"Channel Islander"', add
label define ancestr1d_lbl 0140 `"Gibraltan"', add
label define ancestr1d_lbl 0150 `"Cornish"', add
label define ancestr1d_lbl 0160 `"Corsican"', add
label define ancestr1d_lbl 0170 `"Cypriot"', add
label define ancestr1d_lbl 0180 `"Greek Cypriote"', add
label define ancestr1d_lbl 0190 `"Turkish Cypriote"', add
label define ancestr1d_lbl 0200 `"Danish"', add
label define ancestr1d_lbl 0210 `"Dutch"', add
label define ancestr1d_lbl 0211 `"Dutch-French-Irish"', add
label define ancestr1d_lbl 0212 `"Dutch-German-Irish"', add
label define ancestr1d_lbl 0213 `"Dutch-Irish-Scotch"', add
label define ancestr1d_lbl 0220 `"English"', add
label define ancestr1d_lbl 0221 `"English-French-German"', add
label define ancestr1d_lbl 0222 `"English-French-Irish"', add
label define ancestr1d_lbl 0223 `"English-German-Irish"', add
label define ancestr1d_lbl 0224 `"English-German-Swedish"', add
label define ancestr1d_lbl 0225 `"English-Irish-Scotch"', add
label define ancestr1d_lbl 0226 `"English-Scotch-Welsh"', add
label define ancestr1d_lbl 0230 `"Faeroe Islander"', add
label define ancestr1d_lbl 0240 `"Finnish"', add
label define ancestr1d_lbl 0250 `"Karelian"', add
label define ancestr1d_lbl 0260 `"French (1980)"', add
label define ancestr1d_lbl 0261 `"French (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 0262 `"Occitan (1990-2000)"', add
label define ancestr1d_lbl 0270 `"Lorrainian"', add
label define ancestr1d_lbl 0280 `"Breton"', add
label define ancestr1d_lbl 0290 `"Frisian"', add
label define ancestr1d_lbl 0300 `"Friulian"', add
label define ancestr1d_lbl 0320 `"German (1980)"', add
label define ancestr1d_lbl 0321 `"German (1990-2000, ACS/PRCS)"', add
label define ancestr1d_lbl 0322 `"Pennsylvania German (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 0323 `"East German (1990-2000)"', add
label define ancestr1d_lbl 0324 `"West German (2000)"', add
label define ancestr1d_lbl 0325 `"German-French-Irish"', add
label define ancestr1d_lbl 0326 `"German-Irish-Italian"', add
label define ancestr1d_lbl 0327 `"German-Irish-Scotch"', add
label define ancestr1d_lbl 0328 `"German-Irish-Swedish"', add
label define ancestr1d_lbl 0329 `"Germanic"', add
label define ancestr1d_lbl 0330 `"Bavarian"', add
label define ancestr1d_lbl 0340 `"Berliner"', add
label define ancestr1d_lbl 0350 `"Hamburger"', add
label define ancestr1d_lbl 0360 `"Hanoverian"', add
label define ancestr1d_lbl 0370 `"Hessian"', add
label define ancestr1d_lbl 0380 `"Lubecker"', add
label define ancestr1d_lbl 0390 `"Pomeranian (1980)"', add
label define ancestr1d_lbl 0391 `"Pomeranian (1990-2000)"', add
label define ancestr1d_lbl 0392 `"Silesian (1990-2000)"', add
label define ancestr1d_lbl 0400 `"Prussian"', add
label define ancestr1d_lbl 0410 `"Saxon"', add
label define ancestr1d_lbl 0420 `"Sudetenlander"', add
label define ancestr1d_lbl 0430 `"Westphalian"', add
label define ancestr1d_lbl 0460 `"Greek"', add
label define ancestr1d_lbl 0470 `"Cretan"', add
label define ancestr1d_lbl 0480 `"Cycladic Islander"', add
label define ancestr1d_lbl 0490 `"Icelander"', add
label define ancestr1d_lbl 0500 `"Irish"', add
label define ancestr1d_lbl 0501 `"Celtic"', add
label define ancestr1d_lbl 0502 `"Irish Scotch"', add
label define ancestr1d_lbl 0510 `"Italian (1980)"', add
label define ancestr1d_lbl 0511 `"Italian (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 0512 `"Trieste (1990-2000)"', add
label define ancestr1d_lbl 0513 `"San Marino (1990-2000)"', add
label define ancestr1d_lbl 0530 `"Abruzzi"', add
label define ancestr1d_lbl 0540 `"Apulian"', add
label define ancestr1d_lbl 0550 `"Basilicata"', add
label define ancestr1d_lbl 0560 `"Calabrian"', add
label define ancestr1d_lbl 0570 `"Amalfi"', add
label define ancestr1d_lbl 0580 `"Emilia Romagna"', add
label define ancestr1d_lbl 0590 `"Rome"', add
label define ancestr1d_lbl 0600 `"Ligurian"', add
label define ancestr1d_lbl 0610 `"Lombardian"', add
label define ancestr1d_lbl 0620 `"Marches"', add
label define ancestr1d_lbl 0630 `"Molise"', add
label define ancestr1d_lbl 0640 `"Neapolitan"', add
label define ancestr1d_lbl 0650 `"Piedmontese"', add
label define ancestr1d_lbl 0660 `"Puglia"', add
label define ancestr1d_lbl 0670 `"Sardinian"', add
label define ancestr1d_lbl 0680 `"Sicilian"', add
label define ancestr1d_lbl 0690 `"Tuscan"', add
label define ancestr1d_lbl 0700 `"Trentino"', add
label define ancestr1d_lbl 0710 `"Umbrian"', add
label define ancestr1d_lbl 0720 `"Valle dAosta"', add
label define ancestr1d_lbl 0730 `"Venetian"', add
label define ancestr1d_lbl 0750 `"Lapp"', add
label define ancestr1d_lbl 0760 `"Liechtensteiner"', add
label define ancestr1d_lbl 0770 `"Luxemburger"', add
label define ancestr1d_lbl 0780 `"Maltese"', add
label define ancestr1d_lbl 0790 `"Manx"', add
label define ancestr1d_lbl 0800 `"Monegasque"', add
label define ancestr1d_lbl 0810 `"Northern Irelander"', add
label define ancestr1d_lbl 0820 `"Norwegian"', add
label define ancestr1d_lbl 0840 `"Portuguese"', add
label define ancestr1d_lbl 0850 `"Azorean"', add
label define ancestr1d_lbl 0860 `"Madeiran"', add
label define ancestr1d_lbl 0870 `"Scotch Irish"', add
label define ancestr1d_lbl 0880 `"Scottish"', add
label define ancestr1d_lbl 0890 `"Swedish"', add
label define ancestr1d_lbl 0900 `"Aland Islander"', add
label define ancestr1d_lbl 0910 `"Swiss"', add
label define ancestr1d_lbl 0920 `"Suisse (1980)"', add
label define ancestr1d_lbl 0921 `"Suisse (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 0922 `"Switzer (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 0950 `"Romansch (1980, ACS)"', add
label define ancestr1d_lbl 0951 `"Romanscho (1990-2000)"', add
label define ancestr1d_lbl 0952 `"Ladin (1990-2000)"', add
label define ancestr1d_lbl 0960 `"Suisse Romane (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 0961 `"Suisse Romane (1980)"', add
label define ancestr1d_lbl 0962 `"Ticino"', add
label define ancestr1d_lbl 0970 `"Welsh"', add
label define ancestr1d_lbl 0980 `"Scandinavian, Nordic"', add
label define ancestr1d_lbl 1000 `"Albanian"', add
label define ancestr1d_lbl 1010 `"Azerbaijani"', add
label define ancestr1d_lbl 1020 `"Belorussian"', add
label define ancestr1d_lbl 1030 `"Bulgarian"', add
label define ancestr1d_lbl 1050 `"Carpathian"', add
label define ancestr1d_lbl 1051 `"Carpatho Rusyn"', add
label define ancestr1d_lbl 1052 `"Rusyn"', add
label define ancestr1d_lbl 1080 `"Cossack (1990-2000)"', add
label define ancestr1d_lbl 1081 `"Cossack (1980)"', add
label define ancestr1d_lbl 1082 `"Turkestani (1990-2000, 2012 ACS)"', add
label define ancestr1d_lbl 1083 `"Kirghiz (1980)"', add
label define ancestr1d_lbl 1084 `"Turcoman (1980)"', add
label define ancestr1d_lbl 1090 `"Croatian"', add
label define ancestr1d_lbl 1110 `"Czechoslovakian"', add
label define ancestr1d_lbl 1111 `"Czech"', add
label define ancestr1d_lbl 1120 `"Bohemian"', add
label define ancestr1d_lbl 1121 `"Bohemian (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 1122 `"Moravian (1990-2000)"', add
label define ancestr1d_lbl 1150 `"Estonian"', add
label define ancestr1d_lbl 1160 `"Livonian"', add
label define ancestr1d_lbl 1170 `"Finno Ugrian (1990-2000)"', add
label define ancestr1d_lbl 1171 `"Udmert"', add
label define ancestr1d_lbl 1180 `"Mordovian"', add
label define ancestr1d_lbl 1190 `"Voytak"', add
label define ancestr1d_lbl 1200 `"Georgian"', add
label define ancestr1d_lbl 1220 `"Germans from Russia"', add
label define ancestr1d_lbl 1221 `"Volga"', add
label define ancestr1d_lbl 1222 `"German from Russia (1990-2000); German Russian (ACS, PRCS)"', add
label define ancestr1d_lbl 1230 `"Gruziia (1990-2000)"', add
label define ancestr1d_lbl 1240 `"Rom"', add
label define ancestr1d_lbl 1250 `"Hungarian"', add
label define ancestr1d_lbl 1260 `"Magyar"', add
label define ancestr1d_lbl 1280 `"Latvian"', add
label define ancestr1d_lbl 1290 `"Lithuanian"', add
label define ancestr1d_lbl 1300 `"Macedonian"', add
label define ancestr1d_lbl 1320 `"North Caucasian"', add
label define ancestr1d_lbl 1330 `"North Caucasian Turkic (1990-2000)"', add
label define ancestr1d_lbl 1400 `"Ossetian"', add
label define ancestr1d_lbl 1420 `"Polish"', add
label define ancestr1d_lbl 1430 `"Kashubian"', add
label define ancestr1d_lbl 1440 `"Romanian (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 1441 `"Rumanian (1980)"', add
label define ancestr1d_lbl 1442 `"Transylvanian"', add
label define ancestr1d_lbl 1450 `"Bessarabian (1980)"', add
label define ancestr1d_lbl 1451 `"Bessarabian (1990-2000)"', add
label define ancestr1d_lbl 1452 `"Bucovina"', add
label define ancestr1d_lbl 1460 `"Moldavian"', add
label define ancestr1d_lbl 1470 `"Wallachian"', add
label define ancestr1d_lbl 1480 `"Russian"', add
label define ancestr1d_lbl 1500 `"Muscovite"', add
label define ancestr1d_lbl 1520 `"Serbian (1980)"', add
label define ancestr1d_lbl 1521 `"Serbian (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 1522 `"Bosnian (1990) Herzegovinian (2000, ACS, PRCS)"', add
label define ancestr1d_lbl 1523 `"Montenegrin (1990-2000, 2012 ACS)"', add
label define ancestr1d_lbl 1530 `"Slovak"', add
label define ancestr1d_lbl 1540 `"Slovene"', add
label define ancestr1d_lbl 1550 `"Sorb/Wend"', add
label define ancestr1d_lbl 1560 `"Soviet Turkic (1990-2000)"', add
label define ancestr1d_lbl 1570 `"Bashkir"', add
label define ancestr1d_lbl 1580 `"Chevash"', add
label define ancestr1d_lbl 1590 `"Gagauz (1990-2000)"', add
label define ancestr1d_lbl 1600 `"Mesknetian (1990-2000)"', add
label define ancestr1d_lbl 1630 `"Yakut"', add
label define ancestr1d_lbl 1640 `"Soviet Union, nec"', add
label define ancestr1d_lbl 1650 `"Tatar (1990-2000)"', add
label define ancestr1d_lbl 1651 `"Tartar (1980)"', add
label define ancestr1d_lbl 1652 `"Crimean (1980)"', add
label define ancestr1d_lbl 1653 `"Tuvinian (1990-2000)"', add
label define ancestr1d_lbl 1654 `"Soviet Central Asia (1990-2000)"', add
label define ancestr1d_lbl 1655 `"Tadzhik (1980, 2000)"', add
label define ancestr1d_lbl 1690 `"Uzbek"', add
label define ancestr1d_lbl 1710 `"Ukrainian (1980)"', add
label define ancestr1d_lbl 1711 `"Ukrainian (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 1712 `"Ruthenian (1980)"', add
label define ancestr1d_lbl 1713 `"Ruthenian (1990-2000)"', add
label define ancestr1d_lbl 1714 `"Lemko"', add
label define ancestr1d_lbl 1715 `"Bioko"', add
label define ancestr1d_lbl 1716 `"Husel"', add
label define ancestr1d_lbl 1717 `"Windish"', add
label define ancestr1d_lbl 1760 `"Yugoslavian"', add
label define ancestr1d_lbl 1780 `"Slav"', add
label define ancestr1d_lbl 1790 `"Slavonian"', add
label define ancestr1d_lbl 1810 `"Central European, nec"', add
label define ancestr1d_lbl 1830 `"Northern European, nec"', add
label define ancestr1d_lbl 1850 `"Southern European, nec"', add
label define ancestr1d_lbl 1870 `"Western European, nec"', add
label define ancestr1d_lbl 1900 `"Eastern European, nec"', add
label define ancestr1d_lbl 1950 `"European, nec"', add
label define ancestr1d_lbl 2000 `"Spaniard (1980)"', add
label define ancestr1d_lbl 2001 `"Spaniard (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 2002 `"Castillian (1990-2000)"', add
label define ancestr1d_lbl 2003 `"Valencian (1990-2000)"', add
label define ancestr1d_lbl 2010 `"Andalusian (1990-2000)"', add
label define ancestr1d_lbl 2020 `"Asturian (1990-2000)"', add
label define ancestr1d_lbl 2040 `"Catalonian"', add
label define ancestr1d_lbl 2050 `"Balearic Islander (1980)"', add
label define ancestr1d_lbl 2051 `"Balearic Islander (1990-2000)"', add
label define ancestr1d_lbl 2052 `"Canary Islander (1990-2000)"', add
label define ancestr1d_lbl 2060 `"Galician (1980)"', add
label define ancestr1d_lbl 2061 `"Gallego (1990-2000)"', add
label define ancestr1d_lbl 2062 `"Galician (1990-2000)"', add
label define ancestr1d_lbl 2100 `"Mexican"', add
label define ancestr1d_lbl 2101 `"Mexican (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 2102 `"Mexicano/Mexicana (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 2103 `"Mexican Indian"', add
label define ancestr1d_lbl 2110 `"Mexican American"', add
label define ancestr1d_lbl 2111 `"Mexican American Indian"', add
label define ancestr1d_lbl 2130 `"Chicano/Chicana"', add
label define ancestr1d_lbl 2180 `"Nuevo Mexicano"', add
label define ancestr1d_lbl 2181 `"Nuevo Mexicano (1990-2000)"', add
label define ancestr1d_lbl 2182 `"La Raza (1990-2000)"', add
label define ancestr1d_lbl 2183 `"Mexican state (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 2184 `"Tejano/Tejana (1990-2000)"', add
label define ancestr1d_lbl 2190 `"Californio"', add
label define ancestr1d_lbl 2210 `"Costa Rican"', add
label define ancestr1d_lbl 2220 `"Guatemalan"', add
label define ancestr1d_lbl 2230 `"Honduran"', add
label define ancestr1d_lbl 2240 `"Nicaraguan"', add
label define ancestr1d_lbl 2250 `"Panamanian (1980)"', add
label define ancestr1d_lbl 2251 `"Panamanian (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 2252 `"Canal Zone (1990-2000)"', add
label define ancestr1d_lbl 2260 `"Salvadoran"', add
label define ancestr1d_lbl 2270 `"Latin American (1980)"', add
label define ancestr1d_lbl 2271 `"Central American (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 2272 `"Latin American (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 2273 `"Latino/Latina (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 2274 `"Latin (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 2310 `"Argentinean"', add
label define ancestr1d_lbl 2320 `"Bolivian"', add
label define ancestr1d_lbl 2330 `"Chilean"', add
label define ancestr1d_lbl 2340 `"Colombian"', add
label define ancestr1d_lbl 2350 `"Ecuadorian"', add
label define ancestr1d_lbl 2360 `"Paraguayan"', add
label define ancestr1d_lbl 2370 `"Peruvian"', add
label define ancestr1d_lbl 2380 `"Uruguayan"', add
label define ancestr1d_lbl 2390 `"Venezuelan"', add
label define ancestr1d_lbl 2480 `"South American (1980)"', add
label define ancestr1d_lbl 2481 `"South American (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 2482 `"Criollo/Criolla (1990-2000)"', add
label define ancestr1d_lbl 2610 `"Puerto Rican"', add
label define ancestr1d_lbl 2710 `"Cuban"', add
label define ancestr1d_lbl 2750 `"Dominican"', add
label define ancestr1d_lbl 2900 `"Hispanic"', add
label define ancestr1d_lbl 2910 `"Spanish"', add
label define ancestr1d_lbl 2950 `"Spanish American"', add
label define ancestr1d_lbl 2960 `"Other Spanish/Hispanic"', add
label define ancestr1d_lbl 3000 `"Bahamian"', add
label define ancestr1d_lbl 3010 `"Barbadian"', add
label define ancestr1d_lbl 3020 `"Belizean"', add
label define ancestr1d_lbl 3030 `"Bermudan"', add
label define ancestr1d_lbl 3040 `"Cayman Islander"', add
label define ancestr1d_lbl 3080 `"Jamaican"', add
label define ancestr1d_lbl 3100 `"Dutch West Indies"', add
label define ancestr1d_lbl 3110 `"Aruba Islander"', add
label define ancestr1d_lbl 3120 `"St Maarten Islander"', add
label define ancestr1d_lbl 3140 `"Trinidadian/Tobagonian"', add
label define ancestr1d_lbl 3150 `"Trinidadian"', add
label define ancestr1d_lbl 3160 `"Tobagonian"', add
label define ancestr1d_lbl 3170 `"U.S. Virgin Islander (1980)"', add
label define ancestr1d_lbl 3171 `"U.S. Virgin Islander (1990-2000)"', add
label define ancestr1d_lbl 3172 `"St. Croix Islander (1990-2000)"', add
label define ancestr1d_lbl 3173 `"St. John Islander (1990-2000)"', add
label define ancestr1d_lbl 3174 `"St. Thomas Islander (1990-2000)"', add
label define ancestr1d_lbl 3210 `"British Virgin Islander (1980)"', add
label define ancestr1d_lbl 3211 `"British Virgin Islander (1990-2000)"', add
label define ancestr1d_lbl 3212 `"Antigua (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 3220 `"British West Indian"', add
label define ancestr1d_lbl 3230 `"Turks and Caicos Islander"', add
label define ancestr1d_lbl 3240 `"Anguilla Islander (1980)"', add
label define ancestr1d_lbl 3241 `"Anguilla Islander (1990-2000)"', add
label define ancestr1d_lbl 3242 `"Montserrat Islander (1990-2000)"', add
label define ancestr1d_lbl 3243 `"Kitts/Nevis Islander (1990-2000)"', add
label define ancestr1d_lbl 3244 `"St. Christopher (1980)"', add
label define ancestr1d_lbl 3245 `"St Vincent Islander (1990); Vincent-Grenadine Islander (2000 Census, 2005 ACS, 2005 PRCS)"', add
label define ancestr1d_lbl 3280 `"Dominica Islander"', add
label define ancestr1d_lbl 3290 `"Grenadian"', add
label define ancestr1d_lbl 3310 `"St Lucia Islander"', add
label define ancestr1d_lbl 3320 `"French West Indies"', add
label define ancestr1d_lbl 3330 `"Guadeloupe Islander"', add
label define ancestr1d_lbl 3340 `"Cayenne"', add
label define ancestr1d_lbl 3350 `"West Indian (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 3351 `"West Indian (1980)"', add
label define ancestr1d_lbl 3352 `"Caribbean (1980)"', add
label define ancestr1d_lbl 3353 `"Arawak (1980)"', add
label define ancestr1d_lbl 3360 `"Haitian"', add
label define ancestr1d_lbl 3370 `"Other West Indian"', add
label define ancestr1d_lbl 3600 `"Brazilian"', add
label define ancestr1d_lbl 3650 `"San Andres"', add
label define ancestr1d_lbl 3700 `"Guyanese/British Guiana"', add
label define ancestr1d_lbl 3750 `"Providencia"', add
label define ancestr1d_lbl 3800 `"Surinam/Dutch Guiana"', add
label define ancestr1d_lbl 4000 `"Algerian"', add
label define ancestr1d_lbl 4020 `"Egyptian"', add
label define ancestr1d_lbl 4040 `"Libyan"', add
label define ancestr1d_lbl 4060 `"Moroccan (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 4061 `"Moroccan (1980)"', add
label define ancestr1d_lbl 4062 `"Moor (1980)"', add
label define ancestr1d_lbl 4070 `"Ifni"', add
label define ancestr1d_lbl 4080 `"Tunisian"', add
label define ancestr1d_lbl 4110 `"North African"', add
label define ancestr1d_lbl 4120 `"Alhucemas"', add
label define ancestr1d_lbl 4130 `"Berber"', add
label define ancestr1d_lbl 4140 `"Rio de Oro"', add
label define ancestr1d_lbl 4150 `"Bahraini"', add
label define ancestr1d_lbl 4160 `"Iranian"', add
label define ancestr1d_lbl 4170 `"Iraqi"', add
label define ancestr1d_lbl 4190 `"Israeli"', add
label define ancestr1d_lbl 4210 `"Jordanian"', add
label define ancestr1d_lbl 4220 `"Transjordan"', add
label define ancestr1d_lbl 4230 `"Kuwaiti"', add
label define ancestr1d_lbl 4250 `"Lebanese"', add
label define ancestr1d_lbl 4270 `"Saudi Arabian"', add
label define ancestr1d_lbl 4290 `"Syrian (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 4291 `"Syrian (1980)"', add
label define ancestr1d_lbl 4292 `"Latakian (1980)"', add
label define ancestr1d_lbl 4293 `"Jebel Druse (1980)"', add
label define ancestr1d_lbl 4310 `"Armenian"', add
label define ancestr1d_lbl 4340 `"Turkish"', add
label define ancestr1d_lbl 4350 `"Yemeni"', add
label define ancestr1d_lbl 4360 `"Omani"', add
label define ancestr1d_lbl 4370 `"Muscat"', add
label define ancestr1d_lbl 4380 `"Trucial Oman"', add
label define ancestr1d_lbl 4390 `"Qatar"', add
label define ancestr1d_lbl 4410 `"Bedouin"', add
label define ancestr1d_lbl 4420 `"Kurdish"', add
label define ancestr1d_lbl 4440 `"Kuria Muria Islander"', add
label define ancestr1d_lbl 4650 `"Palestinian"', add
label define ancestr1d_lbl 4660 `"Gazan"', add
label define ancestr1d_lbl 4670 `"West Bank"', add
label define ancestr1d_lbl 4700 `"South Yemeni"', add
label define ancestr1d_lbl 4710 `"Aden"', add
label define ancestr1d_lbl 4800 `"United Arab Emirates"', add
label define ancestr1d_lbl 4820 `"Assyrian/Chaldean/Syriac (1990-2000)"', add
label define ancestr1d_lbl 4821 `"Assyrian"', add
label define ancestr1d_lbl 4822 `"Syriac (1980, 2000)"', add
label define ancestr1d_lbl 4823 `"Chaldean (2000, ACS, PRCS)"', add
label define ancestr1d_lbl 4900 `"Middle Eastern"', add
label define ancestr1d_lbl 4950 `"Arab"', add
label define ancestr1d_lbl 4951 `"Arabic (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 4960 `"Other Arab"', add
label define ancestr1d_lbl 5000 `"Angolan"', add
label define ancestr1d_lbl 5020 `"Benin"', add
label define ancestr1d_lbl 5040 `"Botswana"', add
label define ancestr1d_lbl 5060 `"Burundian"', add
label define ancestr1d_lbl 5080 `"Cameroonian"', add
label define ancestr1d_lbl 5100 `"Cape Verdean"', add
label define ancestr1d_lbl 5120 `"Central African Republic"', add
label define ancestr1d_lbl 5130 `"Chadian"', add
label define ancestr1d_lbl 5150 `"Congolese"', add
label define ancestr1d_lbl 5160 `"Congo-Brazzaville"', add
label define ancestr1d_lbl 5190 `"Djibouti"', add
label define ancestr1d_lbl 5200 `"Equatorial Guinea"', add
label define ancestr1d_lbl 5210 `"Corsico Islander"', add
label define ancestr1d_lbl 5220 `"Ethiopian"', add
label define ancestr1d_lbl 5230 `"Eritrean"', add
label define ancestr1d_lbl 5250 `"Gabonese"', add
label define ancestr1d_lbl 5270 `"Gambian"', add
label define ancestr1d_lbl 5290 `"Ghanian"', add
label define ancestr1d_lbl 5300 `"Guinean"', add
label define ancestr1d_lbl 5310 `"Guinea Bissau"', add
label define ancestr1d_lbl 5320 `"Ivory Coast"', add
label define ancestr1d_lbl 5340 `"Kenyan"', add
label define ancestr1d_lbl 5380 `"Lesotho"', add
label define ancestr1d_lbl 5410 `"Liberian"', add
label define ancestr1d_lbl 5430 `"Madagascan"', add
label define ancestr1d_lbl 5450 `"Malawian"', add
label define ancestr1d_lbl 5460 `"Malian"', add
label define ancestr1d_lbl 5470 `"Mauritanian"', add
label define ancestr1d_lbl 5490 `"Mozambican"', add
label define ancestr1d_lbl 5500 `"Namibian"', add
label define ancestr1d_lbl 5510 `"Niger"', add
label define ancestr1d_lbl 5530 `"Nigerian"', add
label define ancestr1d_lbl 5540 `"Fulani"', add
label define ancestr1d_lbl 5550 `"Hausa"', add
label define ancestr1d_lbl 5560 `"Ibo"', add
label define ancestr1d_lbl 5570 `"Tiv (1980)"', add
label define ancestr1d_lbl 5571 `"Tiv (1990-2000)"', add
label define ancestr1d_lbl 5572 `"Yoruba (1990-2000)"', add
label define ancestr1d_lbl 5610 `"Rwandan"', add
label define ancestr1d_lbl 5640 `"Senegalese"', add
label define ancestr1d_lbl 5660 `"Sierra Leonean"', add
label define ancestr1d_lbl 5680 `"Somalian"', add
label define ancestr1d_lbl 5690 `"Swaziland"', add
label define ancestr1d_lbl 5700 `"South African"', add
label define ancestr1d_lbl 5710 `"Union of South Africa"', add
label define ancestr1d_lbl 5720 `"Afrikaner"', add
label define ancestr1d_lbl 5730 `"Natalian"', add
label define ancestr1d_lbl 5740 `"Zulu"', add
label define ancestr1d_lbl 5760 `"Sudanese"', add
label define ancestr1d_lbl 5770 `"Dinka"', add
label define ancestr1d_lbl 5780 `"Nuer"', add
label define ancestr1d_lbl 5790 `"Fur"', add
label define ancestr1d_lbl 5800 `"Baggara"', add
label define ancestr1d_lbl 5820 `"Tanzanian"', add
label define ancestr1d_lbl 5830 `"Tanganyikan"', add
label define ancestr1d_lbl 5840 `"Zanzibar"', add
label define ancestr1d_lbl 5860 `"Togo"', add
label define ancestr1d_lbl 5880 `"Ugandan"', add
label define ancestr1d_lbl 5890 `"Upper Voltan"', add
label define ancestr1d_lbl 5900 `"Volta"', add
label define ancestr1d_lbl 5910 `"Zairian"', add
label define ancestr1d_lbl 5920 `"Zambian"', add
label define ancestr1d_lbl 5930 `"Zimbabwean"', add
label define ancestr1d_lbl 5940 `"African Islands (1980)"', add
label define ancestr1d_lbl 5941 `"African Islands (1990-2000)"', add
label define ancestr1d_lbl 5942 `"Mauritius (1990-2000)"', add
label define ancestr1d_lbl 5950 `"Other Subsaharan Africa"', add
label define ancestr1d_lbl 5960 `"Central African"', add
label define ancestr1d_lbl 5970 `"East African"', add
label define ancestr1d_lbl 5980 `"West African"', add
label define ancestr1d_lbl 5990 `"African"', add
label define ancestr1d_lbl 6000 `"Afghan"', add
label define ancestr1d_lbl 6010 `"Baluchi"', add
label define ancestr1d_lbl 6020 `"Pathan"', add
label define ancestr1d_lbl 6030 `"Bengali (1980)"', add
label define ancestr1d_lbl 6031 `"Bangladeshi (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 6032 `"Bengali (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 6070 `"Bhutanese"', add
label define ancestr1d_lbl 6090 `"Nepali"', add
label define ancestr1d_lbl 6150 `"Asian Indian (1980)"', add
label define ancestr1d_lbl 6151 `"India (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 6152 `"East Indian (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 6153 `"Madhya Pradesh (1990-2000)"', add
label define ancestr1d_lbl 6154 `"Orissa (1990-2000)"', add
label define ancestr1d_lbl 6155 `"Rajasthani (1990-2000)"', add
label define ancestr1d_lbl 6156 `"Sikkim (1990-2000)"', add
label define ancestr1d_lbl 6157 `"Uttar Pradesh (1990-2000)"', add
label define ancestr1d_lbl 6220 `"Andaman Islander"', add
label define ancestr1d_lbl 6240 `"Andhra Pradesh"', add
label define ancestr1d_lbl 6260 `"Assamese"', add
label define ancestr1d_lbl 6280 `"Goanese"', add
label define ancestr1d_lbl 6300 `"Gujarati"', add
label define ancestr1d_lbl 6320 `"Karnatakan"', add
label define ancestr1d_lbl 6340 `"Keralan"', add
label define ancestr1d_lbl 6380 `"Maharashtran"', add
label define ancestr1d_lbl 6400 `"Madrasi"', add
label define ancestr1d_lbl 6420 `"Mysore"', add
label define ancestr1d_lbl 6440 `"Naga"', add
label define ancestr1d_lbl 6480 `"Pondicherry"', add
label define ancestr1d_lbl 6500 `"Punjabi"', add
label define ancestr1d_lbl 6560 `"Tamil"', add
label define ancestr1d_lbl 6750 `"East Indies (1990-2000)"', add
label define ancestr1d_lbl 6800 `"Pakistani (1980)"', add
label define ancestr1d_lbl 6801 `"Pakistani (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 6802 `"Kashmiri (1990-2000)"', add
label define ancestr1d_lbl 6900 `"Sri Lankan"', add
label define ancestr1d_lbl 6910 `"Singhalese"', add
label define ancestr1d_lbl 6920 `"Veddah"', add
label define ancestr1d_lbl 6950 `"Maldivian"', add
label define ancestr1d_lbl 7000 `"Burmese (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 7001 `"Burmese (1980)"', add
label define ancestr1d_lbl 7002 `"Burman (1980)"', add
label define ancestr1d_lbl 7020 `"Shan"', add
label define ancestr1d_lbl 7030 `"Cambodian"', add
label define ancestr1d_lbl 7040 `"Khmer"', add
label define ancestr1d_lbl 7060 `"Chinese"', add
label define ancestr1d_lbl 7070 `"Cantonese (1980)"', add
label define ancestr1d_lbl 7071 `"Cantonese (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 7072 `"Formosan (1990-2000)"', add
label define ancestr1d_lbl 7080 `"Manchurian"', add
label define ancestr1d_lbl 7090 `"Mandarin (1990-2000)"', add
label define ancestr1d_lbl 7120 `"Mongolian (1980)"', add
label define ancestr1d_lbl 7121 `"Mongolian (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 7122 `"Kalmyk (1990-2000)"', add
label define ancestr1d_lbl 7140 `"Tibetan"', add
label define ancestr1d_lbl 7160 `"Hong Kong (1990-2000)"', add
label define ancestr1d_lbl 7161 `"Hong Kong (1980)"', add
label define ancestr1d_lbl 7162 `"Eastern Archipelago (1980)"', add
label define ancestr1d_lbl 7180 `"Macao"', add
label define ancestr1d_lbl 7200 `"Filipino"', add
label define ancestr1d_lbl 7300 `"Indonesian (1980)"', add
label define ancestr1d_lbl 7301 `"Indonesian (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 7302 `"Borneo (1990-2000)"', add
label define ancestr1d_lbl 7303 `"Java (1990-2000)"', add
label define ancestr1d_lbl 7304 `"Sumatran (1990-2000)"', add
label define ancestr1d_lbl 7400 `"Japanese (1980)"', add
label define ancestr1d_lbl 7401 `"Japanese (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 7402 `"Issei (1990-2000)"', add
label define ancestr1d_lbl 7403 `"Nisei (1990-2000)"', add
label define ancestr1d_lbl 7404 `"Sansei (1990-2000)"', add
label define ancestr1d_lbl 7405 `"Yonsei (1990-2000)"', add
label define ancestr1d_lbl 7406 `"Gosei (1990-2000)"', add
label define ancestr1d_lbl 7460 `"Ryukyu Islander"', add
label define ancestr1d_lbl 7480 `"Okinawan"', add
label define ancestr1d_lbl 7500 `"Korean"', add
label define ancestr1d_lbl 7650 `"Laotian"', add
label define ancestr1d_lbl 7660 `"Meo"', add
label define ancestr1d_lbl 7680 `"Hmong"', add
label define ancestr1d_lbl 7700 `"Malaysian (1980)"', add
label define ancestr1d_lbl 7701 `"Malaysian (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 7702 `"North Borneo (1990-2000)"', add
label define ancestr1d_lbl 7740 `"Singaporean"', add
label define ancestr1d_lbl 7760 `"Thai"', add
label define ancestr1d_lbl 7770 `"Black Thai"', add
label define ancestr1d_lbl 7780 `"Western Lao"', add
label define ancestr1d_lbl 7820 `"Taiwanese"', add
label define ancestr1d_lbl 7850 `"Vietnamese"', add
label define ancestr1d_lbl 7860 `"Katu"', add
label define ancestr1d_lbl 7870 `"Ma"', add
label define ancestr1d_lbl 7880 `"Mnong"', add
label define ancestr1d_lbl 7900 `"Montagnard"', add
label define ancestr1d_lbl 7920 `"Indochinese"', add
label define ancestr1d_lbl 7930 `"Eurasian"', add
label define ancestr1d_lbl 7931 `"Amerasian (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 7950 `"Asian"', add
label define ancestr1d_lbl 7960 `"Other Asian"', add
label define ancestr1d_lbl 8000 `"Australian"', add
label define ancestr1d_lbl 8010 `"Tasmanian"', add
label define ancestr1d_lbl 8020 `"Australian Aborigine (1990-2000)"', add
label define ancestr1d_lbl 8030 `"New Zealander"', add
label define ancestr1d_lbl 8080 `"Polynesian (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 8081 `"Polynesian (1980)"', add
label define ancestr1d_lbl 8082 `"Norfolk Islander (1980)"', add
label define ancestr1d_lbl 8090 `"Kapinagamarangan (1990-2000)"', add
label define ancestr1d_lbl 8091 `"Kapinagamarangan (1980)"', add
label define ancestr1d_lbl 8092 `"Nukuoroan (1980)"', add
label define ancestr1d_lbl 8100 `"Maori"', add
label define ancestr1d_lbl 8110 `"Hawaiian"', add
label define ancestr1d_lbl 8130 `"Part Hawaiian"', add
label define ancestr1d_lbl 8140 `"Samoan (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 8141 `"Samoan (1980)"', add
label define ancestr1d_lbl 8142 `"American Samoan (1980)"', add
label define ancestr1d_lbl 8143 `"French Samoan"', add
label define ancestr1d_lbl 8144 `"Part Samoan (1990-2000)"', add
label define ancestr1d_lbl 8150 `"Tongan"', add
label define ancestr1d_lbl 8160 `"Tokelauan"', add
label define ancestr1d_lbl 8170 `"Cook Islander"', add
label define ancestr1d_lbl 8180 `"Tahitian"', add
label define ancestr1d_lbl 8190 `"Niuean"', add
label define ancestr1d_lbl 8200 `"Micronesian (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 8201 `"Micronesian (1980)"', add
label define ancestr1d_lbl 8202 `"U.S. Trust Terr of the Pacific (1980)"', add
label define ancestr1d_lbl 8210 `"Guamanian"', add
label define ancestr1d_lbl 8220 `"Chamorro Islander"', add
label define ancestr1d_lbl 8230 `"Saipanese (1990-2000)"', add
label define ancestr1d_lbl 8231 `"Saipanese (1980)"', add
label define ancestr1d_lbl 8232 `"Northern Marianas (1980)"', add
label define ancestr1d_lbl 8240 `"Palauan"', add
label define ancestr1d_lbl 8250 `"Marshall Islander"', add
label define ancestr1d_lbl 8260 `"Kosraean"', add
label define ancestr1d_lbl 8270 `"Ponapean (1990-2000)"', add
label define ancestr1d_lbl 8271 `"Ponapean (1980)"', add
label define ancestr1d_lbl 8272 `"Mokilese (1980)"', add
label define ancestr1d_lbl 8273 `"Ngatikese (1980)"', add
label define ancestr1d_lbl 8274 `"Pingelapese (1980)"', add
label define ancestr1d_lbl 8280 `"Chuukese (1990-2000)"', add
label define ancestr1d_lbl 8281 `"Hall Islander (1980)"', add
label define ancestr1d_lbl 8282 `"Mortlockese (1980)"', add
label define ancestr1d_lbl 8283 `"Namanouito (1980)"', add
label define ancestr1d_lbl 8284 `"Pulawatese (1980)"', add
label define ancestr1d_lbl 8285 `"Truk Islander"', add
label define ancestr1d_lbl 8290 `"Yap Islander"', add
label define ancestr1d_lbl 8300 `"Caroline Islander (1990-2000)"', add
label define ancestr1d_lbl 8301 `"Caroline Islander (1980)"', add
label define ancestr1d_lbl 8302 `"Lamotrekese (1980)"', add
label define ancestr1d_lbl 8303 `"Ulithian (1980)"', add
label define ancestr1d_lbl 8304 `"Woleaian (1980)"', add
label define ancestr1d_lbl 8310 `"Kiribatese"', add
label define ancestr1d_lbl 8320 `"Nauruan"', add
label define ancestr1d_lbl 8330 `"Tarawa Islander (1990-2000)"', add
label define ancestr1d_lbl 8340 `"Tinian Islander (1990-2000)"', add
label define ancestr1d_lbl 8400 `"Melanesian Islander"', add
label define ancestr1d_lbl 8410 `"Fijian"', add
label define ancestr1d_lbl 8430 `"New Guinean"', add
label define ancestr1d_lbl 8440 `"Papuan"', add
label define ancestr1d_lbl 8450 `"Solomon Islander"', add
label define ancestr1d_lbl 8460 `"New Caledonian Islander"', add
label define ancestr1d_lbl 8470 `"Vanuatuan"', add
label define ancestr1d_lbl 8500 `"Pacific Islander (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 8501 `"Campbell Islander (1980)"', add
label define ancestr1d_lbl 8502 `"Christmas Islander (1980)"', add
label define ancestr1d_lbl 8503 `"Kermadec Islander (1980)"', add
label define ancestr1d_lbl 8504 `"Midway Islander (1980)"', add
label define ancestr1d_lbl 8505 `"Phoenix Islander (1980)"', add
label define ancestr1d_lbl 8506 `"Wake Islander (1980)"', add
label define ancestr1d_lbl 8600 `"Oceania"', add
label define ancestr1d_lbl 8620 `"Chamolinian (1990-2000)"', add
label define ancestr1d_lbl 8630 `"Reserved Codes"', add
label define ancestr1d_lbl 8700 `"Other Pacific"', add
label define ancestr1d_lbl 9000 `"Afro-American"', add
label define ancestr1d_lbl 9001 `"Afro-American (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 9002 `"Black (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 9003 `"Negro (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 9004 `"Nonwhite (1990-2000)"', add
label define ancestr1d_lbl 9005 `"Colored (1990-2000)"', add
label define ancestr1d_lbl 9006 `"Creole (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 9007 `"Mulatto (1990-2000)"', add
label define ancestr1d_lbl 9008 `"Afro"', add
label define ancestr1d_lbl 9020 `"African-American (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 9130 `"Central American Indian (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 9140 `"South American Indian (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 9200 `"American Indian (all tribes)"', add
label define ancestr1d_lbl 9201 `"American Indian-English-French"', add
label define ancestr1d_lbl 9202 `"American Indian-English-German"', add
label define ancestr1d_lbl 9203 `"American Indian-English-Irish"', add
label define ancestr1d_lbl 9204 `"American Indian-German-Irish"', add
label define ancestr1d_lbl 9205 `"Cherokee"', add
label define ancestr1d_lbl 9206 `"Native American"', add
label define ancestr1d_lbl 9207 `"Indian"', add
label define ancestr1d_lbl 9210 `"Aleut"', add
label define ancestr1d_lbl 9220 `"Eskimo"', add
label define ancestr1d_lbl 9230 `"Inuit"', add
label define ancestr1d_lbl 9240 `"White/Caucasian"', add
label define ancestr1d_lbl 9241 `"White/Caucasian (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 9242 `"Anglo (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 9243 `"Appalachian (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 9244 `"Aryan (1990-2000)"', add
label define ancestr1d_lbl 9300 `"Greenlander"', add
label define ancestr1d_lbl 9310 `"Canadian"', add
label define ancestr1d_lbl 9330 `"Newfoundland"', add
label define ancestr1d_lbl 9340 `"Nova Scotian"', add
label define ancestr1d_lbl 9350 `"French Canadian"', add
label define ancestr1d_lbl 9360 `"Acadian"', add
label define ancestr1d_lbl 9361 `"Acadian (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 9362 `"Cajun (1990-2000, ACS, PRCS)"', add
label define ancestr1d_lbl 9390 `"American"', add
label define ancestr1d_lbl 9391 `"American/United States"', add
label define ancestr1d_lbl 9400 `"United States"', add
label define ancestr1d_lbl 9410 `"Alabama"', add
label define ancestr1d_lbl 9420 `"Alaska"', add
label define ancestr1d_lbl 9430 `"Arizona"', add
label define ancestr1d_lbl 9440 `"Arkansas"', add
label define ancestr1d_lbl 9450 `"California"', add
label define ancestr1d_lbl 9460 `"Colorado"', add
label define ancestr1d_lbl 9470 `"Connecticut"', add
label define ancestr1d_lbl 9480 `"District of Columbia"', add
label define ancestr1d_lbl 9490 `"Delaware"', add
label define ancestr1d_lbl 9500 `"Florida"', add
label define ancestr1d_lbl 9510 `"Georgia"', add
label define ancestr1d_lbl 9520 `"Idaho"', add
label define ancestr1d_lbl 9530 `"Illinois"', add
label define ancestr1d_lbl 9540 `"Indiana"', add
label define ancestr1d_lbl 9550 `"Iowa"', add
label define ancestr1d_lbl 9560 `"Kansas"', add
label define ancestr1d_lbl 9570 `"Kentucky"', add
label define ancestr1d_lbl 9580 `"Louisiana"', add
label define ancestr1d_lbl 9590 `"Maine"', add
label define ancestr1d_lbl 9600 `"Maryland"', add
label define ancestr1d_lbl 9610 `"Massachusetts"', add
label define ancestr1d_lbl 9620 `"Michigan"', add
label define ancestr1d_lbl 9630 `"Minnesota"', add
label define ancestr1d_lbl 9640 `"Mississippi"', add
label define ancestr1d_lbl 9650 `"Missouri"', add
label define ancestr1d_lbl 9660 `"Montana"', add
label define ancestr1d_lbl 9670 `"Nebraska"', add
label define ancestr1d_lbl 9680 `"Nevada"', add
label define ancestr1d_lbl 9690 `"New Hampshire"', add
label define ancestr1d_lbl 9700 `"New Jersey"', add
label define ancestr1d_lbl 9710 `"New Mexico"', add
label define ancestr1d_lbl 9720 `"New York"', add
label define ancestr1d_lbl 9730 `"North Carolina"', add
label define ancestr1d_lbl 9740 `"North Dakota"', add
label define ancestr1d_lbl 9750 `"Ohio"', add
label define ancestr1d_lbl 9760 `"Oklahoma"', add
label define ancestr1d_lbl 9770 `"Oregon"', add
label define ancestr1d_lbl 9780 `"Pennsylvania"', add
label define ancestr1d_lbl 9790 `"Rhode Island"', add
label define ancestr1d_lbl 9800 `"South Carolina"', add
label define ancestr1d_lbl 9810 `"South Dakota"', add
label define ancestr1d_lbl 9820 `"Tennessee"', add
label define ancestr1d_lbl 9830 `"Texas"', add
label define ancestr1d_lbl 9840 `"Utah"', add
label define ancestr1d_lbl 9850 `"Vermont"', add
label define ancestr1d_lbl 9860 `"Virginia"', add
label define ancestr1d_lbl 9870 `"Washington"', add
label define ancestr1d_lbl 9880 `"West Virginia"', add
label define ancestr1d_lbl 9890 `"Wisconsin"', add
label define ancestr1d_lbl 9900 `"Wyoming"', add
label define ancestr1d_lbl 9930 `"Southerner"', add
label define ancestr1d_lbl 9940 `"North American"', add
label define ancestr1d_lbl 9950 `"Mixture"', add
label define ancestr1d_lbl 9960 `"Uncodable"', add
label define ancestr1d_lbl 9961 `"Not Classified"', add
label define ancestr1d_lbl 9980 `"Other"', add
label define ancestr1d_lbl 9990 `"Not Reported"', add
label values ancestr1d ancestr1d_lbl

label define ancestr2_lbl 001 `"Alsatian, Alsace-Lorraine"'
label define ancestr2_lbl 002 `"Andorran"', add
label define ancestr2_lbl 003 `"Austrian"', add
label define ancestr2_lbl 004 `"Tirolean"', add
label define ancestr2_lbl 005 `"Basque"', add
label define ancestr2_lbl 006 `"French Basque"', add
label define ancestr2_lbl 008 `"Belgian"', add
label define ancestr2_lbl 009 `"Flemish"', add
label define ancestr2_lbl 010 `"Walloon"', add
label define ancestr2_lbl 011 `"British"', add
label define ancestr2_lbl 012 `"British Isles"', add
label define ancestr2_lbl 013 `"Channel Islander"', add
label define ancestr2_lbl 014 `"Gibraltan"', add
label define ancestr2_lbl 015 `"Cornish"', add
label define ancestr2_lbl 016 `"Corsican"', add
label define ancestr2_lbl 017 `"Cypriot"', add
label define ancestr2_lbl 018 `"Greek Cypriote"', add
label define ancestr2_lbl 019 `"Turkish Cypriote"', add
label define ancestr2_lbl 020 `"Danish"', add
label define ancestr2_lbl 021 `"Dutch"', add
label define ancestr2_lbl 022 `"English"', add
label define ancestr2_lbl 023 `"Faeroe Islander"', add
label define ancestr2_lbl 024 `"Finnish"', add
label define ancestr2_lbl 025 `"Karelian"', add
label define ancestr2_lbl 026 `"French"', add
label define ancestr2_lbl 027 `"Lorrainian"', add
label define ancestr2_lbl 028 `"Breton"', add
label define ancestr2_lbl 029 `"Frisian"', add
label define ancestr2_lbl 030 `"Friulian"', add
label define ancestr2_lbl 032 `"German"', add
label define ancestr2_lbl 033 `"Bavarian"', add
label define ancestr2_lbl 034 `"Berliner"', add
label define ancestr2_lbl 035 `"Hamburger"', add
label define ancestr2_lbl 036 `"Hanoverian"', add
label define ancestr2_lbl 037 `"Hessian"', add
label define ancestr2_lbl 038 `"Lubecker"', add
label define ancestr2_lbl 039 `"Pomeranian"', add
label define ancestr2_lbl 040 `"Prussian"', add
label define ancestr2_lbl 041 `"Saxon"', add
label define ancestr2_lbl 042 `"Sudetenlander"', add
label define ancestr2_lbl 043 `"Westphalian"', add
label define ancestr2_lbl 046 `"Greek"', add
label define ancestr2_lbl 047 `"Cretan"', add
label define ancestr2_lbl 048 `"Cycladic Islander"', add
label define ancestr2_lbl 049 `"Icelander"', add
label define ancestr2_lbl 050 `"Irish"', add
label define ancestr2_lbl 051 `"Italian"', add
label define ancestr2_lbl 053 `"Abruzzi"', add
label define ancestr2_lbl 054 `"Apulian"', add
label define ancestr2_lbl 055 `"Basilicata"', add
label define ancestr2_lbl 056 `"Calabrian"', add
label define ancestr2_lbl 057 `"Amalfin"', add
label define ancestr2_lbl 058 `"Emilia Romagna"', add
label define ancestr2_lbl 059 `"Rome"', add
label define ancestr2_lbl 060 `"Ligurian"', add
label define ancestr2_lbl 061 `"Lombardian"', add
label define ancestr2_lbl 062 `"Marches"', add
label define ancestr2_lbl 063 `"Molise"', add
label define ancestr2_lbl 064 `"Neapolitan"', add
label define ancestr2_lbl 065 `"Piedmontese"', add
label define ancestr2_lbl 066 `"Puglia"', add
label define ancestr2_lbl 067 `"Sardinian"', add
label define ancestr2_lbl 068 `"Sicilian"', add
label define ancestr2_lbl 069 `"Toscana"', add
label define ancestr2_lbl 070 `"Trentino"', add
label define ancestr2_lbl 071 `"Umbrian"', add
label define ancestr2_lbl 072 `"Valle dAosta"', add
label define ancestr2_lbl 073 `"Venetian"', add
label define ancestr2_lbl 075 `"Lapp"', add
label define ancestr2_lbl 076 `"Liechtensteiner"', add
label define ancestr2_lbl 077 `"Luxemburger"', add
label define ancestr2_lbl 078 `"Maltese"', add
label define ancestr2_lbl 079 `"Manx"', add
label define ancestr2_lbl 080 `"Monegasque"', add
label define ancestr2_lbl 081 `"Northern Irelander"', add
label define ancestr2_lbl 082 `"Norwegian"', add
label define ancestr2_lbl 084 `"Portuguese"', add
label define ancestr2_lbl 085 `"Azorean"', add
label define ancestr2_lbl 086 `"Madeiran"', add
label define ancestr2_lbl 087 `"Scotch Irish"', add
label define ancestr2_lbl 088 `"Scottish"', add
label define ancestr2_lbl 089 `"Swedish"', add
label define ancestr2_lbl 090 `"Aland Islander"', add
label define ancestr2_lbl 091 `"Swiss"', add
label define ancestr2_lbl 092 `"Suisse"', add
label define ancestr2_lbl 095 `"Romansch"', add
label define ancestr2_lbl 096 `"Suisse Romane"', add
label define ancestr2_lbl 097 `"Welsh"', add
label define ancestr2_lbl 098 `"Scandinavian, Nordic"', add
label define ancestr2_lbl 100 `"Albanian"', add
label define ancestr2_lbl 101 `"Azerbaijani"', add
label define ancestr2_lbl 102 `"Belourussian"', add
label define ancestr2_lbl 103 `"Bulgarian"', add
label define ancestr2_lbl 105 `"Carpathian"', add
label define ancestr2_lbl 108 `"Cossack"', add
label define ancestr2_lbl 109 `"Croatian"', add
label define ancestr2_lbl 111 `"Czechoslovakian"', add
label define ancestr2_lbl 112 `"Bohemian"', add
label define ancestr2_lbl 115 `"Estonian"', add
label define ancestr2_lbl 116 `"Livonian"', add
label define ancestr2_lbl 117 `"Finno Ugrian"', add
label define ancestr2_lbl 118 `"Mordovian"', add
label define ancestr2_lbl 119 `"Voytak"', add
label define ancestr2_lbl 120 `"Georgian"', add
label define ancestr2_lbl 122 `"Germans from Russia"', add
label define ancestr2_lbl 123 `"Gruziia"', add
label define ancestr2_lbl 124 `"Rom"', add
label define ancestr2_lbl 125 `"Hungarian"', add
label define ancestr2_lbl 126 `"Magyar"', add
label define ancestr2_lbl 128 `"Latvian"', add
label define ancestr2_lbl 129 `"Lithuanian"', add
label define ancestr2_lbl 130 `"Macedonian"', add
label define ancestr2_lbl 132 `"North Caucasian"', add
label define ancestr2_lbl 133 `"North Caucasian Turkic"', add
label define ancestr2_lbl 140 `"Ossetian"', add
label define ancestr2_lbl 142 `"Polish"', add
label define ancestr2_lbl 143 `"Kashubian"', add
label define ancestr2_lbl 144 `"Romanian"', add
label define ancestr2_lbl 145 `"Bessarabian"', add
label define ancestr2_lbl 146 `"Moldavian"', add
label define ancestr2_lbl 147 `"Wallachian"', add
label define ancestr2_lbl 148 `"Russian"', add
label define ancestr2_lbl 150 `"Muscovite"', add
label define ancestr2_lbl 152 `"Serbian"', add
label define ancestr2_lbl 153 `"Slovak"', add
label define ancestr2_lbl 154 `"Slovene"', add
label define ancestr2_lbl 155 `"Sorb/Wend"', add
label define ancestr2_lbl 156 `"Soviet Turkic"', add
label define ancestr2_lbl 157 `"Bashkir"', add
label define ancestr2_lbl 158 `"Chevash"', add
label define ancestr2_lbl 159 `"Gagauz"', add
label define ancestr2_lbl 160 `"Mesknetian"', add
label define ancestr2_lbl 163 `"Yakut"', add
label define ancestr2_lbl 164 `"Soviet Union, nec"', add
label define ancestr2_lbl 165 `"Tatar"', add
label define ancestr2_lbl 169 `"Uzbek"', add
label define ancestr2_lbl 171 `"Ukrainian"', add
label define ancestr2_lbl 176 `"Yugoslavian"', add
label define ancestr2_lbl 178 `"Slav"', add
label define ancestr2_lbl 179 `"Slavonian"', add
label define ancestr2_lbl 181 `"Central European, nec"', add
label define ancestr2_lbl 183 `"Northern European, nec"', add
label define ancestr2_lbl 185 `"Southern European, nec"', add
label define ancestr2_lbl 187 `"Western European, nec"', add
label define ancestr2_lbl 190 `"Eastern European, nec"', add
label define ancestr2_lbl 195 `"European, nec"', add
label define ancestr2_lbl 200 `"Spaniard"', add
label define ancestr2_lbl 201 `"Andalusian"', add
label define ancestr2_lbl 202 `"Astorian"', add
label define ancestr2_lbl 204 `"Catalonian"', add
label define ancestr2_lbl 205 `"Balearic Islander"', add
label define ancestr2_lbl 206 `"Galician"', add
label define ancestr2_lbl 210 `"Mexican"', add
label define ancestr2_lbl 211 `"Mexican American"', add
label define ancestr2_lbl 213 `"Chicano/Chicana"', add
label define ancestr2_lbl 218 `"Nuevo Mexicano"', add
label define ancestr2_lbl 219 `"Californio"', add
label define ancestr2_lbl 221 `"Costa Rican"', add
label define ancestr2_lbl 222 `"Guatemalan"', add
label define ancestr2_lbl 223 `"Honduran"', add
label define ancestr2_lbl 224 `"Nicaraguan"', add
label define ancestr2_lbl 225 `"Panamanian"', add
label define ancestr2_lbl 226 `"Salvadoran"', add
label define ancestr2_lbl 227 `"Latin American"', add
label define ancestr2_lbl 231 `"Argentinean"', add
label define ancestr2_lbl 232 `"Bolivian"', add
label define ancestr2_lbl 233 `"Chilean"', add
label define ancestr2_lbl 234 `"Colombian"', add
label define ancestr2_lbl 235 `"Ecuadorian"', add
label define ancestr2_lbl 236 `"Paraguayan"', add
label define ancestr2_lbl 237 `"Peruvian"', add
label define ancestr2_lbl 238 `"Uruguayan"', add
label define ancestr2_lbl 239 `"Venezuelan"', add
label define ancestr2_lbl 248 `"South American"', add
label define ancestr2_lbl 261 `"Puerto Rican"', add
label define ancestr2_lbl 271 `"Cuban"', add
label define ancestr2_lbl 275 `"Dominican"', add
label define ancestr2_lbl 290 `"Hispanic"', add
label define ancestr2_lbl 291 `"Spanish"', add
label define ancestr2_lbl 295 `"Spanish American"', add
label define ancestr2_lbl 296 `"Other Spanish/Hispanic"', add
label define ancestr2_lbl 300 `"Bahamian"', add
label define ancestr2_lbl 301 `"Barbadian"', add
label define ancestr2_lbl 302 `"Belizean"', add
label define ancestr2_lbl 303 `"Bermudan"', add
label define ancestr2_lbl 304 `"Cayman Islander"', add
label define ancestr2_lbl 308 `"Jamaican"', add
label define ancestr2_lbl 310 `"Dutch West Indies"', add
label define ancestr2_lbl 311 `"Aruba Islander"', add
label define ancestr2_lbl 312 `"St Maarten Islander"', add
label define ancestr2_lbl 314 `"Trinidadian/Tobagonian"', add
label define ancestr2_lbl 315 `"Trinidadian"', add
label define ancestr2_lbl 316 `"Tobagonian"', add
label define ancestr2_lbl 317 `"U.S. Virgin Islander"', add
label define ancestr2_lbl 321 `"British Virgin Islander"', add
label define ancestr2_lbl 322 `"British West Indian"', add
label define ancestr2_lbl 323 `"Turks and Caicos Islander"', add
label define ancestr2_lbl 324 `"Anguilla Islander"', add
label define ancestr2_lbl 328 `"Dominica Islander"', add
label define ancestr2_lbl 329 `"Grenadian"', add
label define ancestr2_lbl 331 `"St Lucia Islander"', add
label define ancestr2_lbl 332 `"French West Indies"', add
label define ancestr2_lbl 333 `"Guadeloupe Islander"', add
label define ancestr2_lbl 334 `"Cayenne"', add
label define ancestr2_lbl 335 `"West Indian"', add
label define ancestr2_lbl 336 `"Haitian"', add
label define ancestr2_lbl 337 `"Other West Indian"', add
label define ancestr2_lbl 360 `"Brazilian"', add
label define ancestr2_lbl 365 `"San Andres"', add
label define ancestr2_lbl 370 `"Guyanese/British Guiana"', add
label define ancestr2_lbl 375 `"Providencia"', add
label define ancestr2_lbl 380 `"Surinam/Dutch Guiana"', add
label define ancestr2_lbl 400 `"Algerian"', add
label define ancestr2_lbl 402 `"Egyptian"', add
label define ancestr2_lbl 404 `"Libyan"', add
label define ancestr2_lbl 406 `"Moroccan"', add
label define ancestr2_lbl 407 `"Ifni"', add
label define ancestr2_lbl 408 `"Tunisian"', add
label define ancestr2_lbl 411 `"North African"', add
label define ancestr2_lbl 412 `"Alhucemas"', add
label define ancestr2_lbl 413 `"Berber"', add
label define ancestr2_lbl 414 `"Rio de Oro"', add
label define ancestr2_lbl 415 `"Bahraini"', add
label define ancestr2_lbl 416 `"Iranian"', add
label define ancestr2_lbl 417 `"Iraqi"', add
label define ancestr2_lbl 419 `"Israeli"', add
label define ancestr2_lbl 421 `"Jordanian"', add
label define ancestr2_lbl 422 `"Transjordan"', add
label define ancestr2_lbl 423 `"Kuwaiti"', add
label define ancestr2_lbl 425 `"Lebanese"', add
label define ancestr2_lbl 427 `"Saudi Arabian"', add
label define ancestr2_lbl 429 `"Syrian"', add
label define ancestr2_lbl 431 `"Armenian"', add
label define ancestr2_lbl 434 `"Turkish"', add
label define ancestr2_lbl 435 `"Yemeni"', add
label define ancestr2_lbl 436 `"Omani"', add
label define ancestr2_lbl 437 `"Muscat"', add
label define ancestr2_lbl 438 `"Trucial Oman"', add
label define ancestr2_lbl 439 `"Qatar"', add
label define ancestr2_lbl 441 `"Bedouin"', add
label define ancestr2_lbl 442 `"Kurdish"', add
label define ancestr2_lbl 444 `"Kuria Muria Islander"', add
label define ancestr2_lbl 465 `"Palestinian"', add
label define ancestr2_lbl 466 `"Gazan"', add
label define ancestr2_lbl 467 `"West Bank"', add
label define ancestr2_lbl 470 `"South Yemeni"', add
label define ancestr2_lbl 471 `"Aden"', add
label define ancestr2_lbl 480 `"United Arab Emirates"', add
label define ancestr2_lbl 482 `"Assyrian/Chaldean/Syriac"', add
label define ancestr2_lbl 490 `"Middle Eastern"', add
label define ancestr2_lbl 495 `"Arab"', add
label define ancestr2_lbl 496 `"Other Arab"', add
label define ancestr2_lbl 500 `"Angolan"', add
label define ancestr2_lbl 502 `"Benin"', add
label define ancestr2_lbl 504 `"Botswana"', add
label define ancestr2_lbl 506 `"Burundian"', add
label define ancestr2_lbl 508 `"Cameroonian"', add
label define ancestr2_lbl 510 `"Cape Verdean"', add
label define ancestr2_lbl 513 `"Chadian"', add
label define ancestr2_lbl 515 `"Congolese"', add
label define ancestr2_lbl 516 `"Congo-Brazzaville"', add
label define ancestr2_lbl 519 `"Djibouti"', add
label define ancestr2_lbl 520 `"Equatorial Guinea"', add
label define ancestr2_lbl 521 `"Corsico Islander"', add
label define ancestr2_lbl 522 `"Ethiopian"', add
label define ancestr2_lbl 523 `"Eritrean"', add
label define ancestr2_lbl 525 `"Gabonese"', add
label define ancestr2_lbl 527 `"Gambian"', add
label define ancestr2_lbl 529 `"Ghanian"', add
label define ancestr2_lbl 530 `"Guinean"', add
label define ancestr2_lbl 531 `"Guinea Bissau"', add
label define ancestr2_lbl 532 `"Ivory Coast"', add
label define ancestr2_lbl 534 `"Kenyan"', add
label define ancestr2_lbl 538 `"Lesotho"', add
label define ancestr2_lbl 541 `"Liberian"', add
label define ancestr2_lbl 543 `"Madagascan"', add
label define ancestr2_lbl 545 `"Malawian"', add
label define ancestr2_lbl 546 `"Malian"', add
label define ancestr2_lbl 547 `"Mauritanian"', add
label define ancestr2_lbl 549 `"Mozambican"', add
label define ancestr2_lbl 550 `"Namibian"', add
label define ancestr2_lbl 551 `"Niger"', add
label define ancestr2_lbl 553 `"Nigerian"', add
label define ancestr2_lbl 554 `"Fulani"', add
label define ancestr2_lbl 555 `"Hausa"', add
label define ancestr2_lbl 556 `"Ibo"', add
label define ancestr2_lbl 557 `"Tiv"', add
label define ancestr2_lbl 561 `"Rwandan"', add
label define ancestr2_lbl 564 `"Senegalese"', add
label define ancestr2_lbl 566 `"Sierra Leonean"', add
label define ancestr2_lbl 568 `"Somalian"', add
label define ancestr2_lbl 569 `"Swaziland"', add
label define ancestr2_lbl 570 `"South African"', add
label define ancestr2_lbl 571 `"Union of South Africa"', add
label define ancestr2_lbl 572 `"Afrikaner"', add
label define ancestr2_lbl 573 `"Natalian"', add
label define ancestr2_lbl 574 `"Zulu"', add
label define ancestr2_lbl 576 `"Sudanese"', add
label define ancestr2_lbl 577 `"Dinka"', add
label define ancestr2_lbl 578 `"Nuer"', add
label define ancestr2_lbl 579 `"Fur"', add
label define ancestr2_lbl 580 `"Baggara"', add
label define ancestr2_lbl 582 `"Tanzanian"', add
label define ancestr2_lbl 583 `"Tanganyikan"', add
label define ancestr2_lbl 584 `"Zanzibar Islande"', add
label define ancestr2_lbl 586 `"Togo"', add
label define ancestr2_lbl 588 `"Ugandan"', add
label define ancestr2_lbl 589 `"Upper Voltan"', add
label define ancestr2_lbl 590 `"Voltan"', add
label define ancestr2_lbl 591 `"Zairian"', add
label define ancestr2_lbl 592 `"Zambian"', add
label define ancestr2_lbl 593 `"Zimbabwean"', add
label define ancestr2_lbl 594 `"African Islands"', add
label define ancestr2_lbl 595 `"Other Subsaharan Africa"', add
label define ancestr2_lbl 596 `"Central African"', add
label define ancestr2_lbl 597 `"East African"', add
label define ancestr2_lbl 598 `"West African"', add
label define ancestr2_lbl 599 `"African"', add
label define ancestr2_lbl 600 `"Afghan"', add
label define ancestr2_lbl 601 `"Baluchi"', add
label define ancestr2_lbl 602 `"Pathan"', add
label define ancestr2_lbl 603 `"Bengali"', add
label define ancestr2_lbl 607 `"Bhutanese"', add
label define ancestr2_lbl 609 `"Nepali"', add
label define ancestr2_lbl 615 `"Asian Indian"', add
label define ancestr2_lbl 622 `"Andaman Islander"', add
label define ancestr2_lbl 624 `"Andhra Pradesh"', add
label define ancestr2_lbl 626 `"Assamese"', add
label define ancestr2_lbl 628 `"Goanese"', add
label define ancestr2_lbl 630 `"Gujarati"', add
label define ancestr2_lbl 632 `"Karnatakan"', add
label define ancestr2_lbl 634 `"Keralan"', add
label define ancestr2_lbl 638 `"Maharashtran"', add
label define ancestr2_lbl 640 `"Madrasi"', add
label define ancestr2_lbl 642 `"Mysore"', add
label define ancestr2_lbl 644 `"Naga"', add
label define ancestr2_lbl 648 `"Pondicherry"', add
label define ancestr2_lbl 650 `"Punjabi"', add
label define ancestr2_lbl 656 `"Tamil"', add
label define ancestr2_lbl 675 `"East Indies"', add
label define ancestr2_lbl 680 `"Pakistani"', add
label define ancestr2_lbl 690 `"Sri Lankan"', add
label define ancestr2_lbl 691 `"Singhalese"', add
label define ancestr2_lbl 692 `"Veddah"', add
label define ancestr2_lbl 695 `"Maldivian"', add
label define ancestr2_lbl 700 `"Burmese"', add
label define ancestr2_lbl 702 `"Shan"', add
label define ancestr2_lbl 703 `"Cambodian"', add
label define ancestr2_lbl 704 `"Khmer"', add
label define ancestr2_lbl 706 `"Chinese"', add
label define ancestr2_lbl 707 `"Cantonese"', add
label define ancestr2_lbl 708 `"Manchurian"', add
label define ancestr2_lbl 709 `"Mandarin"', add
label define ancestr2_lbl 712 `"Mongolian"', add
label define ancestr2_lbl 714 `"Tibetan"', add
label define ancestr2_lbl 716 `"Hong Kong"', add
label define ancestr2_lbl 718 `"Macao"', add
label define ancestr2_lbl 720 `"Filipino"', add
label define ancestr2_lbl 730 `"Indonesian"', add
label define ancestr2_lbl 740 `"Japanese"', add
label define ancestr2_lbl 746 `"Ryukyu Islander"', add
label define ancestr2_lbl 748 `"Okinawan"', add
label define ancestr2_lbl 750 `"Korean"', add
label define ancestr2_lbl 765 `"Laotian"', add
label define ancestr2_lbl 766 `"Meo"', add
label define ancestr2_lbl 768 `"Hmong"', add
label define ancestr2_lbl 770 `"Malaysian"', add
label define ancestr2_lbl 774 `"Singaporean"', add
label define ancestr2_lbl 776 `"Thai"', add
label define ancestr2_lbl 777 `"Black Thai"', add
label define ancestr2_lbl 778 `"Western Lao"', add
label define ancestr2_lbl 782 `"Taiwanese"', add
label define ancestr2_lbl 785 `"Vietnamese"', add
label define ancestr2_lbl 786 `"Katu"', add
label define ancestr2_lbl 787 `"Ma"', add
label define ancestr2_lbl 788 `"Mnong"', add
label define ancestr2_lbl 790 `"Montagnard"', add
label define ancestr2_lbl 792 `"Indochinese"', add
label define ancestr2_lbl 793 `"Eurasian"', add
label define ancestr2_lbl 795 `"Asian"', add
label define ancestr2_lbl 796 `"Other Asian"', add
label define ancestr2_lbl 800 `"Australian"', add
label define ancestr2_lbl 801 `"Tasmanian"', add
label define ancestr2_lbl 802 `"Australian Aborigine"', add
label define ancestr2_lbl 803 `"New Zealander"', add
label define ancestr2_lbl 808 `"Polynesian"', add
label define ancestr2_lbl 809 `"Kapinagamarangan"', add
label define ancestr2_lbl 810 `"Maori"', add
label define ancestr2_lbl 811 `"Hawaiian"', add
label define ancestr2_lbl 813 `"Part Hawaiian"', add
label define ancestr2_lbl 814 `"Samoan"', add
label define ancestr2_lbl 815 `"Tongan"', add
label define ancestr2_lbl 816 `"Tokelauan"', add
label define ancestr2_lbl 817 `"Cook Islander"', add
label define ancestr2_lbl 818 `"Tahitian"', add
label define ancestr2_lbl 819 `"Niuean"', add
label define ancestr2_lbl 820 `"Micronesian"', add
label define ancestr2_lbl 821 `"Guamanian"', add
label define ancestr2_lbl 822 `"Chamorro Islander"', add
label define ancestr2_lbl 823 `"Saipanese"', add
label define ancestr2_lbl 824 `"Palauan"', add
label define ancestr2_lbl 825 `"Marshall Islander"', add
label define ancestr2_lbl 826 `"Kosraean"', add
label define ancestr2_lbl 827 `"Ponapean"', add
label define ancestr2_lbl 828 `"Chuukese"', add
label define ancestr2_lbl 829 `"Yap Islander"', add
label define ancestr2_lbl 830 `"Caroline Islander"', add
label define ancestr2_lbl 831 `"Kiribatese"', add
label define ancestr2_lbl 832 `"Nauruan"', add
label define ancestr2_lbl 833 `"Tarawa Islander"', add
label define ancestr2_lbl 834 `"Tinian Islander"', add
label define ancestr2_lbl 840 `"Melanesian Islander"', add
label define ancestr2_lbl 841 `"Fijian"', add
label define ancestr2_lbl 843 `"New Guinean"', add
label define ancestr2_lbl 844 `"Papuan"', add
label define ancestr2_lbl 845 `"Solomon Islander"', add
label define ancestr2_lbl 846 `"New Caledonian Islander"', add
label define ancestr2_lbl 847 `"Vanuatuan"', add
label define ancestr2_lbl 850 `"Pacific Islander"', add
label define ancestr2_lbl 860 `"Oceania"', add
label define ancestr2_lbl 862 `"Chamolinian"', add
label define ancestr2_lbl 863 `"Reserved Codes"', add
label define ancestr2_lbl 870 `"Other Pacific"', add
label define ancestr2_lbl 900 `"Afro-American"', add
label define ancestr2_lbl 902 `"African-American"', add
label define ancestr2_lbl 913 `"Central American Indian"', add
label define ancestr2_lbl 914 `"South American Indian"', add
label define ancestr2_lbl 920 `"American Indian  (all tribes)"', add
label define ancestr2_lbl 921 `"Aleut"', add
label define ancestr2_lbl 922 `"Eskimo"', add
label define ancestr2_lbl 923 `"Inuit"', add
label define ancestr2_lbl 924 `"White/Caucasian"', add
label define ancestr2_lbl 930 `"Greenlander"', add
label define ancestr2_lbl 931 `"Canadian (most provinces)"', add
label define ancestr2_lbl 933 `"Newfoundland"', add
label define ancestr2_lbl 934 `"Nova Scotian"', add
label define ancestr2_lbl 935 `"French Canadian"', add
label define ancestr2_lbl 936 `"Acadian"', add
label define ancestr2_lbl 939 `"American"', add
label define ancestr2_lbl 940 `"United States"', add
label define ancestr2_lbl 941 `"Alabama"', add
label define ancestr2_lbl 942 `"Alaska"', add
label define ancestr2_lbl 943 `"Arizona"', add
label define ancestr2_lbl 944 `"Arkansas"', add
label define ancestr2_lbl 945 `"California"', add
label define ancestr2_lbl 946 `"Colorado"', add
label define ancestr2_lbl 947 `"Connecticut"', add
label define ancestr2_lbl 948 `"District of Columbia"', add
label define ancestr2_lbl 949 `"Delaware"', add
label define ancestr2_lbl 950 `"Florida"', add
label define ancestr2_lbl 951 `"Georgia"', add
label define ancestr2_lbl 952 `"Idaho"', add
label define ancestr2_lbl 953 `"Illinois"', add
label define ancestr2_lbl 954 `"Indiana"', add
label define ancestr2_lbl 955 `"Iowa"', add
label define ancestr2_lbl 956 `"Kansas"', add
label define ancestr2_lbl 957 `"Kentucky"', add
label define ancestr2_lbl 958 `"Louisiana"', add
label define ancestr2_lbl 959 `"Maine"', add
label define ancestr2_lbl 960 `"Maryland"', add
label define ancestr2_lbl 961 `"Massachusetts"', add
label define ancestr2_lbl 962 `"Michigan"', add
label define ancestr2_lbl 963 `"Minnesota"', add
label define ancestr2_lbl 964 `"Mississippi"', add
label define ancestr2_lbl 965 `"Missouri"', add
label define ancestr2_lbl 966 `"Montana"', add
label define ancestr2_lbl 967 `"Nebraska"', add
label define ancestr2_lbl 968 `"Nevada"', add
label define ancestr2_lbl 969 `"New Hampshire"', add
label define ancestr2_lbl 970 `"New Jersey"', add
label define ancestr2_lbl 971 `"New Mexico"', add
label define ancestr2_lbl 972 `"New York"', add
label define ancestr2_lbl 973 `"North Carolina"', add
label define ancestr2_lbl 974 `"North Dakota"', add
label define ancestr2_lbl 975 `"Ohio"', add
label define ancestr2_lbl 976 `"Oklahoma"', add
label define ancestr2_lbl 977 `"Oregon"', add
label define ancestr2_lbl 978 `"Pennsylvania"', add
label define ancestr2_lbl 979 `"Rhode Island"', add
label define ancestr2_lbl 980 `"South Carolina"', add
label define ancestr2_lbl 981 `"South Dakota"', add
label define ancestr2_lbl 982 `"Tennessee"', add
label define ancestr2_lbl 983 `"Texas"', add
label define ancestr2_lbl 984 `"Utah"', add
label define ancestr2_lbl 985 `"Vermont"', add
label define ancestr2_lbl 986 `"Virginia"', add
label define ancestr2_lbl 987 `"Washington"', add
label define ancestr2_lbl 988 `"West Virginia"', add
label define ancestr2_lbl 989 `"Wisconsin"', add
label define ancestr2_lbl 990 `"Wyoming"', add
label define ancestr2_lbl 993 `"Southerner"', add
label define ancestr2_lbl 994 `"North American"', add
label define ancestr2_lbl 995 `"Mixture"', add
label define ancestr2_lbl 996 `"Uncodable"', add
label define ancestr2_lbl 997 `"Deferred Cases"', add
label define ancestr2_lbl 998 `"Other (Usually a Religion)"', add
label define ancestr2_lbl 999 `"Not Reported"', add
label values ancestr2 ancestr2_lbl

label define ancestr2d_lbl 0010 `"Alsatian"'
label define ancestr2d_lbl 0020 `"Andorran"', add
label define ancestr2d_lbl 0030 `"Austrian"', add
label define ancestr2d_lbl 0040 `"Tirolean"', add
label define ancestr2d_lbl 0051 `"Basque (1980)"', add
label define ancestr2d_lbl 0052 `"Spanish Basque (1980)"', add
label define ancestr2d_lbl 0053 `"Basque (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 0054 `"Spanish Basque (1990-2000, 2001-2004 ACS)"', add
label define ancestr2d_lbl 0060 `"French Basque"', add
label define ancestr2d_lbl 0080 `"Belgian"', add
label define ancestr2d_lbl 0090 `"Flemish"', add
label define ancestr2d_lbl 0100 `"Walloon"', add
label define ancestr2d_lbl 0110 `"British"', add
label define ancestr2d_lbl 0120 `"British Isles"', add
label define ancestr2d_lbl 0130 `"Channel Islander"', add
label define ancestr2d_lbl 0140 `"Gibraltan"', add
label define ancestr2d_lbl 0150 `"Cornish"', add
label define ancestr2d_lbl 0160 `"Corsican"', add
label define ancestr2d_lbl 0170 `"Cypriot"', add
label define ancestr2d_lbl 0180 `"Greek Cypriote"', add
label define ancestr2d_lbl 0190 `"Turkish Cypriote"', add
label define ancestr2d_lbl 0200 `"Danish"', add
label define ancestr2d_lbl 0210 `"Dutch"', add
label define ancestr2d_lbl 0211 `"Dutch-French-Irish"', add
label define ancestr2d_lbl 0212 `"Dutch-German-Irish"', add
label define ancestr2d_lbl 0213 `"Dutch-Irish-Scotch"', add
label define ancestr2d_lbl 0220 `"English"', add
label define ancestr2d_lbl 0221 `"English-French-German (1980)"', add
label define ancestr2d_lbl 0222 `"English-French-Irish (1980)"', add
label define ancestr2d_lbl 0223 `"English-German-Irish (1980)"', add
label define ancestr2d_lbl 0224 `"English-German-Swedish (1980)"', add
label define ancestr2d_lbl 0225 `"English-Irish-Scotch (1980)"', add
label define ancestr2d_lbl 0226 `"English-Scotch-Welsh (1980)"', add
label define ancestr2d_lbl 0230 `"Faeroe Islander"', add
label define ancestr2d_lbl 0240 `"Finnish"', add
label define ancestr2d_lbl 0250 `"Karelian"', add
label define ancestr2d_lbl 0260 `"French (1980)"', add
label define ancestr2d_lbl 0261 `"French (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 0262 `"Occitan (1990-2000)"', add
label define ancestr2d_lbl 0270 `"Lorrainian"', add
label define ancestr2d_lbl 0280 `"Breton"', add
label define ancestr2d_lbl 0290 `"Frisian"', add
label define ancestr2d_lbl 0300 `"Friulian"', add
label define ancestr2d_lbl 0320 `"German (1980)"', add
label define ancestr2d_lbl 0321 `"German (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 0322 `"Pennsylvania German (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 0323 `"East German (1990-2000)"', add
label define ancestr2d_lbl 0324 `"West German (2000)"', add
label define ancestr2d_lbl 0325 `"German-French-Irish (1980)"', add
label define ancestr2d_lbl 0326 `"German-Irish-Italian (1980)"', add
label define ancestr2d_lbl 0327 `"German-Irish-Scotch (1980)"', add
label define ancestr2d_lbl 0328 `"German-Irish-Swedish (1980)"', add
label define ancestr2d_lbl 0329 `"Germanic"', add
label define ancestr2d_lbl 0330 `"Bavarian"', add
label define ancestr2d_lbl 0340 `"Berliner"', add
label define ancestr2d_lbl 0350 `"Hamburger"', add
label define ancestr2d_lbl 0360 `"Hanoverian"', add
label define ancestr2d_lbl 0370 `"Hessian"', add
label define ancestr2d_lbl 0380 `"Lubecker"', add
label define ancestr2d_lbl 0390 `"Pomeranian (1980)"', add
label define ancestr2d_lbl 0391 `"Pomeranian (1990-2000)"', add
label define ancestr2d_lbl 0392 `"Silesian (1990-2000)"', add
label define ancestr2d_lbl 0400 `"Prussian"', add
label define ancestr2d_lbl 0410 `"Saxon"', add
label define ancestr2d_lbl 0420 `"Sudetenlander"', add
label define ancestr2d_lbl 0430 `"Westphalian"', add
label define ancestr2d_lbl 0460 `"Greek"', add
label define ancestr2d_lbl 0470 `"Cretan"', add
label define ancestr2d_lbl 0480 `"Cycladic Islander"', add
label define ancestr2d_lbl 0490 `"Icelander"', add
label define ancestr2d_lbl 0500 `"Irish"', add
label define ancestr2d_lbl 0501 `"Celtic"', add
label define ancestr2d_lbl 0502 `"Irish Scotch"', add
label define ancestr2d_lbl 0510 `"Italian (1980)"', add
label define ancestr2d_lbl 0511 `"Italian (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 0512 `"Trieste (1990-2000)"', add
label define ancestr2d_lbl 0513 `"San Marino (1990-2000)"', add
label define ancestr2d_lbl 0530 `"Abruzzi"', add
label define ancestr2d_lbl 0540 `"Apulian"', add
label define ancestr2d_lbl 0550 `"Basilicata"', add
label define ancestr2d_lbl 0560 `"Calabrian"', add
label define ancestr2d_lbl 0570 `"Amalfi"', add
label define ancestr2d_lbl 0580 `"Emilia Romagna"', add
label define ancestr2d_lbl 0590 `"Rome"', add
label define ancestr2d_lbl 0600 `"Ligurian"', add
label define ancestr2d_lbl 0610 `"Lombardian"', add
label define ancestr2d_lbl 0620 `"Marches"', add
label define ancestr2d_lbl 0630 `"Molise"', add
label define ancestr2d_lbl 0640 `"Neapolitan"', add
label define ancestr2d_lbl 0650 `"Piedmontese"', add
label define ancestr2d_lbl 0660 `"Puglia"', add
label define ancestr2d_lbl 0670 `"Sardinian"', add
label define ancestr2d_lbl 0680 `"Sicilian"', add
label define ancestr2d_lbl 0690 `"Toscana"', add
label define ancestr2d_lbl 0700 `"Trentino"', add
label define ancestr2d_lbl 0710 `"Umbrian"', add
label define ancestr2d_lbl 0720 `"Valle dAosta"', add
label define ancestr2d_lbl 0730 `"Venetian"', add
label define ancestr2d_lbl 0750 `"Lapp"', add
label define ancestr2d_lbl 0760 `"Liechtensteiner"', add
label define ancestr2d_lbl 0770 `"Luxemburger"', add
label define ancestr2d_lbl 0780 `"Maltese"', add
label define ancestr2d_lbl 0790 `"Manx"', add
label define ancestr2d_lbl 0800 `"Monegasque"', add
label define ancestr2d_lbl 0810 `"Northern Irelander"', add
label define ancestr2d_lbl 0820 `"Norwegian"', add
label define ancestr2d_lbl 0840 `"Portuguese"', add
label define ancestr2d_lbl 0850 `"Azorean"', add
label define ancestr2d_lbl 0860 `"Madeiran"', add
label define ancestr2d_lbl 0870 `"Scotch Irish"', add
label define ancestr2d_lbl 0880 `"Scottish"', add
label define ancestr2d_lbl 0890 `"Swedish"', add
label define ancestr2d_lbl 0900 `"Aland Islander"', add
label define ancestr2d_lbl 0910 `"Swiss"', add
label define ancestr2d_lbl 0920 `"Suisse (1980)"', add
label define ancestr2d_lbl 0921 `"Suisse (1990-2000)"', add
label define ancestr2d_lbl 0922 `"Switzer (1990-2000)"', add
label define ancestr2d_lbl 0950 `"Romansch (1980)"', add
label define ancestr2d_lbl 0951 `"Romanscho (1990-2000)"', add
label define ancestr2d_lbl 0952 `"Ladin (1990-2000)"', add
label define ancestr2d_lbl 0960 `"Suisse Romane (1990-2000)"', add
label define ancestr2d_lbl 0961 `"Suisse Romane (1980)"', add
label define ancestr2d_lbl 0962 `"Ticino"', add
label define ancestr2d_lbl 0970 `"Welsh"', add
label define ancestr2d_lbl 0980 `"Scandinavian, Nordic"', add
label define ancestr2d_lbl 1000 `"Albanian"', add
label define ancestr2d_lbl 1010 `"Azerbaijani"', add
label define ancestr2d_lbl 1020 `"Belorussian"', add
label define ancestr2d_lbl 1030 `"Bulgarian"', add
label define ancestr2d_lbl 1050 `"Carpathian"', add
label define ancestr2d_lbl 1051 `"Carpatho Rusyn"', add
label define ancestr2d_lbl 1052 `"Rusyn"', add
label define ancestr2d_lbl 1080 `"Cossack (1990-2000)"', add
label define ancestr2d_lbl 1081 `"Cossack (1980)"', add
label define ancestr2d_lbl 1082 `"Turkestani (1990-2000, 2012 ACS)"', add
label define ancestr2d_lbl 1083 `"Kirghiz (1980)"', add
label define ancestr2d_lbl 1084 `"Turcoman (1980)"', add
label define ancestr2d_lbl 1090 `"Croatian"', add
label define ancestr2d_lbl 1110 `"Czechoslovakian"', add
label define ancestr2d_lbl 1111 `"Czech"', add
label define ancestr2d_lbl 1120 `"Bohemian (1980)"', add
label define ancestr2d_lbl 1121 `"Bohemian (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 1122 `"Moravian (1990-2000)"', add
label define ancestr2d_lbl 1150 `"Estonian"', add
label define ancestr2d_lbl 1160 `"Livonian"', add
label define ancestr2d_lbl 1170 `"Finno Ugrian (1990-2000)"', add
label define ancestr2d_lbl 1171 `"Udmert"', add
label define ancestr2d_lbl 1180 `"Mordovian"', add
label define ancestr2d_lbl 1190 `"Voytak"', add
label define ancestr2d_lbl 1200 `"Georgian"', add
label define ancestr2d_lbl 1220 `"Germans from Russia"', add
label define ancestr2d_lbl 1221 `"Volga"', add
label define ancestr2d_lbl 1222 `"German from Russia (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 1230 `"Gruziia (1990-2000)"', add
label define ancestr2d_lbl 1240 `"Rom"', add
label define ancestr2d_lbl 1250 `"Hungarian"', add
label define ancestr2d_lbl 1260 `"Magyar"', add
label define ancestr2d_lbl 1280 `"Latvian"', add
label define ancestr2d_lbl 1290 `"Lithuanian"', add
label define ancestr2d_lbl 1300 `"Macedonian"', add
label define ancestr2d_lbl 1320 `"North Caucasian (1990-2000)"', add
label define ancestr2d_lbl 1330 `"North Caucasian Turkic (1990-2000)"', add
label define ancestr2d_lbl 1400 `"Ossetian"', add
label define ancestr2d_lbl 1420 `"Polish"', add
label define ancestr2d_lbl 1430 `"Kashubian"', add
label define ancestr2d_lbl 1440 `"Romanian (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 1441 `"Romanian (1980)"', add
label define ancestr2d_lbl 1442 `"Transylvanian"', add
label define ancestr2d_lbl 1450 `"Bessarabian (1980)"', add
label define ancestr2d_lbl 1451 `"Bessarabian (1990-2000)"', add
label define ancestr2d_lbl 1452 `"Bucovina"', add
label define ancestr2d_lbl 1460 `"Moldavian"', add
label define ancestr2d_lbl 1470 `"Wallachian"', add
label define ancestr2d_lbl 1480 `"Russian"', add
label define ancestr2d_lbl 1500 `"Muscovite"', add
label define ancestr2d_lbl 1520 `"Serbian (1980)"', add
label define ancestr2d_lbl 1521 `"Serbian (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 1522 `"Bosnian (1990) Herzegovinian (2000, ACS, PRCS)"', add
label define ancestr2d_lbl 1523 `"Montenegrin (1990-2000, 2012 ACS)"', add
label define ancestr2d_lbl 1530 `"Slovak"', add
label define ancestr2d_lbl 1540 `"Slovene"', add
label define ancestr2d_lbl 1550 `"Sorb/Wend"', add
label define ancestr2d_lbl 1560 `"Soviet Turkic (1990-2000)"', add
label define ancestr2d_lbl 1570 `"Bashkir"', add
label define ancestr2d_lbl 1580 `"Chevash"', add
label define ancestr2d_lbl 1590 `"Gagauz (1990-2000)"', add
label define ancestr2d_lbl 1600 `"Mesknetian (1990-2000)"', add
label define ancestr2d_lbl 1630 `"Yakut"', add
label define ancestr2d_lbl 1640 `"Soviet Union, nec"', add
label define ancestr2d_lbl 1650 `"Tatar (1990-2000)"', add
label define ancestr2d_lbl 1651 `"Tatar (1980)"', add
label define ancestr2d_lbl 1652 `"Crimean (1980)"', add
label define ancestr2d_lbl 1653 `"Tuvinian (1990-2000)"', add
label define ancestr2d_lbl 1654 `"Soviet Central Asian (1990-2000)"', add
label define ancestr2d_lbl 1655 `"Tadzhik (1980, 2000)"', add
label define ancestr2d_lbl 1690 `"Uzbek"', add
label define ancestr2d_lbl 1710 `"Ukrainian (1980)"', add
label define ancestr2d_lbl 1711 `"Ukrainian (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 1712 `"Ruthenian (1980)"', add
label define ancestr2d_lbl 1713 `"Ruthenian (1990-2000)"', add
label define ancestr2d_lbl 1714 `"Lemko"', add
label define ancestr2d_lbl 1715 `"Bioko"', add
label define ancestr2d_lbl 1716 `"Hesel"', add
label define ancestr2d_lbl 1717 `"Windish"', add
label define ancestr2d_lbl 1760 `"Yugoslavian"', add
label define ancestr2d_lbl 1780 `"Slav"', add
label define ancestr2d_lbl 1790 `"Slavonian"', add
label define ancestr2d_lbl 1810 `"Central European, nec"', add
label define ancestr2d_lbl 1830 `"Northern European, nec"', add
label define ancestr2d_lbl 1850 `"Southern European, nec"', add
label define ancestr2d_lbl 1870 `"Western European, nec"', add
label define ancestr2d_lbl 1900 `"Eastern European, nec"', add
label define ancestr2d_lbl 1950 `"European, nec"', add
label define ancestr2d_lbl 2000 `"Spaniard (1980)"', add
label define ancestr2d_lbl 2001 `"Spaniard (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 2002 `"Castillian (1990-2000)"', add
label define ancestr2d_lbl 2003 `"Valencian (1990-2000)"', add
label define ancestr2d_lbl 2010 `"Andalusian (1990-2000)"', add
label define ancestr2d_lbl 2020 `"Asturian (1990-2000)"', add
label define ancestr2d_lbl 2040 `"Catalonian"', add
label define ancestr2d_lbl 2050 `"Balearic Islander (1980)"', add
label define ancestr2d_lbl 2051 `"Balearic Islander (1990-2000)"', add
label define ancestr2d_lbl 2052 `"Canary Islander (1990-2000)"', add
label define ancestr2d_lbl 2060 `"Galician (1980)"', add
label define ancestr2d_lbl 2061 `"Gallego (1990-2000)"', add
label define ancestr2d_lbl 2062 `"Galician (1990-2000)"', add
label define ancestr2d_lbl 2100 `"Mexican"', add
label define ancestr2d_lbl 2101 `"Mexican (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 2102 `"Mexicano/Mexicana (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 2103 `"Mexican Indian"', add
label define ancestr2d_lbl 2110 `"Mexican American"', add
label define ancestr2d_lbl 2111 `"Mexican American Indian"', add
label define ancestr2d_lbl 2130 `"Chicano/Chicana"', add
label define ancestr2d_lbl 2180 `"Nuevo Mexicano"', add
label define ancestr2d_lbl 2181 `"Nuevo Mexicano (1990-2000)"', add
label define ancestr2d_lbl 2182 `"La Raza (1990-2000)"', add
label define ancestr2d_lbl 2183 `"Mexican state (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 2184 `"Tejano/Tejana (1990-2000)"', add
label define ancestr2d_lbl 2190 `"Californio"', add
label define ancestr2d_lbl 2210 `"Costa Rican"', add
label define ancestr2d_lbl 2220 `"Guatemalan"', add
label define ancestr2d_lbl 2230 `"Honduran"', add
label define ancestr2d_lbl 2240 `"Nicaraguan"', add
label define ancestr2d_lbl 2250 `"Panamanian (1980)"', add
label define ancestr2d_lbl 2251 `"Panamanian (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 2252 `"Canal Zone (1990-2000)"', add
label define ancestr2d_lbl 2260 `"Salvadoran"', add
label define ancestr2d_lbl 2270 `"Latin American (1980)"', add
label define ancestr2d_lbl 2271 `"Central American (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 2272 `"Latin American (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 2273 `"Latino/Latina (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 2274 `"Latin (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 2310 `"Argentinean"', add
label define ancestr2d_lbl 2320 `"Bolivian"', add
label define ancestr2d_lbl 2330 `"Chilean"', add
label define ancestr2d_lbl 2340 `"Colombian"', add
label define ancestr2d_lbl 2350 `"Ecuadorian"', add
label define ancestr2d_lbl 2360 `"Paraguayan"', add
label define ancestr2d_lbl 2370 `"Peruvian"', add
label define ancestr2d_lbl 2380 `"Uruguayan"', add
label define ancestr2d_lbl 2390 `"Venezuelan"', add
label define ancestr2d_lbl 2480 `"South American (1980)"', add
label define ancestr2d_lbl 2481 `"South American (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 2482 `"Criollo/Criolla (1990-2000)"', add
label define ancestr2d_lbl 2610 `"Puerto Rican"', add
label define ancestr2d_lbl 2710 `"Cuban"', add
label define ancestr2d_lbl 2750 `"Dominican"', add
label define ancestr2d_lbl 2900 `"Hispanic"', add
label define ancestr2d_lbl 2910 `"Spanish"', add
label define ancestr2d_lbl 2950 `"Spanish American"', add
label define ancestr2d_lbl 2960 `"Other Spanish/Hispanic"', add
label define ancestr2d_lbl 3000 `"Bahamian"', add
label define ancestr2d_lbl 3010 `"Barbadian"', add
label define ancestr2d_lbl 3020 `"Belizean"', add
label define ancestr2d_lbl 3030 `"Bermudan"', add
label define ancestr2d_lbl 3040 `"Cayman Islander"', add
label define ancestr2d_lbl 3080 `"Jamaican"', add
label define ancestr2d_lbl 3100 `"Dutch West Indies"', add
label define ancestr2d_lbl 3110 `"Aruba Islander"', add
label define ancestr2d_lbl 3120 `"St Maarten Islander"', add
label define ancestr2d_lbl 3140 `"Trinidadian/Tobagonian"', add
label define ancestr2d_lbl 3150 `"Trinidadian"', add
label define ancestr2d_lbl 3160 `"Tobagonian"', add
label define ancestr2d_lbl 3170 `"U.S. Virgin Islander (1980)"', add
label define ancestr2d_lbl 3171 `"U.S. Virgin Islander (1990-2000)"', add
label define ancestr2d_lbl 3172 `"St. Croix Islander (1990-2000)"', add
label define ancestr2d_lbl 3173 `"St. John Islander (1990-2000)"', add
label define ancestr2d_lbl 3174 `"St. Thomas Islander (1990-2000)"', add
label define ancestr2d_lbl 3210 `"British Virgin Islander (1980)"', add
label define ancestr2d_lbl 3211 `"British Virgin Islander (1990-2000)"', add
label define ancestr2d_lbl 3212 `"Antigua (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 3220 `"British West Indian"', add
label define ancestr2d_lbl 3230 `"Turks and Caicos Islander"', add
label define ancestr2d_lbl 3240 `"Anguilla Islander (1980)"', add
label define ancestr2d_lbl 3241 `"Anguilla Islander (1990-2000)"', add
label define ancestr2d_lbl 3242 `"Montserrat Islander (1990-2000)"', add
label define ancestr2d_lbl 3243 `"Kitts/Nevis Islander (1990-2000)"', add
label define ancestr2d_lbl 3244 `"St. Christopher (1980)"', add
label define ancestr2d_lbl 3245 `"St Vincent Islander"', add
label define ancestr2d_lbl 3280 `"Dominica Islander"', add
label define ancestr2d_lbl 3290 `"Grenadian"', add
label define ancestr2d_lbl 3310 `"St Lucia Islander"', add
label define ancestr2d_lbl 3320 `"French West Indies"', add
label define ancestr2d_lbl 3330 `"Guadeloupe Islander"', add
label define ancestr2d_lbl 3340 `"Cayenne"', add
label define ancestr2d_lbl 3350 `"West Indian (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 3351 `"West Indian (1980)"', add
label define ancestr2d_lbl 3352 `"Caribbean (1980)"', add
label define ancestr2d_lbl 3353 `"Arawak (1980)"', add
label define ancestr2d_lbl 3360 `"Haitian"', add
label define ancestr2d_lbl 3370 `"Other West Indian"', add
label define ancestr2d_lbl 3600 `"Brazilian"', add
label define ancestr2d_lbl 3650 `"San Andres"', add
label define ancestr2d_lbl 3700 `"Guyanese/British Guiana"', add
label define ancestr2d_lbl 3750 `"Providencia"', add
label define ancestr2d_lbl 3800 `"Surinam/Dutch Guiana"', add
label define ancestr2d_lbl 4000 `"Algerian"', add
label define ancestr2d_lbl 4020 `"Egyptian"', add
label define ancestr2d_lbl 4040 `"Libyan"', add
label define ancestr2d_lbl 4060 `"Moroccan (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 4061 `"Moroccan (1980)"', add
label define ancestr2d_lbl 4062 `"Moor (1980)"', add
label define ancestr2d_lbl 4070 `"Ifni"', add
label define ancestr2d_lbl 4080 `"Tunisian"', add
label define ancestr2d_lbl 4110 `"North African"', add
label define ancestr2d_lbl 4120 `"Alhucemas"', add
label define ancestr2d_lbl 4130 `"Berber"', add
label define ancestr2d_lbl 4140 `"Rio de Oro"', add
label define ancestr2d_lbl 4150 `"Bahraini"', add
label define ancestr2d_lbl 4160 `"Iranian"', add
label define ancestr2d_lbl 4170 `"Iraqi"', add
label define ancestr2d_lbl 4190 `"Israeli"', add
label define ancestr2d_lbl 4210 `"Jordanian"', add
label define ancestr2d_lbl 4220 `"Transjordan"', add
label define ancestr2d_lbl 4230 `"Kuwaiti"', add
label define ancestr2d_lbl 4250 `"Lebanese"', add
label define ancestr2d_lbl 4270 `"Saudi Arabian"', add
label define ancestr2d_lbl 4290 `"Syrian (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 4291 `"Syrian (1980)"', add
label define ancestr2d_lbl 4292 `"Latakian (1980)"', add
label define ancestr2d_lbl 4293 `"Jebel Druse (1980)"', add
label define ancestr2d_lbl 4310 `"Armenian"', add
label define ancestr2d_lbl 4340 `"Turkish"', add
label define ancestr2d_lbl 4350 `"Yemeni"', add
label define ancestr2d_lbl 4360 `"Omani"', add
label define ancestr2d_lbl 4370 `"Muscat"', add
label define ancestr2d_lbl 4380 `"Trucial Oman"', add
label define ancestr2d_lbl 4390 `"Qatar"', add
label define ancestr2d_lbl 4410 `"Bedouin"', add
label define ancestr2d_lbl 4420 `"Kurdish"', add
label define ancestr2d_lbl 4440 `"Kuria Muria Islander"', add
label define ancestr2d_lbl 4650 `"Palestinian"', add
label define ancestr2d_lbl 4660 `"Gazan"', add
label define ancestr2d_lbl 4670 `"West Bank"', add
label define ancestr2d_lbl 4700 `"South Yemeni"', add
label define ancestr2d_lbl 4710 `"Aden"', add
label define ancestr2d_lbl 4800 `"United Arab Emirates"', add
label define ancestr2d_lbl 4820 `"Assyrian/Chaldean/Syriac (1990-2000)"', add
label define ancestr2d_lbl 4821 `"Assyrian"', add
label define ancestr2d_lbl 4822 `"Syriac (1980, 2000)"', add
label define ancestr2d_lbl 4823 `"Chaldean (2000, ACS, PRCS)"', add
label define ancestr2d_lbl 4900 `"Middle Eastern"', add
label define ancestr2d_lbl 4950 `"Arab"', add
label define ancestr2d_lbl 4951 `"Arabic (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 4960 `"Other Arab"', add
label define ancestr2d_lbl 5000 `"Angolan"', add
label define ancestr2d_lbl 5020 `"Benin"', add
label define ancestr2d_lbl 5040 `"Botswana"', add
label define ancestr2d_lbl 5060 `"Burundian"', add
label define ancestr2d_lbl 5080 `"Cameroonian"', add
label define ancestr2d_lbl 5100 `"Cape Verdean"', add
label define ancestr2d_lbl 5120 `"Central African Republic"', add
label define ancestr2d_lbl 5130 `"Chadian"', add
label define ancestr2d_lbl 5150 `"Congolese"', add
label define ancestr2d_lbl 5160 `"Congo-Brazzaville"', add
label define ancestr2d_lbl 5190 `"Djibouti"', add
label define ancestr2d_lbl 5200 `"Equatorial Guinea"', add
label define ancestr2d_lbl 5210 `"Corsico Islander"', add
label define ancestr2d_lbl 5220 `"Ethiopian"', add
label define ancestr2d_lbl 5230 `"Eritrean"', add
label define ancestr2d_lbl 5250 `"Gabonese"', add
label define ancestr2d_lbl 5270 `"Gambian"', add
label define ancestr2d_lbl 5290 `"Ghanian"', add
label define ancestr2d_lbl 5300 `"Guinean"', add
label define ancestr2d_lbl 5310 `"Guinea Bissau"', add
label define ancestr2d_lbl 5320 `"Ivory Coast"', add
label define ancestr2d_lbl 5340 `"Kenyan"', add
label define ancestr2d_lbl 5380 `"Lesotho"', add
label define ancestr2d_lbl 5410 `"Liberian"', add
label define ancestr2d_lbl 5430 `"Madagascan"', add
label define ancestr2d_lbl 5450 `"Malawian"', add
label define ancestr2d_lbl 5460 `"Malian"', add
label define ancestr2d_lbl 5470 `"Mauritanian"', add
label define ancestr2d_lbl 5490 `"Mozambican"', add
label define ancestr2d_lbl 5500 `"Namibian"', add
label define ancestr2d_lbl 5510 `"Niger"', add
label define ancestr2d_lbl 5530 `"Nigerian"', add
label define ancestr2d_lbl 5540 `"Fulani"', add
label define ancestr2d_lbl 5550 `"Hausa"', add
label define ancestr2d_lbl 5560 `"Ibo"', add
label define ancestr2d_lbl 5570 `"Tiv (1980)"', add
label define ancestr2d_lbl 5571 `"Tiv (1990-2000)"', add
label define ancestr2d_lbl 5572 `"Yoruba (1990-2000)"', add
label define ancestr2d_lbl 5610 `"Rwandan"', add
label define ancestr2d_lbl 5640 `"Senegalese"', add
label define ancestr2d_lbl 5660 `"Sierra Leonean"', add
label define ancestr2d_lbl 5680 `"Somalian"', add
label define ancestr2d_lbl 5690 `"Swaziland"', add
label define ancestr2d_lbl 5700 `"South African"', add
label define ancestr2d_lbl 5710 `"Union of South Africa"', add
label define ancestr2d_lbl 5720 `"Afrikaner"', add
label define ancestr2d_lbl 5730 `"Natalian"', add
label define ancestr2d_lbl 5740 `"Zulu"', add
label define ancestr2d_lbl 5760 `"Sudanese"', add
label define ancestr2d_lbl 5770 `"Dinka"', add
label define ancestr2d_lbl 5780 `"Nuer"', add
label define ancestr2d_lbl 5790 `"Fur"', add
label define ancestr2d_lbl 5800 `"Baggara"', add
label define ancestr2d_lbl 5820 `"Tanzanian"', add
label define ancestr2d_lbl 5830 `"Tanganyikan"', add
label define ancestr2d_lbl 5840 `"Zanzibar"', add
label define ancestr2d_lbl 5860 `"Togo"', add
label define ancestr2d_lbl 5880 `"Ugandan"', add
label define ancestr2d_lbl 5890 `"Upper Voltan"', add
label define ancestr2d_lbl 5900 `"Voltan"', add
label define ancestr2d_lbl 5910 `"Zairian"', add
label define ancestr2d_lbl 5920 `"Zambian"', add
label define ancestr2d_lbl 5930 `"Zimbabwean"', add
label define ancestr2d_lbl 5940 `"African Islands (1980)"', add
label define ancestr2d_lbl 5941 `"African Islands (1990-2000)"', add
label define ancestr2d_lbl 5942 `"Mauritius (1990-2000)"', add
label define ancestr2d_lbl 5950 `"Other Subsaharan Africa"', add
label define ancestr2d_lbl 5960 `"Central African"', add
label define ancestr2d_lbl 5970 `"East African"', add
label define ancestr2d_lbl 5980 `"West African"', add
label define ancestr2d_lbl 5990 `"African"', add
label define ancestr2d_lbl 6000 `"Afghan"', add
label define ancestr2d_lbl 6010 `"Baluchi"', add
label define ancestr2d_lbl 6020 `"Pathan"', add
label define ancestr2d_lbl 6030 `"Bengali (1980)"', add
label define ancestr2d_lbl 6031 `"Bangladeshi (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 6032 `"Bengali (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 6070 `"Bhutanese"', add
label define ancestr2d_lbl 6090 `"Nepali"', add
label define ancestr2d_lbl 6150 `"Asian Indian (1980)"', add
label define ancestr2d_lbl 6151 `"India (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 6152 `"East Indian (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 6153 `"Madhya Pradesh (1990-2000)"', add
label define ancestr2d_lbl 6154 `"Orissa (1990-2000)"', add
label define ancestr2d_lbl 6155 `"Rajasthani (1990-2000)"', add
label define ancestr2d_lbl 6156 `"Sikkim (1990-2000)"', add
label define ancestr2d_lbl 6157 `"Uttar Pradesh (1990-2000)"', add
label define ancestr2d_lbl 6220 `"Andaman Islander"', add
label define ancestr2d_lbl 6240 `"Andhra Pradesh"', add
label define ancestr2d_lbl 6260 `"Assamese"', add
label define ancestr2d_lbl 6280 `"Goanese"', add
label define ancestr2d_lbl 6300 `"Gujarati"', add
label define ancestr2d_lbl 6320 `"Karnatakan"', add
label define ancestr2d_lbl 6340 `"Keralan"', add
label define ancestr2d_lbl 6380 `"Maharashtran"', add
label define ancestr2d_lbl 6400 `"Madrasi"', add
label define ancestr2d_lbl 6420 `"Mysore"', add
label define ancestr2d_lbl 6440 `"Naga"', add
label define ancestr2d_lbl 6480 `"Pondicherry"', add
label define ancestr2d_lbl 6500 `"Punjabi"', add
label define ancestr2d_lbl 6560 `"Tamil"', add
label define ancestr2d_lbl 6750 `"East Indies (1990-2000)"', add
label define ancestr2d_lbl 6800 `"Pakistani (1980)"', add
label define ancestr2d_lbl 6801 `"Pakistani (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 6802 `"Kashmiri (1990-2000)"', add
label define ancestr2d_lbl 6900 `"Sri Lankan"', add
label define ancestr2d_lbl 6910 `"Singhalese"', add
label define ancestr2d_lbl 6920 `"Veddah"', add
label define ancestr2d_lbl 6950 `"Maldivian"', add
label define ancestr2d_lbl 7000 `"Burmese (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 7001 `"Burmese (1980)"', add
label define ancestr2d_lbl 7002 `"Burman (1980)"', add
label define ancestr2d_lbl 7020 `"Shan"', add
label define ancestr2d_lbl 7030 `"Cambodian"', add
label define ancestr2d_lbl 7040 `"Khmer"', add
label define ancestr2d_lbl 7060 `"Chinese"', add
label define ancestr2d_lbl 7070 `"Cantonese (1980)"', add
label define ancestr2d_lbl 7071 `"Cantonese (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 7072 `"Formosan (1990-2000)"', add
label define ancestr2d_lbl 7080 `"Manchurian"', add
label define ancestr2d_lbl 7090 `"Mandarin (1990-2000)"', add
label define ancestr2d_lbl 7120 `"Mongolian (1980)"', add
label define ancestr2d_lbl 7121 `"Mongolian (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 7122 `"Kalmyk (1990-2000)"', add
label define ancestr2d_lbl 7140 `"Tibetan"', add
label define ancestr2d_lbl 7160 `"Hong Kong (1990-2000)"', add
label define ancestr2d_lbl 7161 `"Hong Kong (1980)"', add
label define ancestr2d_lbl 7162 `"Eastern Archipelago (1980)"', add
label define ancestr2d_lbl 7180 `"Macao"', add
label define ancestr2d_lbl 7200 `"Filipino"', add
label define ancestr2d_lbl 7300 `"Indonesian (1980)"', add
label define ancestr2d_lbl 7301 `"Indonesian (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 7302 `"Borneo (1990-2000)"', add
label define ancestr2d_lbl 7303 `"Java (1990-2000)"', add
label define ancestr2d_lbl 7304 `"Sumatran (1990-2000)"', add
label define ancestr2d_lbl 7400 `"Japanese (1980)"', add
label define ancestr2d_lbl 7401 `"Japanese (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 7402 `"Issei (1990-2000)"', add
label define ancestr2d_lbl 7403 `"Nisei (1990-2000)"', add
label define ancestr2d_lbl 7404 `"Sansei (1990-2000)"', add
label define ancestr2d_lbl 7405 `"Yonsei (1990-2000)"', add
label define ancestr2d_lbl 7406 `"Gosei (1990-2000)"', add
label define ancestr2d_lbl 7460 `"Ryukyu Islander"', add
label define ancestr2d_lbl 7480 `"Okinawan"', add
label define ancestr2d_lbl 7500 `"Korean"', add
label define ancestr2d_lbl 7650 `"Laotian"', add
label define ancestr2d_lbl 7660 `"Meo"', add
label define ancestr2d_lbl 7680 `"Hmong"', add
label define ancestr2d_lbl 7700 `"Malaysian (1980)"', add
label define ancestr2d_lbl 7701 `"Malaysian (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 7702 `"North Borneo (1990-2000)"', add
label define ancestr2d_lbl 7740 `"Singaporean"', add
label define ancestr2d_lbl 7760 `"Thai"', add
label define ancestr2d_lbl 7770 `"Black Thai"', add
label define ancestr2d_lbl 7780 `"Western Lao"', add
label define ancestr2d_lbl 7820 `"Taiwanese"', add
label define ancestr2d_lbl 7850 `"Vietnamese"', add
label define ancestr2d_lbl 7860 `"Katu"', add
label define ancestr2d_lbl 7870 `"Ma"', add
label define ancestr2d_lbl 7880 `"Mnong"', add
label define ancestr2d_lbl 7900 `"Montagnard"', add
label define ancestr2d_lbl 7920 `"Indochinese"', add
label define ancestr2d_lbl 7930 `"Eurasian"', add
label define ancestr2d_lbl 7931 `"Amerasian"', add
label define ancestr2d_lbl 7950 `"Asian"', add
label define ancestr2d_lbl 7960 `"Other Asian"', add
label define ancestr2d_lbl 8000 `"Australian"', add
label define ancestr2d_lbl 8010 `"Tasmanian"', add
label define ancestr2d_lbl 8020 `"Australian Aborigine (1990-2000)"', add
label define ancestr2d_lbl 8030 `"New Zealander"', add
label define ancestr2d_lbl 8080 `"Polynesian (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 8081 `"Polynesian (1980)"', add
label define ancestr2d_lbl 8082 `"Norfolk Islander (1980)"', add
label define ancestr2d_lbl 8090 `"Kapinagamarangan (1990-2000)"', add
label define ancestr2d_lbl 8091 `"Kapinagamarangan (1980)"', add
label define ancestr2d_lbl 8092 `"Nukuoroan (1980)"', add
label define ancestr2d_lbl 8100 `"Maori"', add
label define ancestr2d_lbl 8110 `"Hawaiian"', add
label define ancestr2d_lbl 8130 `"Part Hawaiian"', add
label define ancestr2d_lbl 8140 `"Samoan (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 8141 `"Samoan (1980)"', add
label define ancestr2d_lbl 8142 `"American Samoan (1980)"', add
label define ancestr2d_lbl 8143 `"French Samoan"', add
label define ancestr2d_lbl 8144 `"Part Samoan (1990-2000)"', add
label define ancestr2d_lbl 8150 `"Tongan"', add
label define ancestr2d_lbl 8160 `"Tokelauan"', add
label define ancestr2d_lbl 8170 `"Cook Islander"', add
label define ancestr2d_lbl 8180 `"Tahitian"', add
label define ancestr2d_lbl 8190 `"Niuean"', add
label define ancestr2d_lbl 8200 `"Micronesian (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 8201 `"Micronesian (1980)"', add
label define ancestr2d_lbl 8202 `"U.S. Trust Terr of the Pacific"', add
label define ancestr2d_lbl 8210 `"Guamanian"', add
label define ancestr2d_lbl 8220 `"Chamorro Islander"', add
label define ancestr2d_lbl 8230 `"Saipanese (1990-2000)"', add
label define ancestr2d_lbl 8231 `"Saipanese (1980)"', add
label define ancestr2d_lbl 8232 `"Northern Marianas (1980)"', add
label define ancestr2d_lbl 8240 `"Palauan"', add
label define ancestr2d_lbl 8250 `"Marshall Islander"', add
label define ancestr2d_lbl 8260 `"Kosraean"', add
label define ancestr2d_lbl 8270 `"Ponapean (1990-2000)"', add
label define ancestr2d_lbl 8271 `"Ponapean (1980)"', add
label define ancestr2d_lbl 8272 `"Mokilese (1980)"', add
label define ancestr2d_lbl 8273 `"Ngatikese (1980)"', add
label define ancestr2d_lbl 8274 `"Pingelapese (1980)"', add
label define ancestr2d_lbl 8280 `"Chuukese"', add
label define ancestr2d_lbl 8281 `"Hall Islander (1980)"', add
label define ancestr2d_lbl 8282 `"Mortlockese (1980)"', add
label define ancestr2d_lbl 8283 `"Namanouito (1980)"', add
label define ancestr2d_lbl 8284 `"Pulawatese (1980)"', add
label define ancestr2d_lbl 8285 `"Truk Islander"', add
label define ancestr2d_lbl 8290 `"Yap Islander"', add
label define ancestr2d_lbl 8300 `"Caroline Islander (1990-2000)"', add
label define ancestr2d_lbl 8301 `"Caroline Islander (1980)"', add
label define ancestr2d_lbl 8302 `"Lamotrekese (1980)"', add
label define ancestr2d_lbl 8303 `"Ulithian (1980)"', add
label define ancestr2d_lbl 8304 `"Woleaian (1980)"', add
label define ancestr2d_lbl 8310 `"Kiribatese"', add
label define ancestr2d_lbl 8320 `"Nauruan"', add
label define ancestr2d_lbl 8330 `"Tarawa Islander (1990-2000)"', add
label define ancestr2d_lbl 8340 `"Tinian Islander (1990-2000)"', add
label define ancestr2d_lbl 8400 `"Melanesian Islander"', add
label define ancestr2d_lbl 8410 `"Fijian"', add
label define ancestr2d_lbl 8430 `"New Guinean"', add
label define ancestr2d_lbl 8440 `"Papuan"', add
label define ancestr2d_lbl 8450 `"Solomon Islander"', add
label define ancestr2d_lbl 8460 `"New Caledonian Islander"', add
label define ancestr2d_lbl 8470 `"Vanuatuan"', add
label define ancestr2d_lbl 8500 `"Pacific Islander (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 8501 `"Campbell Islander (1980)"', add
label define ancestr2d_lbl 8502 `"Christmas Islander (1980)"', add
label define ancestr2d_lbl 8503 `"Kermadec Islander (1980)"', add
label define ancestr2d_lbl 8504 `"Midway Islander (1980)"', add
label define ancestr2d_lbl 8505 `"Phoenix Islander (1980)"', add
label define ancestr2d_lbl 8506 `"Wake Islander (1980)"', add
label define ancestr2d_lbl 8600 `"Oceania"', add
label define ancestr2d_lbl 8620 `"Chamolinian (1990-2000)"', add
label define ancestr2d_lbl 8630 `"Reserved Codes"', add
label define ancestr2d_lbl 8700 `"Other Pacific"', add
label define ancestr2d_lbl 9000 `"Afro-American"', add
label define ancestr2d_lbl 9001 `"Afro-American (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 9002 `"Black (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 9003 `"Negro (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 9004 `"Nonwhite (1990-2000)"', add
label define ancestr2d_lbl 9005 `"Colored (1990-2000)"', add
label define ancestr2d_lbl 9006 `"Creole (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 9007 `"Mulatto (1990-2000)"', add
label define ancestr2d_lbl 9008 `"Afro"', add
label define ancestr2d_lbl 9020 `"African-American (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 9130 `"Central American Indian (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 9140 `"South American Indian (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 9200 `"American Indian (all tribes)"', add
label define ancestr2d_lbl 9201 `"American Indian-English-French"', add
label define ancestr2d_lbl 9202 `"American Indian-English-German"', add
label define ancestr2d_lbl 9203 `"American Indian-English-Irish"', add
label define ancestr2d_lbl 9204 `"American Indian-German-Irish"', add
label define ancestr2d_lbl 9205 `"Cherokee"', add
label define ancestr2d_lbl 9206 `"Native American"', add
label define ancestr2d_lbl 9207 `"Indian"', add
label define ancestr2d_lbl 9210 `"Aleut"', add
label define ancestr2d_lbl 9220 `"Eskimo"', add
label define ancestr2d_lbl 9230 `"Inuit"', add
label define ancestr2d_lbl 9240 `"White/Caucasian"', add
label define ancestr2d_lbl 9241 `"White/Caucasian (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 9242 `"Anglo (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 9243 `"Appalachian (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 9244 `"Aryan (1990-2000)"', add
label define ancestr2d_lbl 9300 `"Greenlander"', add
label define ancestr2d_lbl 9310 `"Canadian"', add
label define ancestr2d_lbl 9330 `"Newfoundland"', add
label define ancestr2d_lbl 9340 `"Nova Scotian"', add
label define ancestr2d_lbl 9350 `"French Canadian"', add
label define ancestr2d_lbl 9360 `"Acadian"', add
label define ancestr2d_lbl 9361 `"Acadian (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 9362 `"Cajun (1990-2000, ACS, PRCS)"', add
label define ancestr2d_lbl 9390 `"American"', add
label define ancestr2d_lbl 9391 `"American/Unites States"', add
label define ancestr2d_lbl 9400 `"United States"', add
label define ancestr2d_lbl 9410 `"Alabama"', add
label define ancestr2d_lbl 9420 `"Alaska"', add
label define ancestr2d_lbl 9430 `"Arizona"', add
label define ancestr2d_lbl 9440 `"Arkansas"', add
label define ancestr2d_lbl 9450 `"California"', add
label define ancestr2d_lbl 9460 `"Colorado"', add
label define ancestr2d_lbl 9470 `"Connecticut"', add
label define ancestr2d_lbl 9480 `"District of Columbia"', add
label define ancestr2d_lbl 9490 `"Delaware"', add
label define ancestr2d_lbl 9500 `"Florida"', add
label define ancestr2d_lbl 9510 `"Georgia"', add
label define ancestr2d_lbl 9520 `"Idaho"', add
label define ancestr2d_lbl 9530 `"Illinois"', add
label define ancestr2d_lbl 9540 `"Indiana"', add
label define ancestr2d_lbl 9550 `"Iowa"', add
label define ancestr2d_lbl 9560 `"Kansas"', add
label define ancestr2d_lbl 9570 `"Kentucky"', add
label define ancestr2d_lbl 9580 `"Louisiana"', add
label define ancestr2d_lbl 9590 `"Maine"', add
label define ancestr2d_lbl 9600 `"Maryland"', add
label define ancestr2d_lbl 9610 `"Massachusetts"', add
label define ancestr2d_lbl 9620 `"Michigan"', add
label define ancestr2d_lbl 9630 `"Minnesota"', add
label define ancestr2d_lbl 9640 `"Mississippi"', add
label define ancestr2d_lbl 9650 `"Missouri"', add
label define ancestr2d_lbl 9660 `"Montana"', add
label define ancestr2d_lbl 9670 `"Nebraska"', add
label define ancestr2d_lbl 9680 `"Nevada"', add
label define ancestr2d_lbl 9690 `"New Hampshire"', add
label define ancestr2d_lbl 9700 `"New Jersey"', add
label define ancestr2d_lbl 9710 `"New Mexico"', add
label define ancestr2d_lbl 9720 `"New York"', add
label define ancestr2d_lbl 9730 `"North Carolina"', add
label define ancestr2d_lbl 9740 `"North Dakota"', add
label define ancestr2d_lbl 9750 `"Ohio"', add
label define ancestr2d_lbl 9760 `"Oklahoma"', add
label define ancestr2d_lbl 9770 `"Oregon"', add
label define ancestr2d_lbl 9780 `"Pennsylvania"', add
label define ancestr2d_lbl 9790 `"Rhode Island"', add
label define ancestr2d_lbl 9800 `"South Carolina"', add
label define ancestr2d_lbl 9810 `"South Dakota"', add
label define ancestr2d_lbl 9820 `"Tennessee"', add
label define ancestr2d_lbl 9830 `"Texas"', add
label define ancestr2d_lbl 9840 `"Utah"', add
label define ancestr2d_lbl 9850 `"Vermont"', add
label define ancestr2d_lbl 9860 `"Virginia"', add
label define ancestr2d_lbl 9870 `"Washington"', add
label define ancestr2d_lbl 9880 `"West Virginia"', add
label define ancestr2d_lbl 9890 `"Wisconsin"', add
label define ancestr2d_lbl 9900 `"Wyoming"', add
label define ancestr2d_lbl 9930 `"Southerner"', add
label define ancestr2d_lbl 9940 `"North American"', add
label define ancestr2d_lbl 9950 `"Mixture"', add
label define ancestr2d_lbl 9960 `"Uncodable"', add
label define ancestr2d_lbl 9961 `"Not Classified"', add
label define ancestr2d_lbl 9970 `"Deferred Cases"', add
label define ancestr2d_lbl 9980 `"Other"', add
label define ancestr2d_lbl 9990 `"Not Reported"', add
label values ancestr2d ancestr2d_lbl

label define citizen_lbl 0 `"N/A"'
label define citizen_lbl 1 `"Born abroad of American parents"', add
label define citizen_lbl 2 `"Naturalized citizen"', add
label define citizen_lbl 3 `"Not a citizen"', add
label define citizen_lbl 4 `"Not a citizen, but has received first papers"', add
label define citizen_lbl 5 `"Foreign born, citizenship status not reported"', add
label values citizen citizen_lbl

label define yrsusa2_lbl 0 `"N/A"'
label define yrsusa2_lbl 1 `"0-5 years"', add
label define yrsusa2_lbl 2 `"6-10 years"', add
label define yrsusa2_lbl 3 `"11-15 years"', add
label define yrsusa2_lbl 4 `"16-20 years"', add
label define yrsusa2_lbl 5 `"21+ years"', add
label define yrsusa2_lbl 9 `"Missing"', add
label values yrsusa2 yrsusa2_lbl

label define speakeng_lbl 0 `"N/A (Blank)"'
label define speakeng_lbl 1 `"Does not speak English"', add
label define speakeng_lbl 2 `"Yes, speaks English..."', add
label define speakeng_lbl 3 `"Yes, speaks only English"', add
label define speakeng_lbl 4 `"Yes, speaks very well"', add
label define speakeng_lbl 5 `"Yes, speaks well"', add
label define speakeng_lbl 6 `"Yes, but not well"', add
label define speakeng_lbl 7 `"Unknown"', add
label define speakeng_lbl 8 `"Illegible"', add
label values speakeng speakeng_lbl

label define racesing_lbl 1 `"White"'
label define racesing_lbl 2 `"Black"', add
label define racesing_lbl 3 `"American Indian/Alaska Native"', add
label define racesing_lbl 4 `"Asian and/or Pacific Islander"', add
label define racesing_lbl 5 `"Other race, non-Hispanic"', add
label values racesing racesing_lbl

label define racesingd_lbl 10 `"White"'
label define racesingd_lbl 12 `""Other race", Hispanic"', add
label define racesingd_lbl 20 `"Black"', add
label define racesingd_lbl 21 `"Mulatto"', add
label define racesingd_lbl 30 `"AI (American Indian)"', add
label define racesingd_lbl 31 `"AN (Alaskan Native)"', add
label define racesingd_lbl 32 `"AI/AN (American Indian/Alaskan Native)"', add
label define racesingd_lbl 40 `"Asian Indian"', add
label define racesingd_lbl 41 `"Chinese"', add
label define racesingd_lbl 42 `"Filipino"', add
label define racesingd_lbl 43 `"Japanese"', add
label define racesingd_lbl 44 `"Korean"', add
label define racesingd_lbl 45 `"Asian"', add
label define racesingd_lbl 46 `"Hawaiian"', add
label define racesingd_lbl 47 `"PI (Pacific Islander)"', add
label define racesingd_lbl 48 `"Asian and PI (Pacific Islander)"', add
label define racesingd_lbl 50 `"Other race, non-Hispanic"', add
label define racesingd_lbl 51 `"Other race"', add
label values racesingd racesingd_lbl

label define school_lbl 0 `"N/A"'
label define school_lbl 1 `"No, not in school"', add
label define school_lbl 2 `"Yes, in school"', add
label define school_lbl 9 `"Missing"', add
label values school school_lbl

label define educ_lbl 00 `"N/A or no schooling"'
label define educ_lbl 01 `"Nursery school to grade 4"', add
label define educ_lbl 02 `"Grade 5, 6, 7, or 8"', add
label define educ_lbl 03 `"Grade 9"', add
label define educ_lbl 04 `"Grade 10"', add
label define educ_lbl 05 `"Grade 11"', add
label define educ_lbl 06 `"Grade 12"', add
label define educ_lbl 07 `"1 year of college"', add
label define educ_lbl 08 `"2 years of college"', add
label define educ_lbl 09 `"3 years of college"', add
label define educ_lbl 10 `"4 years of college"', add
label define educ_lbl 11 `"5+ years of college"', add
label values educ educ_lbl

label define educd_lbl 000 `"N/A or no schooling"'
label define educd_lbl 001 `"N/A"', add
label define educd_lbl 002 `"No schooling completed"', add
label define educd_lbl 010 `"Nursery school to grade 4"', add
label define educd_lbl 011 `"Nursery school, preschool"', add
label define educd_lbl 012 `"Kindergarten"', add
label define educd_lbl 013 `"Grade 1, 2, 3, or 4"', add
label define educd_lbl 014 `"Grade 1"', add
label define educd_lbl 015 `"Grade 2"', add
label define educd_lbl 016 `"Grade 3"', add
label define educd_lbl 017 `"Grade 4"', add
label define educd_lbl 020 `"Grade 5, 6, 7, or 8"', add
label define educd_lbl 021 `"Grade 5 or 6"', add
label define educd_lbl 022 `"Grade 5"', add
label define educd_lbl 023 `"Grade 6"', add
label define educd_lbl 024 `"Grade 7 or 8"', add
label define educd_lbl 025 `"Grade 7"', add
label define educd_lbl 026 `"Grade 8"', add
label define educd_lbl 030 `"Grade 9"', add
label define educd_lbl 040 `"Grade 10"', add
label define educd_lbl 050 `"Grade 11"', add
label define educd_lbl 060 `"Grade 12"', add
label define educd_lbl 061 `"12th grade, no diploma"', add
label define educd_lbl 062 `"High school graduate or GED"', add
label define educd_lbl 063 `"Regular high school diploma"', add
label define educd_lbl 064 `"GED or alternative credential"', add
label define educd_lbl 065 `"Some college, but less than 1 year"', add
label define educd_lbl 070 `"1 year of college"', add
label define educd_lbl 071 `"1 or more years of college credit, no degree"', add
label define educd_lbl 080 `"2 years of college"', add
label define educd_lbl 081 `"Associate's degree, type not specified"', add
label define educd_lbl 082 `"Associate's degree, occupational program"', add
label define educd_lbl 083 `"Associate's degree, academic program"', add
label define educd_lbl 090 `"3 years of college"', add
label define educd_lbl 100 `"4 years of college"', add
label define educd_lbl 101 `"Bachelor's degree"', add
label define educd_lbl 110 `"5+ years of college"', add
label define educd_lbl 111 `"6 years of college (6+ in 1960-1970)"', add
label define educd_lbl 112 `"7 years of college"', add
label define educd_lbl 113 `"8+ years of college"', add
label define educd_lbl 114 `"Master's degree"', add
label define educd_lbl 115 `"Professional degree beyond a bachelor's degree"', add
label define educd_lbl 116 `"Doctoral degree"', add
label define educd_lbl 999 `"Missing"', add
label values educd educd_lbl

label define gradeatt_lbl 0 `"N/A"'
label define gradeatt_lbl 1 `"Nursery school/preschool"', add
label define gradeatt_lbl 2 `"Kindergarten"', add
label define gradeatt_lbl 3 `"Grade 1 to grade 4"', add
label define gradeatt_lbl 4 `"Grade 5 to grade 8"', add
label define gradeatt_lbl 5 `"Grade 9 to grade 12"', add
label define gradeatt_lbl 6 `"College undergraduate"', add
label define gradeatt_lbl 7 `"Graduate or professional school"', add
label values gradeatt gradeatt_lbl

label define gradeattd_lbl 00 `"N/A"'
label define gradeattd_lbl 10 `"Nursery school/preschool"', add
label define gradeattd_lbl 20 `"Kindergarten"', add
label define gradeattd_lbl 30 `"Grade 1 to grade 4"', add
label define gradeattd_lbl 31 `"Grade 1"', add
label define gradeattd_lbl 32 `"Grade 2"', add
label define gradeattd_lbl 33 `"Grade 3"', add
label define gradeattd_lbl 34 `"Grade 4"', add
label define gradeattd_lbl 40 `"Grade 5 to grade 8"', add
label define gradeattd_lbl 41 `"Grade 5"', add
label define gradeattd_lbl 42 `"Grade 6"', add
label define gradeattd_lbl 43 `"Grade 7"', add
label define gradeattd_lbl 44 `"Grade 8"', add
label define gradeattd_lbl 50 `"Grade 9 to grade 12"', add
label define gradeattd_lbl 51 `"Grade 9"', add
label define gradeattd_lbl 52 `"Grade 10"', add
label define gradeattd_lbl 53 `"Grade 11"', add
label define gradeattd_lbl 54 `"Grade 12"', add
label define gradeattd_lbl 60 `"College undergraduate"', add
label define gradeattd_lbl 61 `"First year of college"', add
label define gradeattd_lbl 62 `"Second year of college"', add
label define gradeattd_lbl 63 `"Third year of college"', add
label define gradeattd_lbl 64 `"Fourth year of college"', add
label define gradeattd_lbl 70 `"Graduate or professional school"', add
label define gradeattd_lbl 71 `"Fifth year of college"', add
label define gradeattd_lbl 72 `"Sixth year of college"', add
label define gradeattd_lbl 73 `"Seventh year of college"', add
label define gradeattd_lbl 74 `"Eighth year of college"', add
label values gradeattd gradeattd_lbl

label define schltype_lbl 0 `"N/A"'
label define schltype_lbl 1 `"Not enrolled"', add
label define schltype_lbl 2 `"Public school"', add
label define schltype_lbl 3 `"Private school (1960,1990-2000,ACS,PRCS)"', add
label define schltype_lbl 4 `"Church-related (1980)"', add
label define schltype_lbl 5 `"Parochial (1970)"', add
label define schltype_lbl 6 `"Other private, 1980"', add
label define schltype_lbl 7 `"Other private, 1970"', add
label values schltype schltype_lbl

label define empstat_lbl 0 `"N/A"'
label define empstat_lbl 1 `"Employed"', add
label define empstat_lbl 2 `"Unemployed"', add
label define empstat_lbl 3 `"Not in labor force"', add
label values empstat empstat_lbl

label define empstatd_lbl 00 `"N/A"'
label define empstatd_lbl 10 `"At work"', add
label define empstatd_lbl 11 `"At work, public emerg"', add
label define empstatd_lbl 12 `"Has job, not working"', add
label define empstatd_lbl 13 `"Armed forces"', add
label define empstatd_lbl 14 `"Armed forces--at work"', add
label define empstatd_lbl 15 `"Armed forces--not at work but with job"', add
label define empstatd_lbl 20 `"Unemployed"', add
label define empstatd_lbl 21 `"Unemp, exper worker"', add
label define empstatd_lbl 22 `"Unemp, new worker"', add
label define empstatd_lbl 30 `"Not in Labor Force"', add
label define empstatd_lbl 31 `"NILF, housework"', add
label define empstatd_lbl 32 `"NILF, unable to work"', add
label define empstatd_lbl 33 `"NILF, school"', add
label define empstatd_lbl 34 `"NILF, other"', add
label values empstatd empstatd_lbl

label define labforce_lbl 0 `"N/A"'
label define labforce_lbl 1 `"No, not in the labor force"', add
label define labforce_lbl 2 `"Yes, in the labor force"', add
label values labforce labforce_lbl

label define classwkr_lbl 0 `"N/A"'
label define classwkr_lbl 1 `"Self-employed"', add
label define classwkr_lbl 2 `"Works for wages"', add
label values classwkr classwkr_lbl

label define classwkrd_lbl 00 `"N/A"'
label define classwkrd_lbl 10 `"Self-employed"', add
label define classwkrd_lbl 11 `"Employer"', add
label define classwkrd_lbl 12 `"Working on own account"', add
label define classwkrd_lbl 13 `"Self-employed, not incorporated"', add
label define classwkrd_lbl 14 `"Self-employed, incorporated"', add
label define classwkrd_lbl 20 `"Works for wages"', add
label define classwkrd_lbl 21 `"Works on salary (1920)"', add
label define classwkrd_lbl 22 `"Wage/salary, private"', add
label define classwkrd_lbl 23 `"Wage/salary at non-profit"', add
label define classwkrd_lbl 24 `"Wage/salary, government"', add
label define classwkrd_lbl 25 `"Federal govt employee"', add
label define classwkrd_lbl 26 `"Armed forces"', add
label define classwkrd_lbl 27 `"State govt employee"', add
label define classwkrd_lbl 28 `"Local govt employee"', add
label define classwkrd_lbl 29 `"Unpaid family worker"', add
label values classwkrd classwkrd_lbl

label define wkswork2_lbl 0 `"N/A"'
label define wkswork2_lbl 1 `"1-13 weeks"', add
label define wkswork2_lbl 2 `"14-26 weeks"', add
label define wkswork2_lbl 3 `"27-39 weeks"', add
label define wkswork2_lbl 4 `"40-47 weeks"', add
label define wkswork2_lbl 5 `"48-49 weeks"', add
label define wkswork2_lbl 6 `"50-52 weeks"', add
label values wkswork2 wkswork2_lbl

label define uhrswork_lbl 00 `"N/A"'
label define uhrswork_lbl 01 `"1"', add
label define uhrswork_lbl 02 `"2"', add
label define uhrswork_lbl 03 `"3"', add
label define uhrswork_lbl 04 `"4"', add
label define uhrswork_lbl 05 `"5"', add
label define uhrswork_lbl 06 `"6"', add
label define uhrswork_lbl 07 `"7"', add
label define uhrswork_lbl 08 `"8"', add
label define uhrswork_lbl 09 `"9"', add
label define uhrswork_lbl 10 `"10"', add
label define uhrswork_lbl 11 `"11"', add
label define uhrswork_lbl 12 `"12"', add
label define uhrswork_lbl 13 `"13"', add
label define uhrswork_lbl 14 `"14"', add
label define uhrswork_lbl 15 `"15"', add
label define uhrswork_lbl 16 `"16"', add
label define uhrswork_lbl 17 `"17"', add
label define uhrswork_lbl 18 `"18"', add
label define uhrswork_lbl 19 `"19"', add
label define uhrswork_lbl 20 `"20"', add
label define uhrswork_lbl 21 `"21"', add
label define uhrswork_lbl 22 `"22"', add
label define uhrswork_lbl 23 `"23"', add
label define uhrswork_lbl 24 `"24"', add
label define uhrswork_lbl 25 `"25"', add
label define uhrswork_lbl 26 `"26"', add
label define uhrswork_lbl 27 `"27"', add
label define uhrswork_lbl 28 `"28"', add
label define uhrswork_lbl 29 `"29"', add
label define uhrswork_lbl 30 `"30"', add
label define uhrswork_lbl 31 `"31"', add
label define uhrswork_lbl 32 `"32"', add
label define uhrswork_lbl 33 `"33"', add
label define uhrswork_lbl 34 `"34"', add
label define uhrswork_lbl 35 `"35"', add
label define uhrswork_lbl 36 `"36"', add
label define uhrswork_lbl 37 `"37"', add
label define uhrswork_lbl 38 `"38"', add
label define uhrswork_lbl 39 `"39"', add
label define uhrswork_lbl 40 `"40"', add
label define uhrswork_lbl 41 `"41"', add
label define uhrswork_lbl 42 `"42"', add
label define uhrswork_lbl 43 `"43"', add
label define uhrswork_lbl 44 `"44"', add
label define uhrswork_lbl 45 `"45"', add
label define uhrswork_lbl 46 `"46"', add
label define uhrswork_lbl 47 `"47"', add
label define uhrswork_lbl 48 `"48"', add
label define uhrswork_lbl 49 `"49"', add
label define uhrswork_lbl 50 `"50"', add
label define uhrswork_lbl 51 `"51"', add
label define uhrswork_lbl 52 `"52"', add
label define uhrswork_lbl 53 `"53"', add
label define uhrswork_lbl 54 `"54"', add
label define uhrswork_lbl 55 `"55"', add
label define uhrswork_lbl 56 `"56"', add
label define uhrswork_lbl 57 `"57"', add
label define uhrswork_lbl 58 `"58"', add
label define uhrswork_lbl 59 `"59"', add
label define uhrswork_lbl 60 `"60"', add
label define uhrswork_lbl 61 `"61"', add
label define uhrswork_lbl 62 `"62"', add
label define uhrswork_lbl 63 `"63"', add
label define uhrswork_lbl 64 `"64"', add
label define uhrswork_lbl 65 `"65"', add
label define uhrswork_lbl 66 `"66"', add
label define uhrswork_lbl 67 `"67"', add
label define uhrswork_lbl 68 `"68"', add
label define uhrswork_lbl 69 `"69"', add
label define uhrswork_lbl 70 `"70"', add
label define uhrswork_lbl 71 `"71"', add
label define uhrswork_lbl 72 `"72"', add
label define uhrswork_lbl 73 `"73"', add
label define uhrswork_lbl 74 `"74"', add
label define uhrswork_lbl 75 `"75"', add
label define uhrswork_lbl 76 `"76"', add
label define uhrswork_lbl 77 `"77"', add
label define uhrswork_lbl 78 `"78"', add
label define uhrswork_lbl 79 `"79"', add
label define uhrswork_lbl 80 `"80"', add
label define uhrswork_lbl 81 `"81"', add
label define uhrswork_lbl 82 `"82"', add
label define uhrswork_lbl 83 `"83"', add
label define uhrswork_lbl 84 `"84"', add
label define uhrswork_lbl 85 `"85"', add
label define uhrswork_lbl 86 `"86"', add
label define uhrswork_lbl 87 `"87"', add
label define uhrswork_lbl 88 `"88"', add
label define uhrswork_lbl 89 `"89"', add
label define uhrswork_lbl 90 `"90"', add
label define uhrswork_lbl 91 `"91"', add
label define uhrswork_lbl 92 `"92"', add
label define uhrswork_lbl 93 `"93"', add
label define uhrswork_lbl 94 `"94"', add
label define uhrswork_lbl 95 `"95"', add
label define uhrswork_lbl 96 `"96"', add
label define uhrswork_lbl 97 `"97"', add
label define uhrswork_lbl 98 `"98"', add
label define uhrswork_lbl 99 `"99 (Topcode)"', add
label values uhrswork uhrswork_lbl

label define wrklstwk_lbl 0 `"N/A"'
label define wrklstwk_lbl 1 `"Did not work"', add
label define wrklstwk_lbl 2 `"Worked"', add
label define wrklstwk_lbl 3 `"Not Reported"', add
label values wrklstwk wrklstwk_lbl

label define absent_lbl 0 `"N/A"'
label define absent_lbl 1 `"No"', add
label define absent_lbl 2 `"Yes, laid off"', add
label define absent_lbl 3 `"Yes, other reason (vacation, illness, labor dispute, etc.)"', add
label define absent_lbl 4 `"Not reported"', add
label values absent absent_lbl

label define looking_lbl 0 `"N/A"'
label define looking_lbl 1 `"No, did not look for work"', add
label define looking_lbl 2 `"Yes, looked for work"', add
label define looking_lbl 3 `"Not reported"', add
label values looking looking_lbl

label define availble_lbl 0 `"N/A"'
label define availble_lbl 1 `"No, already has job"', add
label define availble_lbl 2 `"No, temporarily ill"', add
label define availble_lbl 3 `"No, other reason(s)"', add
label define availble_lbl 4 `"Yes, available for work"', add
label define availble_lbl 5 `"Not reported"', add
label values availble availble_lbl

label define wrkrecal_lbl 0 `"N/A"'
label define wrkrecal_lbl 1 `"No"', add
label define wrkrecal_lbl 2 `"Yes"', add
label define wrkrecal_lbl 3 `"Not reported"', add
label values wrkrecal wrkrecal_lbl

label define workedyr_lbl 0 `"N/A"'
label define workedyr_lbl 1 `"No"', add
label define workedyr_lbl 2 `"No, but worked 1-5 years ago (ACS only)"', add
label define workedyr_lbl 3 `"Yes"', add
label values workedyr workedyr_lbl

label define migrate1_lbl 0 `"N/A"'
label define migrate1_lbl 1 `"Same house"', add
label define migrate1_lbl 2 `"Moved within state"', add
label define migrate1_lbl 3 `"Moved between states"', add
label define migrate1_lbl 4 `"Abroad one year ago"', add
label define migrate1_lbl 9 `"Unknown"', add
label values migrate1 migrate1_lbl

label define migrate1d_lbl 00 `"N/A"'
label define migrate1d_lbl 10 `"Same house"', add
label define migrate1d_lbl 20 `"Same state (migration status within state unknown)"', add
label define migrate1d_lbl 21 `"Different house, moved within county"', add
label define migrate1d_lbl 22 `"Different house, moved within state, between counties"', add
label define migrate1d_lbl 23 `"Different house, moved within state, within PUMA"', add
label define migrate1d_lbl 24 `"Different house, moved within state, between PUMAs"', add
label define migrate1d_lbl 25 `"Different house, unknown within state"', add
label define migrate1d_lbl 30 `"Different state (general)"', add
label define migrate1d_lbl 31 `"Moved between contigious states"', add
label define migrate1d_lbl 32 `"Moved between non-contiguous states"', add
label define migrate1d_lbl 40 `"Abroad one year ago"', add
label define migrate1d_lbl 90 `"Unknown"', add
label values migrate1d migrate1d_lbl

label define migplac1_lbl 000 `"N/A"'
label define migplac1_lbl 001 `"Alabama"', add
label define migplac1_lbl 002 `"Alaska"', add
label define migplac1_lbl 004 `"Arizona"', add
label define migplac1_lbl 005 `"Arkansas"', add
label define migplac1_lbl 006 `"California"', add
label define migplac1_lbl 008 `"Colorado"', add
label define migplac1_lbl 009 `"Connecticut"', add
label define migplac1_lbl 010 `"Delaware"', add
label define migplac1_lbl 011 `"District of Columbia"', add
label define migplac1_lbl 012 `"Florida"', add
label define migplac1_lbl 013 `"Georgia"', add
label define migplac1_lbl 015 `"Hawaii"', add
label define migplac1_lbl 016 `"Idaho"', add
label define migplac1_lbl 017 `"Illinois"', add
label define migplac1_lbl 018 `"Indiana"', add
label define migplac1_lbl 019 `"Iowa"', add
label define migplac1_lbl 020 `"Kansas"', add
label define migplac1_lbl 021 `"Kentucky"', add
label define migplac1_lbl 022 `"Louisiana"', add
label define migplac1_lbl 023 `"Maine"', add
label define migplac1_lbl 024 `"Maryland"', add
label define migplac1_lbl 025 `"Massachusetts"', add
label define migplac1_lbl 026 `"Michigan"', add
label define migplac1_lbl 027 `"Minnesota"', add
label define migplac1_lbl 028 `"Mississippi"', add
label define migplac1_lbl 029 `"Missouri"', add
label define migplac1_lbl 030 `"Montana"', add
label define migplac1_lbl 031 `"Nebraska"', add
label define migplac1_lbl 032 `"Nevada"', add
label define migplac1_lbl 033 `"New Hampshire"', add
label define migplac1_lbl 034 `"New Jersey"', add
label define migplac1_lbl 035 `"New Mexico"', add
label define migplac1_lbl 036 `"New York"', add
label define migplac1_lbl 037 `"North Carolina"', add
label define migplac1_lbl 038 `"North Dakota"', add
label define migplac1_lbl 039 `"Ohio"', add
label define migplac1_lbl 040 `"Oklahoma"', add
label define migplac1_lbl 041 `"Oregon"', add
label define migplac1_lbl 042 `"Pennsylvania"', add
label define migplac1_lbl 044 `"Rhode Island"', add
label define migplac1_lbl 045 `"South Carolina"', add
label define migplac1_lbl 046 `"South Dakota"', add
label define migplac1_lbl 047 `"Tennessee"', add
label define migplac1_lbl 048 `"Texas"', add
label define migplac1_lbl 049 `"Utah"', add
label define migplac1_lbl 050 `"Vermont"', add
label define migplac1_lbl 051 `"Virginia"', add
label define migplac1_lbl 053 `"Washington"', add
label define migplac1_lbl 054 `"West Virginia"', add
label define migplac1_lbl 055 `"Wisconsin"', add
label define migplac1_lbl 056 `"Wyoming"', add
label define migplac1_lbl 099 `"United States, ns"', add
label define migplac1_lbl 100 `"Samoa, 1950"', add
label define migplac1_lbl 105 `"Guam"', add
label define migplac1_lbl 110 `"Puerto Rico"', add
label define migplac1_lbl 115 `"Virgin Islands"', add
label define migplac1_lbl 120 `"Other US Possessions"', add
label define migplac1_lbl 150 `"Canada"', add
label define migplac1_lbl 151 `"English Canada"', add
label define migplac1_lbl 152 `"French Canada"', add
label define migplac1_lbl 160 `"Atlantic Islands"', add
label define migplac1_lbl 200 `"Mexico"', add
label define migplac1_lbl 211 `"Belize/British Honduras"', add
label define migplac1_lbl 212 `"Costa Rica"', add
label define migplac1_lbl 213 `"El Salvador"', add
label define migplac1_lbl 214 `"Guatemala"', add
label define migplac1_lbl 215 `"Honduras"', add
label define migplac1_lbl 216 `"Nicaragua"', add
label define migplac1_lbl 217 `"Panama"', add
label define migplac1_lbl 218 `"Canal Zone"', add
label define migplac1_lbl 219 `"Central America, nec"', add
label define migplac1_lbl 250 `"Cuba"', add
label define migplac1_lbl 261 `"Dominican Republic"', add
label define migplac1_lbl 262 `"Haiti"', add
label define migplac1_lbl 263 `"Jamaica"', add
label define migplac1_lbl 264 `"British West Indies"', add
label define migplac1_lbl 267 `"Other West Indies"', add
label define migplac1_lbl 290 `"Other Caribbean and North America"', add
label define migplac1_lbl 305 `"Argentina"', add
label define migplac1_lbl 310 `"Bolivia"', add
label define migplac1_lbl 315 `"Brazil"', add
label define migplac1_lbl 320 `"Chile"', add
label define migplac1_lbl 325 `"Colombia"', add
label define migplac1_lbl 330 `"Ecuador"', add
label define migplac1_lbl 345 `"Paraguay"', add
label define migplac1_lbl 350 `"Peru"', add
label define migplac1_lbl 360 `"Uruguay"', add
label define migplac1_lbl 365 `"Venezuela"', add
label define migplac1_lbl 390 `"South America, nec"', add
label define migplac1_lbl 400 `"Denmark"', add
label define migplac1_lbl 401 `"Finland"', add
label define migplac1_lbl 402 `"Iceland"', add
label define migplac1_lbl 404 `"Norway"', add
label define migplac1_lbl 405 `"Sweden"', add
label define migplac1_lbl 410 `"England"', add
label define migplac1_lbl 411 `"Scotland"', add
label define migplac1_lbl 412 `"Wales"', add
label define migplac1_lbl 413 `"United Kingdom (excluding England: 2005ACS)"', add
label define migplac1_lbl 414 `"Ireland"', add
label define migplac1_lbl 415 `"Northern Ireland"', add
label define migplac1_lbl 419 `"Other Northern Europe"', add
label define migplac1_lbl 420 `"Belgium"', add
label define migplac1_lbl 421 `"France"', add
label define migplac1_lbl 422 `"Luxembourg"', add
label define migplac1_lbl 425 `"Netherlands"', add
label define migplac1_lbl 426 `"Switzerland"', add
label define migplac1_lbl 429 `"Other Western Europe"', add
label define migplac1_lbl 430 `"Albania"', add
label define migplac1_lbl 433 `"Greece"', add
label define migplac1_lbl 434 `"Dodecanese Islands"', add
label define migplac1_lbl 435 `"Italy"', add
label define migplac1_lbl 436 `"Portugal"', add
label define migplac1_lbl 437 `"Azores"', add
label define migplac1_lbl 438 `"Spain"', add
label define migplac1_lbl 450 `"Austria"', add
label define migplac1_lbl 451 `"Bulgaria"', add
label define migplac1_lbl 452 `"Czechoslovakia"', add
label define migplac1_lbl 453 `"Germany"', add
label define migplac1_lbl 454 `"Hungary"', add
label define migplac1_lbl 455 `"Poland"', add
label define migplac1_lbl 456 `"Romania"', add
label define migplac1_lbl 457 `"Yugoslavia"', add
label define migplac1_lbl 458 `"Bosnia and Herzegovinia"', add
label define migplac1_lbl 459 `"Other Eastern Europe"', add
label define migplac1_lbl 460 `"Estonia"', add
label define migplac1_lbl 461 `"Latvia"', add
label define migplac1_lbl 462 `"Lithuania"', add
label define migplac1_lbl 463 `"Other Northern or Eastern Europe"', add
label define migplac1_lbl 465 `"USSR"', add
label define migplac1_lbl 498 `"Ukraine"', add
label define migplac1_lbl 499 `"Europe, ns"', add
label define migplac1_lbl 500 `"China"', add
label define migplac1_lbl 501 `"Japan"', add
label define migplac1_lbl 502 `"Korea"', add
label define migplac1_lbl 503 `"Taiwan"', add
label define migplac1_lbl 515 `"Philippines"', add
label define migplac1_lbl 517 `"Thailand"', add
label define migplac1_lbl 518 `"Vietnam"', add
label define migplac1_lbl 519 `"Other South East Asia"', add
label define migplac1_lbl 520 `"Nepal"', add
label define migplac1_lbl 521 `"India"', add
label define migplac1_lbl 522 `"Iran"', add
label define migplac1_lbl 523 `"Iraq"', add
label define migplac1_lbl 525 `"Pakistan"', add
label define migplac1_lbl 534 `"Israel/Palestine"', add
label define migplac1_lbl 535 `"Jordan"', add
label define migplac1_lbl 537 `"Lebanon"', add
label define migplac1_lbl 539 `"United Arab Emirates"', add
label define migplac1_lbl 540 `"Saudi Arabia"', add
label define migplac1_lbl 541 `"Syria"', add
label define migplac1_lbl 542 `"Turkey"', add
label define migplac1_lbl 543 `"Afghanistan"', add
label define migplac1_lbl 551 `"Other Western Asia"', add
label define migplac1_lbl 599 `"Asia, nec"', add
label define migplac1_lbl 600 `"Africa"', add
label define migplac1_lbl 610 `"Northern Africa"', add
label define migplac1_lbl 611 `"Egypt"', add
label define migplac1_lbl 619 `"Nigeria"', add
label define migplac1_lbl 620 `"Western Africa"', add
label define migplac1_lbl 621 `"Eastern Africa"', add
label define migplac1_lbl 622 `"Ethiopia"', add
label define migplac1_lbl 623 `"Kenya"', add
label define migplac1_lbl 694 `"South Africa (Union of)"', add
label define migplac1_lbl 699 `"Africa, nec"', add
label define migplac1_lbl 701 `"Australia"', add
label define migplac1_lbl 702 `"New Zealand"', add
label define migplac1_lbl 710 `"Pacific Islands (Australia and New Zealand Subregions, not specified, Oceania and at Sea: ACS)"', add
label define migplac1_lbl 900 `"Abroad (unknown) or at sea"', add
label define migplac1_lbl 997 `"Unknown value"', add
label define migplac1_lbl 999 `"Missing"', add
label values migplac1 migplac1_lbl

label define vetstat_lbl 0 `"N/A"'
label define vetstat_lbl 1 `"Not a veteran"', add
label define vetstat_lbl 2 `"Veteran"', add
label define vetstat_lbl 9 `"Unknown"', add
label values vetstat vetstat_lbl

label define vetstatd_lbl 00 `"N/A"'
label define vetstatd_lbl 10 `"Not a veteran"', add
label define vetstatd_lbl 11 `"No military service"', add
label define vetstatd_lbl 12 `"Currently on active duty"', add
label define vetstatd_lbl 13 `"Training for Reserves or National Guard only"', add
label define vetstatd_lbl 20 `"Veteran"', add
label define vetstatd_lbl 21 `"Veteran, on active duty prior to past year"', add
label define vetstatd_lbl 22 `"Veteran, on active duty in past year"', add
label define vetstatd_lbl 23 `"Veteran, on active duty in Reserves or National Guard only"', add
label define vetstatd_lbl 99 `"Unknown"', add
label values vetstatd vetstatd_lbl

label define pwstate2_lbl 00 `"N/A"'
label define pwstate2_lbl 01 `"Alabama"', add
label define pwstate2_lbl 02 `"Alaska"', add
label define pwstate2_lbl 04 `"Arizona"', add
label define pwstate2_lbl 05 `"Arkansas"', add
label define pwstate2_lbl 06 `"California"', add
label define pwstate2_lbl 08 `"Colorado"', add
label define pwstate2_lbl 09 `"Connecticut"', add
label define pwstate2_lbl 10 `"Delaware"', add
label define pwstate2_lbl 11 `"District of Columbia"', add
label define pwstate2_lbl 12 `"Florida"', add
label define pwstate2_lbl 13 `"Georgia"', add
label define pwstate2_lbl 15 `"Hawaii"', add
label define pwstate2_lbl 16 `"Idaho"', add
label define pwstate2_lbl 17 `"Illinois"', add
label define pwstate2_lbl 18 `"Indiana"', add
label define pwstate2_lbl 19 `"Iowa"', add
label define pwstate2_lbl 20 `"Kansas"', add
label define pwstate2_lbl 21 `"Kentucky"', add
label define pwstate2_lbl 22 `"Louisiana"', add
label define pwstate2_lbl 23 `"Maine"', add
label define pwstate2_lbl 24 `"Maryland"', add
label define pwstate2_lbl 25 `"Massachusetts"', add
label define pwstate2_lbl 26 `"Michigan"', add
label define pwstate2_lbl 27 `"Minnesota"', add
label define pwstate2_lbl 28 `"Mississippi"', add
label define pwstate2_lbl 29 `"Missouri"', add
label define pwstate2_lbl 30 `"Montana"', add
label define pwstate2_lbl 31 `"Nebraska"', add
label define pwstate2_lbl 32 `"Nevada"', add
label define pwstate2_lbl 33 `"New Hampshire"', add
label define pwstate2_lbl 34 `"New Jersey"', add
label define pwstate2_lbl 35 `"New Mexico"', add
label define pwstate2_lbl 36 `"New York"', add
label define pwstate2_lbl 37 `"North Carolina"', add
label define pwstate2_lbl 38 `"North Dakota"', add
label define pwstate2_lbl 39 `"Ohio"', add
label define pwstate2_lbl 40 `"Oklahoma"', add
label define pwstate2_lbl 41 `"Oregon"', add
label define pwstate2_lbl 42 `"Pennsylvania"', add
label define pwstate2_lbl 44 `"Rhode Island"', add
label define pwstate2_lbl 45 `"South Carolina"', add
label define pwstate2_lbl 46 `"South Dakota"', add
label define pwstate2_lbl 47 `"Tennessee"', add
label define pwstate2_lbl 48 `"Texas"', add
label define pwstate2_lbl 49 `"Utah"', add
label define pwstate2_lbl 50 `"Vermont"', add
label define pwstate2_lbl 51 `"Virginia"', add
label define pwstate2_lbl 53 `"Washington"', add
label define pwstate2_lbl 54 `"West Virginia"', add
label define pwstate2_lbl 55 `"Wisconsin"', add
label define pwstate2_lbl 56 `"Wyoming"', add
label define pwstate2_lbl 61 `"Maine-New Hamp-Vermont"', add
label define pwstate2_lbl 62 `"Massachusetts-Rhode Island"', add
label define pwstate2_lbl 63 `"Minn-Iowa-Missouri-Kansas-S Dakota-N Dakota"', add
label define pwstate2_lbl 64 `"Mayrland-Delaware"', add
label define pwstate2_lbl 65 `"Montana-Idaho-Wyoming"', add
label define pwstate2_lbl 66 `"Utah-Nevada"', add
label define pwstate2_lbl 67 `"Arizona-New Mexico"', add
label define pwstate2_lbl 68 `"Alaska-Hawaii"', add
label define pwstate2_lbl 72 `"Puerto Rico"', add
label define pwstate2_lbl 73 `"U.S. outlying area"', add
label define pwstate2_lbl 74 `"United States (1980 Puerto Rico samples)"', add
label define pwstate2_lbl 80 `"Abroad"', add
label define pwstate2_lbl 81 `"Europe"', add
label define pwstate2_lbl 82 `"Eastern Asia"', add
label define pwstate2_lbl 83 `"South Central, South East, and Western Asia"', add
label define pwstate2_lbl 84 `"Mexico"', add
label define pwstate2_lbl 85 `"Other Americas"', add
label define pwstate2_lbl 86 `"Other, nec"', add
label define pwstate2_lbl 87 `"Iraq"', add
label define pwstate2_lbl 88 `"Canada"', add
label define pwstate2_lbl 90 `"Confidential"', add
label define pwstate2_lbl 99 `"Not reported"', add
label values pwstate2 pwstate2_lbl

label define qage_lbl 0 `"Entered as written"'
label define qage_lbl 1 `"Failed edit"', add
label define qage_lbl 2 `"Illegible"', add
label define qage_lbl 3 `"Missing"', add
label define qage_lbl 4 `"Allocated"', add
label define qage_lbl 5 `"Illegible"', add
label define qage_lbl 6 `"Missing"', add
label define qage_lbl 7 `"Original entry illegible"', add
label define qage_lbl 8 `"Original entry missing or failed edit"', add
label values qage qage_lbl

label define qmarst_lbl 0 `"Entered as written"'
label define qmarst_lbl 1 `"Failed edit"', add
label define qmarst_lbl 2 `"Illegible"', add
label define qmarst_lbl 3 `"Missing"', add
label define qmarst_lbl 4 `"Allocated"', add
label define qmarst_lbl 5 `"Illegible"', add
label define qmarst_lbl 6 `"Missing"', add
label define qmarst_lbl 7 `"Original entry illegible"', add
label define qmarst_lbl 8 `"Original entry missing or failed edit"', add
label values qmarst qmarst_lbl

label define qrelate_lbl 0 `"Not edited"'
label define qrelate_lbl 1 `"Logical edit"', add
label define qrelate_lbl 2 `"Logical edit"', add
label define qrelate_lbl 3 `"Logical edit"', add
label define qrelate_lbl 4 `"Allocated"', add
label define qrelate_lbl 5 `"Allocated"', add
label define qrelate_lbl 6 `"Allocated"', add
label define qrelate_lbl 7 `"Cold deck allocation"', add
label define qrelate_lbl 8 `"Cold deck allocation"', add
label define qrelate_lbl 9 `"Same sex spouse changed to unmarried partner"', add
label values qrelate qrelate_lbl

label define qsex_lbl 0 `"Entered as written"'
label define qsex_lbl 1 `"Failed edit"', add
label define qsex_lbl 2 `"Illegible"', add
label define qsex_lbl 3 `"Missing"', add
label define qsex_lbl 4 `"Allocated"', add
label define qsex_lbl 5 `"Illegible"', add
label define qsex_lbl 6 `"Missing"', add
label define qsex_lbl 7 `"Original entry illegible"', add
label define qsex_lbl 8 `"Original entry missing or failed edit"', add
label values qsex qsex_lbl

label define qcitizen_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define qcitizen_lbl 1 `"Failed edit"', add
label define qcitizen_lbl 2 `"Illegible"', add
label define qcitizen_lbl 3 `"Missing"', add
label define qcitizen_lbl 4 `"Allocated"', add
label define qcitizen_lbl 5 `"Illegible"', add
label define qcitizen_lbl 6 `"Missing"', add
label define qcitizen_lbl 7 `"Original entry illegible"', add
label define qcitizen_lbl 8 `"Original entry missing or failed edit"', add
label values qcitizen qcitizen_lbl

label define qhispan_lbl 0 `"Not allocated"'
label define qhispan_lbl 1 `"Allocated from information for this person or from relative, this household"', add
label define qhispan_lbl 2 `"Allocated from nonrelative, this household"', add
label define qhispan_lbl 4 `"Allocated"', add
label values qhispan qhispan_lbl

label define qlanguag_lbl 0 `"Not allocated or N/A"'
label define qlanguag_lbl 3 `"Consistency edit"', add
label define qlanguag_lbl 4 `"Allocated, pre-edit"', add
label values qlanguag qlanguag_lbl

label define qrace_lbl 0 `"Entered as written"'
label define qrace_lbl 1 `"Failed edit"', add
label define qrace_lbl 2 `"Illegible"', add
label define qrace_lbl 3 `"Missing"', add
label define qrace_lbl 4 `"Allocated"', add
label define qrace_lbl 5 `"Allocated, hot deck"', add
label define qrace_lbl 6 `"Missing"', add
label define qrace_lbl 7 `"Original entry illegible"', add
label define qrace_lbl 8 `"Original entry missing or failed edit"', add
label values qrace qrace_lbl

label define qspeaken_lbl 0 `"Not allocated"'
label define qspeaken_lbl 3 `"Consistency edit"', add
label define qspeaken_lbl 4 `"Allocated, hot deck"', add
label values qspeaken qspeaken_lbl

label define qyrimm_lbl 0 `"Fields OK as written"'
label define qyrimm_lbl 1 `"Altered by coders"', add
label define qyrimm_lbl 2 `"Logical hand edit by Census Office or by census sample research staff"', add
label define qyrimm_lbl 3 `"Consistency edit"', add
label define qyrimm_lbl 4 `"Allocated, hot deck"', add
label values qyrimm qyrimm_lbl

label define qeduc_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define qeduc_lbl 1 `"Failed edit"', add
label define qeduc_lbl 2 `"Failed edit/illegible"', add
label define qeduc_lbl 3 `"Failed edit/missing"', add
label define qeduc_lbl 4 `"Consistency edit"', add
label define qeduc_lbl 5 `"Consistency edit/allocated, hot deck"', add
label define qeduc_lbl 6 `"Failed edit/missing"', add
label define qeduc_lbl 7 `"Illegible"', add
label define qeduc_lbl 8 `"Illegible/missing or failed edit"', add
label values qeduc qeduc_lbl

label define qgradeat_lbl 0 `"Not allocated"'
label define qgradeat_lbl 4 `"Allocated"', add
label define qgradeat_lbl 1 `"Failed edit"', add
label define qgradeat_lbl 2 `"Failed edit/illegible"', add
label define qgradeat_lbl 3 `"Failed edit/missing"', add
label define qgradeat_lbl 5 `"Consistency edit/allocated, hot deck"', add
label define qgradeat_lbl 6 `"Failed edit/missing"', add
label define qgradeat_lbl 7 `"Illegible"', add
label define qgradeat_lbl 8 `"Illegible/missing or failed edit"', add
label values qgradeat qgradeat_lbl

label define qschool_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define qschool_lbl 1 `"Failed edit"', add
label define qschool_lbl 2 `"Illegible"', add
label define qschool_lbl 3 `"Missing"', add
label define qschool_lbl 4 `"Allocated"', add
label define qschool_lbl 5 `"Illegible"', add
label define qschool_lbl 6 `"Missing"', add
label define qschool_lbl 7 `"Original entry illegible"', add
label define qschool_lbl 8 `"Original entry missing or failed edit"', add
label values qschool qschool_lbl

label define qclasswk_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define qclasswk_lbl 1 `"Failed edit"', add
label define qclasswk_lbl 2 `"Illegible"', add
label define qclasswk_lbl 3 `"Missing"', add
label define qclasswk_lbl 4 `"Allocated"', add
label define qclasswk_lbl 5 `"Illegible"', add
label define qclasswk_lbl 6 `"Missing"', add
label define qclasswk_lbl 7 `"Original entry illegible"', add
label define qclasswk_lbl 8 `"Original entry missing or failed edit"', add
label values qclasswk qclasswk_lbl

label define qempstat_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define qempstat_lbl 1 `"Failed edit"', add
label define qempstat_lbl 2 `"Illegible"', add
label define qempstat_lbl 3 `"Missing"', add
label define qempstat_lbl 4 `"Allocated"', add
label define qempstat_lbl 5 `"Illegible"', add
label define qempstat_lbl 6 `"Missing"', add
label define qempstat_lbl 7 `"Original entry illegible"', add
label define qempstat_lbl 8 `"Original entry missing or failed edit"', add
label values qempstat qempstat_lbl

label define qind_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define qind_lbl 1 `"Failed edit"', add
label define qind_lbl 2 `"Illegible"', add
label define qind_lbl 3 `"Missing"', add
label define qind_lbl 4 `"Allocated"', add
label define qind_lbl 5 `"Illegible"', add
label define qind_lbl 6 `"Missing"', add
label define qind_lbl 7 `"Original entry illegible"', add
label define qind_lbl 8 `"Original entry missing or failed edit"', add
label values qind qind_lbl

label define qocc_lbl 0 `"Entered as written"'
label define qocc_lbl 1 `"Failed edit"', add
label define qocc_lbl 2 `"Illegible"', add
label define qocc_lbl 3 `"Missing"', add
label define qocc_lbl 4 `"Allocated"', add
label define qocc_lbl 5 `"Illegible"', add
label define qocc_lbl 6 `"Missing"', add
label define qocc_lbl 7 `"Original entry illegible"', add
label define qocc_lbl 8 `"Original entry missing or failed edit"', add
label values qocc qocc_lbl

label define quhrswor_lbl 0 `"Not allocated"'
label define quhrswor_lbl 3 `"Allocated, direct"', add
label define quhrswor_lbl 4 `"Allocated"', add
label define quhrswor_lbl 5 `"Allocated, indirect"', add
label define quhrswor_lbl 9 `"Allocated, direct/indirect"', add
label values quhrswor quhrswor_lbl

label define qwkswork_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define qwkswork_lbl 1 `"Failed edit"', add
label define qwkswork_lbl 2 `"Illegible"', add
label define qwkswork_lbl 3 `"Missing"', add
label define qwkswork_lbl 4 `"Allocated, pre-edit"', add
label define qwkswork_lbl 5 `"Allocated, hot deck"', add
label define qwkswork_lbl 6 `"Missing"', add
label define qwkswork_lbl 7 `"Original entry illegible"', add
label define qwkswork_lbl 8 `"Original entry missing or failed edit"', add
label values qwkswork qwkswork_lbl

label define qworkedy_lbl 0 `"Not allocated"'
label define qworkedy_lbl 3 `"Allocated, consistency edit"', add
label define qworkedy_lbl 4 `"Allocated"', add
label values qworkedy qworkedy_lbl

label define qincearn_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define qincearn_lbl 1 `"Failed edit"', add
label define qincearn_lbl 2 `"Entry illegible"', add
label define qincearn_lbl 3 `"Missing"', add
label define qincearn_lbl 4 `"Allocated"', add
label define qincearn_lbl 5 `"Illegible"', add
label define qincearn_lbl 6 `"Missing"', add
label define qincearn_lbl 7 `"Illegible"', add
label define qincearn_lbl 8 `"Missing or failed edit"', add
label values qincearn qincearn_lbl

label define qincbus_lbl 0 `"Not allocated"'
label define qincbus_lbl 1 `"Allocated, pre-edit"', add
label define qincbus_lbl 3 `"Allocated, consistency edit"', add
label define qincbus_lbl 4 `"Allocated"', add
label values qincbus qincbus_lbl

label define qincinvs_lbl 0 `"Not allocated or N/A"'
label define qincinvs_lbl 1 `"Allocated, pre-edit"', add
label define qincinvs_lbl 3 `"Allocated, consistency edit"', add
label define qincinvs_lbl 4 `"Allocated"', add
label values qincinvs qincinvs_lbl

label define qincothe_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define qincothe_lbl 1 `"Failed edit"', add
label define qincothe_lbl 2 `"Illegible"', add
label define qincothe_lbl 3 `"Missing"', add
label define qincothe_lbl 4 `"Allocated"', add
label define qincothe_lbl 5 `"Illegible"', add
label define qincothe_lbl 6 `"Missing"', add
label define qincothe_lbl 7 `"Original entry illegible"', add
label define qincothe_lbl 8 `"Original entry missing or failed edit"', add
label values qincothe qincothe_lbl

label define qincreti_lbl 0 `"Not allocated"'
label define qincreti_lbl 3 `"Not allocated, derived"', add
label define qincreti_lbl 4 `"Allocated"', add
label values qincreti qincreti_lbl

label define qincss_lbl 0 `"Not allocated"'
label define qincss_lbl 1 `"Allocated, pre-edit"', add
label define qincss_lbl 3 `"Allocated, consistency edit"', add
label define qincss_lbl 4 `"Allocated"', add
label values qincss qincss_lbl

label define qincsupp_lbl 0 `"Not allocated"'
label define qincsupp_lbl 4 `"Allocated"', add
label values qincsupp qincsupp_lbl

label define qinctot_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define qinctot_lbl 1 `"Failed edit"', add
label define qinctot_lbl 2 `"Illegible"', add
label define qinctot_lbl 3 `"Missing"', add
label define qinctot_lbl 4 `"Allocated"', add
label define qinctot_lbl 5 `"Illegible"', add
label define qinctot_lbl 6 `"Missing"', add
label define qinctot_lbl 7 `"Original entry illegible"', add
label define qinctot_lbl 8 `"Original entry missing or failed edit"', add
label values qinctot qinctot_lbl

label define qftotinc_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define qftotinc_lbl 1 `"Failed edit"', add
label define qftotinc_lbl 2 `"Entry illegible"', add
label define qftotinc_lbl 3 `"Missing"', add
label define qftotinc_lbl 4 `"Allocated"', add
label define qftotinc_lbl 5 `"Illegible"', add
label define qftotinc_lbl 6 `"Missing"', add
label define qftotinc_lbl 7 `"Illegible"', add
label define qftotinc_lbl 8 `"Missing or failed edit"', add
label values qftotinc qftotinc_lbl

label define qincwage_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define qincwage_lbl 1 `"Failed edit"', add
label define qincwage_lbl 2 `"Illegible"', add
label define qincwage_lbl 3 `"Missing"', add
label define qincwage_lbl 4 `"Allocated"', add
label define qincwage_lbl 5 `"Illegible"', add
label define qincwage_lbl 6 `"Missing"', add
label define qincwage_lbl 7 `"Original entry illegible"', add
label define qincwage_lbl 8 `"Original entry missing or failed edit"', add
label values qincwage qincwage_lbl

label define qincwelf_lbl 0 `"Not allocated"'
label define qincwelf_lbl 1 `"Allocated, pre-edit"', add
label define qincwelf_lbl 3 `"Allocated, consistency edit"', add
label define qincwelf_lbl 4 `"Allocated"', add
label values qincwelf qincwelf_lbl

label define qmigplc1_lbl 0 `"Not allocated"'
label define qmigplc1_lbl 1 `"Failed edit"', add
label define qmigplc1_lbl 2 `"Failed edit/illegible"', add
label define qmigplc1_lbl 3 `"Failed edit/missing"', add
label define qmigplc1_lbl 4 `"Failed edit"', add
label define qmigplc1_lbl 5 `"Illegible"', add
label define qmigplc1_lbl 6 `"Failed edit/missing"', add
label define qmigplc1_lbl 7 `"Illegible"', add
label define qmigplc1_lbl 8 `"Illegible/missing or failed edit"', add
label values qmigplc1 qmigplc1_lbl

label define qmigrat1_lbl 0 `"Not allocated"'
label define qmigrat1_lbl 1 `"Failed edit"', add
label define qmigrat1_lbl 2 `"Illegible"', add
label define qmigrat1_lbl 3 `"Missing"', add
label define qmigrat1_lbl 4 `"Allocated"', add
label define qmigrat1_lbl 5 `"Illegible"', add
label define qmigrat1_lbl 6 `"Missing"', add
label define qmigrat1_lbl 7 `"Original entry illegible"', add
label define qmigrat1_lbl 8 `"Original entry missing or failed edit"', add
label values qmigrat1 qmigrat1_lbl

label define qmovedin_lbl 0 `"Not allocated"'
label define qmovedin_lbl 4 `"Allocated"', add
label define qmovedin_lbl 5 `"Cold deck allocation, select variables"', add
label values qmovedin qmovedin_lbl

label define qvetper_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define qvetper_lbl 1 `"Failed edit"', add
label define qvetper_lbl 2 `"Illegible"', add
label define qvetper_lbl 3 `"Missing"', add
label define qvetper_lbl 4 `"Allocated"', add
label define qvetper_lbl 5 `"Illegible"', add
label define qvetper_lbl 6 `"Missing"', add
label define qvetper_lbl 7 `"Original entry illegible"', add
label define qvetper_lbl 8 `"Original entry missing or failed edit"', add
label values qvetper qvetper_lbl

label define qvetstat_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define qvetstat_lbl 1 `"Failed edit"', add
label define qvetstat_lbl 2 `"Illegible"', add
label define qvetstat_lbl 3 `"Missing"', add
label define qvetstat_lbl 4 `"Allocated"', add
label define qvetstat_lbl 5 `"Illegible"', add
label define qvetstat_lbl 6 `"Missing"', add
label define qvetstat_lbl 7 `"Original entry illegible"', add
label define qvetstat_lbl 8 `"Original entry missing or failed edit"', add
label define qvetstat_lbl 9 `"Both edited and allocated components"', add
label values qvetstat qvetstat_lbl

label define qpwstat2_lbl 0 `"Not allocated"'
label define qpwstat2_lbl 4 `"Allocated"', add
label values qpwstat2 qpwstat2_lbl

label define qtrantim_lbl 0 `"Not allocated"'
label define qtrantim_lbl 4 `"Allocated"', add
label values qtrantim qtrantim_lbl

save "$dropbox\outside\Bartik_Shock\raw\IPUMS_data", replace
