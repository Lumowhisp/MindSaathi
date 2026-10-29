/* NHATS_Round_4_Tracker_Read_V2.SAS - Public Use */

/* Section #1 - Creating the Formats */
PROC FORMAT;
   VALUE DISP_F
     -1 = '-1 Inapplicable'
          10 = "10 Not Available"
          11 = "11 Ready"
          12 = "12 Started"
          20 = "20 Final"
          24 = "24 Not Required"
          60 = "60 Complete"
          61 = "61 Complete, NH facility"
          62 = "62 Complete SP Deceased, Proxy Intv"
          63 = "63 Complete SP, FQ not complete"
          64 = "64 Complete FQ, SP not complete "
          75 = "75 Physically/mentally unable to participate, no proxy"
          76 = "76 Too ill to participate, no proxy"
          77 = "77 Refusal, SP"
          78 = "78 Language barrier"
          79 = "79 Unable to locate"
          80 = "80 Unavailable during field period"
		  81 = "81 Final deceased, new sample only"
          82 = "82 Outside of PSU"
          83 = "83 Ineligible"
          85 = "85 Refusal, facility"
          86 = "86 Deceased"
          87 = "87 Refusal, proxy"
          88 = "88 Work stopped"
          89 = "89 Final, Other Specify";

	VALUE release
	   -1 = '-1 Inapplicable'
        1 = '1 Main Sample'
        2 = '2 Reserve Sample'
        9 = '9 New Release Sample';

    VALUE RFDK_F
    -7 = '-7 RF'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

    VALUE STAT_DTa
          4 = " 4 April"
          5 = " 5 May"
          6 = " 6 June"
          7 = " 7 July"
          8 = " 8 August"
          9 = " 9 September"
         10 = "10 October"
         11 = "11 November"
         99 = "99 Prior to start of field work"
         -1 = '-1 Inapplicable';

	VALUE pos_wgt
	    -7 = '-7 RF'
  		-8 = '-8 DK'
	    -1 = '-1 Inapplicable'
    	-9 = '-9 Missing'
        0 = 'Zero '
        .0000000001-high = '> .0000000001';

	VALUE RFDK_Y
     1 = ' 1 Yes'
    -7 = '-7 RF'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

run;
/* Section #2 - Input statement with variable name and location on the .txt file  
		Reminder - change [PATH] to reflect your file locations       */

Data Tracker_file;
INFILE  "[PATH]\NHATS_Round_4_Tracker_File_V2.txt"
LRECL=5273 ;

INPUT @1 spid 8.
@9 w4varstrat 2.
@11 w4varunit 2.
@13 yearsample 4.
@17 r4status 2.
@19 r4casestdtmt 2.
@21 r4casestdtyr 4.
@25 r4spstat 2.
@27 r4spstatdtmt 2.
@29 r4spstatdtmtrev 2.
@31 r4spstatdtmtchange 2.
@33 r4spstatdtyr 4.
@37 r4fqstat 2.
@39 r4fqstatdtmt 2.
@41 r4fqstatdtmtrev 2.
@43 r4fqstatdtmtchange 2.
@45 r4fqstatdtyr 4.
@49 w4trfinwgt0 18.11
@67 w4trfinwgt1 18.11
@85 w4trfinwgt2 18.11
@103 w4trfinwgt3 18.11
@121 w4trfinwgt4 18.11
@139 w4trfinwgt5 18.11
@157 w4trfinwgt6 18.11
@175 w4trfinwgt7 18.11
@193 w4trfinwgt8 18.11
@211 w4trfinwgt9 18.11
@229 w4trfinwgt10 18.11
@247 w4trfinwgt11 18.11
@265 w4trfinwgt12 18.11
@283 w4trfinwgt13 18.11
@301 w4trfinwgt14 18.11
@319 w4trfinwgt15 18.11
@337 w4trfinwgt16 18.11
@355 w4trfinwgt17 18.11
@373 w4trfinwgt18 18.11
@391 w4trfinwgt19 18.11
@409 w4trfinwgt20 18.11
@427 w4trfinwgt21 18.11
@445 w4trfinwgt22 18.11
@463 w4trfinwgt23 18.11
@481 w4trfinwgt24 18.11
@499 w4trfinwgt25 18.11
@517 w4trfinwgt26 18.11
@535 w4trfinwgt27 18.11
@553 w4trfinwgt28 18.11
@571 w4trfinwgt29 18.11
@589 w4trfinwgt30 18.11
@607 w4trfinwgt31 18.11
@625 w4trfinwgt32 18.11
@643 w4trfinwgt33 18.11
@661 w4trfinwgt34 18.11
@679 w4trfinwgt35 18.11
@697 w4trfinwgt36 18.11
@715 w4trfinwgt37 18.11
@733 w4trfinwgt38 18.11
@751 w4trfinwgt39 18.11
@769 w4trfinwgt40 18.11
@787 w4trfinwgt41 18.11
@805 w4trfinwgt42 18.11
@823 w4trfinwgt43 18.11
@841 w4trfinwgt44 18.11
@859 w4trfinwgt45 18.11
@877 w4trfinwgt46 18.11
@895 w4trfinwgt47 18.11
@913 w4trfinwgt48 18.11
@931 w4trfinwgt49 18.11
@949 w4trfinwgt50 18.11
@967 w4trfinwgt51 18.11
@985 w4trfinwgt52 18.11
@1003 w4trfinwgt53 18.11
@1021 w4trfinwgt54 18.11
@1039 w4trfinwgt55 18.11
@1057 w4trfinwgt56 18.11
@1075 w3varstrat 2.
@1077 w3varunit 2.
@1079 r3status 2.
@1081 r3casestdtmt 2.
@1083 r3casestdtyr 4.
@1087 r3spstat 2.
@1089 r3spstatdtmt 2.
@1091 r3spstatdtmtrev 2.
@1093 r3spstatdtmtchange 2.
@1095 r3spstatdtyr 4.
@1099 r3fqstat 2.
@1101 r3fqstatdtmt 2.
@1103 r3fqstatdtmtrev 2.
@1105 r3fqstatdtmtchange 2.
@1107 r3fqstatdtyr 4.
@1111 w3trfinwgt0 18.11
@1129 w3trfinwgt1 18.11
@1147 w3trfinwgt2 18.11
@1165 w3trfinwgt3 18.11
@1183 w3trfinwgt4 18.11
@1201 w3trfinwgt5 18.11
@1219 w3trfinwgt6 18.11
@1237 w3trfinwgt7 18.11
@1255 w3trfinwgt8 18.11
@1273 w3trfinwgt9 18.11
@1291 w3trfinwgt10 18.11
@1309 w3trfinwgt11 18.11
@1327 w3trfinwgt12 18.11
@1345 w3trfinwgt13 18.11
@1363 w3trfinwgt14 18.11
@1381 w3trfinwgt15 18.11
@1399 w3trfinwgt16 18.11
@1417 w3trfinwgt17 18.11
@1435 w3trfinwgt18 18.11
@1453 w3trfinwgt19 18.11
@1471 w3trfinwgt20 18.11
@1489 w3trfinwgt21 18.11
@1507 w3trfinwgt22 18.11
@1525 w3trfinwgt23 18.11
@1543 w3trfinwgt24 18.11
@1561 w3trfinwgt25 18.11
@1579 w3trfinwgt26 18.11
@1597 w3trfinwgt27 18.11
@1615 w3trfinwgt28 18.11
@1633 w3trfinwgt29 18.11
@1651 w3trfinwgt30 18.11
@1669 w3trfinwgt31 18.11
@1687 w3trfinwgt32 18.11
@1705 w3trfinwgt33 18.11
@1723 w3trfinwgt34 18.11
@1741 w3trfinwgt35 18.11
@1759 w3trfinwgt36 18.11
@1777 w3trfinwgt37 18.11
@1795 w3trfinwgt38 18.11
@1813 w3trfinwgt39 18.11
@1831 w3trfinwgt40 18.11
@1849 w3trfinwgt41 18.11
@1867 w3trfinwgt42 18.11
@1885 w3trfinwgt43 18.11
@1903 w3trfinwgt44 18.11
@1921 w3trfinwgt45 18.11
@1939 w3trfinwgt46 18.11
@1957 w3trfinwgt47 18.11
@1975 w3trfinwgt48 18.11
@1993 w3trfinwgt49 18.11
@2011 w3trfinwgt50 18.11
@2029 w3trfinwgt51 18.11
@2047 w3trfinwgt52 18.11
@2065 w3trfinwgt53 18.11
@2083 w3trfinwgt54 18.11
@2101 w3trfinwgt55 18.11
@2119 w3trfinwgt56 18.11
@2137 w2varstrat 2.
@2139 w2varunit 2.
@2141 r2status 2.
@2143 r2casestdtmt 2.
@2145 r2casestdtyr 4.
@2149 r2spstat 2.
@2151 r2spstatdtmt 2.
@2153 r2spstatdtyr 4.
@2157 r2fqstat 2.
@2159 r2fqstatdtmt 2.
@2161 r2fqstatdtyr 4.
@2165 w2trfinwgt0 18.11
@2183 w2trfinwgt1 18.11
@2201 w2trfinwgt2 18.11
@2219 w2trfinwgt3 18.11
@2237 w2trfinwgt4 18.11
@2255 w2trfinwgt5 18.11
@2273 w2trfinwgt6 18.11
@2291 w2trfinwgt7 18.11
@2309 w2trfinwgt8 18.11
@2327 w2trfinwgt9 18.11
@2345 w2trfinwgt10 18.11
@2363 w2trfinwgt11 18.11
@2381 w2trfinwgt12 18.11
@2399 w2trfinwgt13 18.11
@2417 w2trfinwgt14 18.11
@2435 w2trfinwgt15 18.11
@2453 w2trfinwgt16 18.11
@2471 w2trfinwgt17 18.11
@2489 w2trfinwgt18 18.11
@2507 w2trfinwgt19 18.11
@2525 w2trfinwgt20 18.11
@2543 w2trfinwgt21 18.11
@2561 w2trfinwgt22 18.11
@2579 w2trfinwgt23 18.11
@2597 w2trfinwgt24 18.11
@2615 w2trfinwgt25 18.11
@2633 w2trfinwgt26 18.11
@2651 w2trfinwgt27 18.11
@2669 w2trfinwgt28 18.11
@2687 w2trfinwgt29 18.11
@2705 w2trfinwgt30 18.11
@2723 w2trfinwgt31 18.11
@2741 w2trfinwgt32 18.11
@2759 w2trfinwgt33 18.11
@2777 w2trfinwgt34 18.11
@2795 w2trfinwgt35 18.11
@2813 w2trfinwgt36 18.11
@2831 w2trfinwgt37 18.11
@2849 w2trfinwgt38 18.11
@2867 w2trfinwgt39 18.11
@2885 w2trfinwgt40 18.11
@2903 w2trfinwgt41 18.11
@2921 w2trfinwgt42 18.11
@2939 w2trfinwgt43 18.11
@2957 w2trfinwgt44 18.11
@2975 w2trfinwgt45 18.11
@2993 w2trfinwgt46 18.11
@3011 w2trfinwgt47 18.11
@3029 w2trfinwgt48 18.11
@3047 w2trfinwgt49 18.11
@3065 w2trfinwgt50 18.11
@3083 w2trfinwgt51 18.11
@3101 w2trfinwgt52 18.11
@3119 w2trfinwgt53 18.11
@3137 w2trfinwgt54 18.11
@3155 w2trfinwgt55 18.11
@3173 w2trfinwgt56 18.11
@3191 w1varstrat 2.
@3193 w1varunit 2.
@3195 r1status 2.
@3197 r1wavrelease 2.
@3199 r1casestdtmt 2.
@3201 r1casestdtyr 4.
@3205 r1spstat 2.
@3207 r1spstatdtmt 2.
@3209 r1spstatdtyr 4.
@3213 r1fqstat 2.
@3215 r1fqstatdtmt 2.
@3217 r1fqstatdtyr 4.
@3221 w1trbswgt0 18.11
@3239 w1trbswgt1 18.11
@3257 w1trbswgt2 18.11
@3275 w1trbswgt3 18.11
@3293 w1trbswgt4 18.11
@3311 w1trbswgt5 18.11
@3329 w1trbswgt6 18.11
@3347 w1trbswgt7 18.11
@3365 w1trbswgt8 18.11
@3383 w1trbswgt9 18.11
@3401 w1trbswgt10 18.11
@3419 w1trbswgt11 18.11
@3437 w1trbswgt12 18.11
@3455 w1trbswgt13 18.11
@3473 w1trbswgt14 18.11
@3491 w1trbswgt15 18.11
@3509 w1trbswgt16 18.11
@3527 w1trbswgt17 18.11
@3545 w1trbswgt18 18.11
@3563 w1trbswgt19 18.11
@3581 w1trbswgt20 18.11
@3599 w1trbswgt21 18.11
@3617 w1trbswgt22 18.11
@3635 w1trbswgt23 18.11
@3653 w1trbswgt24 18.11
@3671 w1trbswgt25 18.11
@3689 w1trbswgt26 18.11
@3707 w1trbswgt27 18.11
@3725 w1trbswgt28 18.11
@3743 w1trbswgt29 18.11
@3761 w1trbswgt30 18.11
@3779 w1trbswgt31 18.11
@3797 w1trbswgt32 18.11
@3815 w1trbswgt33 18.11
@3833 w1trbswgt34 18.11
@3851 w1trbswgt35 18.11
@3869 w1trbswgt36 18.11
@3887 w1trbswgt37 18.11
@3905 w1trbswgt38 18.11
@3923 w1trbswgt39 18.11
@3941 w1trbswgt40 18.11
@3959 w1trbswgt41 18.11
@3977 w1trbswgt42 18.11
@3995 w1trbswgt43 18.11
@4013 w1trbswgt44 18.11
@4031 w1trbswgt45 18.11
@4049 w1trbswgt46 18.11
@4067 w1trbswgt47 18.11
@4085 w1trbswgt48 18.11
@4103 w1trbswgt49 18.11
@4121 w1trbswgt50 18.11
@4139 w1trbswgt51 18.11
@4157 w1trbswgt52 18.11
@4175 w1trbswgt53 18.11
@4193 w1trbswgt54 18.11
@4211 w1trbswgt55 18.11
@4229 w1trbswgt56 18.11
@4247 w1trfinwgt0 18.11
@4265 w1trfinwgt1 18.11
@4283 w1trfinwgt2 18.11
@4301 w1trfinwgt3 18.11
@4319 w1trfinwgt4 18.11
@4337 w1trfinwgt5 18.11
@4355 w1trfinwgt6 18.11
@4373 w1trfinwgt7 18.11
@4391 w1trfinwgt8 18.11
@4409 w1trfinwgt9 18.11
@4427 w1trfinwgt10 18.11
@4445 w1trfinwgt11 18.11
@4463 w1trfinwgt12 18.11
@4481 w1trfinwgt13 18.11
@4499 w1trfinwgt14 18.11
@4517 w1trfinwgt15 18.11
@4535 w1trfinwgt16 18.11
@4553 w1trfinwgt17 18.11
@4571 w1trfinwgt18 18.11
@4589 w1trfinwgt19 18.11
@4607 w1trfinwgt20 18.11
@4625 w1trfinwgt21 18.11
@4643 w1trfinwgt22 18.11
@4661 w1trfinwgt23 18.11
@4679 w1trfinwgt24 18.11
@4697 w1trfinwgt25 18.11
@4715 w1trfinwgt26 18.11
@4733 w1trfinwgt27 18.11
@4751 w1trfinwgt28 18.11
@4769 w1trfinwgt29 18.11
@4787 w1trfinwgt30 18.11
@4805 w1trfinwgt31 18.11
@4823 w1trfinwgt32 18.11
@4841 w1trfinwgt33 18.11
@4859 w1trfinwgt34 18.11
@4877 w1trfinwgt35 18.11
@4895 w1trfinwgt36 18.11
@4913 w1trfinwgt37 18.11
@4931 w1trfinwgt38 18.11
@4949 w1trfinwgt39 18.11
@4967 w1trfinwgt40 18.11
@4985 w1trfinwgt41 18.11
@5003 w1trfinwgt42 18.11
@5021 w1trfinwgt43 18.11
@5039 w1trfinwgt44 18.11
@5057 w1trfinwgt45 18.11
@5075 w1trfinwgt46 18.11
@5093 w1trfinwgt47 18.11
@5111 w1trfinwgt48 18.11
@5129 w1trfinwgt49 18.11
@5147 w1trfinwgt50 18.11
@5165 w1trfinwgt51 18.11
@5183 w1trfinwgt52 18.11
@5201 w1trfinwgt53 18.11
@5219 w1trfinwgt54 18.11
@5237 w1trfinwgt55 18.11
@5255 w1trfinwgt56 18.11;
	
/* Section #3 - format assignment statement   */
	format r1casestdtyr	r1fqstatdtyr r1spstatdtyr r2casestdtyr r2fqstatdtyr r2spstatdtyr 
			r3casestdtyr r3fqstatdtyr r3spstatdtyr yearsample r4casestdtyr r4fqstatdtyr r4spstatdtyr 
			w4varstrat w4varunit w3varstrat w3varunit w2varstrat w2varunit
			w1varstrat w1varunit  RFDK_F.
			r4spstatdtmtchange r3spstatdtmtchange 
			r4fqstatdtmtchange r3fqstatdtmtchange 
				RFDK_Y.
			r1casestdtmt r1fqstatdtmt r1spstatdtmt r2casestdtmt r2fqstatdtmt r2spstatdtmt	
			r3casestdtmt r3fqstatdtmt r3spstatdtmt r4casestdtmt r4fqstatdtmt r4spstatdtmt
			r4spstatdtmtrev r3spstatdtmtrev
			r4fqstatdtmtrev r3fqstatdtmtrev STAT_DTA.
			r1fqstat r1spstat r1status r2status	r2spstat r2fqstat r3status	r3spstat r3fqstat r4status r4spstat r4fqstat 
			 DISP_F.
			r1wavrelease RELEASE.;

/* Section #4 - Label assignment statement   */
label spid="NHATS SAMPLED PERSON ID"
		w4varstrat="R4 VARIANCE ESTIMATION STRATUM"
w4varunit="R4 VARIANCE ESTIMATION CLUSTER"
yearsample="YEAR SP ENTERED SAMPLE"
r4status="R4 OVERALL CASE STATUS"
r4casestdtmt="R4 OVERALL CASE STATUS DATE MT"
r4casestdtyr="R4 OVERALL CASE STATUS DATE YR"
r4spstat="R4 SUBJECT PERSON INTRVW STAT"
r4spstatdtmt="R4 SUBJECT PERSON INTRVW STAT DT MT"
r4spstatdtmtrev="R4 SUBJECT PERSON INTRVW STAT DT MT REVISED"
r4spstatdtmtchange="R4 SUBJECT PERSON INTRVW STAT DT MT CHANGE"
r4spstatdtyr="R4 SUBJECT PERSON INTRVW STAT DT YR"
r4fqstat="R4 FACILITY QUESTIONNAIRE STATUS"
r4fqstatdtmt="R4 FACILITY QUESTNNR STAT DT MTH"
r4fqstatdtmtrev="R4 FACILITY QUESTNNR STAT DT MTH REVISED"
r4fqstatdtmtchange="R4 FACILITY QUESTNNR STAT DT MTH CHANGE"
r4fqstatdtyr="R4 FACILITY QUESTNNR STAT DT YR"
w4trfinwgt0="R4 TRACKER FINAL WGT FULL SAMP"
w4trfinwgt1="R4 TRACKER FINAL WGT REP 1"
w4trfinwgt2="R4 TRACKER FINAL WGT REP 2"
w4trfinwgt3="R4 TRACKER FINAL WGT REP 3"
w4trfinwgt4="R4 TRACKER FINAL WGT REP 4"
w4trfinwgt5="R4 TRACKER FINAL WGT REP 5"
w4trfinwgt6="R4 TRACKER FINAL WGT REP 6"
w4trfinwgt7="R4 TRACKER FINAL WGT REP 7"
w4trfinwgt8="R4 TRACKER FINAL WGT REP 8"
w4trfinwgt9="R4 TRACKER FINAL WGT REP 9"
w4trfinwgt10="R4 TRACKER FINAL WGT REP 10"
w4trfinwgt11="R4 TRACKER FINAL WGT REP 11"
w4trfinwgt12="R4 TRACKER FINAL WGT REP 12"
w4trfinwgt13="R4 TRACKER FINAL WGT REP 13"
w4trfinwgt14="R4 TRACKER FINAL WGT REP 14"
w4trfinwgt15="R4 TRACKER FINAL WGT REP 15"
w4trfinwgt16="R4 TRACKER FINAL WGT REP 16"
w4trfinwgt17="R4 TRACKER FINAL WGT REP 17"
w4trfinwgt18="R4 TRACKER FINAL WGT REP 18"
w4trfinwgt19="R4 TRACKER FINAL WGT REP 19"
w4trfinwgt20="R4 TRACKER FINAL WGT REP 20"
w4trfinwgt21="R4 TRACKER FINAL WGT REP 21"
w4trfinwgt22="R4 TRACKER FINAL WGT REP 22"
w4trfinwgt23="R4 TRACKER FINAL WGT REP 23"
w4trfinwgt24="R4 TRACKER FINAL WGT REP 24"
w4trfinwgt25="R4 TRACKER FINAL WGT REP 25"
w4trfinwgt26="R4 TRACKER FINAL WGT REP 26"
w4trfinwgt27="R4 TRACKER FINAL WGT REP 27"
w4trfinwgt28="R4 TRACKER FINAL WGT REP 28"
w4trfinwgt29="R4 TRACKER FINAL WGT REP 29"
w4trfinwgt30="R4 TRACKER FINAL WGT REP 30"
w4trfinwgt31="R4 TRACKER FINAL WGT REP 31"
w4trfinwgt32="R4 TRACKER FINAL WGT REP 32"
w4trfinwgt33="R4 TRACKER FINAL WGT REP 33"
w4trfinwgt34="R4 TRACKER FINAL WGT REP 34"
w4trfinwgt35="R4 TRACKER FINAL WGT REP 35"
w4trfinwgt36="R4 TRACKER FINAL WGT REP 36"
w4trfinwgt37="R4 TRACKER FINAL WGT REP 37"
w4trfinwgt38="R4 TRACKER FINAL WGT REP 38"
w4trfinwgt39="R4 TRACKER FINAL WGT REP 39"
w4trfinwgt40="R4 TRACKER FINAL WGT REP 40"
w4trfinwgt41="R4 TRACKER FINAL WGT REP 41"
w4trfinwgt42="R4 TRACKER FINAL WGT REP 42"
w4trfinwgt43="R4 TRACKER FINAL WGT REP 43"
w4trfinwgt44="R4 TRACKER FINAL WGT REP 44"
w4trfinwgt45="R4 TRACKER FINAL WGT REP 45"
w4trfinwgt46="R4 TRACKER FINAL WGT REP 46"
w4trfinwgt47="R4 TRACKER FINAL WGT REP 47"
w4trfinwgt48="R4 TRACKER FINAL WGT REP 48"
w4trfinwgt49="R4 TRACKER FINAL WGT REP 49"
w4trfinwgt50="R4 TRACKER FINAL WGT REP 50"
w4trfinwgt51="R4 TRACKER FINAL WGT REP 51"
w4trfinwgt52="R4 TRACKER FINAL WGT REP 52"
w4trfinwgt53="R4 TRACKER FINAL WGT REP 53"
w4trfinwgt54="R4 TRACKER FINAL WGT REP 54"
w4trfinwgt55="R4 TRACKER FINAL WGT REP 55"
w4trfinwgt56="R4 TRACKER FINAL WGT REP 56"
w3varstrat="R3 VARIANCE ESTIMATION STRATUM"
w3varunit="R3 VARIANCE ESTIMATION CLUSTER"
r3status="R3 OVERALL CASE STATUS"
r3casestdtmt="R3 OVERALL CASE STATUS DATE MT"
r3casestdtyr="R3 OVERALL CASE STATUS DATE YR"
r3spstat="R3 SUBJECT PERSON INTRVW STAT"
r3spstatdtmt="R3 SUBJECT PERSON INTRVW STAT DT MT"
r3spstatdtmtrev="R3 SUBJECT PERSON INTRVW STAT DT MT REVISED"
r3spstatdtmtchange="R3 SUBJECT PERSON INTRVW STAT DT MT CHANGE"
r3spstatdtyr="R3 SUBJECT PERSON INTRVW STAT DT YR"
r3fqstat="R3 FACILITY QUESTIONNAIRE STATUS"
r3fqstatdtmt="R3 FACILITY QUESTNNR STAT DT MTH"
r3fqstatdtmtrev="R3 FACILITY QUESTNNR STAT DT MTH REVISED"
r3fqstatdtmtchange="R3 FACILITY QUESTNNR STAT DT MTH CHANGE"
r3fqstatdtyr="R3 FACILITY QUESTNNR STAT DT YR"
w3trfinwgt0="R3 TRACKER FINAL WGT FULL SAMP"
w3trfinwgt1="R3 TRACKER FINAL WGT REP 1"
w3trfinwgt2="R3 TRACKER FINAL WGT REP 2"
w3trfinwgt3="R3 TRACKER FINAL WGT REP 3"
w3trfinwgt4="R3 TRACKER FINAL WGT REP 4"
w3trfinwgt5="R3 TRACKER FINAL WGT REP 5"
w3trfinwgt6="R3 TRACKER FINAL WGT REP 6"
w3trfinwgt7="R3 TRACKER FINAL WGT REP 7"
w3trfinwgt8="R3 TRACKER FINAL WGT REP 8"
w3trfinwgt9="R3 TRACKER FINAL WGT REP 9"
w3trfinwgt10="R3 TRACKER FINAL WGT REP 10"
w3trfinwgt11="R3 TRACKER FINAL WGT REP 11"
w3trfinwgt12="R3 TRACKER FINAL WGT REP 12"
w3trfinwgt13="R3 TRACKER FINAL WGT REP 13"
w3trfinwgt14="R3 TRACKER FINAL WGT REP 14"
w3trfinwgt15="R3 TRACKER FINAL WGT REP 15"
w3trfinwgt16="R3 TRACKER FINAL WGT REP 16"
w3trfinwgt17="R3 TRACKER FINAL WGT REP 17"
w3trfinwgt18="R3 TRACKER FINAL WGT REP 18"
w3trfinwgt19="R3 TRACKER FINAL WGT REP 19"
w3trfinwgt20="R3 TRACKER FINAL WGT REP 20"
w3trfinwgt21="R3 TRACKER FINAL WGT REP 21"
w3trfinwgt22="R3 TRACKER FINAL WGT REP 22"
w3trfinwgt23="R3 TRACKER FINAL WGT REP 23"
w3trfinwgt24="R3 TRACKER FINAL WGT REP 24"
w3trfinwgt25="R3 TRACKER FINAL WGT REP 25"
w3trfinwgt26="R3 TRACKER FINAL WGT REP 26"
w3trfinwgt27="R3 TRACKER FINAL WGT REP 27"
w3trfinwgt28="R3 TRACKER FINAL WGT REP 28"
w3trfinwgt29="R3 TRACKER FINAL WGT REP 29"
w3trfinwgt30="R3 TRACKER FINAL WGT REP 30"
w3trfinwgt31="R3 TRACKER FINAL WGT REP 31"
w3trfinwgt32="R3 TRACKER FINAL WGT REP 32"
w3trfinwgt33="R3 TRACKER FINAL WGT REP 33"
w3trfinwgt34="R3 TRACKER FINAL WGT REP 34"
w3trfinwgt35="R3 TRACKER FINAL WGT REP 35"
w3trfinwgt36="R3 TRACKER FINAL WGT REP 36"
w3trfinwgt37="R3 TRACKER FINAL WGT REP 37"
w3trfinwgt38="R3 TRACKER FINAL WGT REP 38"
w3trfinwgt39="R3 TRACKER FINAL WGT REP 39"
w3trfinwgt40="R3 TRACKER FINAL WGT REP 40"
w3trfinwgt41="R3 TRACKER FINAL WGT REP 41"
w3trfinwgt42="R3 TRACKER FINAL WGT REP 42"
w3trfinwgt43="R3 TRACKER FINAL WGT REP 43"
w3trfinwgt44="R3 TRACKER FINAL WGT REP 44"
w3trfinwgt45="R3 TRACKER FINAL WGT REP 45"
w3trfinwgt46="R3 TRACKER FINAL WGT REP 46"
w3trfinwgt47="R3 TRACKER FINAL WGT REP 47"
w3trfinwgt48="R3 TRACKER FINAL WGT REP 48"
w3trfinwgt49="R3 TRACKER FINAL WGT REP 49"
w3trfinwgt50="R3 TRACKER FINAL WGT REP 50"
w3trfinwgt51="R3 TRACKER FINAL WGT REP 51"
w3trfinwgt52="R3 TRACKER FINAL WGT REP 52"
w3trfinwgt53="R3 TRACKER FINAL WGT REP 53"
w3trfinwgt54="R3 TRACKER FINAL WGT REP 54"
w3trfinwgt55="R3 TRACKER FINAL WGT REP 55"
w3trfinwgt56="R3 TRACKER FINAL WGT REP 56"
w2varstrat="R2 VARIANCE ESTIMATION STRATUM"
w2varunit="R2 VARIANCE ESTIMATION CLUSTER"
r2status="R2 OVERALL CASE STATUS"
r2casestdtmt="R2 OVERALL CASE STATUS DATE MT"
r2casestdtyr="R2 OVERALL CASE STATUS DATE YR"
r2spstat="R2 SUBJECT PERSON INTRVW STAT"
r2spstatdtmt="R2 SUBJECT PERSON INTRVW STAT DT MT"
r2spstatdtyr="R2 SUBJECT PERSON INTRVW STAT DT YR"
r2fqstat="R2 FACILITY QUESTIONNAIRE STATUS"
r2fqstatdtmt="R2 FACILITY QUESTNNR STAT DT MTH"
r2fqstatdtyr="R2 FACILITY QUESTNNR STAT DT YR"
w2trfinwgt0="R2 TRACKER FINAL WGT FULL SAMP"
w2trfinwgt1="R2 TRACKER FINAL WGT REP 1"
w2trfinwgt2="R2 TRACKER FINAL WGT REP 2"
w2trfinwgt3="R2 TRACKER FINAL WGT REP 3"
w2trfinwgt4="R2 TRACKER FINAL WGT REP 4"
w2trfinwgt5="R2 TRACKER FINAL WGT REP 5"
w2trfinwgt6="R2 TRACKER FINAL WGT REP 6"
w2trfinwgt7="R2 TRACKER FINAL WGT REP 7"
w2trfinwgt8="R2 TRACKER FINAL WGT REP 8"
w2trfinwgt9="R2 TRACKER FINAL WGT REP 9"
w2trfinwgt10="R2 TRACKER FINAL WGT REP 10"
w2trfinwgt11="R2 TRACKER FINAL WGT REP 11"
w2trfinwgt12="R2 TRACKER FINAL WGT REP 12"
w2trfinwgt13="R2 TRACKER FINAL WGT REP 13"
w2trfinwgt14="R2 TRACKER FINAL WGT REP 14"
w2trfinwgt15="R2 TRACKER FINAL WGT REP 15"
w2trfinwgt16="R2 TRACKER FINAL WGT REP 16"
w2trfinwgt17="R2 TRACKER FINAL WGT REP 17"
w2trfinwgt18="R2 TRACKER FINAL WGT REP 18"
w2trfinwgt19="R2 TRACKER FINAL WGT REP 19"
w2trfinwgt20="R2 TRACKER FINAL WGT REP 20"
w2trfinwgt21="R2 TRACKER FINAL WGT REP 21"
w2trfinwgt22="R2 TRACKER FINAL WGT REP 22"
w2trfinwgt23="R2 TRACKER FINAL WGT REP 23"
w2trfinwgt24="R2 TRACKER FINAL WGT REP 24"
w2trfinwgt25="R2 TRACKER FINAL WGT REP 25"
w2trfinwgt26="R2 TRACKER FINAL WGT REP 26"
w2trfinwgt27="R2 TRACKER FINAL WGT REP 27"
w2trfinwgt28="R2 TRACKER FINAL WGT REP 28"
w2trfinwgt29="R2 TRACKER FINAL WGT REP 29"
w2trfinwgt30="R2 TRACKER FINAL WGT REP 30"
w2trfinwgt31="R2 TRACKER FINAL WGT REP 31"
w2trfinwgt32="R2 TRACKER FINAL WGT REP 32"
w2trfinwgt33="R2 TRACKER FINAL WGT REP 33"
w2trfinwgt34="R2 TRACKER FINAL WGT REP 34"
w2trfinwgt35="R2 TRACKER FINAL WGT REP 35"
w2trfinwgt36="R2 TRACKER FINAL WGT REP 36"
w2trfinwgt37="R2 TRACKER FINAL WGT REP 37"
w2trfinwgt38="R2 TRACKER FINAL WGT REP 38"
w2trfinwgt39="R2 TRACKER FINAL WGT REP 39"
w2trfinwgt40="R2 TRACKER FINAL WGT REP 40"
w2trfinwgt41="R2 TRACKER FINAL WGT REP 41"
w2trfinwgt42="R2 TRACKER FINAL WGT REP 42"
w2trfinwgt43="R2 TRACKER FINAL WGT REP 43"
w2trfinwgt44="R2 TRACKER FINAL WGT REP 44"
w2trfinwgt45="R2 TRACKER FINAL WGT REP 45"
w2trfinwgt46="R2 TRACKER FINAL WGT REP 46"
w2trfinwgt47="R2 TRACKER FINAL WGT REP 47"
w2trfinwgt48="R2 TRACKER FINAL WGT REP 48"
w2trfinwgt49="R2 TRACKER FINAL WGT REP 49"
w2trfinwgt50="R2 TRACKER FINAL WGT REP 50"
w2trfinwgt51="R2 TRACKER FINAL WGT REP 51"
w2trfinwgt52="R2 TRACKER FINAL WGT REP 52"
w2trfinwgt53="R2 TRACKER FINAL WGT REP 53"
w2trfinwgt54="R2 TRACKER FINAL WGT REP 54"
w2trfinwgt55="R2 TRACKER FINAL WGT REP 55"
w2trfinwgt56="R2 TRACKER FINAL WGT REP 56"
w1varstrat="R1 VARIANCE ESTIMATION STRATUM"
w1varunit="R1 VARIANCE ESTIMATION CLUSTER"
r1status="R1 OVERALL CASE STATUS"
r1wavrelease="R1 SAMPLE RELEASE WAVE 1 OR 2"
r1casestdtmt="R1 OVERALL CASE STATUS DATE MT"
r1casestdtyr="R1 OVERALL CASE STATUS DATE YR"
r1spstat="R1 SUBJECT PERSON INTRVW STAT"
r1spstatdtmt="R1 SUBJECT PERSON INTRVW STAT DT MT"
r1spstatdtyr="R1 SUBJECT PERSON INTRVW STAT DT YR"
r1fqstat="R1 FACILITY QUESTIONNAIRE STATUS"
r1fqstatdtmt="R1 FACILITY QUESTNNR STAT DT MTH"
r1fqstatdtyr="R1 FACILITY QUESTNNR STAT DT YR"
w1trbswgt0="R1 TRACKER BASE WGT FULL SAMP"
w1trbswgt1="R1 TRACKER BASE WGT REP 1"
w1trbswgt2="R1 TRACKER BASE WGT REP 2"
w1trbswgt3="R1 TRACKER BASE WGT REP 3"
w1trbswgt4="R1 TRACKER BASE WGT REP 4"
w1trbswgt5="R1 TRACKER BASE WGT REP 5"
w1trbswgt6="R1 TRACKER BASE WGT REP 6"
w1trbswgt7="R1 TRACKER BASE WGT REP 7"
w1trbswgt8="R1 TRACKER BASE WGT REP 8"
w1trbswgt9="R1 TRACKER BASE WGT REP 9"
w1trbswgt10="R1 TRACKER BASE WGT REP 10"
w1trbswgt11="R1 TRACKER BASE WGT REP 11"
w1trbswgt12="R1 TRACKER BASE WGT REP 12"
w1trbswgt13="R1 TRACKER BASE WGT REP 13"
w1trbswgt14="R1 TRACKER BASE WGT REP 14"
w1trbswgt15="R1 TRACKER BASE WGT REP 15"
w1trbswgt16="R1 TRACKER BASE WGT REP 16"
w1trbswgt17="R1 TRACKER BASE WGT REP 17"
w1trbswgt18="R1 TRACKER BASE WGT REP 18"
w1trbswgt19="R1 TRACKER BASE WGT REP 19"
w1trbswgt20="R1 TRACKER BASE WGT REP 20"
w1trbswgt21="R1 TRACKER BASE WGT REP 21"
w1trbswgt22="R1 TRACKER BASE WGT REP 22"
w1trbswgt23="R1 TRACKER BASE WGT REP 23"
w1trbswgt24="R1 TRACKER BASE WGT REP 24"
w1trbswgt25="R1 TRACKER BASE WGT REP 25"
w1trbswgt26="R1 TRACKER BASE WGT REP 26"
w1trbswgt27="R1 TRACKER BASE WGT REP 27"
w1trbswgt28="R1 TRACKER BASE WGT REP 28"
w1trbswgt29="R1 TRACKER BASE WGT REP 29"
w1trbswgt30="R1 TRACKER BASE WGT REP 30"
w1trbswgt31="R1 TRACKER BASE WGT REP 31"
w1trbswgt32="R1 TRACKER BASE WGT REP 32"
w1trbswgt33="R1 TRACKER BASE WGT REP 33"
w1trbswgt34="R1 TRACKER BASE WGT REP 34"
w1trbswgt35="R1 TRACKER BASE WGT REP 35"
w1trbswgt36="R1 TRACKER BASE WGT REP 36"
w1trbswgt37="R1 TRACKER BASE WGT REP 37"
w1trbswgt38="R1 TRACKER BASE WGT REP 38"
w1trbswgt39="R1 TRACKER BASE WGT REP 39"
w1trbswgt40="R1 TRACKER BASE WGT REP 40"
w1trbswgt41="R1 TRACKER BASE WGT REP 41"
w1trbswgt42="R1 TRACKER BASE WGT REP 42"
w1trbswgt43="R1 TRACKER BASE WGT REP 43"
w1trbswgt44="R1 TRACKER BASE WGT REP 44"
w1trbswgt45="R1 TRACKER BASE WGT REP 45"
w1trbswgt46="R1 TRACKER BASE WGT REP 46"
w1trbswgt47="R1 TRACKER BASE WGT REP 47"
w1trbswgt48="R1 TRACKER BASE WGT REP 48"
w1trbswgt49="R1 TRACKER BASE WGT REP 49"
w1trbswgt50="R1 TRACKER BASE WGT REP 50"
w1trbswgt51="R1 TRACKER BASE WGT REP 51"
w1trbswgt52="R1 TRACKER BASE WGT REP 52"
w1trbswgt53="R1 TRACKER BASE WGT REP 53"
w1trbswgt54="R1 TRACKER BASE WGT REP 54"
w1trbswgt55="R1 TRACKER BASE WGT REP 55"
w1trbswgt56="R1 TRACKER BASE WGT REP 56"
w1trfinwgt0="R1 TRACKER FINAL WGT FULL SAMP"
w1trfinwgt1="R1 TRACKER FINAL WGT REP 1"
w1trfinwgt2="R1 TRACKER FINAL WGT REP 2"
w1trfinwgt3="R1 TRACKER FINAL WGT REP 3"
w1trfinwgt4="R1 TRACKER FINAL WGT REP 4"
w1trfinwgt5="R1 TRACKER FINAL WGT REP 5"
w1trfinwgt6="R1 TRACKER FINAL WGT REP 6"
w1trfinwgt7="R1 TRACKER FINAL WGT REP 7"
w1trfinwgt8="R1 TRACKER FINAL WGT REP 8"
w1trfinwgt9="R1 TRACKER FINAL WGT REP 9"
w1trfinwgt10="R1 TRACKER FINAL WGT REP 10"
w1trfinwgt11="R1 TRACKER FINAL WGT REP 11"
w1trfinwgt12="R1 TRACKER FINAL WGT REP 12"
w1trfinwgt13="R1 TRACKER FINAL WGT REP 13"
w1trfinwgt14="R1 TRACKER FINAL WGT REP 14"
w1trfinwgt15="R1 TRACKER FINAL WGT REP 15"
w1trfinwgt16="R1 TRACKER FINAL WGT REP 16"
w1trfinwgt17="R1 TRACKER FINAL WGT REP 17"
w1trfinwgt18="R1 TRACKER FINAL WGT REP 18"
w1trfinwgt19="R1 TRACKER FINAL WGT REP 19"
w1trfinwgt20="R1 TRACKER FINAL WGT REP 20"
w1trfinwgt21="R1 TRACKER FINAL WGT REP 21"
w1trfinwgt22="R1 TRACKER FINAL WGT REP 22"
w1trfinwgt23="R1 TRACKER FINAL WGT REP 23"
w1trfinwgt24="R1 TRACKER FINAL WGT REP 24"
w1trfinwgt25="R1 TRACKER FINAL WGT REP 25"
w1trfinwgt26="R1 TRACKER FINAL WGT REP 26"
w1trfinwgt27="R1 TRACKER FINAL WGT REP 27"
w1trfinwgt28="R1 TRACKER FINAL WGT REP 28"
w1trfinwgt29="R1 TRACKER FINAL WGT REP 29"
w1trfinwgt30="R1 TRACKER FINAL WGT REP 30"
w1trfinwgt31="R1 TRACKER FINAL WGT REP 31"
w1trfinwgt32="R1 TRACKER FINAL WGT REP 32"
w1trfinwgt33="R1 TRACKER FINAL WGT REP 33"
w1trfinwgt34="R1 TRACKER FINAL WGT REP 34"
w1trfinwgt35="R1 TRACKER FINAL WGT REP 35"
w1trfinwgt36="R1 TRACKER FINAL WGT REP 36"
w1trfinwgt37="R1 TRACKER FINAL WGT REP 37"
w1trfinwgt38="R1 TRACKER FINAL WGT REP 38"
w1trfinwgt39="R1 TRACKER FINAL WGT REP 39"
w1trfinwgt40="R1 TRACKER FINAL WGT REP 40"
w1trfinwgt41="R1 TRACKER FINAL WGT REP 41"
w1trfinwgt42="R1 TRACKER FINAL WGT REP 42"
w1trfinwgt43="R1 TRACKER FINAL WGT REP 43"
w1trfinwgt44="R1 TRACKER FINAL WGT REP 44"
w1trfinwgt45="R1 TRACKER FINAL WGT REP 45"
w1trfinwgt46="R1 TRACKER FINAL WGT REP 46"
w1trfinwgt47="R1 TRACKER FINAL WGT REP 47"
w1trfinwgt48="R1 TRACKER FINAL WGT REP 48"
w1trfinwgt49="R1 TRACKER FINAL WGT REP 49"
w1trfinwgt50="R1 TRACKER FINAL WGT REP 50"
w1trfinwgt51="R1 TRACKER FINAL WGT REP 51"
w1trfinwgt52="R1 TRACKER FINAL WGT REP 52"
w1trfinwgt53="R1 TRACKER FINAL WGT REP 53"
w1trfinwgt54="R1 TRACKER FINAL WGT REP 54"
w1trfinwgt55="R1 TRACKER FINAL WGT REP 55"
w1trfinwgt56="R1 TRACKER FINAL WGT REP 56";

run;
