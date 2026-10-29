/* NHATS_Round_3_SP_Read.SAS - Public Use */

/* Section #1 - Creating the Formats */


PROC FORMAT ;

    VALUE release
        1 = '1 Main Sample'
        2 = '2 Reserve Sample'
        9 = '9 New Release Sample';

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

    VALUE $DISP
          '10' = "10 Not Available "
          '11' = "11 Ready"
          '12' = "12 Started "
          '20' = "20 Final "
          '24' = "24 Not Required "
          '60' = "60 Complete "
          '61' = "61 Complete, NH facility"
          '62' = "62 Complete SP Deceased, Proxy Intv"
          '63' = "63 Complete SP, FQ not complete"
          '64' = "64 Complete FQ, SP not complete"
          '75' = "75 Physically/mentally unable to participate, no proxy"
          '76' = "76 Too ill to participate, no proxy"
          '77' = "77 Refusal, SP"
          '78' = "78 Language barrier"
          '79' = "79 Unable to locate"
          '80' = "80 Unavailable during field period"
          '82' = "82 Outside of PSU"
          '83' = "83 Ineligible"
          '85' = "85 Refusal, facility"
          '86' = "86 Deceased"
          '87' = "87 Refusal, proxy"
          '88' = "88 Work stopped"    ;

VALUE DISP_a
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
          82 = "82 Outside of PSU"
          83 = "83 Ineligible"
          85 = "85 Refusal, facility"
          86 = "86 Deceased"
          87 = "87 Refusal, proxy"
          88 = "88 Work stopped"    ;

    VALUE DISP_
          10 = "10 Not Available"
          11 = "11 Ready"
          12 = "12 Started"
          20 = "20 Final"
          24 = "24 Not Required";

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
          82 = "82 Outside of PSU"
          83 = "83 Ineligible"
          85 = "85 Refusal, facility"
          86 = "86 Deceased"
          87 = "87 Refusal, proxy"
          88 = "88 Work stopped"
          89 = "89 Final, Other Specify";

    VALUE RFDK
    -7 = '-7 RF'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

    VALUE $RFDK_F
    '-7' = '-7 RF'
    '-8' = '-8 DK'
    '-1' = '-1 Inapplicable'
    '-9' = '-9 Missing';

    VALUE RFDK_F
    -7 = '-7 RF'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

VALUE RFDK_B
    -1 = '-1 Inapplicable'
    1 = '1 Yes-Breakoff';

VALUE $RFDK_C
    '-1' = '-1 Inapplicable'
    'CL' ='CL - Closing'
    'EW' ='EW - Economic Well-Being'
    'FQ' ='FQ - Facility Questionnaire'
    'HL' ='HL - Helper'
    'HW' ='HW - Height and Weight'
    'IP' ='IP - Insurance Plans'
    'LF' ='LF - Labor Force'
    'PA' ='PA - Participation'
    'PE' ='PE - Performance'
    'WB' ='WB - Well-being' ;

VALUE $RFDK_2C
    '-1' = '-1 Inapplicable'
    '-7' = '-7 RF'
    '-8' = '-8 DK'
    '-9' = '-9 Missing';

    VALUE RFDK_Y
     1 = ' 1 Yes'
    -7 = '-7 RF'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

    VALUE RFDK_YN
     1 = ' 1 Yes'
     2 = ' 2 No'
    -7 = '-7 RF'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

    VALUE DSTRP_G
    -7 = '-7 RF'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing'
    1 =  '1 X condition and word color condition accuracy below threshold (less than .42)'
    2 =  '2 word condition only below threshold (less than .42)'
    3 =  '3 X condition and word color condition meet criteria for accuracy'
    4 =  '4 fewer than 50% of X and word color condition trials answered'
    999 = '999 X condition only below threshold (less than .42)';

    VALUE DSTRP_R
    -7 = '-7 RF'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -999 = '-999 Inapplicable'
    other = 'Values ranging between -.353 and 1.115';

    VALUE DSTRP_M
    -7 = '-7 RF'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -999 = '-999 Inapplicable'
    other = 'Values ranging between -544.732 and 924.863';

VALUE FQ_4F
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
          1='1 YES'
          2='2 NO';

  VALUE CHILDDEC
    1 =  '1 CHILD DECEASED'
    -7 = '-7 RF'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE W200001W
    12 = "12 STARTED"
    20 = "20 COMPLETE"
    21 = "21 INELIGIBLE - NOT 65+"   ;

  VALUE W200008x
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 UNDER 20"
    2 = "2 20-24"
    3 = "3 25-29"
    4 = "4 30-34"
    5 = "5 35-39"
    6 = "6 40-44"
    7 = "7 45-49"
    8 = "8 50-54"
    9 = "9 55-59"
    10 = "10 60-64"
    11 = "11 65-69"
    12 = "12 70-74"
    13 = "13 75-79"
    14 = "14 80-84"
    15 = "15 85-89"
    16 = "16 90 +";

  VALUE W200009W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 SAMPLE PERSON"
    2 = "2 SPOUSE/ PARTNER"
    3 = "3 DAUGHTER"
    4 = "4 SON"
    5 = "5 DAUGHTER-IN-LAW"
    6 = "6 SON-IN-LAW"
    7 = "7 STEPDAUGHTER"
    8 = "8 STEPSON"
    9 = "9 SISTER"
    10 = "10 BROTHER"
    11 = "11 SISTER-IN-LAW"
    12 = "12 BROTHER-IN-LAW"
    13 = "13 MOTHER"
    14 = "14 STEPMOTHER"
    15 = "15 MOTHER-IN-LAW"
    16 = "16 FATHER"
    17 = "17 STEPFATHER"
    18 = "18 FATHER-IN-LAW"
    19 = "19 GRANDDAUGHTER"
    20 = "20 GRANDSON"
    21 = "21 NIECE"
    22 = "22 NEPHEW"
    23 = "23 AUNT"
    24 = "24 UNCLE"
    25 = "25 COUSIN"
    26 = "26 STEPDAUGHTER'S SON/ DAUGHTER"
    27 = "27 STEPSON'S SON/ DAUGHTER"
    28 = "28 DAUGHTER-IN-LAW'S SON/ DAUGHTER"
    29 = "29 SON-IN-LAW'S SON/ DAUGHTER"
    30 = "30 BOARDER/RENTER"
    31 = "31 PAID AIDE/ HOUSEKEEPER/ EMPLOYEE"
    32 = "32 ROOMMATE"
    33 = "33 EX-WIFE/ EX-HUSBAND"
    34 = "34 BOYFRIEND/ GIRLFRIEND"
    35 = "35 NEIGHBOR"
    36 = "36 FRIEND"
    37 = "37 SOMEONE/SERVICE AT THE PLACE SP LIVES/LIVED"
    38 = "38 CO-WORKER"
    39 = "39 MINISTER, PRIEST, OR OTHER CLERGY"
    40 = "40 PSYCHIATRIST, PSYCHOLOGIST, COUNSELOR, OR THERAPIST"
    41 = "41 DECEASED SPOUSE/PARTNER"
    91 = "91 OTHER RELATIVE"
    92 = "92 OTHER NONRELATIVE"   ;

   VALUE W200002W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 MALE"
    2 = "2 FEMALE";

   VALUE W200005W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 NO SCHOOLING COMPLETED"
    2 = "2 1ST-8TH GRADE"
    3 = "3 9TH-12TH GRADE (NO DIPLOMA)"
    4 = "4 HIGH SCHOOL GRADUATE (HIGH SCHOOL DIPLOMA OR EQUIVALENT)"
    5 = "5 VOCATIONAL, TECHNICAL, BUSINESS, OR TRADE SCHOOL CERTIFICATE OR DIPLOMA (BEYOND HIGH SCHOOL LEVEL)"
    6 = "6 SOME COLLEGE BUT NO DEGREE"
    7 = "7 ASSOCIATE'S DEGREE"
    8 = "8 BACHELOR'S DEGREE"
    9 = "9 MASTER'S, PROFESSIONAL, OR DOCTORAL DEGREE"  ;

  VALUE W200010W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 MARRIED"
    2 = "2 LIVING WITH A PARTNER"
    3 = "3 SEPARATED"
    4 = "4 DIVORCED"
    5 = "5 WIDOWED"
    6 = "6 NEVER MARRIED";

  VALUE W200011W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 YES"
    2 = "2 NO"
    7 = "7 PREVIOUSLY REPORTED"  ;
VALUE W200012W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 REGULAR"
    2 = "2 VARIED"  ;

   VALUE W200013W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 SP AND/OR FAMILY"
    2 = "2 GOVERNMENT PROGRAM"
    3 = "3 INSURANCE"
    91 = "91 OTHER (SPECIFY)"   ;

  VALUE W200015W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1='1 HOURLY'
    2='2 WEEKLY'
    3='3 MONTHLY'
    4='4 DID NOT PAY IN LAST MONTH'
	91 = "91 OTHER (SPECIFY)"   ;

  VALUE W200016W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 MEDICAID"
    2 = "2 MEDICARE"
    3 = "3 STATE PROGRAM"
    91 = "91 OTHER (SPECIFY)"   ;

  VALUE W200018W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 FREE-STANDING (DETACHED) SINGLE HOUSE"
    2 = "2 SINGLE HOUSE BUT ATTACHED TO OTHERS (ROW HOUSE, TOWNHOUSE, DUPLEX, TRIPLEX, OR TRIPLE DECKER)"
    3 = "3 MOBILE HOME OR TRAILER"
    4 = "4 MULTI-UNIT (2+) BUILDING"
    91 = "91 OTHER (SPECIFY)"  ;

  VALUE W200020W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 HOME"
    2 = "2 MULTI-UNIT"
    3 = "3 OTHER"  ;

  VALUE W200021W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 BUILDING HAS ONE FLOOR"
    2 = "2 BUILDING HAS MULTIPLE FLOORS"   ;

  VALUE W200022W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 HOME"
    2 = "2 APARTMENT"
    3 = "3 ROOM"
    4 = "4 UNIT"
    5 = "5 SUITE"
    6 = "6 SOMETHING ELSE (SPECIFY)"  ;

  VALUE W200030W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 SAMPLE PERSON (SP)"
    2 = "2 PROXY"  ;

  VALUE W200032W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 HOSPITAL"
    2 = "2 NURSING HOME/REHAB CENTER"
    91 = "91 OTHER (SPECIFY)"  ;

  VALUE W200035W
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 SELF"
    2 = "2 SPOUSE/ PARTNER"
    3 = "3 DAUGHTER"
    4 = "4 SON"
    5 = "5 DAUGHTER-IN-LAW"
    6 = "6 SON-IN-LAW"
    7 = "7 STEPDAUGHTER"
    8 = "8 STEPSON"
    9 = "9 SISTER"
    10 = "10 BROTHER"
    11 = "11 SISTER-IN-LAW"
    12 = "12 BROTHER-IN-LAW"
    13 = "13 MOTHER"
    14 = "14 STEPMOTHER"
    15 = "15 MOTHER-IN-LAW"
    16 = "16 FATHER"
    17 = "17 STEPFATHER"
    18 = "18 FATHER-IN-LAW"
    19 = "19 GRANDDAUGHTER"
    20 = "20 GRANDSON"
    21 = "21 NIECE"
    22 = "22 NEPHEW"
    23 = "23 AUNT"
    24 = "24 UNCLE"
    25 = "25 COUSIN"
    26 = "26 STEPDAUGHTER'S SON/ DAUGHTER"
    27 = "27 STEPSON'S SON/ DAUGHTER"
    28 = "28 DAUGHTER-IN-LAW'S SON/ DAUGHTER"
    29 = "29 SON-IN-LAW'S SON/ DAUGHTER"
    30 = "30 BOARDER/RENTER"
    31 = "31 PAID AIDE/ HOUSEKEEPER/ EMPLOYEE"
    32 = "32 ROOMMATE"
    33 = "33 EX-WIFE/ EX-HUSBAND"
    34 = "34 BOYFRIEND/ GIRLFRIEND"
    35 = "35 NEIGHBOR"
    36 = "36 FRIEND"
    37 = "37 SOMEONE/SERVICE FROM THE PLACE SP LIVES/DIED"
    38 = "38 CO-WORKER"
    39 = "39 MINISTER, PRIEST, OR OTHER CLERGY"
    40 = "40 PSYCHIATRIST, PSYCHOLOGIST, COUNSELOR, OR THERAPIST"
    91 = "91 OTHER RELATIVE"
    92 = "92 OTHER NONRELATIVE"  ;

  VALUE W200036W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 VERY FAMILIAR"
    2 = "2 SOMEWHAT FAMILIAR"
    3 = "3 A LITTLE FAMILIAR"
    4 = "4 NOT AT ALL FAMILIAR"  ;

  VALUE W200037W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 YES, SAME ADDRESS"
    2 = "2 NO, DIFFERENT ADDRESS"
    3 = "3 YES, SAME ADDRESS WITH MINOR CORRECTIONS"  ;

  VALUE W200038W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 JANUARY"
    2 = "2 FEBRUARY"
    3 = "3 MARCH"
    4 = "4 APRIL"
    5 = "5 MAY"
    6 = "6 JUNE"
    7 = "7 JULY"
    8 = "8 AUGUST"
    9 = "9 SEPTEMBER"
    10 = "10 OCTOBER"
    11 = "11 NOVEMBER"
    12 = "12 DECEMBER"  ;

  VALUE W200039W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 2011"
    2 = "2 2012"
    3 = "3 YEAR2013"
    4 = "4 YEAR2014"
    5 = "5 YEAR2015"
    6 = "6 YEAR2016"
    7 = "7 YEAR2017"
    8 = "8 YEAR2018"
    9 = "9 YEAR2019"
    10 = "10 YEAR2020"  ;

  VALUE W200040W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 2011"
    2 = "2 2012"  ;

  VALUE W200041W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 AT SPS OR SOMEONE ELSES HOME"
    2 = "2 IN A HOSPITAL"
    3 = "3 IN A NURSING HOME"
    4 = "4 IN A HOSPICE RESIDENCE"
    5 = "5 IN TRANSIT (AMBULANCE TO HOSPITAL)"
    91 = "91 SOMEWHERE ELSE (SPECIFY)";

  VALUE W200042W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 SP'S HOME"
    2 = "2 SOMEONE ELSE'S HOME"  ;

  VALUE W200043W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 INTENSIVE CARE UNIT"
    2 = "2 PALLIATIVE CARE UNIT"
    3 = "3 INPATIENT HOSPICE UNIT"
    4 = "4 EMERGENCY ROOM"
    5 = "5 ANOTHER KIND OF UNIT"  ;

  VALUE W200044W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 HOSPICE AT A HOSPITAL"
    2 = "2 HOSPICE AT A NURSING HOME"
    3 = "3 RESIDENTIAL HOSPICE"
    4 = "4 OTHER HOSPICE"  ;

  VALUE W200045W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 DAYS"
    2 = "2 WEEKS"
    3 = "3 MONTHS"
    4 = "4 YEARS"  ;

  VALUE W200046W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 AT SP'S HOME"
    2 = "2 IN A HOSPITAL"
    3 = "3 IN A NURSING HOME"
    4 = "4 IN A HOSPICE RESIDENCE"
    91 = "91 SOMEWHERE ELSE (SPECIFY)"  ;

  VALUE W200047W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 EVERY DAY"
    2 = "2 MOST DAYS"
    3 = "3 SOME DAYS"
    4 = "4 RARELY"
    5 = "5 NOT AT ALL"  ;

  VALUE W200048W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 LESS THAN WAS NEEDED"
    2 = "2 MORE THAN WAS NEEDED"
    3 = "3 ABOUT RIGHT AMOUNT"  ;

  VALUE W200049W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 YES"
    2 = "2 NO"
    3 = "3 DOES NOT APPLY/NO CARE IN LAST MONTH OF LIFE"  ;

  VALUE W200050W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 ALWAYS"
    2 = "2 USUALLY"
    3 = "3 SOMETIMES"
    4 = "4 NEVER"
    5 = "5 DOES NOT APPLY/NO CARE IN LAST MONTH OF LIFE"  ;

  VALUE W200051W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 EXCELLENT"
    2 = "2 VERY GOOD"
    3 = "3 GOOD"
    4 = "4 FAIR"
    5 = "5 POOR"  ;

  VALUE W200052W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 NOT AT ALL"
    2 = "2 SEVERAL DAYS"
    3 = "3 MORE THAN HALF THE DAYS"
    4 = "4 NEARLY EVERY DAY"  ;

  VALUE W200053W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 EVERY NIGHT (7 NIGHTS A WEEK)"
    2 = "2 MOST NIGHTS (5-6 NIGHTS A WEEK)"
    3 = "3 SOME NIGHTS (2-4 NIGHTS A WEEK)"
    4 = "4 RARELY (ONCE A WEEK OR LESS)"
    5 = "5 NEVER"  ;

  VALUE W200054W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 EVERY NIGHT (7 NIGHTS A WEEK)"
    2 = "2 MOST NIGHTS (5-6 NIGHTS A WEEK)"
    3 = "3 SOME NIGHTS (2-4 NIGHTS A WEEK)"
    4 = "4 RARELY (ONCE A WEEK OR LESS)"
    5 = "5 NEVER"
    7 = "7 DON'T WAKE UP/NOT A PROBLEM"  ;

  VALUE W200055W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 PRIVATE RESIDENCE"
    2 = "2 A GROUP HOME, BOARD AND CARE, OR SUPERVISED HOUSING"
    3 = "3 ASSISTED LIVING FACILITY OR CONTINUING CARE RETIREMENT COMMUNITY (CCRC)"
    4 = "4 RELIGIOUS GROUP QUARTERS"
    91 = "91 OTHER (SPECIFY)"  ;

  VALUE W200056W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 YES"
    2 = "2 NO"
    7 = "7 PLACE DOES NOT HAVE A NAME"  ;

  VALUE W200057W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 APARTMENT"
    2 = "2 ROOM"
    3 = "3 UNIT"
    4 = "4 SUITE"
    91 = "91 SOMETHING ELSE (SPECIFY)"  ;

  VALUE W200058W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 YES"
    2 = "2 NO, DIFFERENT PERSON"
    3 = "3 NO, NAME MISSPELLED"  ;

   VALUE W200060W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 PRIVATE RESIDENCE"
    2 = "2 A GROUP HOME, BOARD AND CARE, OR SUPERVISED HOUSING"
    3 = "3 ASSISTED LIVING FACILITY OR CONTINUING CARE RETIREMENT COMMUNITY (CCRC)"
    5 = "5 NURSING HOME"
    91 = "91 OTHER (SPECIFY)"  ;

  VALUE W200061W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 SEPARATION OR DIVORCE"
    2 = "2 DECEASED"
    3 = "3 MOVED ELSEWHERE"
    5 = "5 LAST INTERVIEW INFORMATION INCORRECT"
    8 = "8 OTHER REASON"   ;

  VALUE W200067W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 COMMON OR SHARED ENTRANCE"
    2 = "2 ENTRANCE DIRECTLY INTO HOME"  ;

  VALUE W200068W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1"
    2 = "2"
    3 = "3"
    4 = "4+"  ;

  VALUE W200069W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 ALL ITEMS HERE"
    2 = "2 ADDED ONE OR MORE ITEMS"  ;

  VALUE W200070W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 MORE THAN $500"
    2 = "2 LESS THAN $500"
    3 = "3 JUST ABOUT $500"  ;

  VALUE W200071W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 MORE THAN $1,000"
    2 = "2 LESS THAN $1,000"
    3 = "3 JUST ABOUT $1,000"  ;

  VALUE W200072W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 MORE THAN $100"
    2 = "2 LESS THAN $100"
    3 = "3 JUST ABOUT $100"  ;

  VALUE W200073W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 YES"
    2 = "2 NO"
    7 = "7 YES, DOESNT KNOW HOW TO USE A COMPUTER"  ;

  VALUE W200074W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 MOST DAYS"
    2 = "2 SOME DAYS"
    3 = "3 RARELY"  ;

  VALUE W200076W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 YES"
    2 = "2 NO"
    7 = "7 DEAF"  ;

  VALUE W200077W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 YES"
    2 = "2 NO"
    7 = "7 BLIND"  ;

  VALUE W200078W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 EVERY DAY (7 DAYS A WEEK)"
    2 = "2 MOST DAYS (5-6 DAYS A WEEK)"
    3 = "3 SOME DAYS (2-4 DAYS A WEEK)"
    4 = "4 RARELY (ONCE A WEEK OR LESS)"
    5 = "5 NEVER"  ;

  VALUE W200080W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 YES, A CHANGE"
    2 = "2 NO, NO CHANGE"
    3 = "3 DEMENTIA/ALZHEIMER'S REPORTED BY PROXY"  ;

  VALUE W200081W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 SP HAS DEMENTIA/ALZHEIMER'S/ NOT ABLE"
    2 = "2 SP IS UNABLE TO SPEAK"
    3 = "3 SP IS UNABLE TO HEAR"
    4 = "4 SP REFUSED"
    5 = "5 PROXY REFUSED"
    6 = "6 SP NOT PRESENT"
    7 = "7 SP TOO ILL"
    8 = "8 SP LANGUAGE BARRIER"
    91 = "91 OTHER (SPECIFY)"  ;

  VALUE W200082W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 MUCH BETTER"
    2 = "2 BETTER"
    3 = "3 SAME"
    4 = "4 WORSE"
    5 = "5 MUCH WORSE"  ;

  VALUE W200083W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 YES"
    2 = "2 NO/DON'T KNOW"  ;

  VALUE W200084W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 CONTINUE WITH ACTIVITY"
    2 = "2 SP REFUSES ACTIVITY"  ;

  VALUE W200085W
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "Word[1]"
    2 = "Word[2]"
    3 = "Word[3]"
    4 = "Word[4]"
    5 = "Word[5]"
    6 = "Word[6]"
    7 = "Word[7]"
    8 = "Word[8]"
    9 = "Word[9]"
    10 = "Word[10]"
    91 = "91 NO WORDS REMEMBERED"
    92 = "92 REFUSED"  ;

  VALUE W200086W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 DIFFICULTY HEARING ANY OF THE WORDS"
    2 = "2 INTERRUPTION OCCURRED WHILE LIST WAS BEING READ"
    91 = "91 OTHER PROBLEM (SPECIFY)"
    92 = "92 NO PROBLEMS OCCURRED"
    97 = "97 SP REFUSED WORD RECALL TASK"  ;

  VALUE W200087W
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 SP ATTEMPTED CLOCK DRAWING"
    2 = "2 SP DID NOT ATTEMPT CLOCK DRAWING"
    97 = "3 SP REFUSED CLOCK DRAWING"  ;

  VALUE W200089W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 EVERY DAY (7 DAYS A WEEK)"
    2 = "2 MOST DAYS (5-6 DAYS A WEEK)"
    3 = "3 SOME DAYS (2-4 DAYS A WEEK)"
    4 = "4 RARELY (ONCE A WEEK OR LESS)"
    5 = "5 NEVER"  ;

  VALUE W200090W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 EVERY TIME"
    2 = "2 MOST TIMES"
    3 = "3 SOMETIMES"
    4 = "4 RARELY"
    5 = "5 NEVER"  ;

  VALUE W200092W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 MOST TIMES"
    2 = "2 SOMETIMES"
    3 = "3 RARELY"
    4 = "4 NEVER"  ;

  VALUE W200093W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 NONE"
    2 = "2 A LITTLE"
    3 = "3 SOME"
    4 = "4 A LOT"  ;

  VALUE W200094W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 MORE OFTEN"
    2 = "2 LESS OFTEN"
    3 = "3 ABOUT THE SAME"  ;

  VALUE W200095W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 JANUARY"
    2 = "2 FEBRUARY"
    3 = "3 MARCH"
    4 = "4 APRIL"
    5 = "5 MAY"
    6 = "6 JUNE"
    7 = "7 JULY"
    8 = "8 AUGUST"
    9 = "9 SEPTEMBER"
    10 = "10 OCTOBER"
    11 = "11 NOVEMBER"
    12 = "12 DECEMBER"
    90 = "90 LAST INTERVIEW INFORMATION INCORRECT"  ;

  VALUE W200096W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 YES"
    2 = "2 NO"
    90 = "90 LAST INTERVIEW INFORMATION INCORRECT"  ;

  VALUE W200097W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 YES"
    2 = "2 NO / NO LONGER DRIVE"  ;

  VALUE W200098W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 YES"
    2 = "2 NO"
    7 = "7 NO, NO RAIN OR BAD WEATHER"  ;

  VALUE W200099W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 ALWAYS DID IT BY SELF"
    2 = "2 ALWAYS DID IT TOGETHER WITH SOMEONE ELSE"
    3 = "3 SOMEONE ELSE ALWAYS DID IT"
    4 = "4 IT VARIED (MORE THAN ONE WAY)"
    5 = "5 NOT DONE IN LAST MONTH"  ;

  VALUE W200102W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 MORE OFTEN"
    2 = "2 LESS OFTEN"
    3 = "3 SAME"  ;

  VALUE W200106W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 YES"
    2 = "2 NO"
    7 = "7 ALWAYS FED THROUGH IV OR TUBE"  ;

  VALUE W200107W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 EVERY TIME"
    2 = "2 MOST TIMES"
    3 = "3 SOMETIMES"
    4 = "4 RARELY"  ;

  VALUE W200109W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 SHOWERING"
    2 = "2 TAKING BATHS"
    3 = "3 WASHING UP SOME OTHER WAY"  ;


  VALUE W200114W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 VERY IMPORTANT"
    2 = "2 SOMEWHAT IMPORTANT"
    3 = "3 NOT SO IMPORTANT"  ;

  VALUE W200115W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 YES"
    2 = "2 NO"
    95 = "95 NO ACTIVITY LISTED"  ;

  VALUE W200116W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 LEFT"
    2 = "2 RIGHT"
    3 = "3 BOTH"  ;

  VALUE W200117W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 LEFT SIDE"
    2 = "2 RIGHT SIDE"
    3 = "3 BOTH SIDES"  ;

  VALUE W200118W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 ONE SIDE"
    2 = "2 BOTH SIDES"  ;

  VALUE W200119W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 RECEIVE ALL TREATMENTS"
    2 = "2 STOP/REJECT ALL TREATMENTS"  ;

  VALUE W200120W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 LIVING IN THEIR OWN HOME WITH HELP FROM FRIENDS AND FAMILY"
    2 = "2 LIVING IN THEIR OWN HOME WITH HELP FROM SOMEONE PAID TO COME IN"
    3 = "3 LIVING WITH AN ADULT CHILD"
    4 = "4 LIVING IN AN ASSISTED LIVING FACILITY OR CONTINUING CARE RESIDENCE"
    5 = "5 LIVING IN A NURSING HOME"  ;

  VALUE W200121W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 YES"
    2 = "2 NO"
    3 = "3 DOESNT HAVE ANY MONEY TO PAY A CAREGIVER"
    4 = "4 WOULD NOT USE A PAID CAREGIVER"  ;

  VALUE W200122W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 MAKE DECISIONS WITHOUT MUCH ADVICE FROM THEM"
    2 = "2 GET THEIR ADVICE AND THEN MAKE DECISIONS"
    3 = "3 MAKE DECISIONS TOGETHER"
    4 = "4 LEAVE DECISIONS UP TO THEM"  ;

  VALUE W200123W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 HANDLE MOSTLY BY SELF"
    2 = "2 HANDLE TOGETHER WITH FAMILY OR CLOSE FRIENDS"
    3 = "3 FAMILY OR CLOSE FRIENDS MOSTLY HANDLE THESE THINGS"
    4 = "4 IT VARIES"  ;

  VALUE W200124W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 NEVER"
    2 = "2 RARELY"
    3 = "3 SOMETIMES"
    4 = "4 OFTEN"  ;

  VALUE W200126W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 AGREE A LOT"
    2 = "2 AGREE A LITTLE"
    3 = "3 DO NOT AGREE"  ;

  VALUE W200127W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 AGREE A LOT"
    2 = "2 AGREE A LITTLE"
    3 = "3 AGREE NOT AT ALL"  ;

  VALUE W200129W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 less than $1,000,"
    2 = "2 $1,000 to less than $2,000,"
    3 = "3 $2,000 to less than $3,000,"
    4 = "4 $3,000 to less than $5,000, or"
    5 = "5 $5,000 or more?"  ;

  VALUE W200131W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 YES"
    2 = "2 NO"
    3 = "3 RETIRED/DON'T WORK ANYMORE"  ;

  VALUE W200132W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 EVERY WEEK"
    2 = "2 EVERY TWO WEEKS"
    3 = "3 TWO TIMES A MONTH"
    4 = "4 ONCE A MONTH"
    5 = "5 DAILY"
    91 = "91 OTHER SCHEDULE (SPECIFY)"  ;

  VALUE W200133W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 OWN"
    2 = "2 RENT"
    3 = "3 SOME OTHER ARRANGEMENT"  ;

  VALUE W200134W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 PAID OFF"
    2 = "2 STILL MAKE PAYMENTS"
    3 = "3 REVERSE MORTGAGE"  ;

  VALUE W200135W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 less than $250,"
    2 = "2 $250-$499,"
    3 = "3 $500-$999, or"
    4 = "4 $1,000 or more?"  ;

  VALUE W200136W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 5 YEARS"
    2 = "2 10 YEARS"
    3 = "3 LONGER THAN 10 YEARS"  ;

  VALUE W200137W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 less than $50,000,"
    2 = "2 between $50,000 and $100,000, or"
    3 = "3 over $100,000?"  ;

  VALUE W200138W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 less than $50,000,"
    2 = "2 $50,000-$74,999,"
    3 = "3 $75,000-$99,999,"
    4 = "4 $100,000-$199,999,"
    5 = "5 $200,000-$299,999,"
    6 = "6 $300,000-$499,999,"
    7 = "7 $500,000-$749,999, or"
    8 = "8 $750,000 or more?"  ;

  VALUE W200139W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 PAY OFF BALANCE"
    2 = "2 PAY MINIMUM"
    3 = "3 PAY MORE THAN MINIMUM, BUT NOT ENTIRE BALANCE"
    4 = "4 DON'T HAVE ANY CREDIT CARDS"  ;

  VALUE W200140W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 less than $1,000,"
    2 = "2 $1,000 - $1,999,"
    3 = "3 $2,000 - $3,999,"
    4 = "4 $4,000 - $5,999,"
    5 = "5 $6,000 - $9,999,"
    6 = "6 $10,000 - $19,999, or"
    7 = "7 $20,000 or more?"  ;

  VALUE W200141W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 MOST"
    2 = "2 SOME"
    3 = "3 A LITTLE"  ;

  VALUE W200142W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 less than $500,"
    2 = "2 $500 - $999,"
    3 = "3 $1,000 - $1,999,"
    4 = "4 $2,000 - $3,999,"
    5 = "5 $4,000 - $5,999,"
    6 = "6 $6,000 - $9,999,"
    7 = "7 $10,000 - $19,999, or"
    8 = "8 $20,000 or more?"  ;

  VALUE W200146W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 NEARLY EVERY DAY"
    2 = "2 MORE THAN HALF THE DAYS"
    3 = "3 SEVERAL DAYS (LESS THAN HALF)"
    4 = "4 A FEW DAYS"  ;

  VALUE W200147W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 INCLUDED"
    2 = "2 EXTRA CHARGE"  ;

  VALUE W200148W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 Yes"  ;

VALUE F200006W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 FREE STANDING NURSING HOME"
    2 = "2 FREE STANDING ASSISTED LIVING FACILITY"
    3 = "3 NURSING HOME AND ASSISTED LIVING FACILITY"
    4 = "4 CONTINUING CARE RETIREMENT COMMUNITY (CCRC)"
    5 = "5 ADULT FAMILY CARE HOME"
    6 = "6 GROUP HOME"
    7 = "7 BOARD AND CARE HOME"
    8 = "8 RETIREMENT COMMUNITY OR SENIOR HOUSING (NOT CCRC)"
    91 = "91 OTHER (SPECIFY)"  ;

  VALUE F200007W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 YES"
    2 = "2 NO"  ;

  VALUE F200008W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 INDEPENDENT LIVING"
    2 = "2 ASSISTED LIVING"
    3 = "3 SPECIAL CARE, MEMORY CARE, OR ALZHEIMER'S UNIT"
    4 = "4 NURSING HOME"
    91 = "91 OTHER (SPECIFY)"  ;

  VALUE F200009W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 ASSISTED LIVING"
    2 = "2 NURSING HOME"  ;

  VALUE F200011W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 YES, SERVICE PROVIDED AS PART OF PACKAGE"
    2 = "2 YES, SERVICE PROVIDED AT AN EXTRA CHARGE"
    3 = "3 NO, SERVICE NOT PROVIDED"  ;

  VALUE F200012W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 SP/FAMILY"
    2 = "2 SOCIAL SECURITY/SSI"
    3 = "3 MEDICAID"
    4 = "4 MEDICARE"
    5 = "5 OTHER SOURCE"  ;

  VALUE I200002W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 Yes"
    2 = "2 No"  ;

  VALUE I200003W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 English"
    2 = "2 Spanish"
    3 = "3 Other (specify)"  ;

  VALUE I200005W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 Friendly and interested"
    2 = "2 Cooperative but not particularly interested"
    3 = "3 Impatient and restless"
    4 = "4 Hostile"  ;

  VALUE I200006W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 Good"
    2 = "2 Fair"
    3 = "3 Poor"  ;

  VALUE I200008W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 All of the time"
    2 = "2 Most of the time"
    3 = "3 Some of the time"
    4 = "4 Only for the cognition and/or performance parts"
    5 = "5 None of the time"  ;

   VALUE I200010W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 Yes"
    2 = "2 No"
    3 = "3 Interview was conducted by telephone"  ;

  VALUE I200012W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 Yes"
    2 = "2 No"
    3 = "3 Not Administered"  ;

  VALUE I200013W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 Yes"
    2 = "2 No"  ;

  VALUE I200016W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 Yes"
    2 = "2 No"
    3 = "3 Entire interview conducted by telephone"  ;

  VALUE I200017W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 Not at all cluttered"
    2 = "2 Somewhat cluttered"
    3 = "3 Very cluttered"
    4 = "4 Could not see other rooms"  ;

  VALUE I200018W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 None"
    2 = "2 A little"
    3 = "3 Some"
    4 = "4 A lot"
    5 = "5 Could not observe"  ;

  VALUE I200019W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 Yes"
    2 = "2 No"
    7 = "7 Could not observe"  ;


/* DERIVED VARIABLE FORMATS */
  VALUE LVGARRG
    1 = '1 Alone'
    2 = '2 With spouse/partner only (spouse/partner in household]'
    3 = '3 With spouse/partner and with others'
    4 = '4 With others only'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE DOUTSFDF
    8 = '8 Not done in last month'
    1 = '1 Did not do by self in last month'
    2 = '2 Did by self in last month/No Difficulty'
    3 = '3 Did by self in last month/Difficulty'
    4 = '4 DKRF Did by self in last month/No Difficulty'
    5 = '5 DKRF Did by self in last month/Difficulty'
    6 = '6 Did by self in last month/DKRF Difficulty'
    7 = '7 DKRF Did by self in last month/DKRF Difficulty'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

VALUE DOUTDEVI
    8 = '8 Not done in last month'
    1 = '1 No use of devices to go outside in last month'
    2 = '2 Use of devices to go outside in last month'
    3 = '3 DKRF If used devices to go outside in last month'
    4 = '4 DKRF If used devices in last month'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE DOUTHELP
    8 = '8 Not done in last month'
    1 = '1 No help to go outside in last month'
    2 = '2 Had help to go outside in last month'
    3 = '3 DKRF If had help to go outside in last month'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE DINSDSFD
    8 = '8 Not done in last month'
    1 = '1 Did not do by self in last month'
    2 = '2 Did by self in last month/No Difficulty'
    3 = '3 Did by self in last month/Difficulty'
    4 = '4 DKRF Did by self in last month/No Difficulty'
    5 = '5 DKRF Did by self in last month/Difficulty'
    6 = '6 Did by self in last month/DKRF Difficulty'
    7 = '7 DKRF Did by self in last month/DKRF Difficulty'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE DINSDDEV
    8 = '8 Not done in last month'
    1 = '1 No use of devices inside in last month'
    2 = '2 Use of devices inside in last month'
    3 = '3 DKRF If used devices inside in last month'
    4 = '4 DKRF On use of devices'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE dinsdhlp
    8 = '8 Not done in last month'
    1 = '1 No help to go around inside in last month'
    2 = '2 Had help to go around inside in last month'
    3 = '3 DKRF If had help to go around inside in last month'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE dbedsfdf
    1 = '1 Did not do by self in last month'
    2 = '2 Did by self in last month/No Difficulty'
    3 = '3 Did by self in last month/Difficulty'
    4 = '4 DKRF Did by self in last month/No Difficulty'
    5 = '5 DKRF Did by self in last month/Difficulty'
    6 = '6 Did by self in last month/DKRF Difficulty'
    7 = '7 DKRF Did by self in last month/DKRF Difficulty'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

   VALUE dbeddevi
    1 = '1 No use of cane or walker to get out of bed in last month'
    2 = '2 Use of cane or walker to get out of bed in last month'
    3 = '3 DKRF If Used cane or walker to get out of bed in last month'
    4 = '4 DKRF If used cane or walker in last month'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE dbedhelp
    1 = '1 No help to get out of bed in last month'
    2 = '2 Had help to get out of bed in last month'
    3 = '3 DKRF If had help to get out of bed in last month'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';


  VALUE dlaunsfd
    1 = '1 Did not do by self in last month'
    2 = '2 Did by self in last month/No Difficulty'
    3 = '3 Did by self in last month/Difficulty'
    4 = '4 DKRF Did by self in last month/No Difficulty'
    5 = '5 DKRF Did by self in last month/Difficulty'
    6 = '6 Did by self in last month/DKRF Difficulty'
    7 = '7 DKRF Did by self in last month/DKRF Difficulty'
    8 = '8 Not done in last month'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';



  VALUE dlaunrea
    1= '1 Health/functioning reason only'
    2= '2 Other reason only'
    3= '3 Both health/functioning and other'
    4= '4 Service/someone from the place SP lives'
    -7 = '-7 RF'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE dshopsfd
    1 = '1 Did not do by self in last month'
    2 = '2 Did by self in last month/No Difficulty'
    3 = '3 Did by self in last month/Difficulty'
    4 = '4 DKRF Did by self in last month/No Difficulty'
    5 = '5 DKRF Did by self in last month/Difficulty'
    6 = '6 Did by self in last month/DKRF Difficulty'
    7 = '7 DKRF Did by self in last month/DKRF Difficulty'
    8 = '8 Not done in last month'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE dshoprea
    1= '1 Health/functioning reason only'
    2= '2 Other reason only'
    3= '3 Both health/functioning and other'
    4= '4 Service/someone from the place SP lives'
    -7 = '-7 RF'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE dmealsfd
    1 = '1 Did not do by self in last month'
    2 = '2 Did by self in last month/No Difficulty'
    3 = '3 Did by self in last month/Difficulty'
    4 = '4 DKRF Did by self in last month/No Difficulty'
    5 = '5 DKRF Did by self in last month/Difficulty'
    6 = '6 Did by self in last month/DKRF Difficulty'
    7 = '7 DKRF Did by self in last month/DKRF Difficulty'
    8 = '8 Not done in last month'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

    VALUE dmealrea
    1= '1 Health/functioning reason only'
    2= '2 Other reason only'
    3= '3 Both health/functioning and other'
    4= '4 Service/someone from the place SP lives'
    -7 = '-7 RF'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE dbanksfd
    1 = '1 Did not do by self in last month'
    2 = '2 Did by self in last month/No Difficulty'
    3 = '3 Did by self in last month/Difficulty'
    4 = '4 DKRF Did by self in last month/No Difficulty'
    5 = '5 DKRF Did by self in last month/Difficulty'
    6 = '6 Did by self in last month/DKRF Difficulty'
    7 = '7 DKRF Did by self in last month/DKRF Difficulty'
    8 = '8 Not done in last month'
    -7 = '-7 RF'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE dbankrea
    1= '1 Health/functioning reason only'
    2= '2 Other reason only'
    3= '3 Both health/functioning and other'
    4= '4 Service/someone from the place SP lives'
    -7 = '-7 RF'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE deatdevi
    1 = '1 No use of adapted utensils in last month'
    2 = '2 Use of adapted utensils in last month'
    8 = '8 Not done in last month'
    3 = '3 DKRF If used adapted utensils in last month'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE deathelp
    1 = '1 No help eating in last month'
    2 = '2 Had help eating in last month'
    3 = '3 DKRF If had help eating in last month'
    8 = '8 Not done in last month'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE deatsfdf
    1 = '1 Did not do by self in last month'
    2 = '2 No Difficulty by self (and when using utensils)'
    3 = '3 Difficulty by self (and when using utensils)'
    6 = '6 Did by self in last month/DKRF Difficulty'
    7 = '7 DKRF Did by self in last month/DKRF Difficulty'
    8 = '8 Not done in last month'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE dbathdev
    1 = '1 No use of grab bars or bath seats in last month'
    2 = '2 Use of grab bars or bath seats in last month'
    3 = '3 DKRF If use of grab bars or bath seats in last month'
    4 = '4 DKRF If had grab bars or bath seats in last month'
    9 = '9 No bars/seats/shower/tub or washes up other way'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE dbathhel
    1 = '1 No help bathing in last month'
    2 = '2 Had help bathing in last month'
    3 = '3 DKRF If had help bathing in last month'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE dbathsfd
    1 = '1 Did not do by self in last month'
    2 = '2 No Difficulty by self (and when using grab bars or tub seat)'
    3 = '3 Difficulty by self (and when using grab bars or tub seat)'
    6 = '6 Did by self in last month/DKRF Difficulty'
    7 = '7 DKRF Did by self in last month/DKRF Difficulty'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE dtoildev
    1 = '1 No use of toileting devices in last month'
    2 = '2 Use of toileting devices in last month'
    3 = '3 DKRF of some and no use of other toileting devices in last month'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE dtoilhel
    1 = '1 No help toileting in last month'
    2 = '2 Had help toileting in last month'
    3 = '3 DKRF If had help toileting in last month'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE dtoilsfd
    1 = '1 Did not do by self in last month'
    2 = '2 No Difficulty by self (and when using toileting devices)'
    3 = '3 Difficulty by self (and when using toileting devices)'
    6 = '6 Did by self in last month/DKRF Difficulty'
    7 = '7 DKRF Did by self in last month/DKRF Difficulty'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE ddresdev
    8 = '8 Not done in last month'
    9 = '9 DKRF If dressed in last month'
    2 = '2 Use of dressing devices in last month'
    1 = '1 No use of dressing devices in last month'
    3 = '3 DKRF If use of dressing devices in last month'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE ddreshel
    8 = '8 Not done in last month'
    9 = '9 DKRF If dressed in last month'
    1 = '1 No help dressing in last month'
    2 = '2 Had help dressing in last month'
    3 = '3 DKRF If had help dressing in last month'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE ddressfd
    1 = '1 Did not do by self in last month'
    2 = '2 No Difficulty by self (and when using dressing devices)'
    3 = '3 Difficulty by self (and when using dressing devices)'
    6 = '6 Did by self in last month/DKRF Difficulty'
    7 = '7 DKRF Did by self in last month/DKRF Difficulty'
    8 = '8 Not done in last month'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';
  VALUE dmedssfd
    1 = '1 Did not do by self in last month'
    2 = '2 Did by self in last month/No Difficulty'
    3 = '3 Did by self in last month/Difficulty'
    4 = '4 DKRF Did by self in last month/No Difficulty'
    5 = '5 DKRF Did by self in last month/Difficulty'
    6 = '6 Did by self in last month/DKRF Difficulty'
    7 = '7 DKRF Did by self in last month/DKRF Difficulty'
    8 = '8 Not done in last month'
    9 = '9 No or DKRF if medications taken in last month'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE dmedsrea
    1 = '1 HEALTH/FUNCTIONING REASON ONLY'
    2 = '2 OTHER REASON ONLY'
    3 = '3 BOTH HEALTH/FUNCTIONING AND OTHER'
    4 = '4 SERVICE/SOMEONE FROM THE PLACE SP LIVES'
    -7 = '-7 RF'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

  VALUE dmarstat
    1 = '1 Married'
    2 = '2 Living with a partner'
    3 = '3 Separated'
    4 = '4 Divorced'
    5 = '5 Widowed'
    6 = '6 Never married'
    -7 = '-7 RF'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';
  VALUE DSPSAGEC
     -7 = '-7 RF'
     -8 = '-8 DK'
     -1 = '-1 Inapplicable'
     -9 = '-9 Missing'
      1 = " 1 UNDER 50"
      2 = " 2 50-54"
      3 = " 3 55-59"
      4 = " 4 60-64"
      5 = " 5 65-69"
      6 = " 6 70-74"
      7 = " 7 75-79"
      8 = " 8 80-84"
      9 = " 9 85-89"
     10 = "10 90 +"    ;

    VALUE f_dresid
        1 = '1 Community '
        2 = '2 Residential care not nursing home (SP interview)'
        3 = '3 Residential care not nursing home (FQ only)'
        4 = '4 Nursing home (SP interview)'
        5 = '5 Nursing home (FQ only)'
        6 = '6 Deceased'
        7 = '7 Residential care not nursing home in R1 and R2 (FQ only)'
        8 = '8 Nursing home in R1 and R2 (FQ only)' ;
    VALUE f3dresid
		-1='-1 Inapplicable'
		1 = '1 Community '
        2 = '2 Residential care not nursing home (SP interview)'
        3 = '3 Residential care not nursing home (FQ only)'
        4 = '4 Nursing home (SP interview)'
        5 = '5 Nursing home (FQ only)'
        6 = '6 Deceased'
        7 = '7 Residential care not nursing home in R1 and R3 (FQ only)'
        8 = '8 Nursing home in R1 and R3 (FQ only)' ;

VALUE QUARTILE
-9="-9 Missing"
-1="-1 Inapplicable";

VALUE SPPB
-9="-9 Missing"
-1="-1 Inapplicable";
VALUE SPPB_MIS
    -9="-9 Missing"
    -1="-1 Inapplicable"
    1="1 PROXY INTERVIEW"
    2="2 MISSING WALK AND REPEAT CHAIR AND BALANCE"
    3="3 MISSING WALK AND REPEAT CHAIR"
    4="4 MISSING WALK AND BALANCE"
    5="5 MISSING REPEAT CHAIR AND BALANCE"
    6="6 MISSING WALK"
    7="7 MISSING REPEAT CHAIR"
    8="8 MISSING BALANCE"
    9="9 NO SPACE"
    10="10 NO CHAIR"
    11="11 NO SPACE WALK AND NO CHAIR"
    12="12 NO SPACE WALK AND NON-SAFETY MISSING"
    13="13 NO CHAIR AND NON-SAFETY MISSING"
    14="14 NON-SAFETY WALK"
    15="15 NON-SAFETY CHAIR"
    16="16 NON-SAFETY BALANCE"
    17="17 NON-SAFETY WALK AND CHAIR"
    18="18 NON-SAFETY WALK AND BALANCE"
    19="19 NON-SAFETY CHAIR AND BALANCE"
    20="20 NON SAFETY WALK AND CHAIR AND BALANCE";

    VALUE DCLCKSC
      0 = '0 Not recognizable as a clock'
      1 = '1 Severely distorted depiction of a clock'
      2 = '2 Moderately distorted depection of a clock'
      3 = '3 Mildly distorted depiction of a clock'
      4 = '4 Reasonably accurate depiction of a clock'
      5 = '5 Accurate depiction of a clock (circular or square)'
    -7 = '-7 SP refused to draw clock'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -2 = '-2 Proxy says cannot ask SP'
    -3 = '-3 Proxy says can ask SP but SP unable to answer'
    -4 = '-4 SP did not attempt to draw clock'
    -9 = '-9 Missing';

    VALUE DCLCKCL
      1 = '1 Very clear'
      2 = '2 Somewhat clear'
      3 = '3 Somewhat unclear'
      4 = '4 Very unclear'
      5 = '5 Blank'
    -7 = '-7 SP refused to draw clock'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -2 = '-2 Proxy says cannot ask SP'
    -3 = '-3 Proxy says can ask SP but SP unable to answer'
    -4 = '-4 SP did not attempt to draw clock'
    -9 = '-9 Missing';

VALUE RESULT
    -9='-9: MISSING'
    1='1: COMPLETED W RESULTS'
    2='2: COMPLETED MISSING RESULTS'
    3='3: ATTEMPTED W RESULTS'
    4='4: ATTEMPTED MISSING RESULTS'
    5='5: NOT ATTEMPTED SAFETY'
    6='6: NOT ATTEMPTED NOT SAFETY REASON'
    7='7: NO CHAIR/NO SPACE'
    9='9: NOT ATTEMPTED/MISSING';

    VALUE RESULT_SCH
    -9='-9: MISSING'
    1='1: COMPLETED W/OUT ARMS'
    2='2: COMPLETED W ARMS'
    3='3: ATTEMPTED W RESULTS'
    4='4: ATTEMPTED MISSING RESULTS'
    5='5: NOT ATTEMPTED SAFETY'
    6='6: NOT ATTEMPTED NOT SAFETY REASON'
    7='7: NO CHAIR/SAFETY REASON'
    8='8: NO CHAIR/NOT SAFETY REAS'
    9='9: NOT ATTEMPTED/MISSING'
    10='10: CH4=1 SINGLE CHAIR NOT COMPL';

    VALUE RESULT_RCH
    -9='-9: MISSING'
    1='1: COMPLETED W/OUT ARMS'
    2='2: COMPLETED MISSING RESULTS'
    3='3: ATTEMPTED W RESULTS'
    4='4: ATTEMPTED MISSING RESULTS'
    5='5: NOT ATTEMPTED SAFETY'
    6='6: NOT ATTEMPTED NOT SAFETY REASON'
    9='9: NO CHAIR OR NOT ATTEMPTED/MISSING';

    VALUE ZEROSCORE
    1="1: NOT ELIGIBLE DUE TO EXCLUSION CRITERIA"
    2="2: NOT ATTEMPTED FOR SAFETY REASON"
    3="3: ATTEMPTED CHAIR STANDS/NOT ATTEMPTED FOR SAFETY"
    4="4: ATTEMPTED"
    5="5: NEW WALKING EXCLUSION"
    9="9: NOT ASSIGNED A ZERO SCORE";

   VALUE D_LMLLOC
    1 = '1 Community'
    2 = '2 Residential Care'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

      VALUE D_LOCSP
       -7 = '-7 RF'
       -8 = '-8 DK'
       -1 = '-1 Inapplicable'
       -9 = '-9 Missing'
        1 = "1 Independent Living/Housing/Retirement"
        2 = "2 Assisted Living/Personal Care"
        3 = "3 Special Care, Memory or Alzheimer's Unit"
        4 = "4 Nursing Home"
        8 = "8 Not Reported" ;

        VALUE PA25FMT
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing'
    111= '111 Sleeping Napping'
    131= '131 Eating'
    132= '132 Going out to eat'
    199= '199 Other self care activities'
    211= '211 Work and work-related activities'
    221= '221 Other income generating activities'
    241= '241 Volunteering'
    299= '299 Other productive activities'
    321= '321 Shopping for non-durable goods'
    399= '399 Other shopping'
    411= '411 Food and drink preparation'
    434= '434 Outdoor Maintenance'
    439= '439 Household chores (cannot tell if indoor/outdoor)'
    441= '441 Animal and pet care'
    442= '442 Walking and exercising pets'
    449= '449 Other animal and pet care'
    451= '451 Vehicle maintenance and repair'
    471= '471 Financial management'
    499= '499 Other household activities'
    511= '511 Physical care and assistance to others'
    599= '599 Other physical care'
    611= '611 Socializing with others in person'
    612= '612 Socializing with others on the phone'
    616= '616 Socializing and communicating on the computer'
    621= '621 Watching TV and movies'
    631= '631 Doing puzzles or games not on computer or online'
    632= '632 Gambling not online or at a casino'
    636= '636 Doing puzzles or games on a computer or online'
    641= '641 Arts and crafts or hobbies'
    642= '642 Reading'
    643= '643 Writing'
    644= '644 Listening to music'
    646= '646 Computer or online leisure activities'
    651= '651 Smoking or other tobacco use'
    652= '652 Drinking alcohol'
    661= '661 Doing nothing/relaxing'
    669= '669 No activity'
    699= '699 Other non active leisure'
    711= '711 Playing sports'
    712= '712 Walking or jogging'
    713= '713 Other outdoor recreating activities'
    714= '714 Attending sporting events'
    715= '715 Other physical activity, exercise, yoga, swimming, working out, dancing'
    718= '718 Watching sporting events'
    721= '721 Attending arts  including plays and concerts'
    723= '723 Attending movies'
    724= '724 Attending casinos'
    737= '737 Travel for leisure'
    799= '799 Other active leisure'
    811= '811 Attending religious activities'
    812= '812 Other religious and spirtual activities'
    821= '821 Attending meetings or events'
    899= '899 Other organizational activity'
    991= '991 Other miscellaneous'
    992= '992 No favorite activity'
    997= '997 Refused'
    998= '998 Dont Know'
    999= '999 Not Codeable';

          VALUE OCC_CODE
1   ='1 Management Occupations: 0010-0430'
2   ='2 Business and Financial Operations Occupations:  0500-0950'
3   ='3 Computer and mathematical occupations:  1000-1240'
4   ='4 Architecture and Engineering Occupations:   1300-1560'
5   ='5 Life, Physical, and Social Science Occupations: 1600-1965'
6   ='6 Community and Social Service Occupations:   2000-2060'
7   ='7 Legal Occupations:  2100-2160'
8   ='8 Education, Training, and Library Occupations:   2200-2550'
9   ='9 Arts, Design, Entertainment, Sports, and Media Occupations: 2600-2960'
10  ='10 Healthcare Practitioners and Technical Occupations:    3000-3540'
11  ='11 Healthcare Support Occupations:    3600-3655'
12  ='12 Protective Service Occupations:    3700-3955'
13  ='13 Food Preparation and Serving Related Occupations:  4000-4160'
14  ='14 Building and Grounds Cleaning and Maintenance Occupations: 4200-4250'
15  ='15 Personal Care and Service Occupations: 4300-4650'
16  ='16 Sales and Related Occupations: 4700-4965'
17  ='17 Office and Administrative Support Occupations: 5000-5940'
18  ='18 Farming, Fishing, and Forestry Occupations:    6000-6130'
19  ='19 Construction and Extraction Occupations:   6200-6940'
20  ='20 Installation, Maintenance, and Repair Occupations: 7000-7630'
21  ='21 Production Occupations:    7700-8965'
22  ='22 Transportation and Material Moving Occupations:    9000-9750'
23  ='23 Military Specific Occupations: 9800-9830'
24  ='24 No current occ (Unemployed, no work in the last 5 years, never worked):  9920'
25 = '25 Blank field'
26 = '26 Code did not match'
94 = '94 Uncodable'
95 = '95 Never Worked Entire Life'
96 = '96 Homemaker/Raised Children'
-7 = '-7 RF'
-8 = '-8 DK'
-1 = '-1 Inapplicable'
-9 = '-9 Missing';

    Value fl_Dfac
1 = '1 Should have routed as facility but did not'
2 = '2 Routed as facility but determined not facility resident'
-1 = '-1 Inapplicable';
VALUE PE_RSLT
    -9='-9 Missing'
    -1 = '-1 Inapplicable'
    1='1 Completed'
    2='2 Attempted'
    3='3 Not attempted' ;
VALUE dosfacd /* FOR FQ2dosfacd  */
        -9= "-9 Missing"
       -8 = "-8 DK"
       -1 = "-1 INAPPLICABLE"
        1 = " 1 FREE STANDING NURSING HOME"
        2 = " 2 FREE STANDING ASSISTED LIVING FACILITY / RESIDENTIAL CARE FACILITY"
        3 = " 3 NURSING HOME AND ASSISTED LIVING FACILITY"
        4 = " 4 CONTINUING CARE RETIREMENT COMMUNITY (CCRC)"
        5 = " 5 ADULT FAMILY CARE HOME"
        6 = " 6 GROUP HOME"
        7 = " 7 BOARD AND CARE HOME / PERSONAL CARE HOME"
        8 = " 8 RETIREMENT COMMUNITY OR SENIOR HOUSING (NOT CCRC)"
        9 = " 9 INDEPENDENT LIVING"
       10 = " 10 ASSISTED AND INDEPENDENT/RETIREMENT (NO NURSING HOME)"
       11 = " 11 HOUSING (APT, CONDO, ETC.)";
        ;
    VALUE dosfaca /* FOR FQ2dosfaca */
        -9= "-9 Missing"
       -8 = "-8 DK"
       -1 = "-1 INAPPLICABLE"
        1 = " 1 INDEPENDENT LIVING / HOUSING / RETIREMENT "
        2 = " 2 ASSISTED LIVING / PERSONAL CARE"
        3 = " 3 SPECIAL CARE, MEMORY CARE, OR ALZHEIMER'S UNIT"
        4 = " 4 NURSING HOME"   ;

VALUE INAP_YN
     1 = ' 1 Yes'
     2 = ' 2 No'
    -1 = '-1 Inapplicable' ;
VALUE CENDIV /* RE1DCENSDIV - Updated for R2 - Re-Release */
    1 =  '1 Northeast Region: New England Division (ME, NH, VT, MA, RI, CT)'
    2 =  '2 Northeast Region: Middle Atlantic Division (NY, NJ, PA)'
    3 =  '3 Midwest Region: East North Central Division (OH, IN, IL, MI, WI)'
    4 =  '4 Midwest Region: West North Central Division (MN, IA, MO, ND, SD, NE, KS)'
    5 =  '5 South Region: South Atlantic Division (DE, MD, DC, VA, WV, NC, SC, GA, FL)'
    6 =  '6 South Region: East South Central Division (KY, TN, AL, MS)'
    7 =  '7 South Region: West South Central Division (AR, LA, OK, TX)'
    8 =  '8 West Region: Mountain Division (MT, ID, WY, CO, NM, AZ, UT, NV)'
    9 =  '9 West Region: Pacific Division (WA, OR, CA, AK, HI)'
    -9 = '-9 Missing';

    VALUE W000002W
      -7 = '-7 RF'
      -8 = '-8 DK'
      -1 = '-1 Inapplicable'
      -9 = '-9 Missing'
       1 = "1 MALE"
       2 = "2 FEMALE"  ;

    VALUE W000005W
     1 = ' 1 Yes'
     2 = ' 2 No'
    -7 = '-7 RF'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

    VALUE R1DRESID
     1 = '1 Community '
     2 = '2 Residential Care Resident not nursing home (SP interview complete)'
     3 = '3 Residential Care Resident not nursing home (FQ only)'
     4 = '4 Nursing Home Resident';

  VALUE W200016W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 MEDICAID"
    2 = "2 MEDICARE"
    3 = "3 STATE PROGRAM"
    91 = "91 OTHER (SPECIFY)"   ;

    VALUE W200012W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 REGULAR"
    2 = "2 VARIED"  ;

  VALUE W200061W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 SEPARATION OR DIVORCE"
    2 = "2 DECEASED"
    3 = "3 MOVED ELSEWHERE"
    5 = "5 LAST INTERVIEW INFORMATION INCORRECT"
    8 = "8 OTHER REASON"   ;

  VALUE d2hrsmth
    -13= '-13 Deceased '
    -12= '-12 Zero days/wk'
    -11= '-11 Hours missing'
    -10= '-10 Days missing'
    -9 = ' -9 Days and hrs missing'
    -1 = ' -1 Inapplicable'
    -7 = ' -7 RF'
    -8 = ' -8 DK'
     0-<1  ='<1'
     1-<10 =' 1-<10'
    10-<20 ='10-<20'
    20-<30 ='20-<30'
    30-<40 ='30-<40'
    40-<60 ='40-<60'
    60-<120 ='60-<120'
    120-<180='120-<180'
    180-744='180-744 (24/7)'
     9999='9999 Not codeable, <1 hour/day' ;

  VALUE dhrsmth
    -11= '-11:hours missing'
    -10= '-10:days missing'
    -9 = '-9:days and hrs missing'
    -1 = '-1 Inapplicable'
    -7 = '-7 RF'
    -8 = '-8 DK'
     0-<1  ='<1'
     1-<10 =' 1-<10'
    10-<20 ='10-<20'
    20-<30 ='20-<30'
    30-<40 ='30-<40'
    40-<60 ='40-<60'
    60-<120 ='60-<120'
    120-<180='120-<180'
    180-744='180-744 (24/7)'
     9999='9999 Not codeable, <1 hour/day' ;

 Value dmissadd
-1='-1 not applicable'
 1='1 no flags and added at CL section'
 2='2 no flags and added at DT section'
 3='3 no flags and added at EW section'
 4='4 no flags and added at HA section'
 5='5 no flags and added at HO section'
 6='6 no flags and added at MC section'
 7='7 no flags and added at MO section'
 8='8 no flags and added at PA section'
 9='9 no flags and added at PE section'
10='10 no flags and added at SC section'
11='11 no flags and added at SN section';

Value d2mssadd
-1='-1 Inapplicable'
 0='0 no flags and added at undetermined section'
 1='1 no flags and added at CL section'
 2='2 no flags and added at DT section'
 3='3 no flags and added at EW section'
 4='4 no flags and added at HA section'
 5='5 no flags and added at HO section'
 6='6 no flags and added at MC section'
 7='7 no flags and added at MO section'
 8='8 no flags and added at PA section'
 9='9 no flags and added at PE section'
10='10 no flags and added at SC section'
11='11 no flags and added at SN section'
12='12 no flags and added at CS section'
13='13 no flags and added at HH section'
14='14 no flags and added at IS section';

Value dopage3c
 -9='-9 Missing'
 -8='-8 RF'
 -7='-7 DK'
 -1='-1 Inapplicable'
  1='1 UNDER 30'
  2='2 30-39'
  3='3 40-49'
  4='4 50-59'
  5='5 60-69'
  6='6 70-79'
  7='7 80-89'
  8='8 90 +';

 Value dopagect
-9='-9 Missing'
-8='-8 DK'
-7='-7 RF'
-1='-1 Inapplicable'
 1='1 UNDER 20'
 2='2 20-24'
 3='3 25-29'
 4='4 30-34'
 5='5 35-39'
 6='6 40-44'
 7='7 45-49'
 8='8 50-54'
 9='9 55-59'
10='10 60-64'
11='11 65-69'
12='12 70-74'
13='13 75-79'
14='14 80-84'
15='15 85-89'
16='16 90 +';


  VALUE W200008W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 UNDER 20"
    2 = "2 20-24"
    3 = "3 25-29"
    4 = "4 30-34"
    5 = "5 35-39"
    6 = "6 40-44"
    7 = "7 45-49"
    8 = "8 50-54"
    9 = "9 55-59"
    10 = "10 60-65"
    11 = "11 66-69"
    12 = "12 70-74"
    13 = "13 75-79"
    14 = "14 80-85"
    15 = "15 86-89"
    16 = "16 90-94"
    17 = "17 95-99"
    18 = "18 100 +"
  ;
    VALUE NumCigs
    -7 = '-7 RF'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing'
    999 = '999 SP smokes less than 1 cigarette / day';


  VALUE dlmlint
    1 = '1 Last month of life interview'
   -1 = '-1 Inapplicable'     ;

  VALUE d2intvra
     1 = '1 65 to 69'
     2 = '2 70 to 74'
     3 = '3 75 to 79'
     4 = '4 80 to 84'
     5 = '5 85 to 89'
     6 = '6 90+'
     -7 = '-7 RF'
     -8 = '-8 DK'
     -1 = '-1 Inapplicable'
     -9 = '-9 Missing'     ;

  VALUE dad8dem
    1 = '1 DEMENTIA RESPONSE TO ANY AD8 ITEMS IN PRIOR ROUNDS'
   -1 = '-1 Inapplicable'    ;

  VALUE dwrdinon
  1 = '1 NO WORDS REMEMBERED'
   -1 = '-1 Inapplicable'
     -9 = '-9 Missing'     ;

  VALUE dwrdirre
    1 = '1 REFUSED WORD RECALL TASK'
   -1 = '-1 Inapplicable'
      -9 = '-9 Missing'     ;

 VALUE A0001AB
      1 = "1 AM"
      2 = "2 PM"
     -1 = '-1 Inapplicable'
     -9 = '-9 Missing';

 VALUE A0002WA
      1 = "1 Yes, there is space to set up the walking course"
      2 = "2 No, there is not space to set up the walking course"
     -1 = '-1 Inapplicable'
     -9 = '-9 Missing';

 VALUE A0004WA
      1 = "1 None"
      2 = "2 Cane"
      3 = "3 Walker or rollator"
      9 = "9 Other, specify"
     -1 = '-1 Inapplicable'
     -7 = '-7 RF'
     -8 = '-8 DK'
     -9 = '-9 Missing';

 VALUE A0004CH
      1 = "1 No, chair stand not completed"
      2 = "2 Yes, chair stand completed"
     -1 = '-1 Inapplicable'
     -9 = '-9 Missing';

 VALUE A0008CH
      1 = "1 With arms"
      2 = "2 Without arms"
     -1 = '-1 Inapplicable'
     -9 = '-9 Missing';

 VALUE A0014CH
      1 = "1 1 Chair stand completed"
      2 = "2 2 Chair stands completed"
      3 = "3 3 Chair stands completed"
      4 = "4 4 Chair stands completed"
     -1 = '-1 Inapplicable'
     -9 = '-9 Missing';

VALUE BA1SS
    1 = '1 Eligible and recorded result for SxS Balance'
    2 = '2 Eligible and no recorded result for SxS Balance'
    4 = '4 Not Eligible due to exclusion criteria'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

VALUE BA1STAN
    1 = '1 Eligible and recorded result for Semi Tandem Balance'
    2 = '2 Eligible and no recorded result for Semi Tandem Balance'
    3 = '3 Not administered because did not complete prior balance test'
    4 = '4 Not Eligible due to exclusion criteria'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

VALUE BA1TAN
    1 = '1 Eligible and recorded result for full tandem balance'
    2 = '2 Eligible and no recorded result for full tandem balance'
    3 = '3 Not administered because did not complete prior balance tests'
    4 = '4 Not Eligible due to exclusion criteria'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

VALUE BA1OP
    1 = '1 Eligible and recorded result for one leg eyes open balance'
    2 = '2 Eligible and no recorded result for one leg eyes open balance'
    3 = '3 Not administered because did not complete prior balance tests'
    4 = '4 Not Eligible due to exclusion criteria'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

VALUE BA1CL
    1 = '1 Eligible and recorded result for one leg eyes closed balance'
    2 = '2 Eligible and no recorded result for one leg eyes closed balance'
    3 = '3 Not administered because did not complete prior balance tests'
    4 = '4 Not Eligible due to exclusion criteria'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

VALUE WA1WLK
    1 = '1 Eligible and recorded result for walking course'
    2 = '2 Eligible and no recorded result for walking course'
    4 = '4 Not Eligible due to exclusion criteria'
    5 = '5 Not Eligible on exclusion criteria but recorded result (SP changed mind)'
    -1 = '-1 Inapplicable '
    -9 = '-9 Missing';

VALUE CH1SCH
    1 = '1 Eligible and recorded result for single chair stand'
    2 = '2 Eligible and no recorded result for single chair stand'
    4 = '4 Not Eligible due to exclusion criteria'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

VALUE CH1RSH
    1 = '1 Eligible and recorded result for repeated chair stand'
    2 = '2 Eligible and no recorded result for repeated chair stand'
    3 = '3 Not administered because did not complete single chair stand w/o arms'
    4 = '4 Not Eligible due to exclusion criteria'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

VALUE GR1GRIP
    1 = '1 Eligible and recorded result for grip strength'
    2 = '2 Eligible and no recorded result for grip strength'
    4 = '4 Not Eligible due to exclusion criteria'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

VALUE WC1WAIST
    1 = '1 Eligible and recorded result for waist circumference'
    2 = '2 Eligible and no recorded result for waist circumference'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

VALUE PK1PEAK
    1 = '1 Eligible and recorded result for peak air flow'
    2 = '2 Eligible and no recorded result for peak air flow'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

 VALUE RGT_LFT
   1 = '1 Right'
   2 = '2 Left'
  -1 = '-1 Inapplicable'
  -9 = '-9 Missing';

 VALUE PERSON
    1 = '1 Interviewer'
    2 = '2 Sample person'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing';

 VALUE STAND
     1 = '1 Standing'
     2 = '2 Sitting'
     3 = '3 Lying down'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

 VALUE EFFORT
      1 = '1 Full effort'
      2 = '2 Less effort for health reason'
      3 = '3 Less effort for other reason'
     -1 = '-1 Inapplicable'
     -9 = '-9 Missing';
    VALUE WORDREC
        1 = ' 1 LIST 1'
        2 = ' 2 LIST 2'
        3 = ' 3 LIST 3'
       -1 = '-1 Inapplicable '
       -9 = '-9 Missing';
    VALUE WORDRE_N
        -1 = '-1 Inapplicable'
        -2 = '-2 Proxy says cannot ask SP'
        -3 = '-3 Proxy says can ask SP but SP unable to answer'
        -7 = '-7 SP refused activity'
        -9 = '-9 Missing';

        VALUE  DMH_GRP
            1 = "1 Help started"
            2 = "2 Help ended"
            3 = "3 Help both interviews with gap"
            4 = "4 Help both interviews with no gap"
            5 = "5 Help between interviews only (month ended missing)"
            6 = "6 No help either interview or between"
           11 = "11 Help started (month started missing)"
           21 = "21 Help ended (month ended missing)"
           41 = "41 Help both interviews (DK whether gap)"
           61 = "61 No help either interview (DK whether help between)"
           -9 = "-9 Missing"
           -1 = "-1 Inapplicable"
         -999 = "-999 Not determined" ;

        VALUE  DMU_GRP
            1 = "1 Use started"
            2 = "2 Use ended"
            3 = "3 Use both interviews with gap"
            4 = "4 Use both interviews with no gap"
            5 = "5 Use between interviews only (month ended missing)"
            6 = "6 No use either interview or between"
           11 = "11 Use started (month started missing)"
           21 = "21 Use ended (month ended missing)"
           41 = "41 Use both interviews (DK whether gap)"
           61 = "61 No use either interview (DK whether use between)"
           -9 = "-9 Missing"
           -1 = "-1 Inapplicable"
         -999 = "-999 Not determined" ;

       VALUE  DS_GRP
            1 = "1 Help started"
            2 = "2 Help ended"
            3 = "3 Help both interviews with gap"
            4 = "4 Help both interviews with no gap"
            5 = "5 Help between interviews only"
            6 = "6 No help either interview or between"
           11 = "11 Help started (month started missing)"
           21 = "21 Help ended (month ended missing)"
           41 = "41 Help both interviews (DK whether gap)"
           61 = "61 No help either interview (DK whether help between)"
           -9 = "-9 Missing"
           -1 = "-1 Inapplicable"
         -999 = "-999 Not determined" ;

        VALUE  DMDSINTV
            0 = "0 Less than 1 month"
            1 = "1 Month"
            2 = "2 Months"
            3 = "3 Months"
            4 = "4 Months"
            5 = "5 Months"
            6 = "6 Months"
            7 = "7 Months"
            8 = "8 Months"
            9 = "9 Months"
           10 = "10 Months"
           11 = "11 Months"
           12 = "12 Months"
           13 = "13 Months"
           14 = "14 Months"
           15 = "15 Months"
           16 = "16 Months"
           17 = "17 Months"
           18 = "18 Months"
           19 = "19 Months"
           20 = "20 Months"
           21 = "21 Months"
           22 = "22 Months"
           23 = "23 Months"
           24 = "24 Months"
           90 = "90 Last round disputed"
           -1 = "-1 Inapplicable"
           -7 = "-7 Refused"
           -8 = "-8 Dont know"
           -9 = "-9 Missing" ;

        VALUE  DMDS_DUR
            0 = "0 Less than 1 month"
            1 = "1 Month"
            2 = "2 Months"
            3 = "3 Months"
            4 = "4 Months"
            5 = "5 Months"
            6 = "6 Months"
            7 = "7 Months"
            8 = "8 Months"
            9 = "9 Months"
           10 = "10 Months"
           11 = "11 Months"
           12 = "12 Months"
           13 = "13 Months"
           14 = "14 Months"
           15 = "15 Months"
           16 = "16 Months"
           17 = "17 Months"
           90 = "90 Last round disputed"
           -1 = "-1 Inapplicable"
           -7 = "-7 Refused"
           -8 = "-8 Dont know"
           -9 = "-9 Missing"
          -10 = "-10 Not ascertained"
          -12 = "-12 Outside of range"
          -13 = "-13 None"
         -999 = "-999 Not determined" ;

        VALUE  DMDSFLG
            -1 = "-1 Inapplicable"
             1 = "1 No SP interview last round"
             2 = "2 Died and month death missing"
             3 = "3 Died <=1 month after last interview"
             4 = "4 Died 12-13 months after last interview"
             5 = "5 Died and not mobile (fl2notmobile=1)"
             6 = "6 Died and not alert (fl2notalert =1)"
             7 = "7 Skipped 1 or more help questions" ;

        VALUE  DMDS3FLG
            -1 = "-1 Inapplicable"
             1 = "1 No SP interview last round"
             2 = "2 Died and month death missing"
             3 = "3 Died <=1 month after last interview"
             4 = "4 Died 12-13 months after last interview"
             5 = "5 Died and not mobile (fl3notmobile=1)"
             6 = "6 Died and not alert (fl3notalert =1)"
             7 = "7 Skipped 1 or more help questions" ;

		VALUE SP30051W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 EXCELLENT"
    2 = "2 VERY GOOD"
    3 = "3 GOOD"
    4 = "4 FAIR"
    5 = "5 POOR"
    6 = "6 DOES NOT APPLY/NO CARE IN LAST MONTH OF LIFE"
  ;
    VALUE SP3019aW
       -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 JANUARY"
    2 = "2 FEBRUARY"
    3 = "3 MARCH"
    4 = "4 APRIL"
    5 = "5 MAY"
    6 = "6 JUNE"
    7 = "7 JULY"
    8 = "8 AUGUST"
    9 = "9 SEPTEMBER"
    10 = "10 OCTOBER"
    11 = "11 NOVEMBER"
    12 = "12 DECEMBER"
    90 = "90 LAST INTERVIEW INFORMATION INCORRECT"
  ;
  VALUE RACEHISP
        1 = ' 1 White, non-hispanic'
        2 = ' 2 Black, non-hispanic'
        3 = ' 3 Other (Am Indian/Asian/Native Hawaiian/Pacific Islander/other specify), non-Hispanic'
        4 = ' 4 Hispanic'
        5 = ' 5 More than one DKRF primary'
        6 = ' 6 DKRF'
       -9 = '-9 Missing';

/* The following may not need to be included on the public release file but are
        needed for internal Westat File processing  */

    VALUE SPPB_MISSING
       -7 = '-7 RF'
   -8 = '-8 DK'
   -9 = '-9 Missing'
    -1="-1 Inapplicable"
    1="1 PROXY INTERVIEW"
    2="2 MISSING WALK AND REPEAT CHAIR AND BALANCE"
    3="3 MISSING WALK AND REPEAT CHAIR"
    4="4 MISSING WALK AND BALANCE"
    5="5 MISSING REPEAT CHAIR AND BALANCE"
    6="6 MISSING WALK"
    7="7 MISSING REPEAT CHAIR"
    8="8 MISSING BALANCE"
    9="9 NO SPACE"
    10="10 NO CHAIR"
    11="11 NO SPACE WALK AND NO CHAIR"
    12="12 NO SPACE WALK AND NON-SAFETY MISSING"
    13="13 NO CHAIR AND NON-SAFETY MISSING"
    14="14 NON-SAFETY WALK"
    15="15 NON-SAFETY CHAIR"
    16="16 NON-SAFETY BALANCE"
    17="17 NON-SAFETY WALK AND CHAIR"
    18="18 NON-SAFETY WALK AND BALANCE"
    19="19 NON-SAFETY CHAIR AND BALANCE"
    20="20 NON SAFETY WALK AND CHAIR AND BALANCE";

    VALUE QUARTILES
-9="-9 Missing"
-1="-1 Inapplicable"
;
  VALUE SP30025W
       -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 FREE-STANDING (DETACHED) SINGLE HOUSE"
    2 = "2 SINGLE HOUSE BUT ATTACHED TO OTHERS (ROW HOUSE, TOWNHOUSE, DUPLEX, TRIPLEX, OR TRIPLE DECKER)"
    3 = "3 MOBILE HOME OR TRAILER"
    4 = "4 MULTI-UNIT (2+) BUILDING"
    91 = "91 OTHER (SPECIFY)"
  ;
    VALUE SP30046W
        -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
     1 = "1 AT SP'S HOME"
      2 = "2 IN A HOSPITAL"
      3 = "3 IN A NURSING HOME"
      4 = "4 IN A HOSPICE RESIDENCE"
      5 = "5 AT SOMEONE ELSE'S HOME"
      91 = "91 SOMEWHERE ELSE (SPECIFY)"
  ;
    VALUE SP30076W
       -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
      1 = "1 YES"
      2 = "2 NO"
      7 = "7 YES, DOESNT KNOW HOW TO USE"
  ;
    VALUE W300151W
     -7 = '-7 RF'
     -8 = '-8 DK'
     -1 = '-1 Inapplicable'
     -9 = '-9 Missing'
      1 = "1 VERY GOOD"
      2 = "2 GOOD"
      3 = "3 FAIR"
      4 = "4 POOR"
    5 = "5 VERY POOR"  ;

      VALUE SP30076H
       -7 = '-7 RF'
       -8 = '-8 DK'
       -1 = '-1 Inapplicable'
       -9 = '-9 Missing'
    95 = "95 NO USUAL NUMBER OF HOURS OR DIFFERENT FROM DAY TO DAY"  ;
      VALUE SP30076G
       -7 = '-7 RF'
       -8 = '-8 DK'
       -1 = '-1 Inapplicable'
       -9 = '-9 Missing'
    95 = "95 NO USUAL TIME OR DIFFERENT FROM DAY TO DAY"  ;
          VALUE SP30076I
           -7 = '-7 RF'
           -8 = '-8 DK'
           -1 = '-1 Inapplicable'
           -9 = '-9 Missing'
        95 = "95 NO USUAL NUMBER OF HOURS OR DIFFERENT FROM NIGHT TO NIGHT"  ;
          VALUE SP30076J
           -7 = '-7 RF'
           -8 = '-8 DK'
           -1 = '-1 Inapplicable'
           -9 = '-9 Missing'
        95 = "95 NO USUAL TIME OR DIFFERENT FROM NIGHT TO NIGHT"  ;
          VALUE SP30076K
           -7 = '-7 RF'
           -8 = '-8 DK'
           -1 = '-1 Inapplicable'
           -9 = '-9 Missing'
		   0 = "0 LESS THAN AN HOUR"
        90 = "90 FELL ASLEEP RIGHT AWAY"  
        95 = "95 NO USUAL AMOUNT OF TIME TO FALL ASLEEP OR DIFFERENT FROM NIGHT TO NIGHT"  ;
          VALUE SP30155W
           -7 = '-7 RF'
           -8 = '-8 DK'
           -1 = '-1 Inapplicable'
           -9 = '-9 Missing'
            1 = "1 NAPS PLANNED"
            2 = "2 FELL ASLEEP WITHOUT MEANING TO"
            3 = "3 BOTH (SOME PLANNED/SOME NOT)"
  ;
  VALUE SP30120W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 OFTEN"
    2 = "2 SOMETIMES"
    3 = "3 RARELY"
    4 = "4 NEVER"  ;
Value HOURSF
 -13='-13 SP deceased/section not administered'
 -12='-12 Valid skip/staff'
 -11='-11 Hours missing'
 -10='-10 Days missing'
  -9='-9 Days and hrs missing'
  -1='-1 Inapplicable'
 0-  1='0-<1'
 1.01- 10='1-<10'
10.01- 20='10-<20'
20.01- 30='20-<30'
30.01-40='30-<40'
40.01-60='40-<60'
60.01-120='60-<120'
120.01-180='120-<180'
180.01-744='180-744 (24/7)'
9999='9999 Not codeable, <1 hour/day';
  VALUE SP30120W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 OFTEN"
    2 = "2 SOMETIMES"
    3 = "3 RARELY"
    4 = "4 NEVER"
  ;
  VALUE SP30118W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 A LOT"
    2 = "2 SOME"
    3 = "3 A LITTLE"
    4 = "4 NOT AT ALL"
  ;
  VALUE SP30141W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "less than $27,600,"
    2 = "$27,600-$41,999,"
    3 = "$42,000-$63,999,"
    4 = "$64,000-$107,999, or"
    5 = "$108,000 or more?"
  ;

  VALUE SP30142W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "less than $14,000,"
    2 = "$14,000-$21,999,"
    3 = "$22,000-$35,999,"
    4 = "$36,000-$48,999, or"
    5 = "$49,000 or more?"
  ;
  VALUE INVENT
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
		104="104-Arthritis"
		107="107-Lung Disease"
		109="109-Dementia or Alzheimer's disease"
		110="110-Cancer"
		113="113-Other serious disease, illness, health problem"
		114="114-Knee surgery/problem"
		115="115-Hip repair or replacement/problem"
		117="117-Back or Spine Surgery/problem"
		121="121-Sleep Problems"
		201="201-Hearing problems"
		202="202-Sight problems"
		205="205-Pain"
		301="301-Breathing problems"
		302="302-Upper body strength movement"
		303="303-Lower body strength movement"
		304="304-Low energy"
		305="305-Balance or coordination problems"
		306="306-Walking distances"
		307="307-Climbing stairs"
		308="308-Lifting and carrying items"
		309="309-Kneeling"
		310="310-Bending"
		311="311-Reaching"
		312="312-Opening Jars"
		313="313-Grasping"
		401="401-Memory"
		501="501-Getting out of bed"
		502="502-Getting around inside"
		503="503-Getting outside"
		504="504-Travel/transportation"
		601="601-Eating"
		602="602-Washing"
		603="603-Toileting"
		604="604-Dressing"
		605="605-Grooming"
		701="701-Laundry"
		702="702-Shopping"
		703="703-Cooking"
		705="705-Money matters"
		706="706-Indoor cleaning and maintenance"
		707="707-Outdoor cleaning and maintenance"
		801="801-Medications"
		802="802-Doctor visits"
		804="804-Other medical self-care"
		1211="1211-Working"
		1442="1442-Walking/exercising pets"
		1451="1451-Vehicle repair and maintenance"
		1461="1461-Appliance tool, and toy use, set-up, repair, & maintenance"
		1462="1462-Computer use, set-up, repair, maintenance, and education"
		1473="1473-Household organization"
		1512="1512-Looking after someone else"
		1611="1611-Socializing and communicating with others-in person"
		1612="1612-Socializing and communication with others by talking on telephone"
		1613="1613-Attending or hosting party, wedding or social occasions"
		1614="1614-Reading and sorting through the mail"
		1621="1621-Watch television and movies"
		1631="1631-Games & puzzles"
		1641="1641-Arts and crafts, collecting, and hobbies, making music"
		1642="1642-Reading"
		1643="1642-Writing (personal, not on computer)"
		1644="1644-Listening to recorded music or radio"
		1711="1711-Playing/practicing sports or taking physical activity class/lessons"
		1712="1712-Walking/jogging for exercise or pleasure or working out"
		1713="1713-Other outdoor recreation activities"
		1813="1813-Religious & spiritual volunteer activities"
		1901="1901-Other, no existing code"
		1998="1998-Don't know"
		1999="1999-Refused/blank";
		
VALUE Imp_Flg
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    0 = "0 No"
    1 = "1 Yes"  ;

run;
/* Section #2 - Input statement with variable name and location on the .txt file  
		Reminder - change [PATH] to reflect your file locations       */
Data spfile;
INFILE  "[PATH]\NHATS_Round_3_SP_File.txt"

LRECL=3586 ;
INPUT @1 spid 8.
@9 r3dlmlint 2.
@11 r3dresid 2.
@13 r2dresid 2.
@15 r1dresid 2.
@17 r3dresidlml 2.
@19 r3breakoffst 8.
@27 r3breakoffqt $8.
@35 is3resptype 2.
@37 is3reasnprx1 2.
@39 is3reasnprx2 2.
@41 is3reasnprx3 2.
@43 is3reasnprx4 2.
@45 is3reasnprx5 2.
@47 is3reasnprx6 2.
@49 is3reasnprx7 2.
@51 is3reasnprx9 2.
@53 is3tempres 2.
@55 is3prxyrelat 2.
@57 is3prxygendr 2.
@59 is3famrrutin 2.
@61 is3proxlivsp 2.
@63 r1dgender 2.
@65 rl1dracehisp 2.
@67 r3d2intvrage 2.
@69 is3dproxyid $3.
@72 re3spadrsnew 2.
@74 re3intplace 2.
@76 re3newstrct 2.
@78 re3newblgfl 2.
@80 re3mthmove 2.
@82 re3yearmove 4.
@86 re3placedec 2.
@88 re3alonedec 2.
@90 re3dresistrct 2.
@92 re3dbldg 2.
@94 re3dcensdiv 2.
@96 fl3structure 2.
@98 fl3resnew 2.
@100 fl3facility 2.
@102 fl3hotype 2.
@104 fl3retirecom 2.
@106 pd3placedied 2.
@108 pd3homedied 2.
@110 pd3hospdied 2.
@112 pd3hospice1 2.
@114 pd3hospice2 2.
@116 pd3stayunit 2.
@118 pd3staydays 2.
@120 pd3staywks 2.
@122 pd3staymths 2.
@124 pd3stayyrs 2.
@126 pd3staymthpl 2.
@128 pd3placepre 2.
@130 pd3hospcelml 2.
@132 pd3alert 2.
@134 pd3outbed 2.
@136 r3d2deathage 2.
@138 fl3spdied 2.
@140 fl3notalert 2.
@142 fl3notmobile 2.
@144 lm3pain 2.
@146 lm3painhlp 2.
@148 lm3painhlpam 2.
@150 lm3bre 2.
@152 lm3brehlp 2.
@154 lm3brehlpam 2.
@156 lm3sad 2.
@158 lm3sadhlp 2.
@160 lm3sadhlpam 2.
@162 lm3caredecis 2.
@164 lm3carenowan 2.
@166 lm3perscare 2.
@168 lm3respect 2.
@170 lm3informed 2.
@172 lm3doctor 2.
@174 lm3docclear 2.
@176 lm3relg 2.
@178 lm3relgamt 2.
@180 lm3ratecare 2.
@182 hc3health 2.
@184 hc3disescn1 2.
@186 hc3disescn2 2.
@188 hc3disescn3 2.
@190 hc3disescn4 2.
@192 hc3disescn5 2.
@194 hc3disescn6 2.
@196 hc3disescn7 2.
@198 hc3disescn8 2.
@200 hc3disescn9 2.
@202 hc3disescn10 2.
@204 hc3brokebon1 2.
@206 hc3brokebon2 2.
@208 hc3hosptstay 2.
@210 hc3hosovrnht 2.
@212 hc3knesrgyr 2.
@214 hc3hipsrgyr 2.
@216 hc3catrsrgyr 2.
@218 hc3backsrgyr 2.
@220 hc3hartsrgyr 2.
@222 hc3fllsinmth 2.
@224 hc3worryfall 2.
@226 hc3worrylimt 2.
@228 hc3faleninyr 2.
@230 hc3multifall 2.
@232 hc3depresan1 2.
@234 hc3depresan2 2.
@236 hc3depresan3 2.
@238 hc3depresan4 2.
@240 hc3aslep30mn 2.
@242 hc3trbfalbck 2.
@244 hc3sleepmed 2.
@246 ht3placedesc 2.
@248 ht3retiresen 2.
@250 ht3diffareun 2.
@252 ht3helpmedbd 2.
@254 ht3meals 2.
@256 ht3spacename 2.
@258 se3servcoff1 2.
@260 se3servcoff2 2.
@262 se3servcoff3 2.
@264 se3servcoff4 2.
@266 se3servcoff5 2.
@268 se3servcoff6 2.
@270 se3servcoff7 2.
@272 se3servcoff8 2.
@274 se3servcoff9 2.
@276 se3servused1 2.
@278 se3servused2 2.
@280 se3servused3 2.
@282 se3servused4 2.
@284 se3servused5 2.
@286 se3servused6 2.
@288 se3servused7 2.
@290 se3servused8 2.
@292 se3servused9 2.
@294 se3payservi1 2.
@296 se3payservi2 2.
@298 se3payservi3 2.
@300 se3payservi4 2.
@302 se3payservi5 2.
@304 se3payservi6 2.
@306 se3payservi7 2.
@308 se3payservi8 2.
@310 se3payservi9 2.
@312 hh3marchange 2.
@314 hh3martlstat 2.
@316 hh3yrendmarr 4.
@320 hh3newspoprt 2.
@322 hh3spgender 2.
@324 hh3dspouage 2.
@326 hh3dspageall 2.
@328 hh3spouseduc 2.
@330 hh3spoupchlp 2.
@332 hh3livwthspo 2.
@334 hh3placekind 2.
@336 hh3dmarstat 2.
@338 hh3dlvngarrg 2.
@340 hh3dhshldnum 2.
@342 hh3dhshldchd 2.
@344 hh3dspouseid $3.
@347 cs3sistrsnum 2.
@349 cs3brthrsnum 2.
@351 cs3dnumchild 2.
@353 cs3dnmstpchd 2.
@355 cs3dnumdaugh 2.
@357 cs3dnumson 2.
@359 sn3dnumsn 2.
@361 fl3noonetalk 2.
@363 ho3entrstair 2.
@365 ho3entrccomn 2.
@367 ho3entrnramp 2.
@369 ho3bldgamen1 2.
@371 ho3bldgamen2 2.
@373 ho3bldgamen3 2.
@375 ho3bldgamen4 2.
@377 ho3levelsflr 2.
@379 ho3homeamen1 2.
@381 ho3homeamen2 2.
@383 ho3homeamen3 2.
@385 ho3bathprivt 2.
@387 ho3bathamen1 2.
@389 ho3bathamen2 2.
@391 ho3bathamen3 2.
@393 ho3bathamen4 2.
@395 ho3bathamen5 2.
@397 ho3bathamen6 2.
@399 ho3bathamen7 2.
@401 ho3kitchnprv 2.
@403 ho3kitchncom 2.
@405 ho3microwave 2.
@407 ho3dbldg1 2.
@409 ho3dbldg2 2.
@411 ho3dbldg3 2.
@413 ho3dbldg4 2.
@415 ho3dbathprvt 2.
@417 ho3dkitchnpr 2.
@419 ho3dkitchnco 2.
@421 fl3bathgrbbr 2.
@423 fl3bathseat 2.
@425 fl3raisedtlt 2.
@427 fl3tltgrbbr 2.
@429 em3modhere1 2.
@431 em3addlstyr1 2.
@433 em3addlstyr2 2.
@435 em3addlstyr3 2.
@437 em3addlstyr4 2.
@439 em3addlstyr5 2.
@441 em3addlstyr6 2.
@443 em3addlstyr7 2.
@445 em3payyufam1 2.
@447 em3payyufam2 2.
@449 em3payyufam3 2.
@451 em3payyufam4 2.
@453 em3payyufam5 2.
@455 em3payyufam6 2.
@457 em3payyufam7 2.
@459 em3paydevce1 2.
@461 em3paydevce2 2.
@463 em3paydevce3 2.
@465 em3paydevce4 2.
@467 em3paydevce5 2.
@469 em3paydevce6 2.
@471 em3paydevce7 2.
@473 em3paydevce8 2.
@475 em3paydevce9 2.
@477 em3payaltgth 2.
@479 em3morls1000 2.
@481 em3morls100 2.
@483 cm3knowwell 2.
@485 cm3willnghlp 2.
@487 cm3peoptrstd 2.
@489 te3cellphone 2.
@491 te3othrphone 2.
@493 te3computer 2.
@495 te3compoth 2.
@497 te3tablet 2.
@499 te3emailtext 2.
@501 te3oftnemail 2.
@503 te3online 2.
@505 te3shoponli1 2.
@507 te3shoponli2 2.
@509 te3shoponli3 2.
@511 te3socialnet 2.
@513 te3intrntmd1 2.
@515 te3intrntmd2 2.
@517 te3intrntmd3 2.
@519 md3canewlker 2.
@521 md3cane 2.
@523 md3walker 2.
@525 md3wheelchar 2.
@527 md3whelcrspc 2.
@529 md3scooter 2.
@531 md3scterinsp 2.
@533 fl3cane 2.
@535 fl3walker 2.
@537 fl3wheelchr 2.
@539 fl3whlchrhom 2.
@541 fl3scooter 2.
@543 fl3scooterhm 2.
@545 ss3heringaid 2.
@547 ss3hearphone 2.
@549 ss3convwradi 2.
@551 ss3convquiet 2.
@553 ss3glasseswr 2.
@555 ss3seewellst 2.
@557 ss3seestvgls 2.
@559 ss3glasscls 2.
@561 ss3othvisaid 2.
@563 ss3glrednewp 2.
@565 ss3probchswl 2.
@567 ss3probspeak 2.
@569 ss3painbothr 2.
@571 ss3painlimts 2.
@573 ss3painmedof 2.
@575 ss3painwhe1 2.
@577 ss3painwhe2 2.
@579 ss3painwhe3 2.
@581 ss3painwhe4 2.
@583 ss3painwhe5 2.
@585 ss3painwhe6 2.
@587 ss3painwhe7 2.
@589 ss3painwhe8 2.
@591 ss3painwhe9 2.
@593 ss3painwhe10 2.
@595 ss3painwhe11 2.
@597 ss3painwhe12 2.
@599 ss3painwhe13 2.
@601 ss3probbreat 2.
@603 ss3prbbrlimt 2.
@605 ss3strnglmup 2.
@607 ss3uplimtact 2.
@609 ss3lwrbodstr 2.
@611 ss3lwrbodimp 2.
@613 ss3lowenergy 2.
@615 ss3loenlmtat 2.
@617 ss3prbbalcrd 2.
@619 ss3prbbalcnt 2.
@621 fl3deaf 2.
@623 fl3blind 2.
@625 pc3walk6blks 2.
@627 pc3walk3blks 2.
@629 pc3up20stair 2.
@631 pc3up10stair 2.
@633 pc3car20pnds 2.
@635 pc3car10pnds 2.
@637 pc3geonknees 2.
@639 pc3bendover 2.
@641 pc3hvobovrhd 2.
@643 pc3rechovrhd 2.
@645 pc3opnjarwhd 2.
@647 pc3grspsmobj 2.
@649 cp3memrygood 2.
@651 cp3knownspyr 2.
@653 cp3chgthink1 2.
@655 cp3chgthink2 2.
@657 cp3chgthink3 2.
@659 cp3chgthink4 2.
@661 cp3chgthink5 2.
@663 cp3chgthink6 2.
@665 cp3chgthink7 2.
@667 cp3chgthink8 2.
@669 cp3memcogpr1 2.
@671 cp3memcogpr2 2.
@673 cp3memcogpr3 2.
@675 cp3memcogpr4 2.
@677 cp3dad8dem 2.
@679 cg3speaktosp 2.
@681 cg3quesremem 2.
@683 cg3reascano1 2.
@685 cg3reascano2 2.
@687 cg3reascano3 2.
@689 cg3reascano4 2.
@691 cg3reascano5 2.
@693 cg3reascano6 2.
@695 cg3reascano7 2.
@697 cg3reascano8 2.
@699 cg3reascano9 2.
@701 cg3ratememry 2.
@703 cg3ofmemprob 2.
@705 cg3memcom1yr 2.
@707 cg3todaydat1 2.
@709 cg3todaydat2 2.
@711 cg3todaydat3 2.
@713 cg3todaydat5 2.
@715 cg3todaydat4 2.
@717 cg3todaydat6 2.
@719 cg3prewrdrcl 2.
@721 cg3dwrdlstnm 2.
@723 cg3wrdsrcal1 2.
@725 cg3wrdsrcal2 2.
@727 cg3wrdsrcal3 2.
@729 cg3wrdsrcal4 2.
@731 cg3wrdsrcal5 2.
@733 cg3wrdsrcal6 2.
@735 cg3wrdsrcal7 2.
@737 cg3wrdsrcal8 2.
@739 cg3wrdsrcal9 2.
@741 cg3wrdsrca10 2.
@743 cg3dwrdimmrc 2.
@745 cg3dwrdinone 2.
@747 cg3dwrdirref 2.
@749 cg3wrdsntlst 2.
@751 cg3numnotlst 2.
@753 cg3probreca1 2.
@755 cg3probreca2 2.
@757 cg3probreca3 2.
@759 cg3probreca4 2.
@761 cg3probreca5 2.
@763 cg3dclkdraw 2.
@765 cg3dclkimgcl 2.
@767 cg3atdrwclck 2.
@769 cg3presidna1 2.
@771 cg3presidna2 2.
@773 cg3presidna3 2.
@775 cg3presidna4 2.
@777 cg3vpname1 2.
@779 cg3vpname2 2.
@781 cg3vpname3 2.
@783 cg3vpname4 2.
@785 cg3wrdsdcal1 2.
@787 cg3wrdsdcal2 2.
@789 cg3wrdsdcal3 2.
@791 cg3wrdsdcal4 2.
@793 cg3wrdsdcal5 2.
@795 cg3wrdsdcal6 2.
@797 cg3wrdsdcal7 2.
@799 cg3wrdsdcal8 2.
@801 cg3wrdsdcal9 2.
@803 cg3wrdsdca10 2.
@805 cg3dwrddlyrc 2.
@807 cg3dwrddnone 2.
@809 cg3dwrddrref 2.
@811 cg3wrdnotlst 2.
@813 cg3numwrdnot 2.
@815 cg3dwrd1rcl 2.
@817 cg3dwrd2rcl 2.
@819 cg3dwrd3rcl 2.
@821 cg3dwrd4rcl 2.
@823 cg3dwrd5rcl 2.
@825 cg3dwrd6rcl 2.
@827 cg3dwrd7rcl 2.
@829 cg3dwrd8rcl 2.
@831 cg3dwrd9rcl 2.
@833 cg3dwrd10rcl 2.
@835 cg3dwrd1dly 2.
@837 cg3dwrd2dly 2.
@839 cg3dwrd3dly 2.
@841 cg3dwrd4dly 2.
@843 cg3dwrd5dly 2.
@845 cg3dwrd6dly 2.
@847 cg3dwrd7dly 2.
@849 cg3dwrd8dly 2.
@851 cg3dwrd9dly 2.
@853 cg3dwrd10dly 2.
@855 mo3outoft 2.
@857 mo3outcane 2.
@859 mo3outwalkr 2.
@861 mo3outwlchr 2.
@863 mo3outsctr 2.
@865 mo3outhlp 2.
@867 mo3outslf 2.
@869 mo3outdif 2.
@871 mo3outyrgo 2.
@873 mo3outwout 2.
@875 mo3oftgoarea 2.
@877 mo3oflvslepr 2.
@879 mo3insdcane 2.
@881 mo3insdwalkr 2.
@883 mo3insdwlchr 2.
@885 mo3insdsctr 2.
@887 mo3oftholdwl 2.
@889 mo3insdhlp 2.
@891 mo3insdslf 2.
@893 mo3insddif 2.
@895 mo3insdyrgo 2.
@897 mo3insdwout 2.
@899 mo3beddev 2.
@901 mo3bedhlp 2.
@903 mo3bedslf 2.
@905 mo3beddif 2.
@907 mo3bedwout 2.
@909 mo3doutsfdf 2.
@911 mo3doutdevi 2.
@913 mo3douthelp 2.
@915 mo3dinsdsfdf 2.
@917 mo3dinsddevi 2.
@919 mo3dinsdhelp 2.
@921 mo3dbedsfdf 2.
@923 mo3dbeddevi 2.
@925 mo3dbedhelp 2.
@927 fl3didntleav 2.
@929 fl3ntlvrmslp 2.
@931 dm3helpmobil 2.
@933 dm3helpstmo 2.
@935 dm3helpstyr 4.
@939 dm3helpendmo 2.
@941 dm3helpendyr 4.
@945 dm3nohelp 2.
@947 dm3nohelpmos 2.
@949 dm3lstyrcane 4.
@953 dm3devstmo 2.
@955 dm3devstyr 4.
@959 dm3devendmo 2.
@961 dm3devendyr 4.
@965 dm3nodev 2.
@967 dm3nodevmos 2.
@969 dm3dmohlp 4.
@973 dm3dmodev 3.
@976 dm3dmohlpgr 4.
@980 dm3dmodevgr 2.
@982 dmds3dintvl 2.
@984 dm3flag 2.
@986 dt3driveyr 2.
@988 dt3oftedrive 2.
@990 dt3avoidriv1 2.
@992 dt3avoidriv2 2.
@994 dt3avoidriv3 2.
@996 dt3avoidriv4 2.
@998 dt3getoplcs1 2.
@1000 dt3getoplcs2 2.
@1002 dt3getoplcs3 2.
@1004 dt3getoplcs4 2.
@1006 dt3getoplcs5 2.
@1008 dt3getoplcs6 2.
@1010 dt3getoplcs7 2.
@1012 dt3otfrfamtk 2.
@1014 fl3drives 2.
@1016 fl3drvlstyr 2.
@1018 fl1dneverdrv 2.
@1020 ha3laun 2.
@1022 ha3launslf 2.
@1024 ha3whrmachi1 2.
@1026 ha3whrmachi2 2.
@1028 ha3whrmachi3 2.
@1030 ha3whrmachi4 2.
@1032 ha3whrmachi5 2.
@1034 ha3whrmachi6 2.
@1036 ha3dlaunreas 2.
@1038 ha3laundif 2.
@1040 ha3launoft 2.
@1042 ha3launwout 2.
@1044 ha3shop 2.
@1046 ha3shopslf 2.
@1048 ha3howpaygr1 2.
@1050 ha3howpaygr2 2.
@1052 ha3howpaygr3 2.
@1054 ha3howpaygr4 2.
@1056 ha3howpaygr5 2.
@1058 ha3howpaygr6 2.
@1060 ha3howpaygr7 2.
@1062 ha3howgtstr1 2.
@1064 ha3howgtstr2 2.
@1066 ha3howgtstr3 2.
@1068 ha3howgtstr4 2.
@1070 ha3howgtstr5 2.
@1072 ha3howgtstr6 2.
@1074 ha3howgtstr7 2.
@1076 ha3howgtstr8 2.
@1078 ha3shopcart 2.
@1080 ha3shoplean 2.
@1082 ha3dshopreas 2.
@1084 ha3shopdif 2.
@1086 ha3shopoft 2.
@1088 ha3shopwout 2.
@1090 ha3meal 2.
@1092 ha3mealslf 2.
@1094 ha3restamels 2.
@1096 ha3mealwheel 2.
@1098 ha3oftmicrow 2.
@1100 ha3dmealreas 2.
@1102 ha3mealdif 2.
@1104 ha3mealoft 2.
@1106 ha3mealwout 2.
@1108 ha3bank 2.
@1110 ha3bankslf 2.
@1112 ha3dbankreas 2.
@1114 ha3bankdif 2.
@1116 ha3bankoft 2.
@1118 ha3bankwout 2.
@1120 ha3money 2.
@1122 ha3moneyhlp 2.
@1124 ha3dlaunsfdf 2.
@1126 ha3dshopsfdf 2.
@1128 ha3dmealsfdf 2.
@1130 ha3dbanksfdf 2.
@1132 ha3dmealwhl 2.
@1134 ha3dmealtkot 2.
@1136 sc3eatdev 2.
@1138 sc3eatdevoft 2.
@1140 sc3eathlp 2.
@1142 sc3eatslfoft 2.
@1144 sc3eatslfdif 2.
@1146 sc3eatwout 2.
@1148 sc3showrbat1 2.
@1150 sc3showrbat2 2.
@1152 sc3showrbat3 2.
@1154 sc3bdevdec 2.
@1156 sc3prfrshbth 2.
@1158 sc3scusgrbrs 2.
@1160 sc3shtubseat 2.
@1162 sc3bathhlp 2.
@1164 sc3bathoft 2.
@1166 sc3bathdif 2.
@1168 sc3bathyrgo 2.
@1170 sc3bathwout 2.
@1172 sc3usvartoi1 2.
@1174 sc3usvartoi2 2.
@1176 sc3usvartoi3 2.
@1178 sc3usvartoi4 2.
@1180 sc3toilhlp 2.
@1182 sc3toiloft 2.
@1184 sc3toildif 2.
@1186 sc3toilwout 2.
@1188 sc3dresoft 2.
@1190 sc3dresdev 2.
@1192 sc3dreshlp 2.
@1194 sc3dresslf 2.
@1196 sc3dresdif 2.
@1198 sc3dresyrgo 2.
@1200 sc3dreswout 2.
@1202 sc3deatdevi 2.
@1204 sc3deathelp 2.
@1206 sc3deatsfdf 2.
@1208 sc3dbathdevi 2.
@1210 sc3dbathhelp 2.
@1212 sc3dbathsfdf 2.
@1214 sc3dtoildevi 2.
@1216 sc3dtoilhelp 2.
@1218 sc3dtoilsfdf 2.
@1220 sc3ddresdevi 2.
@1222 sc3ddreshelp 2.
@1224 sc3ddressfdf 2.
@1226 fl3showering 2.
@1228 fl3takingbth 2.
@1230 fl3washingup 2.
@1232 ds3gethlpeat 2.
@1234 ds3helpstmo 2.
@1236 ds3helpstyr 4.
@1240 ds3helpendmo 2.
@1242 ds3helpendyr 4.
@1246 ds3nohelp 2.
@1248 ds3nohelpmos 2.
@1250 ds3dschlp 4.
@1254 ds3dschlpgr 4.
@1258 ds3flag 2.
@1260 mc3meds 2.
@1262 mc3medstrk 2.
@1264 mc3medsslf 2.
@1266 mc3whrgtmed1 2.
@1268 mc3whrgtmed2 2.
@1270 mc3whrgtmed3 2.
@1272 mc3whrgtmed4 2.
@1274 mc3howpkupm1 2.
@1276 mc3howpkupm2 2.
@1278 mc3howpkupm3 2.
@1280 mc3medsrem 2.
@1282 mc3dmedsreas 2.
@1284 mc3medsdif 2.
@1286 mc3medsyrgo 2.
@1288 mc3medsmis 2.
@1290 mc3havregdoc 2.
@1292 mc3regdoclyr 2.
@1294 mc3hwgtregd1 2.
@1296 mc3hwgtregd2 2.
@1298 mc3hwgtregd3 2.
@1300 mc3hwgtregd4 2.
@1302 mc3hwgtregd5 2.
@1304 mc3hwgtregd6 2.
@1306 mc3hwgtregd7 2.
@1308 mc3hwgtregd8 2.
@1310 mc3hwgtregd9 2.
@1312 mc3ansitindr 2.
@1314 mc3tpersevr1 2.
@1316 mc3tpersevr2 2.
@1318 mc3tpersevr3 2.
@1320 mc3tpersevr4 2.
@1322 mc3chginspln 2.
@1324 mc3anhlpwdec 2.
@1326 mc3dmedssfdf 2.
@1328 pa3vistfrfam 2.
@1330 pa3hlkepfvst 2.
@1332 pa3trkpfrvis 2.
@1334 pa3impvstfam 2.
@1336 pa3attrelser 2.
@1338 pa3htkfrrlsr 2.
@1340 pa3trprrelsr 2.
@1342 pa3imprelser 2.
@1344 pa3clbmtgrac 2.
@1346 pa3hlkpfrclb 2.
@1348 pa3trprkpfgr 2.
@1350 pa3imparclub 2.
@1352 pa3outfrenjy 2.
@1354 pa3hlkpgoenj 2.
@1356 pa3trprgoout 2.
@1358 pa3impouteny 2.
@1360 pa3workfrpay 2.
@1362 pa3hlkpfrwrk 2.
@1364 pa3voltrwork 2.
@1366 pa3hlkpfrvol 2.
@1368 pa3prcranoth 2.
@1370 pa3evrgowalk 2.
@1372 pa3vigoractv 2.
@1374 pa3dofavact 2.
@1376 pa3helmfvact 2.
@1378 pa1dv2favact 3.
@1381 sd3smokesnow 2.
@1383 sd3numcigday 3.
@1386 pe3whhndsign 2.
@1388 pe3surghdwrt 2.
@1390 pe3surgyside 2.
@1392 pe3flruppain 2.
@1394 pe3sideflrup 2.
@1396 pe3surgarmsh 2.
@1398 pe3sidsurgar 2.
@1400 pe3surgyhips 2.
@1402 pe3sidhipsrg 2.
@1404 pe3stndwhold 2.
@1406 pe3upchbyslf 2.
@1408 pe3wlkdsself 2.
@1410 fl3lefthand 2.
@1412 fl3righthand 2.
@1414 fl3eiherhand 2.
@1416 fl3lftgrptst 2.
@1418 fl3rhtgrptst 2.
@1420 fl3charstnds 2.
@1422 fl3balstands 2.
@1424 fl3wlkingrse 2.
@1426 ba3dblssadm 2.
@1428 ba3dblstadm 2.
@1430 ba3dblftadm 2.
@1432 ba3dblopadm 2.
@1434 ba3dblcladm 2.
@1436 wa3dwlkadm 2.
@1438 ch3dschradm 2.
@1440 ch3drchradm 2.
@1442 gr3dgripadm 2.
@1444 wc3dwaistadm 2.
@1446 pk3dpeakadm 2.
@1448 ab3datemonth 2.
@1450 ab3dateyear 4.
@1454 in3strtabhrs 4.
@1458 in3strtabmin 4.
@1462 in3strtmampm 2.
@1464 ba3sxsresult 2.
@1466 ba3blstdsecs 2.
@1468 ba3blstdhndr 2.
@1470 ba3rsn1ssstd 2.
@1472 ba3rsn2ssstd 2.
@1474 ba3rsn3ssstd 2.
@1476 ba3rsn4ssstd 2.
@1478 ba3rsn9ssstd 2.
@1480 ba3stdmreslt 2.
@1482 ba3stdmsecs 2.
@1484 ba3stdmhndr 2.
@1486 ba3rsn1ststd 2.
@1488 ba3rsn2ststd 2.
@1490 ba3rsn3ststd 2.
@1492 ba3rsn4ststd 2.
@1494 ba3rsn9ststd 2.
@1496 ba3ftdmreslt 2.
@1498 ba3ftdmsecs 2.
@1500 ba3ftdmhndr 2.
@1502 ba3rsn1ftstd 2.
@1504 ba3rsn2ftstd 2.
@1506 ba3rsn3ftstd 2.
@1508 ba3rsn4ftstd 2.
@1510 ba3rsn9ftstd 2.
@1512 ba31leoreslt 2.
@1514 ba31leosfsec 2.
@1516 ba31leohndr 2.
@1518 ba3rsn11leo 2.
@1520 ba3rsn21leo 2.
@1522 ba3rsn31leo 2.
@1524 ba3rsn41leo 2.
@1526 ba3rsn91leo 2.
@1528 ba31lecreslt 2.
@1530 ba31lecsfsec 2.
@1532 ba31lechndr 2.
@1534 ba3rsn11lec 2.
@1536 ba3rsn21lec 2.
@1538 ba3rsn31lec 2.
@1540 ba3rsn41lec 2.
@1542 ba3rsn91lec 2.
@1544 wa3wlkcorspc 2.
@1546 wa3wkaidused 2.
@1548 wa3wlkc1rslt 2.
@1550 wa3wlkc1secs 4.
@1554 wa3wlk1hndr 4.
@1558 wa3rsn11wkc 2.
@1560 wa3rsn21wkc 2.
@1562 wa3rsn31wkc 2.
@1564 wa3rsn41wkc 2.
@1566 wa3rsn51wkc 2.
@1568 wa3rsn91wkc 2.
@1570 wa3wkaidusc2 2.
@1572 wa3wlkc2rslt 2.
@1574 wa3wlkc2secs 4.
@1578 wa3wlk2hndr 4.
@1582 wa3rsn12wkc 2.
@1584 wa3rsn22wkc 2.
@1586 wa3rsn32wkc 2.
@1588 wa3rsn42wkc 2.
@1590 wa3rsn92wkc 2.
@1592 ch3chravail 2.
@1594 ch3chstcompl 2.
@1596 ch3chairheit 3.
@1599 ch3whlchrusd 2.
@1601 ch3sgchstres 2.
@1603 ch3armuse 2.
@1605 ch3rsn11chs 2.
@1607 ch3rsn21chs 2.
@1609 ch3rsn31chs 2.
@1611 ch3rsn41chs 2.
@1613 ch3rsn51chs 2.
@1615 ch3rsn91chs 2.
@1617 ch32chstrslt 2.
@1619 ch3chstndsec 2.
@1621 ch3chstdhndr 3.
@1624 ch3chstddone 2.
@1626 ch3chstntdn1 2.
@1628 ch3chstntdn2 2.
@1630 ch3chstntdn3 2.
@1632 ch3chstntdn4 2.
@1634 ch3chstntdn5 2.
@1636 ch3chstntdn9 2.
@1638 ch3chstntat1 2.
@1640 ch3chstntat2 2.
@1642 ch3chstntat3 2.
@1644 ch3chstntat4 2.
@1646 ch3chstntat9 2.
@1648 gr3handtstd1 2.
@1650 gr3adjgr1ps3 2.
@1652 gr3grp1reslt 2.
@1654 gr3grp1rdng 6.3
@1660 gr3grp1noat1 2.
@1662 gr3grp1noat2 2.
@1664 gr3grp1noat3 2.
@1666 gr3grp1noat4 2.
@1668 gr3grp1noat9 2.
@1670 gr3handtstd2 2.
@1672 gr3adjgr2ps3 2.
@1674 gr3grp2reslt 2.
@1676 gr3grp2rdng 6.3
@1682 gr3grp2noat1 2.
@1684 gr3grp2noat2 2.
@1686 gr3grp2noat3 2.
@1688 gr3grp2noat4 2.
@1690 gr3grp2noat9 2.
@1692 wc3measdiff1 2.
@1694 wc3measdiff2 2.
@1696 wc3measdiff3 2.
@1698 wc3measdiff4 2.
@1700 wc3measdiff5 2.
@1702 wc3measdiff6 2.
@1704 wc3measdiff9 2.
@1706 wc3waistrslt 4.
@1710 wc3wstmsrinc 4.
@1714 wc3wstmsrqrt 4.
@1718 wc3wstbulkcl 2.
@1720 wc3whomeasur 2.
@1722 wc3wstpostn 2.
@1724 wc3wstnotat1 2.
@1726 wc3wstnotat2 2.
@1728 wc3wstnotat3 2.
@1730 wc3wstnotat4 2.
@1732 wc3wstnotat5 2.
@1734 wc3wstnotat9 2.
@1736 pk3pkarf1pos 2.
@1738 pk3pkarfl1ef 2.
@1740 pk3pkarfl1rs 2.
@1742 pk3pkarfl1rd 3.
@1745 pk3pk1noatt1 2.
@1747 pk3pk1noatt2 2.
@1749 pk3pk1noatt3 2.
@1751 pk3pk1noatt4 2.
@1753 pk3pk1noatt9 2.
@1755 pk3paf2posit 2.
@1757 pk3pkarfl2ef 2.
@1759 pk3pkarfl2rs 2.
@1761 pk3pkarfl2rd 3.
@1764 pk3pk2noatt1 2.
@1766 pk3pk2noatt2 2.
@1768 pk3pk2noatt3 2.
@1770 pk3pk2noatt4 2.
@1772 pk3pk2noatt9 2.
@1774 cl3endtimhrs 2.
@1776 cl3endtimmin 4.
@1780 cl3endtmampm 2.
@1782 r3dnhatssppb 4.
@1786 r3dnhatsbasc 4.
@1790 r3dnhatswksc 4.
@1794 r3dnhatschsc 4.
@1798 r3dnhatsgrav 8.
@1806 r3dnhatsgrb 8.
@1814 r3dnhatspkav 8.
@1822 r3dnhatspkb 8.
@1830 r3dsppbmiss 2.
@1832 r3dorigsppb 2.
@1834 r3dorigbasc 2.
@1836 r3dorigwksc 2.
@1838 r3dorigchsc 2.
@1840 hw3currweigh 3.
@1843 hw3lst10pnds 2.
@1845 hw3trytolose 2.
@1847 hw3howtallft 2.
@1849 hw3howtallin 3.
@1852 el3mothalive 2.
@1854 el3fathalive 2.
@1856 wb3offelche1 2.
@1858 wb3offelche2 2.
@1860 wb3offelche3 2.
@1862 wb3offelche4 2.
@1864 wb3truestme1 2.
@1866 wb3truestme2 2.
@1868 wb3truestme3 2.
@1870 wb3truestme4 2.
@1872 wb3ageyofeel 3.
@1875 wb3agrwstmt1 2.
@1877 wb3agrwstmt2 2.
@1879 wb3agrwstmt3 2.
@1881 ip3covmedcad 2.
@1883 ip3otdrugcov 2.
@1885 ip3mgapmedsp 2.
@1887 ip3cmedicaid 2.
@1889 ip3covtricar 2.
@1891 ip3nginslast 2.
@1893 ip3nginsnurs 2.
@1895 ip3typcarco1 2.
@1897 ip3typcarco2 2.
@1899 ip3typcarco3 2.
@1901 ip3paypremms 8.
@1909 lf3workfpay 2.
@1911 lf3abstlstwk 2.
@1913 lf3wrkplstmn 2.
@1915 lf3mrthnonjb 2.
@1917 lf3hrswkwork 4.
@1921 lf3hrwrkltwk 4.
@1925 lf3hrwrklstw 4.
@1929 lf3oftpaid 2.
@1931 lf3huswifwrk 8.
@1939 lf3doccup 4.
@1943 hp3ownrentot 2.
@1945 hp3mrtpadoff 2.
@1947 hp3mthlymort 8.
@1955 hp3mortpaymt 8.
@1963 hp3whnpayoff 4.
@1967 hp3amtstlowe 8.
@1975 hp3amoutowed 8.
@1983 hp3homevalue 8.
@1991 hp3homvalamt 8.
@1999 hp3payrent 2.
@2001 hp3rentamt 8.
@2009 hp3rentamout 8.
@2017 hp3sec8pubsn 8.
@2025 ia3recsspa1 2.
@2027 ia3recsspa2 2.
@2029 ia3recsspa3 2.
@2031 ia3recssils1 2.
@2033 ia3recssils2 2.
@2035 ia3recssils3 2.
@2037 ia3rvapayls1 2.
@2039 ia3rvapayls2 2.
@2041 ia3rvapayls3 2.
@2043 ia3penjobou1 2.
@2045 ia3penjobou2 2.
@2047 ia3penjobou3 2.
@2049 ia3iraothac1 2.
@2051 ia3iraothac2 2.
@2053 ia3iraothac3 2.
@2055 ia3mutfdstk1 2.
@2057 ia3mutfdstk2 2.
@2059 ia3mutfdstk3 2.
@2061 ia3mutfdstk4 2.
@2063 ia3ownbond1 2.
@2065 ia3ownbond2 2.
@2067 ia3ownbond3 2.
@2069 ia3ownbond4 2.
@2071 ia3bnkacccd1 2.
@2073 ia3bnkacccd2 2.
@2075 ia3bnkacccd3 2.
@2077 ia3bnkacccd4 2.
@2079 ia3bnkacccd5 2.
@2081 ia3bnkacccd6 2.
@2083 ia3bnkacccd7 2.
@2085 ia3bnkacccd8 2.
@2087 ia3bnkacccd9 2.
@2089 ia3bnkacccd10 2.
@2091 ia3bnkacccd11 2.
@2093 ia3bnkacccd12 2.
@2095 ia3realestt1 2.
@2097 ia3realestt2 2.
@2099 ia3realestt3 2.
@2101 ia3realestt4 2.
@2103 ia3totinc 8.
@2111 ia3toincimf 2.
@2113 ia3toincim1 8.
@2121 ia3toincim2 8.
@2129 ia3toincim3 8.
@2137 ia3toincim4 8.
@2145 ia3toincim5 8.
@2153 ia3toincesjt 8.
@2161 ia3eincimjf 2.
@2163 ia3eincimj1 8.
@2171 ia3eincimj2 8.
@2179 ia3eincimj3 8.
@2187 ia3eincimj4 8.
@2195 ia3eincimj5 8.
@2203 ia3toincessg 8.
@2211 ia3eincimsf 2.
@2213 ia3eincims1 8.
@2221 ia3eincims2 8.
@2229 ia3eincims3 8.
@2237 ia3eincims4 8.
@2245 ia3eincims5 8.
@2253 ew3pycredbal 2.
@2255 ew3crecardeb 2.
@2257 ew3credcdmed 2.
@2259 ew3amtcrdmed 2.
@2261 ew3medpaovtm 2.
@2263 ew3ampadovrt 2.
@2265 ew3finhlpfam 2.
@2267 ew3whohelfi1 2.
@2269 ew3whohelfi2 2.
@2271 ew3atchhelyr 2.
@2273 ew3fingftfam 2.
@2275 ew3whregoth1 2.
@2277 ew3whregoth2 2.
@2279 ew3whregoth3 2.
@2281 ew3amthlpgiv 2.
@2283 ew3progneed1 2.
@2285 ew3progneed2 2.
@2287 ew3progneed3 2.
@2289 ew3mealskip1 2.
@2291 ew3mealskip2 2.
@2293 ew3nopayhous 2.
@2295 ew3nopayutil 2.
@2297 ew3nopaymed 2.
@2299 pn3painlim1 2.
@2301 pn3painlim2 2.
@2303 pn3painlim3 2.
@2305 pn3painlim4 2.
@2307 pn3painlim5 2.
@2309 pn3painlim6 2.
@2311 pn3painall 2.
@2313 pn3painscale 2.
@2315 pn3painmonth 2.
@2317 pn3painyear 2.
@2319 pt3outgoing 2.
@2321 pt3organized 2.
@2323 pt3warm 2.
@2325 pt3worrying 2.
@2327 pt3creative 2.
@2329 pt3talkative 2.
@2331 pt3caring 2.
@2333 pt3nervous 2.
@2335 pt3imagine 2.
@2337 pt3thorough 2.
@2339 pt3invention 4.
@2343 sl3bedtime1 2.
@2345 sl3bedtime2 2.
@2347 sl3bedtime3 2.
@2349 sl3asleep1 2.
@2351 sl3asleep2 2.
@2353 sl3morning1 2.
@2355 sl3morning2 2.
@2357 sl3morning3 2.
@2359 sl3sleephour 2.
@2361 sl3sleepbre 2.
@2363 sl3sleeppain 2.
@2365 sl3sleepqual 2.
@2367 sl3awakedif 2.
@2369 sl3napsoft 2.
@2371 sl3naps1 2.
@2373 sl3naps2 2.
@2375 sl3napplan 2.
@2377 ir3intlang 2.
@2379 ir3spattitud 2.
@2381 ir3undrstand 2.
@2383 ir3sppresent 2.
@2385 ir3spnotprs1 2.
@2387 ir3spnotprs2 2.
@2389 ir3spnotprs3 2.
@2391 ir3spnotprs4 2.
@2393 ir3spnotprs5 2.
@2395 ir3spnotprs6 2.
@2397 ir3intvwhlp 2.
@2399 ir3prsnhlp1 2.
@2401 ir3prsnhlp2 2.
@2403 ir3prsnhlp3 2.
@2405 ir3prsnhlp4 2.
@2407 ir3prsnhlp5 2.
@2409 ir3prsnhlp6 2.
@2411 ir3prsnhlp91 2.
@2413 ir3demolang1 2.
@2415 ir3sessions 2.
@2417 ir3sessrsn1 2.
@2419 ir3sessrsn2 2.
@2421 ir3sessrsn3 2.
@2423 ir3sessrsn91 2.
@2425 ir3conhomapt 2.
@2427 ir3insidhome 2.
@2429 ir3condihom1 2.
@2431 ir3condihom2 2.
@2433 ir3condihom3 2.
@2435 ir3condihom4 2.
@2437 ir3condihom5 2.
@2439 ir3clutterr1 2.
@2441 ir3clutterr2 2.
@2443 ir3areacond1 2.
@2445 ir3areacond2 2.
@2447 ir3areacond3 2.
@2449 ir3condhome1 2.
@2451 ir3condhome2 2.
@2453 ir3condhome3 2.
@2455 ir3condhome4 2.
@2457 ir3condhome5 2.
@2459 ir3condhome6 2.
@2461 fq3dfacdescr 2.
@2463 fq3dosfacd 2.
@2465 fq3prtlivnam 2.
@2467 fq3dfacarea 2.
@2469 fq3dosfaca 2.
@2471 fq3assdnrsng 2.
@2473 fq3othrlevls 2.
@2475 fq3whotlevl1 2.
@2477 fq3whotlevl2 2.
@2479 fq3whotlevl3 2.
@2481 fq3whotlevl4 2.
@2483 fq3whotlevl5 2.
@2485 fq3servaval1 2.
@2487 fq3servaval2 2.
@2489 fq3servaval3 2.
@2491 fq3servaval4 2.
@2493 fq3servaval5 2.
@2495 fq3servaval6 2.
@2497 fq3servaval7 2.
@2499 fq3servaval8 2.
@2501 fq3servaval9 2.
@2503 fq3paysourc1 6.
@2509 fq3paysourc2 6.
@2515 fq3paysourc3 6.
@2521 fq3paysourc4 6.
@2527 fq3paysourc5 6.
@2533 fq3paysourc6 6.
@2539 fq3totalpaym 8.
@2547 fq3mnthlyamt 4.
@2551 fq3primpayer 2.
@2553 fq3govsource 2.
@2555 fq3dlocsp 2.
@2557 w3anfinwgt0 18.11
@2575 w3anfinwgt1 18.11
@2593 w3anfinwgt2 18.11
@2611 w3anfinwgt3 18.11
@2629 w3anfinwgt4 18.11
@2647 w3anfinwgt5 18.11
@2665 w3anfinwgt6 18.11
@2683 w3anfinwgt7 18.11
@2701 w3anfinwgt8 18.11
@2719 w3anfinwgt9 18.11
@2737 w3anfinwgt10 18.11
@2755 w3anfinwgt11 18.11
@2773 w3anfinwgt12 18.11
@2791 w3anfinwgt13 18.11
@2809 w3anfinwgt14 18.11
@2827 w3anfinwgt15 18.11
@2845 w3anfinwgt16 18.11
@2863 w3anfinwgt17 18.11
@2881 w3anfinwgt18 18.11
@2899 w3anfinwgt19 18.11
@2917 w3anfinwgt20 18.11
@2935 w3anfinwgt21 18.11
@2953 w3anfinwgt22 18.11
@2971 w3anfinwgt23 18.11
@2989 w3anfinwgt24 18.11
@3007 w3anfinwgt25 18.11
@3025 w3anfinwgt26 18.11
@3043 w3anfinwgt27 18.11
@3061 w3anfinwgt28 18.11
@3079 w3anfinwgt29 18.11
@3097 w3anfinwgt30 18.11
@3115 w3anfinwgt31 18.11
@3133 w3anfinwgt32 18.11
@3151 w3anfinwgt33 18.11
@3169 w3anfinwgt34 18.11
@3187 w3anfinwgt35 18.11
@3205 w3anfinwgt36 18.11
@3223 w3anfinwgt37 18.11
@3241 w3anfinwgt38 18.11
@3259 w3anfinwgt39 18.11
@3277 w3anfinwgt40 18.11
@3295 w3anfinwgt41 18.11
@3313 w3anfinwgt42 18.11
@3331 w3anfinwgt43 18.11
@3349 w3anfinwgt44 18.11
@3367 w3anfinwgt45 18.11
@3385 w3anfinwgt46 18.11
@3403 w3anfinwgt47 18.11
@3421 w3anfinwgt48 18.11
@3439 w3anfinwgt49 18.11
@3457 w3anfinwgt50 18.11
@3475 w3anfinwgt51 18.11
@3493 w3anfinwgt52 18.11
@3511 w3anfinwgt53 18.11
@3529 w3anfinwgt54 18.11
@3547 w3anfinwgt55 18.11
@3565 w3anfinwgt56 18.11
@3583 w3varstrat 2.
@3585 w3varunit 2.;

/* Section #3 - format assignment statement   */
format 

hh3dspouseid $RFDK_C.
is3dproxyid $RFDK_C.
r3breakoffqt $RFDK_C.
cl3endtmampm A0001AB.
in3strtmampm A0001AB.
wa3wlkcorspc A0002WA.
ch3chstcompl A0004CH.
wa3wkaidusc2 A0004WA.
wa3wkaidused A0004WA.
ch3armuse A0008CH.
ch3chstddone A0014CH.
ba3dblcladm BA1CL.
ba3dblopadm BA1OP.
ba3dblssadm BA1SS.
ba3dblstadm BA1STAN.
ba3dblftadm BA1TAN.
re3dcensdiv CENDIV.
ch3drchradm CH1RSH.
ch3dschradm CH1SCH.
r3dresidlml D_LMLLOC.
fq3dlocsp D_LOCSP.
r3d2deathage D2INTVRA.
r3d2intvrage D2INTVRA.
cp3dad8dem DAD8DEM.
ha3dbankreas DBANKREA.
ha3dbanksfdf DBANKSFD.
sc3dbathdevi DBATHDEV.
sc3dbathhelp DBATHHEL.
sc3dbathsfdf DBATHSFD.
mo3dbeddevi DBEDDEVI.
mo3dbedhelp DBEDHELP.
mo3dbedsfdf DBEDSFDF.
cg3dclkimgcl DCLCKCL.
cg3dclkdraw DCLCKSC.
sc3ddresdevi DDRESDEV.
sc3ddreshelp DDRESHEL.
sc3ddressfdf DDRESSFD.
sc3deatdevi DEATDEVI.
sc3deathelp DEATHELP.
sc3deatsfdf DEATSFDF.
mo3dinsddevi DINSDDEV.
mo3dinsdhelp DINSDHLP.
mo3dinsdsfdf DINSDSFD.
ha3dlaunreas DLAUNREA.
ha3dlaunsfdf DLAUNSFD.
R3dlmlint DLMLINT.
hh3dmarstat DMARSTAT.
ha3dmealreas DMEALREA.
ha3dmealsfdf DMEALSFD.
mc3dmedsreas DMEDSREA.
mc3dmedssfdf DMEDSSFD.
mo3doutdevi DOUTDEVI.
mo3douthelp DOUTHELP.
mo3doutsfdf DOUTSFDF.
ha3dshopreas DSHOPREA.
ha3dshopsfdf DSHOPSFD.
hh3dspageall W200008X.
hh3dspouage W200008X.
sc3dtoildevi DTOILDEV.
sc3dtoilhelp DTOILHEL.
sc3dtoilsfdf DTOILSFD.
cg3dwrddnone DWRDINON.
cg3dwrdinone DWRDINON.
cg3dwrddrref DWRDIRRE.
cg3dwrdirref DWRDIRRE.
pk3pkarfl1ef EFFORT.
pk3pkarfl2ef EFFORT.
r3dresid f3dresid.
fq3dfacdescr F200006W.
fq3govsource F200007W.
fq3othrlevls F200007W.
fq3prtlivnam F200007W.
fq3totalpaym F200007W.
fq3dfacarea F200008W.
fq3dosfacd dosfacd.
fq3dosfaca dosfaca.
fq3assdnrsng F200009W.
fq3servaval1 F200011W.
fq3servaval2 F200011W.
fq3servaval3 F200011W.
fq3servaval4 F200011W.
fq3servaval5 F200011W.
fq3servaval6 F200011W.
fq3servaval7 F200011W.
fq3servaval8 F200011W.
fq3servaval9 F200011W.
fq3primpayer F200012W.
gr3dgripadm GR1GRIP.
ir3condihom1 I200002W.
ir3condihom2 I200002W.
ir3condihom3 I200002W.
ir3condihom4 I200002W.
ir3condihom5 I200002W.
ir3insidhome I200002W.
ir3sessions I200002W.
ir3intlang I200003W.
ir3spattitud I200005W.
ir3undrstand I200006W.
ir3sppresent I200008W.
ir3intvwhlp I200010W.
ir3demolang1 I200013W.
ir3conhomapt I200016W.
ir3clutterr1 I200017W.
ir3clutterr2 I200017W.
ir3areacond1 I200018W.
ir3areacond2 I200018W.
ir3areacond3 I200018W.
ir3condhome1 I200019W.
ir3condhome2 I200019W.
ir3condhome3 I200019W.
ir3condhome4 I200019W.
ir3condhome5 I200019W.
ir3condhome6 I200019W.
hh3dlvngarrg LVGARRG.
sd3numcigday NUMCIGS.
lf3doccup OCC_CODE.
pa1dv2favact PA25FMT.
ba31lecreslt PE_RSLT.
ba31leoreslt PE_RSLT.
ba3ftdmreslt PE_RSLT.
ba3stdmreslt PE_RSLT.
ba3sxsresult PE_RSLT.
ch32chstrslt PE_RSLT.
ch3sgchstres PE_RSLT.
gr3grp1reslt PE_RSLT.
gr3grp2reslt PE_RSLT.
pk3pkarfl1rs PE_RSLT.
pk3pkarfl2rs PE_RSLT.
wa3wlkc1rslt PE_RSLT.
wa3wlkc2rslt PE_RSLT.
wc3waistrslt PE_RSLT.
wc3whomeasur PERSON.
pk3dpeakadm PK1PEAK.
r3dnhatsbasc QUARTILE.
r3dnhatschsc QUARTILE.
r3dnhatsgrav QUARTILE.
r3dnhatsgrb QUARTILE.
r3dnhatspkav QUARTILE.
r3dnhatspkb QUARTILE.
r3dnhatswksc QUARTILE.
r1dresid R1DRESID.
r3breakoffst RFDK_B.
ab3dateyear RFDK_F.
ba31lechndr RFDK_F.
ba31lecsfsec RFDK_F.
ba31leohndr RFDK_F.
ba31leosfsec RFDK_F.
ba3blstdhndr RFDK_F.
ba3blstdsecs RFDK_F.
ba3ftdmhndr RFDK_F.
ba3ftdmsecs RFDK_F.
ba3stdmhndr RFDK_F.
ba3stdmsecs RFDK_F.
cg3numnotlst RFDK_F.
cg3numwrdnot RFDK_F.
ch3chairheit RFDK_F.
ch3chstdhndr RFDK_F.
ch3chstndsec RFDK_F.
cl3endtimhrs RFDK_F.
cl3endtimmin RFDK_F.
cs3brthrsnum RFDK_F.
cs3sistrsnum RFDK_F.
hh3dhshldnum
hh3dhshldchd RFDK.
cs3dnumchild 
cs3dnmstpchd 
cs3dnumdaugh
cs3dnumson
sn3dnumsn RFDK_F.
dm3devendmo SP3019aW.
dm3devendyr RFDK_F.
dm3devstmo SP3019aW.
dm3devstyr RFDK_F.
dm3nodevmos RFDK_F.
dm3nohelpmos RFDK_F.
ds3nohelpmos RFDK_F.
fq3mnthlyamt RFDK_F.
fq3paysourc1 RFDK_F.
fq3paysourc2 RFDK_F.
fq3paysourc3 RFDK_F.
fq3paysourc4 RFDK_F.
fq3paysourc5 RFDK_F.
fq3paysourc6 RFDK_F.
gr3grp1rdng RFDK_F.
gr3grp2rdng RFDK_F.
hc3hosovrnht RFDK_F.
hp3amtstlowe RFDK_F.
hp3homevalue RFDK_F.
hp3mthlymort RFDK_F.
hp3rentamt RFDK_F.
hw3currweigh RFDK_F.
hw3howtallft RFDK_F.
hw3howtallin RFDK_F.
in3strtabhrs RFDK_F.
in3strtabmin RFDK_F.
lf3hrswkwork RFDK_F.
lf3hrwrklstw RFDK_F.
lf3hrwrkltwk RFDK_F.
pd3staydays RFDK_F.
pd3staymths RFDK_F.
pd3staywks RFDK_F.
pd3stayyrs RFDK_F.
pk3pkarfl1rd RFDK_F.
pk3pkarfl2rd RFDK_F.
R3dorigbasc RFDK_F.
R3dorigchsc RFDK_F.
R3DORIGSPPB RFDK_F.
R3dorigwksc RFDK_F.
wa3wlk1hndr RFDK_F.
wa3wlk2hndr RFDK_F.
wa3wlkc1secs RFDK_F.
wa3wlkc2secs RFDK_F.
wb3ageyofeel RFDK_F.
wc3wstmsrinc RFDK_F.
wc3wstmsrqrt RFDK_F.
fl1dneverdrv RFDK_Y.
ha3dmealtkot RFDK_YN.
ha3dmealwhl RFDK_YN.
wc3wstbulkcl RFDK_Y.
ba3rsn11lec RFDK_YN.
ba3rsn11leo RFDK_YN.
ba3rsn1ftstd RFDK_YN.
ba3rsn1ssstd RFDK_YN.
ba3rsn1ststd RFDK_YN.
ba3rsn21lec RFDK_YN.
ba3rsn21leo RFDK_YN.
ba3rsn2ftstd RFDK_YN.
ba3rsn2ssstd RFDK_YN.
ba3rsn2ststd RFDK_YN.
ba3rsn31lec RFDK_YN.
ba3rsn31leo RFDK_YN.
ba3rsn3ftstd RFDK_YN.
ba3rsn3ssstd RFDK_YN.
ba3rsn3ststd RFDK_YN.
ba3rsn41lec RFDK_YN.
ba3rsn41leo RFDK_YN.
ba3rsn4ftstd RFDK_YN.
ba3rsn4ssstd RFDK_YN.
ba3rsn4ststd RFDK_YN.
ba3rsn91lec RFDK_YN.
ba3rsn91leo RFDK_YN.
ba3rsn9ftstd RFDK_YN.
ba3rsn9ssstd RFDK_YN.
ba3rsn9ststd RFDK_YN.
cg3dwrd10dly RFDK_YN.
cg3dwrd10rcl RFDK_YN.
cg3dwrd1dly RFDK_YN.
cg3dwrd1rcl RFDK_YN.
cg3dwrd2dly RFDK_YN.
cg3dwrd2rcl RFDK_YN.
cg3dwrd3dly RFDK_YN.
cg3dwrd3rcl RFDK_YN.
cg3dwrd4dly RFDK_YN.
cg3dwrd4rcl RFDK_YN.
cg3dwrd5dly RFDK_YN.
cg3dwrd5rcl RFDK_YN.
cg3dwrd6dly RFDK_YN.
cg3dwrd6rcl RFDK_YN.
cg3dwrd7dly RFDK_YN.
cg3dwrd7rcl RFDK_YN.
cg3dwrd8dly RFDK_YN.
cg3dwrd8rcl RFDK_YN.
cg3dwrd9dly RFDK_YN.
cg3dwrd9rcl RFDK_YN.
cg3presidna1 RFDK_YN.
cg3presidna2 RFDK_YN.
cg3presidna3 RFDK_YN.
cg3presidna4 RFDK_YN.
cg3probreca1 RFDK_YN.
cg3probreca2 RFDK_YN.
cg3probreca3 RFDK_YN.
cg3probreca4 RFDK_YN.
cg3reascano1 RFDK_YN.
cg3reascano2 RFDK_YN.
cg3reascano3 RFDK_YN.
cg3reascano4 RFDK_YN.
cg3reascano5 RFDK_YN.
cg3reascano6 RFDK_YN.
cg3vpname1 RFDK_YN.
cg3vpname2 RFDK_YN.
cg3vpname3 RFDK_YN.
cg3vpname4 RFDK_YN.
ch3chravail RFDK_YN.
ch3chstntat1 RFDK_YN.
ch3chstntat2 RFDK_YN.
ch3chstntat3 RFDK_YN.
ch3chstntat4 RFDK_YN.
ch3chstntat9 RFDK_YN.
ch3chstntdn1 RFDK_YN.
ch3chstntdn2 RFDK_YN.
ch3chstntdn3 RFDK_YN.
ch3chstntdn4 RFDK_YN.
ch3chstntdn5 RFDK_YN.
ch3chstntdn9 RFDK_YN.
ch3rsn11chs RFDK_YN.
ch3rsn21chs RFDK_YN.
ch3rsn31chs RFDK_YN.
ch3rsn41chs RFDK_YN.
ch3rsn51chs RFDK_YN.
ch3rsn91chs RFDK_YN.
ch3whlchrusd RFDK_YN.
ew3whohelfi1 RFDK_YN.
ew3whohelfi2 RFDK_YN.
ew3whregoth1 RFDK_YN.
ew3whregoth2 RFDK_YN.
ew3whregoth3 RFDK_YN.
fq3whotlevl1 RFDK_YN.
fq3whotlevl2 RFDK_YN.
fq3whotlevl3 RFDK_YN.
fq3whotlevl4 RFDK_YN.
fq3whotlevl5 RFDK_YN.
gr3adjgr1ps3 RFDK_YN.
gr3adjgr2ps3 RFDK_YN.
gr3grp1noat1 RFDK_YN.
gr3grp1noat2 RFDK_YN.
gr3grp1noat3 RFDK_YN.
gr3grp1noat4 RFDK_YN.
gr3grp1noat9 RFDK_YN.
gr3grp2noat1 RFDK_YN.
gr3grp2noat2 RFDK_YN.
gr3grp2noat3 RFDK_YN.
gr3grp2noat4 RFDK_YN.
gr3grp2noat9 RFDK_YN.
ha3howgtstr1 RFDK_YN.
ha3howgtstr2 RFDK_YN.
ha3howgtstr3 RFDK_YN.
ha3howgtstr4 RFDK_YN.
ha3howgtstr5 RFDK_YN.
ha3howgtstr6 RFDK_YN.
ha3howgtstr7 RFDK_YN.
ha3howgtstr8 RFDK_YN.
ha3howpaygr1 RFDK_YN.
ha3howpaygr2 RFDK_YN.
ha3howpaygr3 RFDK_YN.
ha3howpaygr4 RFDK_YN.
ha3howpaygr5 RFDK_YN.
ha3howpaygr6 RFDK_YN.
ha3howpaygr7 RFDK_YN.
ha3whrmachi1 RFDK_YN.
ha3whrmachi2 RFDK_YN.
ha3whrmachi3 RFDK_YN.
ha3whrmachi4 RFDK_YN.
ha3whrmachi5 RFDK_YN.
ha3whrmachi6 RFDK_YN.
ho3dbathprvt RFDK_YN.
ho3dbldg1 RFDK_YN.
ho3dbldg2 RFDK_YN.
ho3dbldg3 RFDK_YN.
ho3dbldg4 RFDK_YN.
ho3dkitchnco RFDK_YN.
ho3dkitchnpr RFDK_YN.
ip3typcarco1 RFDK_YN.
ip3typcarco2 RFDK_YN.
ip3typcarco3 RFDK_YN.
ir3prsnhlp1 RFDK_YN.
ir3prsnhlp2 RFDK_YN.
ir3prsnhlp3 RFDK_YN.
ir3prsnhlp4 RFDK_YN.
ir3prsnhlp5 RFDK_YN.
ir3prsnhlp6 RFDK_YN.
ir3prsnhlp91 RFDK_YN.
ir3sessrsn1 RFDK_YN.
ir3sessrsn2 RFDK_YN.
ir3sessrsn3 RFDK_YN.
ir3sessrsn91 RFDK_YN.
ir3spnotprs1 RFDK_YN.
ir3spnotprs2 RFDK_YN.
ir3spnotprs3 RFDK_YN.
ir3spnotprs4 RFDK_YN.
ir3spnotprs5 RFDK_YN.
ir3spnotprs6 RFDK_YN.
is3reasnprx1 RFDK_YN.
is3reasnprx2 RFDK_YN.
is3reasnprx3 RFDK_YN.
is3reasnprx4 RFDK_YN.
is3reasnprx5 RFDK_YN.
is3reasnprx6 RFDK_YN.
is3reasnprx7 RFDK_YN.
is3reasnprx9 RFDK_YN.
mc3howpkupm1 RFDK_YN.
mc3howpkupm2 RFDK_YN.
mc3howpkupm3 RFDK_YN.
mc3hwgtregd1 RFDK_YN.
mc3hwgtregd2 RFDK_YN.
mc3hwgtregd3 RFDK_YN.
mc3hwgtregd4 RFDK_YN.
mc3hwgtregd5 RFDK_YN.
mc3hwgtregd6 RFDK_YN.
mc3hwgtregd7 RFDK_YN.
mc3hwgtregd8 RFDK_YN.
mc3hwgtregd9 RFDK_YN.
mc3whrgtmed1 RFDK_YN.
mc3whrgtmed2 RFDK_YN.
mc3whrgtmed3 RFDK_YN.
mc3whrgtmed4 RFDK_YN.
pk3pk1noatt1 RFDK_YN.
pk3pk1noatt2 RFDK_YN.
pk3pk1noatt3 RFDK_YN.
pk3pk1noatt4 RFDK_YN.
pk3pk1noatt9 RFDK_YN.
pk3pk2noatt1 RFDK_YN.
pk3pk2noatt2 RFDK_YN.
pk3pk2noatt3 RFDK_YN.
pk3pk2noatt4 RFDK_YN.
pk3pk2noatt9 RFDK_YN.
sc3showrbat1 RFDK_YN.
sc3showrbat2 RFDK_YN.
sc3showrbat3 RFDK_YN.
ss3painwhe1 RFDK_YN.
ss3painwhe10 RFDK_YN.
ss3painwhe11 RFDK_YN.
ss3painwhe12 RFDK_YN.
ss3painwhe13 RFDK_YN.
ss3painwhe2 RFDK_YN.
ss3painwhe3 RFDK_YN.
ss3painwhe4 RFDK_YN.
ss3painwhe5 RFDK_YN.
ss3painwhe6 RFDK_YN.
ss3painwhe7 RFDK_YN.
ss3painwhe8 RFDK_YN.
ss3painwhe9 RFDK_YN.
wa3rsn11wkc RFDK_YN.
wa3rsn12wkc RFDK_YN.
wa3rsn21wkc RFDK_YN.
wa3rsn22wkc RFDK_YN.
wa3rsn31wkc RFDK_YN.
wa3rsn32wkc RFDK_YN.
wa3rsn41wkc RFDK_YN.
wa3rsn42wkc RFDK_YN.
wa3rsn51wkc RFDK_YN.
wa3rsn91wkc RFDK_YN.
wa3rsn92wkc RFDK_YN.
wc3measdiff1 RFDK_YN.
wc3measdiff2 RFDK_YN.
wc3measdiff3 RFDK_YN.
wc3measdiff4 RFDK_YN.
wc3measdiff5 RFDK_YN.
wc3measdiff6 RFDK_YN.
wc3measdiff9 RFDK_YN.
wc3wstnotat1 RFDK_YN.
wc3wstnotat2 RFDK_YN.
wc3wstnotat3 RFDK_YN.
wc3wstnotat4 RFDK_YN.
wc3wstnotat5 RFDK_YN.
wc3wstnotat9 RFDK_YN.
gr3handtstd1 RGT_LFT.
gr3handtstd2 RGT_LFT.
r3dnhatssppb SPPB.
r3dsppbmiss SPPB_MIS.
pk3paf2posit STAND.
pk3pkarf1pos STAND.
wc3wstpostn STAND.
hh3spgender W200002W.
is3prxygendr W200002W.
hh3spouseduc W200005W.
hh3martlstat W200010W.
cg3quesremem W200011W.
cg3speaktosp W200011W.
cg3wrdnotlst W200011W.
cg3wrdsntlst W200011W.
cp3knownspyr W200011W.
cp3memcogpr1 W200011W.
cp3memcogpr2 W200011W.
cp3memcogpr3 W200011W.
cp3memcogpr4 W200011W.
dm3helpmobil W200011W.
dm3lstyrcane W200011W.
ds3gethlpeat W200011W.
dt3getoplcs1 W200011W.
dt3getoplcs2 W200011W.
dt3getoplcs3 W200011W.
dt3getoplcs4 W200011W.
dt3getoplcs5 W200011W.
dt3getoplcs6 W200011W.
dt3getoplcs7 W200011W.
dt3otfrfamtk W200011W.
el3fathalive W200011W.
el3mothalive W200011W.
em3addlstyr1 W200011W.
em3addlstyr2 W200011W.
em3addlstyr3 W200011W.
em3addlstyr4 W200011W.
em3addlstyr5 W200011W.
em3addlstyr6 W200011W.
em3addlstyr7 W200011W.
em3paydevce1 W200011W.
em3paydevce2 W200011W.
em3paydevce3 W200011W.
em3paydevce4 W200011W.
em3paydevce5 W200011W.
em3paydevce6 W200011W.
em3paydevce7 W200011W.
em3paydevce8 W200011W.
em3paydevce9 W200011W.
em3payyufam1 W200011W.
em3payyufam2 W200011W.
em3payyufam3 W200011W.
em3payyufam4 W200011W.
em3payyufam5 W200011W.
em3payyufam6 W200011W.
em3payyufam7 W200011W.
ew3credcdmed W200011W.
ew3fingftfam W200011W.
ew3finhlpfam W200011W.
ew3mealskip1 W200011W.
ew3medpaovtm W200011W.
ew3nopayhous W200011W.
ew3nopaymed W200011W.
ew3nopayutil W200011W.
ew3progneed1 W200011W.
ew3progneed2 W200011W.
ew3progneed3 W200011W.
fl3balstands W200011W.
fl3bathgrbbr W200011W.
fl3bathseat W200011W.
fl3blind W200011W.
fl3cane W200011W.
fl3charstnds W200011W.
fl3deaf W200011W.
fl3didntleav W200011W.
fl3drives W200011W.
fl3drvlstyr W200011W.
fl3eiherhand W200011W.
fl3facility W200011W.
fl3lefthand W200011W.
fl3lftgrptst W200011W.
fl3noonetalk W200011W.
fl3notalert W200011W.
fl3notmobile W200011W.
fl3ntlvrmslp W200011W.
fl3raisedtlt W200011W.
fl3resnew W200011W.
fl3retirecom W200011W.
fl3rhtgrptst W200011W.
fl3righthand W200011W.
fl3scooter W200011W.
fl3scooterhm W200011W.
fl3showering W200011W.
fl3spdied W200011W.
fl3takingbth W200011W.
fl3tltgrbbr W200011W.
fl3walker W200011W.
fl3washingup W200011W.
fl3wheelchr W200011W.
fl3whlchrhom W200011W.
fl3wlkingrse W200011W.
ha3bankslf W200011W.
ha3bankwout W200011W.
ha3launslf W200011W.
ha3launwout W200011W.
ha3mealslf W200011W.
ha3mealwout W200011W.
ha3money W200011W.
ha3moneyhlp W200011W.
ha3shopcart W200011W.
ha3shoplean W200011W.
ha3shopslf W200011W.
ha3shopwout W200011W.
hc3backsrgyr W200011W.
hc3brokebon1 W200011W.
hc3brokebon2 W200011W.
hc3catrsrgyr W200011W.
hc3disescn1 W200011W.
hc3disescn10 W200011W.
hc3disescn2 W200011W.
hc3disescn3 W200011W.
hc3disescn4 W200011W.
hc3disescn5 W200011W.
hc3disescn6 W200011W.
hc3disescn7 W200011W.
hc3disescn8 W200011W.
hc3disescn9 W200011W.
hc3faleninyr W200011W.
hc3fllsinmth W200011W.
hc3hartsrgyr W200011W.
hc3hipsrgyr W200011W.
hc3hosptstay W200011W.
hc3knesrgyr W200011W.
hc3multifall W200011W.
hc3worryfall W200011W.
hc3worrylimt W200011W.
hh3livwthspo W200011W.
hh3marchange W200011W.
hh3spoupchlp W200011W.
ho3bathamen1 W200011W.
ho3bathamen2 W200011W.
ho3bathamen3 W200011W.
ho3bathamen4 W200011W.
ho3bathamen5 W200011W.
ho3bathamen6 W200011W.
ho3bathamen7 W200011W.
ho3bathprivt W200011W.
ho3bldgamen1 W200011W.
ho3bldgamen2 W200011W.
ho3bldgamen3 W200011W.
ho3bldgamen4 W200011W.
ho3entrnramp W200011W.
ho3entrstair W200011W.
ho3homeamen1 W200011W.
ho3homeamen2 W200011W.
ho3homeamen3 W200011W.
ho3kitchncom W200011W.
ho3kitchnprv W200011W.
ho3microwave W200011W.
hp3payrent W200011W.
hp3sec8pubsn W200011W.
ht3diffareun W200011W.
ht3helpmedbd W200011W.
ht3meals W200011W.
ht3retiresen W200011W.
hw3lst10pnds W200011W.
hw3trytolose W200011W.
ip3cmedicaid W200011W.
ip3covmedcad W200011W.
ip3covtricar W200011W.
ip3mgapmedsp W200011W.
ip3nginsnurs W200011W.
ip3otdrugcov W200011W.
is3proxlivsp W200011W.
lf3huswifwrk W200011W.
lf3mrthnonjb W200011W.
lf3wrkplstmn W200011W.
lm3bre W200011W.
lm3brehlp W200011W.
lm3docclear W200011W.
lm3pain W200011W.
lm3painhlp W200011W.
lm3relgamt W200011W.
lm3sad W200011W.
lm3sadhlp W200011W.
mc3anhlpwdec W200011W.
mc3ansitindr W200011W.
mc3chginspln W200011W.
mc3havregdoc W200011W.
mc3meds W200011W.
mc3medsmis W200011W.
mc3medsslf W200011W.
mc3regdoclyr W200011W.
mc3tpersevr1 W200011W.
mc3tpersevr2 W200011W.
mc3tpersevr3 W200011W.
mc3tpersevr4 W200011W.
md3cane W200011W.
md3canewlker W200011W.
md3scooter W200011W.
md3scterinsp W200011W.
md3walker W200011W.
md3wheelchar W200011W.
md3whelcrspc W200011W.
mo3bedhlp W200011W.
mo3bedwout W200011W.
mo3insdhlp W200011W.
mo3insdwout W200011W.
mo3outhlp W200011W.
mo3outwout W200011W.
pa3attrelser W200011W.
pa3clbmtgrac W200011W.
pa3evrgowalk W200011W.
pa3hlkepfvst W200011W.
pa3hlkpfrclb W200011W.
pa3hlkpfrvol W200011W.
pa3hlkpfrwrk W200011W.
pa3hlkpgoenj W200011W.
pa3htkfrrlsr W200011W.
pa3outfrenjy W200011W.
pa3prcranoth W200011W.
pa3trkpfrvis W200011W.
pa3trprgoout W200011W.
pa3trprkpfgr W200011W.
pa3trprrelsr W200011W.
pa3vigoractv W200011W.
pa3vistfrfam W200011W.
pa3voltrwork W200011W.
pa3workfrpay W200011W.
pc3bendover W200011W.
pc3car10pnds W200011W.
pc3car20pnds W200011W.
pc3geonknees W200011W.
pc3grspsmobj W200011W.
pc3hvobovrhd W200011W.
pc3opnjarwhd W200011W.
pc3rechovrhd W200011W.
pc3up10stair W200011W.
pc3up20stair W200011W.
pc3walk3blks W200011W.
pc3walk6blks W200011W.
pd3hospice1 W200011W.
pd3staymthpl W200011W.
pe3flruppain W200011W.
pe3stndwhold W200011W.
pe3surgarmsh W200011W.
pe3surghdwrt W200011W.
pe3surgyhips W200011W.
pe3upchbyslf W200011W.
pe3wlkdsself W200011W.
re3alonedec W200011W.
re3intplace W200011W.
re3placedec W200011W.
sc3bathhlp W200011W.
sc3bathwout W200011W.
sc3bdevdec W200011W.
sc3dresdev W200011W.
sc3dreshlp W200011W.
sc3dreswout W200011W.
sc3eathlp W200011W.
sc3eatwout W200011W.
sc3toilhlp W200011W.
sc3toilwout W200011W.
sc3usvartoi1 W200011W.
sc3usvartoi2 W200011W.
sc3usvartoi3 W200011W.
sc3usvartoi4 W200011W.
sd3smokesnow W200011W.
se3servcoff1 W200011W.
se3servcoff2 W200011W.
se3servcoff3 W200011W.
se3servcoff4 W200011W.
se3servcoff5 W200011W.
se3servcoff6 W200011W.
se3servcoff7 W200011W.
se3servcoff8 W200011W.
se3servcoff9 W200011W.
se3servused1 W200011W.
se3servused2 W200011W.
se3servused3 W200011W.
se3servused4 W200011W.
se3servused5 W200011W.
se3servused6 W200011W.
se3servused7 W200011W.
se3servused8 W200011W.
se3servused9 W200011W.
ss3convquiet W200011W.
ss3convwradi W200011W.
ss3glasscls W200011W.
ss3glrednewp W200011W.
ss3hearphone W200011W.
ss3loenlmtat W200011W.
ss3lowenergy W200011W.
ss3lwrbodimp W200011W.
ss3lwrbodstr W200011W.
ss3othvisaid W200011W.
ss3painbothr W200011W.
ss3painlimts W200011W.
ss3prbbalcnt W200011W.
ss3prbbalcrd W200011W.
ss3prbbrlimt W200011W.
ss3probbreat W200011W.
ss3probchswl W200011W.
ss3probspeak W200011W.
ss3seestvgls W200011W.
ss3seewellst W200011W.
ss3strnglmup W200011W.
ss3uplimtact W200011W.
te3cellphone W200011W.
te3compoth W200011W.
te3emailtext W200011W.
te3intrntmd1 W200011W.
te3intrntmd2 W200011W.
te3intrntmd3 W200011W.
te3online W200011W.
te3othrphone W200011W.
te3shoponli1 W200011W.
te3shoponli2 W200011W.
te3shoponli3 W200011W.
re3dresistrct W200018W.
re3newstrct W200018W.
fl3structure W200020W.
re3dbldg W200021W.
re3newblgfl W200021W.
fl3hotype W200022W.
is3resptype W200030W.
is3tempres W200032W.
is3prxyrelat W200035W.
is3famrrutin W200036W.
re3spadrsnew W200037W.
ab3datemonth W200038W.
re3mthmove W200038W.
hh3yrendmarr W200039W.
re3yearmove W200039W.
dm3helpendyr W200040W.
dm3helpstyr W200040W.
ds3helpendyr W200040W.
ds3helpstyr W200040W.
pd3placedied W200041W.
pd3homedied W200042W.
pd3hospdied W200043W.
pd3hospice2 W200044W.
pd3stayunit W200045W.
pd3placepre SP30046W.
pd3alert W200047W.
pd3outbed W200047W.
lm3brehlpam W200048W.
lm3painhlpam W200048W.
lm3sadhlpam W200048W.
lm3caredecis W200049W.
lm3carenowan W200049W.
lm3doctor W200049W.
lm3relg W200049W.
lm3informed W200050W.
lm3perscare W200050W.
lm3respect W200050W.
cg3ratememry W200051W.
cp3memrygood W200051W.
hc3health W200051W.
lm3ratecare SP30051W.
hc3depresan1 W200052W.
hc3depresan2 W200052W.
hc3depresan3 W200052W.
hc3depresan4 W200052W.
hc3aslep30mn W200053W.
hc3sleepmed W200053W.
hc3trbfalbck W200054W.
ht3placedesc W200055W.
ht3spacename W200057W.
hh3newspoprt W200058W.
hh3placekind W200060W.
ho3entrccomn W200067W.
ho3levelsflr W200068W.
em3modhere1 W200069W.
em3payaltgth W200070W.
em3morls1000 W200071W.
em3morls100 W200072W.
te3computer W200073W.
te3oftnemail W200074W.
ss3heringaid W200076W.
ss3glasseswr W200077W.
cg3ofmemprob W200078W.
dt3oftedrive W200078W.
mo3oflvslepr W200078W.
mo3oftgoarea W200078W.
sc3dresoft W200078W.
ss3painmedof W200078W.
wb3offelche1 W200078W.
wb3offelche2 W200078W.
wb3offelche3 W200078W.
wb3offelche4 W200078W.
cp3chgthink1 W200080W.
cp3chgthink2 W200080W.
cp3chgthink3 W200080W.
cp3chgthink4 W200080W.
cp3chgthink5 W200080W.
cp3chgthink6 W200080W.
cp3chgthink7 W200080W.
cp3chgthink8 W200080W.
cg3reascano7 RFDK_YN.
cg3reascano8 RFDK_YN.
cg3reascano9 RFDK_YN.
cg3memcom1yr W200082W.
cg3todaydat1 W200083W.
cg3todaydat2 W200083W.
cg3todaydat3 W200083W.
cg3todaydat4 W200083W.
cg3todaydat5 W200083W.
cg3todaydat6 W200083W.
cg3prewrdrcl W200084W.
cg3wrdsdca10 W200085W.
cg3wrdsdcal1 W200085W.
cg3wrdsdcal2 W200085W.
cg3wrdsdcal3 W200085W.
cg3wrdsdcal4 W200085W.
cg3wrdsdcal5 W200085W.
cg3wrdsdcal6 W200085W.
cg3wrdsdcal7 W200085W.
cg3wrdsdcal8 W200085W.
cg3wrdsdcal9 W200085W.
cg3wrdsrca10 W200085W.
cg3wrdsrcal1 W200085W.
cg3wrdsrcal2 W200085W.
cg3wrdsrcal3 W200085W.
cg3wrdsrcal4 W200085W.
cg3wrdsrcal5 W200085W.
cg3wrdsrcal6 W200085W.
cg3wrdsrcal7 W200085W.
cg3wrdsrcal8 W200085W.
cg3wrdsrcal9 W200085W.
cg3probreca5 RFDK_YN.
cg3atdrwclck W200087W.
mo3outoft W200089W.
ha3oftmicrow W200090W.
ha3restamels W200090W.
mc3medsrem W200090W.
mo3beddev W200090W.
mo3insdcane W200090W.
mo3insdsctr W200090W.
mo3insdwalkr W200090W.
mo3insdwlchr W200090W.
mo3oftholdwl W200090W.
mo3outcane W200090W.
mo3outsctr W200090W.
mo3outwalkr W200090W.
mo3outwlchr W200090W.
sc3scusgrbrs W200090W.
sc3shtubseat W200090W.
mo3bedslf W200092W.
mo3insdslf W200092W.
mo3outslf W200092W.
sc3bathoft W200092W.
sc3dresslf W200092W.
sc3eatslfoft W200092W.
sc3toiloft W200092W.
ha3bankdif W200093W.
ha3laundif W200093W.
ha3mealdif W200093W.
ha3shopdif W200093W.
mc3medsdif W200093W.
mo3beddif W200093W.
mo3insddif W200093W.
mo3outdif W200093W.
sc3bathdif W200093W.
sc3dresdif W200093W.
sc3eatslfdif W200093W.
sc3toildif W200093W.
mo3insdyrgo W200094W.
mo3outyrgo W200094W.
dm3helpendmo W200095W.
dm3helpstmo W200095W.
ds3helpendmo W200095W.
ds3helpstmo W200095W.
dm3nodev W200096W.
dm3nohelp W200096W.
ds3nohelp W200096W.
ip3nginslast W200096W.
dt3driveyr W200097W.
dt3avoidriv1 W200098W.
dt3avoidriv2 W200098W.
dt3avoidriv3 W200098W.
dt3avoidriv4 W200098W.
ha3bank W200099W.
ha3laun W200099W.
ha3meal W200099W.
ha3shop W200099W.
mc3medstrk W200099W.
ha3bankoft W200102W.
ha3launoft W200102W.
ha3mealoft W200102W.
ha3shopoft W200102W.
mc3medsyrgo W200102W.
sc3bathyrgo W200102W.
sc3dresyrgo W200102W.
sc3eatdev W200106W.
sc3eatdevoft W200107W.
sc3prfrshbth W200109W.
pa3imparclub W200114W.
pa3impouteny W200114W.
pa3imprelser W200114W.
pa3impvstfam W200114W.
pa3dofavact W200115W.
pa3helmfvact W200115W.
pe3whhndsign W200116W.
pe3sideflrup W200117W.
pe3sidsurgar W200117W.
pe3surgyside W200117W.
pe3sidhipsrg W200118W.
cm3knowwell W200126W.
cm3peoptrstd W200126W.
cm3willnghlp W200126W.
wb3agrwstmt1 W200127W.
wb3agrwstmt2 W200127W.
wb3agrwstmt3 W200127W.
wb3truestme1 W200127W.
wb3truestme2 W200127W.
wb3truestme3 W200127W.
wb3truestme4 W200127W.
ip3paypremms W200129W.
lf3abstlstwk W200131W.
lf3workfpay W200131W.
lf3oftpaid W200132W.
hp3ownrentot W200133W.
hp3mrtpadoff W200134W.
hp3mortpaymt W200135W.
hp3rentamout W200135W.
hp3whnpayoff W200136W.
hp3amoutowed W200137W.
hp3homvalamt W200138W.
ew3pycredbal W200139W.
ew3crecardeb W200140W.
ew3amtcrdmed W200141W.
ew3ampadovrt W200142W.
ew3amthlpgiv W200142W.
ew3atchhelyr W200142W.
ew3mealskip2 W200146W.
se3payservi1 W200147W.
se3payservi2 W200147W.
se3payservi3 W200147W.
se3payservi4 W200147W.
se3payservi5 W200147W.
se3payservi6 W200147W.
se3payservi7 W200147W.
se3payservi8 W200147W.
se3payservi9 W200147W.
wa3dwlkadm WA1WLK.
wc3dwaistadm WC1WAIST.
cg3dwrddlyrc WORDRE_N.
cg3dwrdimmrc WORDRE_N.
cg3dwrdlstnm WORDREC.
r2dresid F_DRESID.
r1dgender w200002w.
rl1dracehisp RACEHISP.
pd3hospcelml W200011W.
te3tablet SP30076W.
te3socialnet W200011W.
ha3mealwheel W200090W.
ia3recsspa1 RFDK_YN.
ia3recsspa2 RFDK_YN.
ia3recsspa3 RFDK_YN.
ia3recssils1 RFDK_YN.
ia3recssils2 RFDK_YN.
ia3recssils3 RFDK_YN.
ia3rvapayls1 RFDK_YN.
ia3rvapayls2 RFDK_YN.
ia3rvapayls3 RFDK_YN.
ia3penjobou1 RFDK_YN.
ia3penjobou2 RFDK_YN.
ia3penjobou3 RFDK_YN.
ia3iraothac1 RFDK_YN.
ia3iraothac2 RFDK_YN.
ia3iraothac3 RFDK_YN.
ia3mutfdstk1 RFDK_YN.
ia3mutfdstk2 RFDK_YN.
ia3mutfdstk3 RFDK_YN.
ia3mutfdstk4 RFDK_YN.
ia3ownbond1 RFDK_YN.
ia3ownbond2 RFDK_YN.
ia3ownbond3 RFDK_YN.
ia3ownbond4 RFDK_YN.
ia3bnkacccd1 RFDK_YN.
ia3bnkacccd2 RFDK_YN.
ia3bnkacccd3 RFDK_YN.
ia3bnkacccd4 RFDK_YN.
ia3bnkacccd5 RFDK_YN.
ia3bnkacccd6 RFDK_YN.
ia3bnkacccd7 RFDK_YN.
ia3bnkacccd8 RFDK_YN.
ia3bnkacccd9 RFDK_YN.
ia3bnkacccd10 RFDK_YN.
ia3bnkacccd11 RFDK_YN.
ia3bnkacccd12 RFDK_YN.
ia3realestt1 RFDK_YN.
ia3realestt2 RFDK_YN.
ia3realestt3 RFDK_YN.
ia3realestt4 RFDK_YN.
ia3totinc RFDK_F.
ia3toincesjt SP30141W.
ia3toincessg SP30142W.
pn3painlim1 SP30120W.
pn3painlim2 SP30120W.
pn3painlim3 SP30120W.
pn3painlim4 SP30120W.
pn3painlim5 SP30120W.
pn3painlim6 SP30120W.
pn3painall SP30120W.
pn3painscale RFDK_F.
pn3painmonth RFDK_YN.
pn3painyear SP30120W.
pt3outgoing SP30118W.
pt3organized SP30118W.
pt3warm SP30118W.
pt3worrying SP30118W.
pt3creative SP30118W.
pt3talkative SP30118W.
pt3caring SP30118W.
pt3nervous SP30118W.
pt3imagine SP30118W.
pt3thorough SP30118W.
pt3invention invent.
sl3bedtime1 RFDK_F.
sl3bedtime2 RFDK_F.
sl3bedtime3 A0001AB.
sl3asleep1 SP30076K.
sl3asleep2 RFDK_F.
sl3morning1 SP30076G.
sl3morning2 RFDK_F.
sl3morning3 A0001AB.
sl3sleephour SP30076I.
sl3sleepbre W200053W.
sl3sleeppain W200053W.
sl3sleepqual W300151W.
sl3awakedif W200078W.
sl3napsoft W200078W.
sl3naps1 SP30076H.
sl3naps2 RFDK_F.
sl3napplan SP30155W.
sl3bedtime1 SP30076J.
dmds3dintvl DMDSINTV.
dm3dmohlp DMDS_DUR.
dm3dmodev DMDS_DUR.
dm3dmohlpgr DMH_GRP.
dm3dmodevgr DMU_GRP.
dm3flag DMDS3FLG.
ds3dschlp DMDS_DUR.
ds3dschlpgr DS_GRP.
ds3flag DMDS3FLG.
ia3toincim1 RFDK_F.
ia3toincim2 RFDK_F.
ia3toincim3 RFDK_F.
ia3toincim4 RFDK_F.
ia3toincim5 RFDK_F.
ia3eincimj1 SP30141W.
ia3eincimj2 SP30141W.
ia3eincimj3 SP30141W.
ia3eincimj4 SP30141W.
ia3eincimj5 SP30141W.
ia3eincims1 SP30142W.
ia3eincims2 SP30142W.
ia3eincims3 SP30142W.
ia3eincims4 SP30142W.
ia3eincims5 SP30142W.
ia3toincimf Imp_Flg.
ia3eincimjf Imp_Flg.
ia3eincimsf Imp_Flg.;

/* Section #4 - Label assignment statement   */
label
spid="NHATS SAMPLED PERSON ID"
r3dlmlint="R3 D LAST MTH LIFE INTVW DONE"
r3dresid="R3 D RESIDENTIAL CARE STATUS"
r2dresid="R2 D RESIDENTIAL CARE STATUS"
r1dresid="R1 D RESIDENTIAL CARE STATUS"
r3dresidlml="R3 D LAST MTH LIFE RESIDNCE"
r3breakoffst="R3 CASE BREAKOFF STATUS"
r3breakoffqt="R3 CASE BREAKOFF QUESTION"
is3resptype="R3 IS2 TYPE OF RESPONDENT"
is3reasnprx1="R3 IS2A PROXY REAS SP DEMENTIA"
is3reasnprx2="R3 IS2A PROXY REAS SP ILL"
is3reasnprx3="R3 IS2A PRXY REAS SP SPCH IMPAIR"
is3reasnprx4="R3 IS2A PRXY REAS SP HEAR IMPAIR"
is3reasnprx5="R3 IS2A PROXY REAS LANG BARRIER"
is3reasnprx6="R3 IS2A PROXY REAS TEMP UNAVAIL"
is3reasnprx7="R3 IS2A PROXY REAS DECEASED"
is3reasnprx9="R3 IS2A PROXY REAS OTHER"
is3tempres="R3 IS2B2 TEMPORARY RESIDENCE"
is3prxyrelat="R3 IS9 PROXY RELATIONSHIP TO SP"
is3prxygendr="R3 IS10 PROXY GENDER"
is3famrrutin="R3 IS11 FAMILRTY SP DAILY ROUTIN"
is3proxlivsp="R3 IS11A PROXY LIVES W SP"
r1dgender="R1 D GENDER OF SP"
rl1dracehisp="R1 D RACE AND HISPANIC ETHNICITY"
r3d2intvrage="R3 D SP CAT AGE AT INTVW"
is3dproxyid="R3 D PROXY OPID"
re3spadrsnew="R3 RE4F SP ADDRESS SAME OR DIFF"
re3intplace="R3 RE7 SP INT AT PLACE OF RES"
re3newstrct="R3 RE8 NEW RESID PHYS STRUC IN R3"
re3newblgfl="R3 RE9 NEW RESID BLDG FLOORS IN R3 "
re3mthmove="R3 RE10 MONTH MOVED NEW ADDRESS "
re3yearmove="R3 RE10B YEAR MOVED NEW ADDRESS "
re3placedec="R3 RE11 CARE AT PLACE SP DIED"
re3alonedec="R3 RE12 LIVED ALONE AT DEATH"
re3dresistrct="R3 D RESIDNCE PHYSICAL STRCTUR"
re3dbldg="R3 D SP BLDG MORE THAN ONE FLOOR"
re3dcensdiv="R3 D SP CENSUS DIVISION"
fl3structure="R3 F RE STRUCTURE OF SP DWELLING"
fl3resnew="R3 F RE NEW ADDRESS FROM PRIOR ROUND"
fl3facility="R3 F RE ROUTING FLAG FROM RE4f HT3 5 6 7"
fl3hotype="R3 F RE HT TYPE OF HOME"
fl3retirecom="R3 F RE HT SP LIVES IN RETIREMT COM"
pd3placedied="R3 PD3 PLACE OF DEATH"
pd3homedied="R3 PD3B SP OR OTHER HOME DIED"
pd3hospdied="R3 PD3C HOSPITAL UNIT DIED"
pd3hospice1="R3 PD3D HOSPICE AT NURSING HOME"
pd3hospice2="R3 PD3E HOSPICE OTHER PLACE"
pd3stayunit="R3 PD4 LENGTH OF STAY UNIT"
pd3staydays="R3 PD4A LENGTH OF STAY DAYS"
pd3staywks="R3 PD4B LENGTH OF STAY WEEKS"
pd3staymths="R3 PD4C LENGTH OF STAY MONTHS"
pd3stayyrs="R3 PD4D LENGTH OF STAY YEARS"
pd3staymthpl="R3 PD4E LENGTH OF STAY MTH PLUS"
pd3placepre="R3 PD5 PLACE PRE HOSP HOSPICE NH"
pd3hospcelml="R3 PD5B HOSPICE CARE IN LAST MTH"
pd3alert="R3 PD6 ALERT IN LAST MONTH"
pd3outbed="R3 PD7 GET OUT OF BED IN LST MTH"
r3d2deathage ="R3 D SP CAT AGE AT DEATH"
fl3spdied="R3 F SP DIED PRIOR TO R3  "
fl3notalert="R3 F LML NOT ALERT"
fl3notmobile="R3 F LML NOT MOBILE"
lm3pain="R3 LM1 PAIN IN LAST MONTH"
lm3painhlp="R3 LM1A GET HELP WITH PAIN"
lm3painhlpam="R3 LM1B PAIN HELP AMOUNT"
lm3bre="R3 LM2 BREATHING TROUBLE"
lm3brehlp="R3 LM2A GET HELP WITH BREATHING"
lm3brehlpam="R3 LM2B BREATHING HELP AMOUNT"
lm3sad="R3 LM3 ANXIOUS OR SAD LAST MONTH"
lm3sadhlp="R3 LM3A ANXIOUS SAD GET HELP FOR"
lm3sadhlpam="R3 LM3B ANXIOUS SAD HELP AMOUNT"
lm3caredecis="R3 LM4 DEC ABOUT CARE WO INPUT"
lm3carenowan="R3 LM5 DEC ABOUT CARE NOT WANTED"
lm3perscare="R3 LM6 PERSONAL CARE NEEDS MET"
lm3respect="R3 LM7 TREATED WITH RESPECT"
lm3informed="R3 LM8 INFORMED ABOUT CONDITION"
lm3doctor="R3 LM9 MORE THAN ONE DOCTOR"
lm3docclear="R3 LM9A CLEAR DOCTOR IN CHARGE"
lm3relg="R3 LM10 TALK RELIGIOUS BELIEFS"
lm3relgamt="R3 LM10A RELIGIOUS BLIEF CONTACT"
lm3ratecare="R3 LM11 HOW RATE CARE"
hc3health="R3 HC1 OVERALL HEALTH CONDITION"
hc3disescn1="R3 HC2 SP HAD HEART ATTACK"
hc3disescn2="R3 HC2 SP HAS HEART DISEASE"
hc3disescn3="R3 HC2 SP HAS HIGH BLOOD PRESS"
hc3disescn4="R3 HC2 SP HAS ARTHRITIS"
hc3disescn5="R3 HC2 SP HAS OSTEOPOROSIS"
hc3disescn6="R3 HC2 SP HAS DIABETES"
hc3disescn7="R3 HC2 SP HAS LUNG DISEASE"
hc3disescn8="R3 HC2 SP HAD STROKE"
hc3disescn9="R3 HC2 SP HAS DEMENTIA OR ALZH"
hc3disescn10="R3 HC2 SP HAS CANCER"
hc3brokebon1="R3 HC5A SP BROKEN OR FRACT HIP"
hc3brokebon2="R3 HC5B SP OTHR BRKN FRACT BONE"
hc3hosptstay="R3 HC7 SP HOSP STAY LAST 12MOS "
hc3hosovrnht="R3 HC8 SP NUM OF HOSP STAYS"
hc3knesrgyr="R3 HC9B KNEE SURGERY IN 12 MNTHS"
hc3hipsrgyr="R3 HC10B HIP SURG IN 12 MNTHS"
hc3catrsrgyr="R3 HC11B CATER SURG IN 12 MNTHS"
hc3backsrgyr="R3 HC12B BCK SPNE SURGR 12 MNTHS"
hc3hartsrgyr="R3 HC13B HEART SURGERY 12 MONTHS"
hc3fllsinmth="R3 HC14 FALL DOWN IN LAST MONTH"
hc3worryfall="R3 HC15 WORRIED ABOT FALLNG DOWN"
hc3worrylimt="R3 HC16 WORRY EVR LIMT ACTIVTIES"
hc3faleninyr="R3 HC17 FALLEN DOWN IN 12 MONTHS"
hc3multifall="R3 HC18 FALLEN DWN MORE THN ONCE"
hc3depresan1="R3 HC19A SP LITTLE INTERST PLEAS"
hc3depresan2="R3 HC19B SP DOWN DEPRES HOPELESS"
hc3depresan3="R3 HC19C SP NERVOUS ANXIOUS"
hc3depresan4="R3 HC19D SP UNABLE TO STOP WORRY"
hc3aslep30mn="R3 HC20 OVER 30 MIN FALL ASLEEP"
hc3trbfalbck="R3 HC21 TROBLE FALLNG BCK ASLEEP"
hc3sleepmed="R3 HC22 OFTN MEDICATE HELP SLEEP"
ht3placedesc="R3 HT3 PLACE BEST DESCRIPTION"
ht3retiresen="R3 HT4 RETIRMNT CMMTY SEN HOUSIN"
ht3diffareun="R3 HT5 DIFF AREAS UNITS TO MOVE"
ht3helpmedbd="R3 HT6 HELP W MEDS BATH DRESSING"
ht3meals="R3 HT7 MEALS FOR RESIDENTS"
ht3spacename="R3 HT10 NAME OF LIVING SPACE"
se3servcoff1="R3 SE1 FAC SERVICES MEALS"
se3servcoff2="R3 SE1 FAC SERVICES HELP W RX"
se3servcoff3="R3 SE1 FAC SERV HELP BATH DRESS"
se3servcoff4="R3 SE1 FAC SERVICES LAUNDRY"
se3servcoff5="R3 SE1 FAC SERVICES HOUSEKEEP"
se3servcoff6="R3 SE1 FAC SERV VAN TO DOCTOR"
se3servcoff7="R3 SE1 FAC SRV VAN TO STORE EVNT"
se3servcoff8="R3 SE1 FAC SERV RECREATIONAL FAC"
se3servcoff9="R3 SE1 FAC SERV SOCIAL EVENTS"
se3servused1="R3 SE2 SERVS USED MEALS"
se3servused2="R3 SE2 SERVS USED HELP W RX"
se3servused3="R3 SE2 SERVS USED HLP BATH DRESS"
se3servused4="R3 SE2 SERVS USED LAUNDRY"
se3servused5="R3 SE2 SERVS USED HOUSEKEEPING"
se3servused6="R3 SE2 SERVS USED VAN TO DOCTOR"
se3servused7="R3 SE2 SERVS USED VAN TO STORE"
se3servused8="R3 SE2 SERVS USED RECREATION FAC"
se3servused9="R3 SE2 SERVS USED SOCIAL EVENTS"
se3payservi1="R3 SE3 PAYMENT FOR SERV MEALS"
se3payservi2="R3 SE3 PAYMENT FOR SERV HLP W RX"
se3payservi3="R3 SE3 PAY FR SERV HLP BATH DRSS"
se3payservi4="R3 SE3 PAYMENT FOR SERV LAUNDRY"
se3payservi5="R3 SE3 PAYMNT FOR SERV HOUSEKEEP"
se3payservi6="R3 SE3 PAYMNT FR SERV VAN TO DOC"
se3payservi7="R3 SE3 PAY FOR SERV VAN TO STORE"
se3payservi8="R3 SE3 PAY FOR SERV RECREATION"
se3payservi9="R3 SE3 PAY FOR SERV SOCIAL EVNTS"
hh3marchange="R3 HH1A MARITAL STATUS CHANGE"
hh3martlstat="R3 HH1 MARITAL STATUS IF CHANGED"
hh3yrendmarr="R3 HH2B YR MARR END OR SPS PASS"
hh3newspoprt="R3 HH4A1 SPOUSE PRTNR SAME OR DIFF"
hh3spgender="R3 HH5 NEW R3 SPOU PART GENDER"
hh3dspouage="R3 D NEW R3 SPOU PART CAT AGE"
hh3dspageall="R3 D SPOU PAR AGE UPDATE AND NEW"
hh3spouseduc="R3 HH9 NEW R3 SPOU PART HIGH EDUC"
hh3spoupchlp="R3 HH10 SPOUS NEED PERS CARE HLP"
hh3livwthspo="R3 HH11 LIVE WITH SPOUSE PARTNER"
hh3placekind="R3 HH12 KIND OF PLACE LIVE IN"
hh3dmarstat="R3 D MARITAL STATUS AT R3"
hh3dlvngarrg="R3 D LIVING ARRANGEMENT"
hh3dhshldnum="R3 D TOTAL NUMBER IN HOUSEHOLD"
hh3dhshldchd="R3 D TOTAL CHILDREN IN HOUSEHOLD"
hh3dspouseid="R3 D SPOUSE ID"
cs3sistrsnum="R3 CS14 NUMBER OF LIVING SISTERS"
cs3brthrsnum="R3 CS15 NUMBER OF LIVNG BROTHERS"
cs3dnumchild="R3 D NUMBER OF CHILDREN"
cs3dnmstpchd="R3 D NUMBER OF STEP CHILDREN"
cs3dnumdaugh="R3 D NUMBER OF DAUGHTERS"
cs3dnumson="R3 D NUMBER OF SONS"
sn3dnumsn="R3 D NUMBER IN SOCIAL NETWORK"
fl3noonetalk="R3 F SN SP HAS NO ONE TO TALK TO"
ho3entrstair="R3 HO1 ENTRANCE STAIRS OUTSIDE"
ho3entrccomn="R3 HO2 ENTRANCE COMMON OR PRIVAT"
ho3entrnramp="R3 HO3 RAMP AT ENTRANCE"
ho3bldgamen1="R3 HO4A NEW RES BLDG HAS ELEVATOR"
ho3bldgamen2="R3 HO4B NEW RES BLDG STAIR LIFT GLIDE"
ho3bldgamen3="R3 HO4C NEW RES BLDG COMMN SPACE MEALS"
ho3bldgamen4="R3 HO4D NEW RES BLDG SPACE SOCIAL EVT"
ho3levelsflr="R3 HO5 NUMBR OF LEVELS OR FLOORS"
ho3homeamen1="R3 H08A BED KITCHN BATH SAME FLR"
ho3homeamen2="R3 H08B HOME HAS ELEVATOR"
ho3homeamen3="R3 H08C HOME HAS STAIR LFT GLIDE"
ho3bathprivt="R3 H010 NEW FAC RES PRIV BATH"
ho3bathamen1="R3 H011A BATH HAS BATHTUB"
ho3bathamen2="R3 H011B BATH HAS SHOWER STALL"
ho3bathamen3="R3 H011C BATH GRAB BAR IN SHOWER"
ho3bathamen4="R3 H011D BATH SEAT FR SHOWER TUB"
ho3bathamen5="R3 H011E BATH RAISED TOILET SEAT"
ho3bathamen6="R3 H011F BATH GRAB BARS TOILET"
ho3bathamen7="R3 H011G BATH MED EMERGNCY SYSTM"
ho3kitchnprv="R3 HO12 NEW FAC RES PRIV KITCHEN"
ho3kitchncom="R3 H013 NEW FAC RES COMMON KITCHEN"
ho3microwave="R3 HO14 USE OF MICROWAVE"
ho3dbldg1="R3 D BLDG HAS ELEVATOR"
ho3dbldg2="R3 D BLDG HAS STAIR LIFT GLIDE"
ho3dbldg3="R3 D BLDG HAS COMMN SPACE MEALS"
ho3dbldg4="R3 D BLDG HAS SPACE SOCIAL EVENT"
ho3dbathprvt="R3 D FAC HAS PRIVATE BATH"
ho3dkitchnpr="R3 D FAC HAS PRIV KITCHEN"
ho3dkitchnco="R3 D FAC HAS COMMON KITCHEN"
fl3bathgrbbr="R3 F HO SPS BATH HAS GRAB BARS"
fl3bathseat="R3 F HO SPS BATH HAS SEAT"
fl3raisedtlt="R3 F HO SP HAS RAISED TOILET"
fl3tltgrbbr="R3 F HO SP TOILET HAS GRAB BARS"
em3modhere1="R3 EM1 NEW RES ALL ITEMS HERE"
em3addlstyr1="R3 EM2A RAMP ADDED IN LAST YR"
em3addlstyr2="R3 EM2B ELEVATOR ADDED IN LST YR"
em3addlstyr3="R3 EM2C STR LIFT ADDED IN LST YR"
em3addlstyr4="R3 EM2D SHWR GRABBAR ADD LST YR"
em3addlstyr5="R3 EM2E BATHSEAT ADDED IN LST YR"
em3addlstyr6="R3 EM2F TOILETSEAT ADD IN LST YR"
em3addlstyr7="R3 EM2G TOILET GRABBARS ADDED YR"
em3payyufam1="R3 EM3A SP PAID FOR RAMP"
em3payyufam2="R3 EM3B SP PAID FOR ELEVATOR"
em3payyufam3="R3 EM3C SP PAID STAIR LFT GLIDE"
em3payyufam4="R3 EM3D SP PAID SHOWER GRABBAR"
em3payyufam5="R3 EM3E SP PAID SHOWER SEAT"
em3payyufam6="R3 EM3F SP PAID RAISD TOILT SEAT"
em3payyufam7="R3 EM3G SP PAID TOILET GRABBARS"
em3paydevce1="R3 EM4A SP PAID FOR VISION AIDS"
em3paydevce2="R3 EM4B SP PAID FOR HEARING AID"
em3paydevce3="R3 EM4C SP PAID FOR CANE"
em3paydevce4="R3 EM4D SP PAID FOR WALKER"
em3paydevce5="R3 EM4E SP PAID FOR WHEELCHAIR"
em3paydevce6="R3 EM4F SP PAID FOR SCOOTER"
em3paydevce7="R3 EM4G SP PAID FOR GRABBER"
em3paydevce8="R3 EM4H SP PD SPECIAL DRESS ITM"
em3paydevce9="R3 EM4I SP PAID ADAPTED UTENSILS"
em3payaltgth="R3 EM5 PAY FOR THESE ALTOGETHER"
em3morls1000="R3 EM6 MORE LESS OR ABOUT $1000"
em3morls100="R3 EM7 MORE LESS OR ABOUT $100"
cm3knowwell="R3 CM1 PEOPL KNOW EACH OTHR WELL"
cm3willnghlp="R3 CM2 PEOPL WILLG HLP EACH OTHR"
cm3peoptrstd="R3 CM4 PEOPLE CAN BE TRUSTED"
te3cellphone="R3 TE1 WORKING CELL PHONE"
te3othrphone="R3 TE3 ONE PHONE OTHER THAN CELL"
te3computer="R3 TE6 HAS A WORKING COMPUTER"
te3compoth="R3 TE8 USED COMPUTER ANYWHRE ELS"
te3tablet="R3 TE8A SP HAS A TABLET COMPUTER"
te3emailtext="R3 TE9 EMAIL OR TEXTING"
te3oftnemail="R3 TE10 EMAIL OR TEXTING OFTEN"
te3online="R3 TE11 ONLINE COMPUTER USE"
te3shoponli1="R3 TE12A INTERNET SHOP GROCERY"
te3shoponli2="R3 TE12B INTERNET BANKING"
te3shoponli3="R3 TE12C INTERNET ORDR REFLL RX "
te3socialnet="R3 TE12D SOCIAL NETWORK SITES"
te3intrntmd1="R3 TE13A INTERNET MEDICAL PROVDR"
te3intrntmd2="R3 TE13B INTERNET INSURANCE INFO"
te3intrntmd3="R3 TE13C INTERNET HEALTH CONDS"
md3canewlker="R3 MD1 USED CANE WALKER WHLCHAIR"
md3cane="R3 MD2 USED A CANE"
md3walker="R3 MD3 USED A WALKER"
md3wheelchar="R3 MD4 USED A WHEELCHAIR"
md3whelcrspc="R3 MD4A WHELCHAIR IN LIVNG SPACE"
md3scooter="R3 MD5 USE A SCOOTER"
md3scterinsp="R3 MD5A SCOOTER IN LIVING SPACE"
fl3cane="R3 F MD SP USES CANE"
fl3walker="R3 F MD SP USES WALKER"
fl3wheelchr="R3 F MD SP USES WHEELCHAIR"
fl3whlchrhom="R3 F MD SP HAS WHEELCHR AT HOME"
fl3scooter="R3 F MD SP USES SCOOTER"
fl3scooterhm="R3 F MD SP HAS SCOOTER AT HOME"
ss3heringaid="R3 SS3 HEARING AID USED"
ss3hearphone="R3 SS4A SP CAN USE TELEPHONE"
ss3convwradi="R3 SS4B CONVERSATIN WTH TV RADIO"
ss3convquiet="R3 SS4C CONVERS IN QUIET ROOM"
ss3glasseswr="R3 SS7 WEARS GLASSES CONTCTS"
ss3seewellst="R3 SS8A SEES ACROSS THE STREET"
ss3seestvgls="R3 SS8B TV ACROSS ROOM W GLASSES"
ss3glasscls="R3 SS10 WEAR GLS CONTCS SEE CLOS"
ss3othvisaid="R3 SS11 USED OTHER VISION AIDS"
ss3glrednewp="R3 SS12 CAN READ NEWSPAPER PRINT"
ss3probchswl="R3 SS13 PROBLEMS CHEW OR SWALLOW"
ss3probspeak="R3 SS14 PROBLEMS SPEAKING"
ss3painbothr="R3 SS15 BOTHERED BY PAIN"
ss3painlimts="R3 SS17 PAIN EVER LIMTS ACTIVIT"
ss3painmedof="R3 SS18A LST MNTH OFTEN PAIN MED"
ss3painwhe1="R3 SS18B BACK PAIN IN LAST MNTH"
ss3painwhe2="R3 SS18B HIP PAIN IN LAST MONTH"
ss3painwhe3="R3 SS18B KNEE PAIN IN LAST MNTH"
ss3painwhe4="R3 SS18B FOOT PAIN IN LAST MNTH"
ss3painwhe5="R3 SS18B HAND PAIN IN LAST MNTH"
ss3painwhe6="R3 SS18B WRIST PAIN IN LAST MNTH"
ss3painwhe7="R3 SS18B SHOULDR PAIN LST MNTH"
ss3painwhe8="R3 SS18B HEAD PAIN IN LAST MNTH"
ss3painwhe9="R3 SS18B NECK PAIN IN LAST MNTH"
ss3painwhe10="R3 SS18B ARM PAIN IN LAST MNTH"
ss3painwhe11="R3 SS18B LEG PAIN IN LAST MNTH"
ss3painwhe12="R3 SS18B STOMACH PAIN LAST MNTH"
ss3painwhe13="R3 SS18B OTHR SPCFY PAIN LST MO"
ss3probbreat="R3 SS19 BREATHING PROBLEMS"
ss3prbbrlimt="R3 SS20 BREATH PROBLS LIMT ACTIV"
ss3strnglmup="R3 SS21 UPPER BOD STRENGTH LIMIT"
ss3uplimtact="R3 SS22 UP BOD STRNGTH LIMT ACT"
ss3lwrbodstr="R3 SS23 LOWER BODY STRNGTH LIMIT"
ss3lwrbodimp="R3 SS24 LWER BOD STRNGTH IMT ACT"
ss3lowenergy="R3 SS25 LOW ENERGY IN LAST MONTH"
ss3loenlmtat="R3 SS26 LOW ENERGY EVER LIM ACT"
ss3prbbalcrd="R3 SS27 BALANCE OR COORD PROBS"
ss3prbbalcnt="R3 SS28 BAL COORD PROB LIMIT ACT"
fl3deaf="R3 F SS DEAF PRIOR OR CURRENT ROUND "
fl3blind="R3 F SS BLIND PRIOR OR CURRENT ROUND "
pc3walk6blks="R3 PC1 ABLE TO WALK 6 BLOCKS"
pc3walk3blks="R3 PC2 ABLE TO WALK 3 BLOCKS"
pc3up20stair="R3 PC3 ABLE TO WALK UP 20 STAIRS"
pc3up10stair="R3 PC4 ABLE TO WALK UP 10 STAIRS"
pc3car20pnds="R3 PC5 ABLE TO CARRY 20 POUNDS"
pc3car10pnds="R3 PC6 ABLE TO CARRY 10 POUNDS"
pc3geonknees="R3 PC7 ABLE TO GET DOWN ON KNEES"
pc3bendover="R3 PC8 ABLE TO BEND OVER"
pc3hvobovrhd="R3 PC9 HEAVY OBJECT ABOVE HEAD"
pc3rechovrhd="R3 PC10 ABLE TO REACH OVERHEAD"
pc3opnjarwhd="R3 PC11 OPEN SEALED JAR W HANDS"
pc3grspsmobj="R3 PC12 ABLE GRASP SMALL OBJECTS"
cp3memrygood="R3 CP1 HOW GOOD MEMRY AT PRESNT"
cp3knownspyr="R3 CP2 KNOWN SP 4 AT LEAST A YR"
cp3chgthink1="R3 CP3A SP DIFF REMEMBER DATE"
cp3chgthink2="R3 CP3B SP REPEATS SELF"
cp3chgthink3="R3 CP3C SP DIFF REMEMBER APPT"
cp3chgthink4="R3 CP3D SP CHNG INTRST ACT HOB"
cp3chgthink5="R3 CP3E SP DIFF WITH MONEY MGMT"
cp3chgthink6="R3 CP3F SP DIFF LEARNG USE TOOL"
cp3chgthink7="R3 CP3G SP PRBLMS WITH JDGMNT"
cp3chgthink8="R3 CP3H SP DLY PRBLMS W THNK MEM"
cp3memcogpr1="R3 CP4A LOST IN FAMILIAR ENVIRON"
cp3memcogpr2="R3 CP4B SP WANDERD OFF NO RETRN"
cp3memcogpr3="R3 CP4C SP ABLE LEFT ALONE 1 HR"
cp3memcogpr4="R3 CP4D SP HEARS SEES THNGS"
cp3dad8dem="R3 D DEMENTIA REPORTED IN PRIOR AD8"
cg3speaktosp="R3 CG1A MAY SPEAK TO SP ASK QUES"
cg3quesremem="R3 CG1C START W QUES ABOUT MEMRY"
cg3reascano1="R3 CG1D SP CANT ANS DEMENTIA"
cg3reascano2="R3 CG1D SP CANT ANS UNABLE SPEAK"
cg3reascano3="R3 CG1D SP CANT ANS UNABLE HEAR"
cg3reascano4="R3 CG1D SP CANT ANS SP REFUSED"
cg3reascano5="R3 CG1D SP CANT ANS PROXY REFUSD"
cg3reascano6="R3 CG1D SP CANT ANS NOT PRESENT"
cg3reascano7="R3 CG1D SP CANT ANS SP TOO ILL"
cg3reascano8="R3 CG1D SP CANT ANS LANG BARRIER"
cg3reascano9="R3 CG1D SP CANT ANS OTHR SPECIFY"
cg3ratememry="R3 CG2 RATE YOUR MEMORY"
cg3ofmemprob="R3 CG3 OFTN MEMRY PROBS INTERFER"
cg3memcom1yr="R3 CG4 MEMRY COMPARD TO 1 YR AGO"
cg3todaydat1="R3 CG6Aa TODAY'S DATE CORRCT MNTH"
cg3todaydat2="R3 CG6Ab TODAY'S DATE CORRECT DAY"
cg3todaydat3="R3 CG6Ac TODAY'S DATE CORRECT YR"
cg3todaydat5="R3 CG6Ad USED AID FOR MTH DAY YEAR"
cg3todaydat4="R3 CG6Ba TODAY'S DATE CORRCT DOW"
cg3todaydat6="R3 CG6Bb USED AID FOR DAY OF WEEK"
cg3prewrdrcl="R3 CG7PRE INTRO TO WORD RECALL"
cg3dwrdlstnm="R3 D WHICH WORD LIST ASSIGNED"
cg3wrdsrcal1="R3 CG8 1 TELL WORDS U CAN RECALL"
cg3wrdsrcal2="R3 CG8 2 TELL WORDS U CAN RECALL"
cg3wrdsrcal3="R3 CG8 3 TELL WORDS U CAN RECALL"
cg3wrdsrcal4="R3 CG8 4 TELL WORDS U CAN RECALL"
cg3wrdsrcal5="R3 CG8 5 TELL WORDS U CAN RECALL"
cg3wrdsrcal6="R3 CG8 6 TELL WORDS U CAN RECALL"
cg3wrdsrcal7="R3 CG8 7 TELL WORDS U CAN RECALL"
cg3wrdsrcal8="R3 CG8 8 TELL WORDS U CAN RECALL"
cg3wrdsrcal9="R3 CG8 9 TELL WORDS U CAN RECALL"
cg3wrdsrca10="R3 CG8 10 TELLWORDS U CAN RECALL"
cg3dwrdimmrc="R3 D SCORE IMMEDIATE WORD RECALL"
cg3dwrdinone="R3 D IMMEDIATE RECALL NONE"
cg3dwrdirref="R3 D IMMEDIATE RECALL REFUSED"
cg3wrdsntlst="R3 CG8A WORDS NOT ON LIST"
cg3numnotlst="R3 CG8B NUM WORDS NOT ON LIST"
cg3probreca1="R3 CG9 SP HAD DIFF HEARING WORDS"
cg3probreca2="R3 CG9 INTERRUPTION AS LIST READ"
cg3probreca3="R3 CG9 PROB WORD RECALL SPECIFY"
cg3probreca4="R3 CG9 WD RECALL NO PROB OCCURRD"
cg3probreca5="R3 CG9 SP REFUSED WORD RECALL"
cg3dclkdraw="R3 D SCORE OF CLOCK DRAWING TEST"
cg3dclkimgcl="R3 D IMAGE CLARITY CLOCK DRAWING"
cg3atdrwclck="R3 CG10A SP ATTEMPT CLOCK DRAWIG"
cg3presidna1="R3 CG13A PRES LAST NAME CORRECT"
cg3presidna2="R3 CG13B PRES LAST NAME INCORRCT"
cg3presidna3="R3 CG13C PRES FIRST NAME CORRCT"
cg3presidna4="R3 CG13D PRES FIRST NAME INCORR"
cg3vpname1="R3 CG14A VP LAST NAME CORRECT"
cg3vpname2="R3 CG14B VP LAST NAME INCORRECT"
cg3vpname3="R3 CG14C VP FIRST NAME CORRECT"
cg3vpname4="R3 CG14D VP FIRST NAME INCORRECT"
cg3wrdsdcal1="R3 CG15 1 DELAYED WORD RECALL"
cg3wrdsdcal2="R3 CG15 2 DELAYED WORD RECALL"
cg3wrdsdcal3="R3 CG15 3 DELAYED WORD RECALL"
cg3wrdsdcal4="R3 CG15 4 DELAYED WORD RECALL"
cg3wrdsdcal5="R3 CG15 5 DELAYED WORD RECALL"
cg3wrdsdcal6="R3 CG15 6 DELAYED WORD RECALL"
cg3wrdsdcal7="R3 CG15 7 DELAYED WORD RECALL"
cg3wrdsdcal8="R3 CG15 8 DELAYED WORD RECALL"
cg3wrdsdcal9="R3 CG15 9 DELAYED WORD RECALL"
cg3wrdsdca10="R3 CG15 10 DELAYED WORD RECALL"
cg3dwrddlyrc="R3 D SCORE DELAYED WORD RECALL"
cg3dwrddnone="R3 D DELAYED RECALL NONE"
cg3dwrddrref="R3 D DELAYED RECALL REFUSED"
cg3wrdnotlst="R3 CG16 WORDS NOT ON LIST"
cg3numwrdnot="R3 CG17 NUM OF WORDS NOT ON LIST"
cg3dwrd1rcl="R3 D WORD1 IMMEDIATE RECALL"
cg3dwrd2rcl="R3 D WORD2 IMMEDIATE RECALL"
cg3dwrd3rcl="R3 D WORD3 IMMEDIATE RECALL"
cg3dwrd4rcl="R3 D WORD4 IMMEDIATE RECALL"
cg3dwrd5rcl="R3 D WORD5 IMMEDIATE RECALL"
cg3dwrd6rcl="R3 D WORD6 IMMEDIATE RECALL"
cg3dwrd7rcl="R3 D WORD7 IMMEDIATE RECALL"
cg3dwrd8rcl="R3 D WORD8 IMMEDIATE RECALL"
cg3dwrd9rcl="R3 D WORD9 IMMEDIATE RECALL"
cg3dwrd10rcl="R3 D WORD10 IMMEDIATE RECALL"
cg3dwrd1dly="R3 D WORD1 DELAYED RECALL"
cg3dwrd2dly="R3 D WORD2 DELAYED RECALL"
cg3dwrd3dly="R3 D WORD3 DELAYED RECALL"
cg3dwrd4dly="R3 D WORD4 DELAYED RECALL"
cg3dwrd5dly="R3 D WORD5 DELAYED RECALL"
cg3dwrd6dly="R3 D WORD6 DELAYED RECALL"
cg3dwrd7dly="R3 D WORD7 DELAYED RECALL"
cg3dwrd8dly="R3 D WORD8 DELAYED RECALL"
cg3dwrd9dly="R3 D WORD9 DELAYED RECALL"
cg3dwrd10dly="R3 D WORD10 DELAYED RECALL"
mo3outoft="R3 MO1 OFTEN GO OUTSIDE"
mo3outcane="R3 MO2 CANE USED OUTSIDE"
mo3outwalkr="R3 MO3 WALKER USED OUTSIDE"
mo3outwlchr="R3 MO4 WHEELCHAIR USED OUTSIDE"
mo3outsctr="R3 MO5 SCOOTER USED OUTSIDE"
mo3outhlp="R3 MO6 HELP GO OUTSIDE"
mo3outslf="R3 MO7 LEFT BY YOURSELF"
mo3outdif="R3 MO8 HOW DIFFICULT"
mo3outyrgo="R3 MO9 HOW OFTEN LEAVE"
mo3outwout="R3 MO10 STAYED IN NO HELP"
mo3oftgoarea="R3 MO11 HOW OFTEN GO OTHER AREAS"
mo3oflvslepr="R3 MO12 HOW OFTN LEAVE BEDROOM"
mo3insdcane="R3 MO13 OFTEN USED CANE INSIDE"
mo3insdwalkr="R3 MO14 OFTEN USED WALKER INSIDE"
mo3insdwlchr="R3 MO15 OFT USD WHEELCHAR INSIDE"
mo3insdsctr="R3 MO16 OFTEN USD SCOOTER INSIDE"
mo3oftholdwl="R3 MO17 OFTEN HOLD WALLS INSIDE"
mo3insdhlp="R3 MO18 GOT HELP INSIDE"
mo3insdslf="R3 MO20 HOW OFTEN BY YOURSELF"
mo3insddif="R3 MO21 HOW DIFF GET ARD W DEVCE"
mo3insdyrgo="R3 MO22 HOW OFTEN COMPRED YR AGO"
mo3insdwout="R3 MO23 PLACES INSIDE DID NOT GO"
mo3beddev="R3 MO24 OUT OF BED USED DEVICE"
mo3bedhlp="R3 MO25 GOT HELP OUT OF BED"
mo3bedslf="R3 MO26 OFT GOT OUT BED BY SLF"
mo3beddif="R3 MO27 DIFF GET OUT BED BY SELF"
mo3bedwout="R3 MO28 OFTEN HAD TO STAY IN BED"
mo3doutsfdf="R3 D GO OUTSIDE SELF "
mo3doutdevi="R3 D GO OUTSIDE USING DEVICES"
mo3douthelp="R3 D GO OUTSIDE USING HELP"
mo3dinsdsfdf ="R3 D MOVE INSIDE SELF"
mo3dinsddevi="R3 D MOVE INSIDE WITH DEVICES"
mo3dinsdhelp="R3 D MOVE INSIDE WITH HELP"
mo3dbedsfdf="R3 D GET OUT OF BED"
mo3dbeddevi="R3 D DEVICE USE 2 GET OUT OF BED"
mo3dbedhelp="R3 D HELP TO GET OUT OF BED"
fl3didntleav="R3 F MO SP DID NOT LEAVE HOME"
fl3ntlvrmslp="R3 F MO SP DID NOT LEAVE BEDROOM"
dm3helpmobil="R3 DM1 GET HELP WITH MOBILITY"
dm3helpstmo="R3 DM3C MONTH MOBIL HELP STARTED"
dm3helpstyr="R3 DM3C1 YEAR MOBIL HELP STARTED"
dm3helpendmo="R3 DM3D MONTH MOBIL HELP ENDED"
dm3helpendyr="R3 DM3D1 YEAR MOBIL HELP ENDED"
dm3nohelp="R3 DM3E NO MOBIl HELP MTH PLUS"
dm3nohelpmos="R3 DM3F MONTHS OF NO MOBIl HELP"
dm3lstyrcane="R3 DM4 IN LST YR USE CANE WALKER"
dm3devstmo="R3 DM6C MONTH DEVICE USE STARTED"
dm3devstyr="R3 DM6C1 YEAR DEVICE USE STARTED"
dm3devendmo="R3 DM6D MONTH DEVICE USE ENDED"
dm3devendyr="R3 DM6D1 YEAR DEVICE USE ENDED"
dm3nodev="R3 DM6E NO DEVICE MONTH PLUS"
dm3nodevmos="R3 DM6F MONTHS OF NO DEVICE"
dm3dmohlp="R3 D MONTHS OF MOBILITY HELP"
dm3dmodev="R3 D MONTHS OF MOBILITY DEVICE HELP"
dm3dmohlpgr="R3 D MOBILITY HELP GROUP"
dm3dmodevgr="R3 D MOBILITY DEVICE GROUP"
dmds3dintvl="R3 D MONTHS BETWEEN LAST INT AND EITHER CURRENT INT OR DATE OF DEATH"
dm3flag="R3 D SPECIAL CASES DM SECTION ROUTE"
dt3driveyr="R3 DT1A DRIVE IN LAST YEAR"
dt3oftedrive="R3 DT1 HOW OFTEN DRIVE PLACES"
dt3avoidriv1="R3 DT3A AVOID DRIVING AT NIGHT"
dt3avoidriv2="R3 DT3A AVOID DRIVING ALONE"
dt3avoidriv3="R3 DT3A AVOID DRIVING HIGHWAYS"
dt3avoidriv4="R3 DT3A AVOID DRIVING BAD WEATHER"
dt3getoplcs1="R3 DT4A SP WALKED GOT PLACES"
dt3getoplcs2="R3 DT4B GOT RIDE FAM FRIEND PD"
dt3getoplcs3="R3 DT4C VANSHUTTLE PROV BY PLACE"
dt3getoplcs4="R3 DT4D VAN SHUTTLE FOR SENIORS"
dt3getoplcs5="R3 DT4E SP TOOK PUBLIC TRANSPRT"
dt3getoplcs6="R3 DT4F SP TOOK TAXI GOT PLACES"
dt3getoplcs7="R3 DT4G GOT PLACES OTHR SPECIFY"
dt3otfrfamtk="R3 DT6 ANTH FND FAM MEM TOOK YOU"
fl3drives="R3 F DT SP DRIVES CAR"
fl3drvlstyr="R3 F DT SP DROVE CAR IN PAST YR"
fl1dneverdrv="R1 F DT SP NEVER DROVE"
ha3laun="R3 HA1 HOW LAUNDRY GOT DONE"
ha3launslf="R3 HA1A DO LAUNDRY YOURSELF"
ha3whrmachi1="R3 HA2 WASH MACHINE IN HOME"
ha3whrmachi2="R3 HA2 WASH MACHIN IN BUILDING"
ha3whrmachi3="R3 HA2 WASH MACHIN LAUNDROMAT"
ha3whrmachi4="R3 HA2 WASH MACHIN SINK IN HOME"
ha3whrmachi5="R3 HA2 WASH MACH SINK IN BUILDNG"
ha3whrmachi6="R3 HA2 WASH MACHIN OTHR SPECIFY"
ha3dlaunreas="R3 D LAUNDRY REASN WITH BY OTHERS"
ha3laundif="R3 HA5 DIFF DOING LAUNDY BY SELF"
ha3launoft="R3 HA6 HOW OFTEN DO LAUNDRY"
ha3launwout="R3 HA7 EVER GO WOUT CLEAN LAUNDR"
ha3shop="R3 HA20 HOW YOUR SHOPPING DONE"
ha3shopslf="R3 HA20A EVER SHOP BY YOURSELF"
ha3howpaygr1="R3 HA22 PAY GROC PERS ITMS CASH"
ha3howpaygr2="R3 HA22 PAY GROC PERS ITMS CHCK"
ha3howpaygr3="R3 HA22 PAY GROC PERS ITMS DEBIT"
ha3howpaygr4="R3 HA22 PAY GROC PERS CREDIT"
ha3howpaygr5="R3 HA22 PAY GROC PERS FOOD STMP"
ha3howpaygr6="R3 HA22 PAY GROC PERS SMON ELS"
ha3howpaygr7="R3 HA22 PAY GROC PERS OTHR SPEC"
ha3howgtstr1="R3 HA23 DROVE TO THE STORE"
ha3howgtstr2="R3 HA23 FAM FRND PD HLP DROVE"
ha3howgtstr3="R3 HA23 VAN PLACE SP LIVES DROVE"
ha3howgtstr4="R3 HA23 VAN 4 DIS SENIORS DROVE"
ha3howgtstr5="R3 HA23 PUBLIC TRANSPORT 2 STORE"
ha3howgtstr6="R3 HA23 SP TOOK TAXI 2 THE STORE"
ha3howgtstr7="R3 HA23 SP WALKED TO THE STORE"
ha3howgtstr8="R3 HA23 OTHR SPECIFY TO STORE"
ha3shopcart="R3 HA24A EVER USE MOTORIZED CART"
ha3shoplean="R3 HA24B EVER LEAN ON SHOP CART"
ha3dshopreas="R3 D SHOP REASN WITH BY OTHERS "
ha3shopdif="R3 HA27 DIFF SHOPPING BY SELF"
ha3shopoft="R3 HA28 HOW OFT SHOP GROCERIES"
ha3shopwout="R3 HA29 EVER GO WITHOUT GROCRIES"
ha3meal="R3 HA30 HOW HOT MEALS GET MADE"
ha3mealslf="R3 HA30A MAKE HOT MEALS YOURSELF"
ha3restamels="R3 HA30B OFTN HAV RESTARNT MEALS"
ha3mealwheel="R3 HA30C OFTN GET MEALS ON WHEEL"
ha3oftmicrow="R3 HA31 OFTEN USE THE MICROWAVE"
ha3dmealreas="R3 D MEALS REASN WITH BY OTHERS"
ha3mealdif="R3 HA34 DIFICULTY MAK MEALS SELF"
ha3mealoft="R3 HA35 HOW OFTEN MAKE HOT MEALS"
ha3mealwout="R3 HA36 EVER GO WITHOUT HOT MEAL"
ha3bank="R3 HA40 HOW BILLS BANKIN HANDLED"
ha3bankslf="R3 HA40A HNDL BILLS BNKING YRSLF"
ha3dbankreas="R3 D BANK BILL REASN WITH BY OTH"
ha3bankdif="R3 HA44 DIF HNDL BLLS BNKING SLF"
ha3bankoft="R3 HA45 HOW OFTEN YOU PAY BILLS"
ha3bankwout="R3 HA46 EVER GO WOUT PAYIN BILLS"
ha3money="R3 HA50 MONEY MATTERS TO HANDLE"
ha3moneyhlp="R3 HA51 ANYONE HLP W MONY MATTRS"
ha3dlaunsfdf="R3 D LAUNDRY SELF AND DIFF LEVEL"
ha3dshopsfdf="R3 D SLF SHOPPING AND DIFF LEVEL"
ha3dmealsfdf="R3 D SELF MEALS AND DIFF LEVEL"
ha3dbanksfdf="R3 D SELF BANKS AND DIFF LEVEL"
ha3dmealwhl ="R3 D HELPER IS MEALS ON WHEELS"
ha3dmealtkot ="R3 D HELPER IS RESTAURNT TAKEOUT"
sc3eatdev="R3 SC1 EVER USE ADAPTED UTENSILS"
sc3eatdevoft="R3 SC2 OFTEN USE ADAPTED UTENSLS"
sc3eathlp="R3 SC3 DID ANYONE HELP YOU EAT"
sc3eatslfoft="R3 SC4 HOW OFTEN EAT BY YOURSELF"
sc3eatslfdif="R3 SC5 DIFFICULTY EATING BY SELF"
sc3eatwout="R3 SC6 GO WOUT EAT BECSE NO HELP"
sc3showrbat1="R3 SC7 SP SHOWERED"
sc3showrbat2="R3 SC7 SP TOOK BATHS IN A TUB"
sc3showrbat3="R3 SC7 SP WASHED SOME OTHR WAY"
sc3bdevdec="R3 SC7A USE BATH DEVICE IN LML"
sc3prfrshbth="R3 SC8 PREFER SHOWR BATH OR OTHR"
sc3scusgrbrs="R3 SC9 HOW OFTEN USE GRAB BARS"
sc3shtubseat="R3 SC10 OFTN USE SHOWR TUB SEAT"
sc3bathhlp="R3 SC11 ANYN HLP SHOWR BATH OTHR"
sc3bathoft="R3 SC12 HOW OFTEN BATHE YOURSELF"
sc3bathdif="R3 SC13 DIFF USING BARS OR SEATS"
sc3bathyrgo="R3 SC14 BATHE MRE OFT THN YR AGO"
sc3bathwout="R3 SC15 EVER GO WITHOUT WASHING"
sc3usvartoi1="R3 SC16 SP USED PORTABLE COMMODE"
sc3usvartoi2="R3 SC16 SP USED PADS UNDERGMT"
sc3usvartoi3="R3 SC16 USED GRABBARS FR TOILET"
sc3usvartoi4="R3 SC16 USED RAISED TOILET SEAT"
sc3toilhlp="R3 SC17 ANYON HLP YOU USE TOILET"
sc3toiloft="R3 SC18 OFTEN USE TOILET BY SELF"
sc3toildif="R3 SC19 DIFFICUTY TOILETING SELF"
sc3toilwout="R3 SC20 ACCIDENT WET SOIL CLTHES"
sc3dresoft="R3 SC21 OFTEN YOU GET DRESSED"
sc3dresdev="R3 SC22 USE SPECL ITEMS TO DRESS"
sc3dreshlp="R3 SC23 ANYONE HELP GET DRESSED"
sc3dresslf="R3 SC24 OFTEN YOU DRESS YOURSELF"
sc3dresdif="R3 SC25 DIF WHN US SP ITMS YRSLF"
sc3dresyrgo="R3 SC26 HOW OFTN YOU GET DRESSED"
sc3dreswout="R3 SC27 GO WITHOUT GTTNG DRESSED"
sc3deatdevi="R3 D USES DEVICES WHILE EATING"
sc3deathelp="R3 D HAS HELP EATING"
sc3deatsfdf="R3 D DIFF EATING BY SELF WO HELP"
sc3dbathdevi="R3 D USES DEVICES WHILE BATHING"
sc3dbathhelp="R3 D HAS HELP WHILE BATHING"
sc3dbathsfdf="R3 D DIFF BATHING SELF NO HELP"
sc3dtoildevi="R3 D USES DEVICE WHILE TOILETING"
sc3dtoilhelp="R3 D HAS HELP WHILE TOILETING"
sc3dtoilsfdf="R3 D DIFF LEVEL TOILETING SELF"
sc3ddresdevi="R3 D USES DEVICES WHILE DRESSING"
sc3ddreshelp="R3 D HAS HELP WHILE DRESSING"
sc3ddressfdf="R3 D DIFF LEVEL DRESSING SELF"
fl3showering="R3 F SC SP USES SHOWER"
fl3takingbth="R3 F SC SP TAKES BATHS"
fl3washingup="R3 F SC SP WASHES OTHER WAY"
ds3gethlpeat="R3 DS1 GET HELP WITH EATING, ETC"
ds3helpstmo="R3 DS3C MONTH SELF CARE HLP START"
ds3helpstyr="R3 DS3C1 YEAR SELF CARE HELP STARTED"
ds3helpendmo="R3 DS3D MONTH SELF CARE HELP ENDED"
ds3helpendyr="R3 DS3D1 YEAR SELF CARE HELP ENDED"
ds3nohelp="R3 DS3E NO SELF CARE HELP MTH PLUS"
ds3nohelpmos="R3 DS3F MONTHS OF NO SELF CARE HELP"
ds3dschlp="R3 D MONTHS OF SELF CARE HELP"
ds3dschlpgr="R3 D SELF CARE HELP GROUP"
ds3flag="R3 D SPECIAL CASES DS SECTION ROUTE"
mc3meds="R3 MC1 IN MNTH TKE MEDS PRESCRBD"
mc3medstrk="R3 MC2 KEEP TRCK PRESCRIED MEDS"
mc3medsslf="R3 MC2A LAST MNTH KEEP TRACK SLF"
mc3whrgtmed1="R3 MC3 SP GOT MEDS LOCAL STORE"
mc3whrgtmed2="R3 MC3 SP GOT MEDS BY MAIL"
mc3whrgtmed3="R3 MC3 SP GOT MEDS HC PRVDR HSP"
mc3whrgtmed4="R3 MC3 SP GOT MEDS OTHR SPECIFY"
mc3howpkupm1="R3 MC3B SP PICKD UP MEDS BY SELF"
mc3howpkupm2="R3 MC3B SP HAD MEDS DELIVERED"
mc3howpkupm3="R3 MC3B SMEON ELSE PICKD UP MEDS"
mc3medsrem="R3 MC4 USE REMNDERS TO KEEP TRCK"
mc3dmedsreas="R3 D MEDS REASN BY WITH OTHERS "
mc3medsdif="R3 MC7 HOW DIFFIC KEEP TRACK MED"
mc3medsyrgo="R3 MC8 COMPAR YR AGO HW KEP TRCK"
mc3medsmis="R3 MC9 MAKE MISTAKE TAKING MEDS"
mc3havregdoc="R3 MC10 YOU HAVE REGULAR DOCTOR"
mc3regdoclyr="R3 MC12 SEEN REG DOC WTHN LST YR"
mc3hwgtregd1="R3 MC15 SP DROVE SELF TO REG DOC"
mc3hwgtregd2="R3 MC15 FAM PD HLP DRVE REG DOC"
mc3hwgtregd3="R3 MC15 VAN PLCE SP LIVE REG DOC"
mc3hwgtregd4="R3 MC15 VAN FR DIS SENIOR REG DC"
mc3hwgtregd5="R3 MC15 PUBLIC TRANSPORT REG DOC"
mc3hwgtregd6="R3 MC15 SP TOOK TAXI TO REG DOC"
mc3hwgtregd7="R3 MC15 SP WALKED TO REG DOC"
mc3hwgtregd8="R3 MC15 REG DOC WAS HOME VISIT"
mc3hwgtregd9="R3 MC15 OTHR SPECIFY REG DOC"
mc3ansitindr="R3 MC16 ANONE SIT IN W YOU AT DR"
mc3tpersevr1="R3 MC19 HLP UPTO EXAM TBL DRESS"
mc3tpersevr2="R3 MC19 REMND SP OF QSTNS FR DOC"
mc3tpersevr3="R3 MC19 ASK TELL DOC THINGS 4 SP"
mc3tpersevr4="R3 MC19 HLP SP UNDERSTAND DOC"
mc3chginspln="R3 MC20 CHGD ADD INS OR DRUG PLN"
mc3anhlpwdec="R3 MC21 ANYONE HELP W DECISION"
mc3dmedssfdf="R3 D DIFF LEVEL MEDICATIONS SELF"
pa3vistfrfam="R3 PA1 EVER VISIT FRIENDS FAMILY"
pa3hlkepfvst="R3 PA2 HLTH KP FR VIST FAM FRNDS"
pa3trkpfrvis="R3 PA3 TRAN PRB KP FR VST FRNDS"
pa3impvstfam="R3 PA4 IMPRTNT VISIT FRNDS FAMLY"
pa3attrelser="R3 PA5 EVER ATTEND RELIG SERVCES"
pa3htkfrrlsr="R3 PA6 HEALTH KEEP FRM RELI SERV"
pa3trprrelsr="R3 PA7 TRAN PRO KEEP FM RELG SER"
pa3imprelser="R3 PA8 HW IMPORT ARE RELIG SERVS"
pa3clbmtgrac="R3 PA9 CLUB MEETINGS GRP ACTIVES"
pa3hlkpfrclb="R3 PA10 HELTH KEP FRM CLB MTINGS"
pa3trprkpfgr="R3 PA11 TRANS PROB KEEP FM GROPS"
pa3imparclub="R3 PA12 IMPORT PARTIC CLUBS GRUP"
pa3outfrenjy="R3 PA13 EVER GO OUT FOR ENJOYMNT"
pa3hlkpgoenj="R3 PA14 HLTH KP GO OUT FOR ENJOY"
pa3trprgoout="R3 PA15 TRANSPROB KEEP FM GO OUT"
pa3impouteny="R3 PA16 IMPORT GO OUT FOR ENJOYT"
pa3workfrpay="R3 PA17 EVER WORK FOR PAY"
pa3hlkpfrwrk="R3 PA18 HEALTH KEEP YOU FRM WORK"
pa3voltrwork="R3 PA19 EVER DO VOLUNTEER WORK"
pa3hlkpfrvol="R3 PA20 HELTH KEEP FM VOLUNTRING"
pa3prcranoth="R3 PA21 PROVIDE CARE ANTHER PERS"
pa3evrgowalk="R3 PA23 EVER GO WALKING"
pa3vigoractv="R3 PA24 EVER VIGOROUS ACTIVITIES"
pa3dofavact="R3 PA25A GET TO DO FAV ACT LST YR"
pa3helmfvact="R3 PA26 HEALTH LIMIT FAV ACTIVTY"
pa1dv2favact="R1 D VERSION 2 FAVORITE ACTIVITY"
sd3smokesnow="R3 SD2 SMOKES NOW"
sd3numcigday="R3 SD3 NUM OF CIGARETTES PER DAY"
pe3whhndsign="R3 PE1 HAND USE TO SIGN YOR NAME"
pe3surghdwrt="R3 PE2 HAVE SURGRY TO HAND WRIST"
pe3surgyside="R3 PE3 WHICH SIDE WAS SURGERY"
pe3flruppain="R3 PE4 EXPER FLARE UP PAIN HAND"
pe3sideflrup="R3 PE5 SIDE CURRNT FLARE UP PAIN"
pe3surgarmsh="R3 PE6 SURGERY ARM OR SHOULDER"
pe3sidsurgar="R3 PE7 SIDE SURGERY ARM OR SHLDR"
pe3surgyhips="R3 PE8 SURG HIPS INCLUD REPLCMNT"
pe3sidhipsrg="R3 PE9 SIDE WAS HIP SURGERY ON"
pe3stndwhold="R3 PE11 STAND WITHOUT HOLDING ON"
pe3upchbyslf="R3 PE12 GET UP OUT CHAIR BY SELF"
pe3wlkdsself="R3 PE13 WALK SHORT DIST BY SELF"
fl3lefthand="R3 F PE CAN SP DO LEFT HAND TEST"
fl3righthand="R3 F PE CAN SP DO RGT HAND TEST"
fl3eiherhand="R3 F PE CAN SP DO EITHR HAND TST"
fl3lftgrptst="R3 F PE CAN SP DO LFT GRIP TEST"
fl3rhtgrptst="R3 F PE CAN SP DO RIGHT GRIP TST"
fl3charstnds="R3 F PE CAN SP DO CHAIR STANDS"
fl3balstands="R3 F PE CAN SP DO BALANCE STANDS"
fl3wlkingrse="R3 F PE CAN SP DO WALKING COURSE"
ba3dblssadm="R3 D BALANCE SIDE BY SIDE ADMIN"
ba3dblstadm="R3 D BALANCE SEMI TANDEM ADMIN"
ba3dblftadm="R3 D BALANCE FULL TANDEM ADMIN"
ba3dblopadm="R3 D BALANCE 1 LEG OP EYE ADMIN"
ba3dblcladm="R3 D BALANCE 1 LEG CLS EYE ADMIN"
wa3dwlkadm="R3 D WALKING COURSE ADMIN"
ch3dschradm="R3 D SINGLE CHAIR ADMIN"
ch3drchradm="R3 D REPEAT CHAIR ADMIN"
gr3dgripadm="R3 D GRIP STRENGTH ADMIN"
wc3dwaistadm="R3 D WAIST CIRCUMFERENCE ADMIN"
pk3dpeakadm="R3 D PEAK AIR FLOW ADMIN"
ab3datemonth="R3 AB COVER DATE MONTH"
ab3dateyear="R3 AB COVER DATE YEAR"
in3strtabhrs="R3 IN8 START TIME HOURS"
in3strtabmin="R3 IN8 START TIME MINUTES"
in3strtmampm="R3 IN8 START TIME AM OR PM"
ba3sxsresult="R3 BA3 SIDE BY SIDE STAND RESULT"
ba3blstdsecs="R3 BA4A SECS SIDE BY SIDE STAND"
ba3blstdhndr="R3 BA4B HNRDS SIDE BY SIDE STND"
ba3rsn1ssstd="R3 BA5 1 NO STAND SP FELT UNSAFE"
ba3rsn2ssstd="R3 BA5 2 NO STAND PRXY FELT UNSF"
ba3rsn3ssstd="R3 BA5 3 NO STND INTWR FELT UNSF"
ba3rsn4ssstd="R3 BA5 4NO STND SP UNABL2UNDRSTD"
ba3rsn9ssstd="R3 BA5 9 NO STAND OTHER SPECIFY"
ba3stdmreslt="R3 BA7 SEMI TANDEM STAND RESULT"
ba3stdmsecs="R3 BA8A SECS HELD SEMI TANDM STD"
ba3stdmhndr="R3 BA8B HNRDS HLD SEMI TANDM STD"
ba3rsn1ststd="R3 BA9 1 NO STNDM SP FELT UNSAFE"
ba3rsn2ststd="R3 BA9 2NO STNDM PRXY FELT UNSAF"
ba3rsn3ststd="R3 BA9 3 NO STNDM INTR FELT UNSF"
ba3rsn4ststd="R3 BA9 4NO STNDM SP UNABL2UNDSTD"
ba3rsn9ststd="R3 BA9 9 NO STNDM OTHER SPECIFY"
ba3ftdmreslt="R3 BA11 FULL TANDEM STAND RESULT"
ba3ftdmsecs="R3 BA12A SECS HLD FULL TANDM STD"
ba3ftdmhndr="R3 BA12B HNRDS HLD FLL TANDM STD"
ba3rsn1ftstd="R3 BA13 1 NO FTNDM SP FLT UNSAFE"
ba3rsn2ftstd="R3 BA13 2NO FTNDM PRXY FLT UNSAF"
ba3rsn3ftstd="R3 BA13 3 NO FTNDM INTR FLT UNSF"
ba3rsn4ftstd="R3 BA13 4NO FTNDM SP UNABL2UNDST"
ba3rsn9ftstd="R3 BA13 9 NO FTNDM OTHER SPECIFY"
ba31leoreslt="R3 BA15 ONE LEG STAND EYES OPEN"
ba31leosfsec="R3 BA16A SECS HLD 1LEG EYES OPEN"
ba31leohndr="R3 BA16B HNRDS HLD 1LEG EYE OPEN"
ba3rsn11leo="R3 BA17 1 NO1LEGEO SP FLT UNSAFE"
ba3rsn21leo="R3 BA17 2NO1LEGEO PRXY FLT UNSAF"
ba3rsn31leo="R3 BA17 3 NO1LEGEO INTR FLT UNSF"
ba3rsn41leo="R3 BA17 4NO1LEGEO SP UNABL2UNDST"
ba3rsn91leo="R3 BA17 9NO1LEGEO OTHER SPECIFY"
ba31lecreslt="R3 BA19 ONE LEG STAND EYES CLOS"
ba31lecsfsec="R3 BA20A SECS HLD 1LEG EYES CLOS"
ba31lechndr="R3 BA20B HNRDS HLD 1LEG EYE CLOS"
ba3rsn11lec="R3 BA21 1 NO1LEGEC SP FLT UNSAFE"
ba3rsn21lec="R3 BA21 2NO1LEGEC PRXY FLT UNSAF"
ba3rsn31lec="R3 BA21 3 NO1LEGEC INTR FLT UNSF"
ba3rsn41lec="R3 BA21 4NO1LEGEC SP UNABL2UNDST"
ba3rsn91lec="R3 BA21 9NO1LEGEC OTHER SPECIFY"
wa3wlkcorspc="R3 WA2 WALKING COURSE SPACE"
wa3wkaidused="R3 WA4 WALKING AID USED COURSE 1"
wa3wlkc1rslt="R3 WA5 WALKING COURSE 1 RESULT"
wa3wlkc1secs="R3 WA6A SECS HLD WALKNG COURSE1"
wa3wlk1hndr="R3 WA6B HNRDS HLD WALKNG COURSE1"
wa3rsn11wkc="R3 WA7 1 WLKCOURS1 SP FLT UNSAFE"
wa3rsn21wkc="R3 WA7 2WLKCOURS1 PRXY FLT UNSAF"
wa3rsn31wkc="R3 WA7 3WLKCOURS1 INTR FLT UNSF"
wa3rsn41wkc="R3 WA7 4WLKCOURS1 SP UNABL2UNDST"
wa3rsn51wkc="R3 WA7 5WLKCOURS1 NOT APPR SPACE"
wa3rsn91wkc="R3 WA7 9WLKCOURS1 OTHER SPECIFY"
wa3wkaidusc2="R3 WA8 WALKING AID USED COURSE 2"
wa3wlkc2rslt="R3 WA9 WALKING COURSE 2 RESULT"
wa3wlkc2secs="R3 WA10A SECS HLD WALKNG COURSE2"
wa3wlk2hndr="R3 WA10B HNRDS HLD WALKNG COURS2"
wa3rsn12wkc="R3 WA11 1 WKCOURS2 SP FLT UNSAFE"
wa3rsn22wkc="R3 WA11 2WKCOURS2 PRXY FLT UNSAF"
wa3rsn32wkc="R3 WA11 3WKCOURS2 INTR FLT UNSF"
wa3rsn42wkc="R3 WA11 4WKCOURS2 SP UNABL2UNDST"
wa3rsn92wkc="R3 WA11 9WKCOURS2 OTHER SPECIFY"
ch3chravail="R3 CH2 APPROPRIATE CHAIR AVAIL"
ch3chstcompl="R3 CH4 CHAIR STND COMPLETED TRY1"
ch3chairheit="R3 CH5 CHAIR HEIGHT(INCHES)"
ch3whlchrusd="R3 CH6 WHEELCHAIR USED"
ch3sgchstres="R3 CH7 SINGLE CHAIR STAND RESLT"
ch3armuse="R3 CH8 CHAIR STAND ARM USE"
ch3rsn11chs="R3 CH9 1CH STAND1 SP FLT UNSAFE"
ch3rsn21chs="R3 CH9 2CH STAND1 PRXY FLT UNSAF"
ch3rsn31chs="R3 CH9 3CH STAND1 INTR FLT UNSF"
ch3rsn41chs="R3 CH9 4CH STAND1 SP UNABL2UNDST"
ch3rsn51chs="R3 CH9 5CH STAND1 NOT APPR CHAIR"
ch3rsn91chs="R3 CH9 9CH STAND1 OTHER SPECIFY"
ch32chstrslt="R3 CH12 REPEAT CHAIR STAND RSLTS"
ch3chstndsec="R3 CH13A TIME REPEAT CH STD SECS"
ch3chstdhndr="R3 CH13B TIME RPEAT CH STD HNRDS"
ch3chstddone="R3 CH14 NUMBER CHAIR STANDS DONE"
ch3chstntdn1="R3 CH15 1 CH STD SP TIRED"
ch3chstntdn2="R3 CH15 2 CH STD SP USED ARMS"
ch3chstntdn3="R3 CH15 3 CH STD OVER 1 MIN"
ch3chstntdn4="R3 CH15 4 CH STD CNCRN SP SAFETY"
ch3chstntdn5="R3 CH15 5 CH STD SP STOPPED"
ch3chstntdn9="R3 CH15 9 CH STD OTHERSPECIFY"
ch3chstntat1="R3 CH16 1 NO CH ST SP UNSAFE"
ch3chstntat2="R3 CH16 2 NO CH ST PRXY UNSAFE"
ch3chstntat3="R3 CH16 3 NO CH ST INTV UNSAFE"
ch3chstntat4="R3 CH16 4 NO CH ST SP UNAB2UNDST"
ch3chstntat9="R3 CH16 9 NO CH ST OTHER SPEC"
gr3handtstd1="R3 GR3 GRIP1 TEST WHICH HAND"
gr3adjgr1ps3="R3 GR4 GRIP1POSITION ADJUST TO 3"
gr3grp1reslt="R3 GR5 GRIP STRENGTH 1 RESULT"
gr3grp1rdng="R3 GR6 GRP1 DISPLAY READING"
gr3grp1noat1="R3 GR7 1 SP FELT UNSAFE"
gr3grp1noat2="R3 GR7 2 PROXY FELT UNSAFE"
gr3grp1noat3="R3 GR7 3 INTERVIEWR FELT UNSAFE"
gr3grp1noat4="R3 GR7 4 SP UNABLE 2 UNDERSTAND"
gr3grp1noat9="R3 GR7 9 OTHER SPECIFY"
gr3handtstd2="R3 GR8 GRIP2 TEST WHICH HAND"
gr3adjgr2ps3="R3 GR9 GRIP2POSITION ADJUST TO 3"
gr3grp2reslt="R3 GR10GRIP STRENGTH 2 RESULT"
gr3grp2rdng="R3 GR11GRP2 DISPLAY READING"
gr3grp2noat1="R3 GR12 1 SP FELT UNSAFE"
gr3grp2noat2="R3 GR12 2 PROXY FELT UNSAFE"
gr3grp2noat3="R3 GR12 3 INTERVIEWR FELT UNSAFE"
gr3grp2noat4="R3 GR12 4 SP UNABLE 2 UNDERSTAND"
gr3grp2noat9="R3 GR12 9 OTHER SPECIFY"
wc3measdiff1="R3 WC2 1 MEAS DIFF NONE"
wc3measdiff2="R3 WC2 2 MEAS DIFF DIFF BREATH"
wc3measdiff3="R3 WC2 3 MEAS DIFF NOHOLD BREATH"
wc3measdiff4="R3 WC2 4 MEAS DIFF EFFORT PAIN"
wc3measdiff5="R3 WC2 5 MEAS DIFF EFFORT OTHER"
wc3measdiff6="R3 WC2 6 MEAS DIFF LOCATE NAVEL"
wc3measdiff9="R3 WC2 9 MEAS DIFF OTHER SPECIFY"
wc3waistrslt="R3 W3 WAIST CIRCUMFRNC RESULTS"
wc3wstmsrinc="R3 W4A WAIST MEASURE INCHES"
wc3wstmsrqrt="R3 W4B WAIST MEASURE QTR INCHES"
wc3wstbulkcl="R3 WC5 BULKY CLOTHING WORN"
wc3whomeasur="R3 WC6 WHO MEASURED"
wc3wstpostn="R3 WC7 POSITION 4 WAIST MEASURE"
wc3wstnotat1="R3 WC8 1 NO WC SP FELT UNSAFE"
wc3wstnotat2="R3 WC8 2 NO WC PROXY UNSAFE"
wc3wstnotat3="R3 WC8 3 NO WC INTERVIEWR UNSAFE"
wc3wstnotat4="R3 WC8 4 NO WC SP UNABLE2UNDRSTD"
wc3wstnotat5="R3 WC8 5 NO WC SP REFUSED"
wc3wstnotat9="R3 WC8 9 NO WC OTHER SPECIFY"
pk3pkarf1pos="R3 PK2 PEAK AIR FLOW 1 POSITION"
pk3pkarfl1ef="R3 PK3 PK AIR FLW 1 EFFORT GIVEN"
pk3pkarfl1rs="R3 PK4 PEAK AIR FLOW 1 RESULT"
pk3pkarfl1rd="R3 PK5 PEAK AIR FLOW 1 READING"
pk3pk1noatt1="R3 PK6 1 PEAK NO SP FELT UNSAFE"
pk3pk1noatt2="R3 PK6 2 PEAK NO PROXY UNSAFE"
pk3pk1noatt3="R3 PK6 3 PEAK NO INTERVWR UNSAFE"
pk3pk1noatt4="R3 PK6 4 PEAK NO SP UNABL2UNDSTD"
pk3pk1noatt9="R3 PK6 9 PEAK NO OTHER SPECIFY"
pk3paf2posit="R3 PK7 PEAK AIR FLOW 2 POSITION"
pk3pkarfl2ef="R3 PK8 PEAK AIR FLW 2 EFFRT GIVN"
pk3pkarfl2rs="R3 PK9 PEAK AIR FLOW 2 RESULT"
pk3pkarfl2rd="R3 PK10 PEAK AIR FLOW 2 READING"
pk3pk2noatt1="R3 PK11 1 PEAK NO SP FELT UNSAFE"
pk3pk2noatt2="R3 PK11 2 PEAK NO PROXY UNSAFE"
pk3pk2noatt3="R3 PK11 3 PEAK NO INTRVWR UNSAFE"
pk3pk2noatt4="R3 PK11 4 PEAK NO SP UNABL2UNDST"
pk3pk2noatt9="R3 PK11 9 PEAK NO OTHER SPECIFY"
cl3endtimhrs="R3 CL1 HRS END TIME HOURS"
cl3endtimmin="R3 CL1 MINS END TIME MINUTES"
cl3endtmampm="R3 CL1 AMPM END TIME AM OR PM"
r3dnhatssppb="R3 D NHATS SPPB SCORE"
r3dnhatsbasc="R3 D NHATS BALANCE SCORE"
r3dnhatswksc="R3 D NHATS WALK SCORE"
r3dnhatschsc="R3 D NHATS REPEAT CHAIR SCORE"
r3dnhatsgrav="R3 D NHATS AVG GRIP SCORE"
r3dnhatsgrb="R3 D NHATS BEST GRIP SCORE"
r3dnhatspkav="R3 D NHATS AVG AIR FLOW SCORE"
r3dnhatspkb="R3 D NHATS BEST AIR FLOW SCORE"
r3dsppbmiss="R3 D REASON MISSING SPPB"
r3dorigsppb="R3 D ORIGINAL SPPB SCORE"
r3dorigbasc="R3 D ORIGINAL BALNCE SCORE"
r3dorigwksc="R3 D ORIGINAL WALK SCORE"
r3dorigchsc="R3 D ORIGINAL REPEAT CHAIR SCORE"
hw3currweigh="R3 HW2 YOU CURRENTLY WEIGH"
hw3lst10pnds="R3 HW4 LOST 10 POUNDS IN LAST YR"
hw3trytolose="R3 HW5 WERE YOU TRYNG LOSE WEGHT"
hw3howtallft="R3 HW7 HOW TALL ARE YOU FEET"
hw3howtallin="R3 HW8 HOW TALL ARE YOU INCHES"
el3mothalive="R3 EL11 YOUR MOTHER STILL LIVING"
el3fathalive="R3 EL12 YOUR FATHER STILL LIVING"
wb3offelche1="R3 WB1 OFTEN YOU FEEL CHEERFUL"
wb3offelche2="R3 WB1 OFTEN YOU FEEL BORED"
wb3offelche3="R3 WB1 OFTEN YOU FEEL FULLOFLIFE"
wb3offelche4="R3 WB1 OFTEN YOU FEEL UPSET"
wb3truestme1="R3 WB2 SP LIFE HAS MEANING PURPS"
wb3truestme2="R3 WB2 SP FEELS CONFIDENT"
wb3truestme3="R3 WB2 SP GAVE UP IMPROVING LIFE"
wb3truestme4="R3 WB2 SP LIKES LIVING SITUATION"
wb3ageyofeel="R3 WB3 AGE YOU FEEL MOST OF TIME"
wb3agrwstmt1="R3 WB4 SP SELF DETERMINATION"
wb3agrwstmt2="R3 WB4 SP WANTS-FINDS WAY TO DO"
wb3agrwstmt3="R3 WB4 SP ADJUSTS TO CHANGE"
ip3covmedcad="R3 IP1 COVERD BY MEDICARE PART D"
ip3otdrugcov="R3 IP2 DRUG COVERG SOME OTHR WAY"
ip3mgapmedsp="R3 IP3 MEDIGAP OR MEDICARE SUPP"
ip3cmedicaid="R3 IP4 COV BY STATE MEDICAID PRG"
ip3covtricar="R3 IP5 COVERED BY TRICARE"
ip3nginslast="R3 IP5A HAVE LTC INS FROM LAST INT"
ip3nginsnurs="R3 IP6 NONGOV INSR FOR NURS HOME"
ip3typcarco1="R3 IP7 LTC INS NURSNG HOME COVD"
ip3typcarco2="R3 IP7 LTC INS ASSISTD LVNG COVD"
ip3typcarco3="R3 IP7 LTC INS HOME HEALTH COVD"
ip3paypremms="R3 IP8 HOW MUCH PAY IN PREMIUMS"
lf3workfpay="R3 LF1 WORKED FOR PAY RECENTLY"
lf3abstlstwk="R3 LF2 ABSENT FRM JOB LAST WEEK"
lf3wrkplstmn="R3 LF3 WORK FOR PAY IN LST MONTH"
lf3mrthnonjb="R3 LF4 MOR THN ONE JOB LAST WEEK"
lf3hrswkwork="R3 LF5 HRS PR WEEK WORK MAIN JOB"
lf3hrwrkltwk="R3 LF6 HOURS WORK LAST WEEK"
lf3hrwrklstw="R3 LF7 HOW MNY HOURS DID YOU WRK"
lf3oftpaid="R3 LF8 HOW OFTN PAID ON MAIN JOB"
lf3huswifwrk="R3 LF13 HUSB WIFE PARTN PAY WORK"
lf3doccup="R3 D  CURRENT OCCUPATION CATEGORY  "
hp3ownrentot="R3 HP1 OWN RENT OR OTHER"
hp3mrtpadoff="R3 HP2 MORTGAGE PAID OFF"
hp3mthlymort="R3 HP3 MORTGAGE PAYMNT EACH MNTH"
hp3mortpaymt="R3 HP3A MORTGAGE PAYMENT AMOUNT"
hp3whnpayoff="R3 HP3B WHEN EXPCT PAY OFF MORTG"
hp3amtstlowe="R3 HP3C HOW MUCH STILL OWE"
hp3amoutowed="R3 HP3D THE AMOUNT OWED IS"
hp3homevalue="R3 HP4 PRESENT VALUE OF HOME"
hp3homvalamt="R3 HP4A HOME VALUE AMOUNT"
hp3payrent="R3 HP5 DO YOU PAY RENT"
hp3rentamt="R3 HP6 RENT PAID EACH MONTH"
hp3rentamout="R3 HP6A RENT AMOUNT"
hp3sec8pubsn="R3 HP7 HME SEC 8 PUBL SENOR HOUS"
ia3recsspa1="R3 IA1 SP REC SOCIAL SECURITY"
ia3recsspa2="R3 IA1 SPOUSE PART REC SOC SEC"
ia3recsspa3="R3 IA1 NO SOC SECURTY PAYMNT REC"
ia3recssils1="R3 IA4 SP RECEIVD SSI LAST MONTH"
ia3recssils2="R3 IA4 SPOUSE PRT REC SSI LST MO"
ia3recssils3="R3 IA4 NO SSI RECEIVD LAST MONTH"
ia3rvapayls1="R3 IA5 SP REC PAY FRM VA LAST MO"
ia3rvapayls2="R3 IA5 SPOUS PA REC VA PAY LSTMO"
ia3rvapayls3="R3 IA5 NO VA PAY REC LAST MONTH"
ia3penjobou1="R3 IA6 SP HAS PENSION PLAN"
ia3penjobou2="R3 IA6 SPOUSE HAS PENSION PLAN"
ia3penjobou3="R3 IA6 NO PENSION PLAN"
ia3iraothac1="R3 IA7 SP HAS IRA OTH RETIRE ACC"
ia3iraothac2="R3 IA7 SPOUSE HAS IRA OTHR ACC"
ia3iraothac3="R3 IA7 NO IRA OTHR RETIRE ACCT "
ia3mutfdstk1="R3 IA8 SP OWNS MUTUAL FUND STOCK"
ia3mutfdstk2="R3 IA8 SPOUSE OWNS FUNDS STOCK"
ia3mutfdstk3="R3 IA8 SP SPOUSE OWN FUNDS STOCK"
ia3mutfdstk4="R3 IA8 NO FUNDS OR STOCK OWNED"
ia3ownbond1="R3 IA9 SP OWNS BONDS"
ia3ownbond2="R3 IA9 SPOUSE OWNS BONDS"
ia3ownbond3="R3 IA9 SP SPOUSE OWN BONDS"
ia3ownbond4="R3 IA9 NO BONDS OWNED"
ia3bnkacccd1="R3 IA10 SP OWNS CHECK ACCT "
ia3bnkacccd2="R3 IA10 SPOUSE OWNS CHECK ACCT"
ia3bnkacccd3="R3 IA10 SP SPOUSE OWN CHECK ACCT"
ia3bnkacccd4="R3 IA10 NO CHECK ACCT OWNED"
ia3bnkacccd5="R3 IA10 SP OWNS SAVINGS ACCT "
ia3bnkacccd6="R3 IA10 SPOUSE OWNS SAVING ACCT"
ia3bnkacccd7="R3 IA10 SP SPOUSE OWN SAVNG ACT"
ia3bnkacccd8="R3 IA10 NO SAVINGS ACCT OWNED"
ia3bnkacccd9="R3 IA10 SP OWNS CDS "
ia3bnkacccd10="R3 IA10 SPOUSE OWNS CDS"
ia3bnkacccd11="R3 IA10 SP SPOUSE OWN CDS"
ia3bnkacccd12="R3 IA10 NO CDS OWNED"
ia3realestt1="R3 IA13 SP OWNS REAL ESTATE"
ia3realestt2="R3 IA13 SPOUSE OWNS REAL ESTATE"
ia3realestt3="R3 IA13 SP SPOUSE OWN REAL ESTTE"
ia3realestt4="R3 IA13 NO REAL ESTATE OWNED"
ia3totinc="R3 IA50 TOTAL INCOME"
ia3toincimf="R3 F IMPUTED TOTAL INC FLG"
ia3toincim1="R3 IA50 IMPUTED TOTAL INC1"
ia3toincim2="R3 IA50 IMPUTED TOTAL INC2"
ia3toincim3="R3 IA50 IMPUTED TOTAL INC3"
ia3toincim4="R3 IA50 IMPUTED TOTAL INC4"
ia3toincim5="R3 IA50 IMPUTED TOTAL INC5"
ia3toincesjt="R3 IA51A JOINT EST TOT INCOME"
ia3eincimjf="R3 F IMPTD JOINT EST TOT INC FLG"
ia3eincimj1="R3 IA51A IMP EST JOINT TOT INC1"
ia3eincimj2="R3 IA51A IMP EST JOINT TOT INC2"
ia3eincimj3="R3 IA51A IMP EST JOINT TOT INC3"
ia3eincimj4="R3 IA51A IMP EST JOINT TOT INC4"
ia3eincimj5="R3 IA51A IMP EST JOINT TOT INC5"
ia3toincessg="R3 IA51B SNGLE EST TOT INC "
ia3eincimsf="R3 F IMPUTED SGL EST TOT INC FLG"
ia3eincims1="R3 IA51B IMP EST SP SGL TOT INC1"
ia3eincims2="R3 IA51B IMP EST SP SGL TOT INC2"
ia3eincims3="R3 IA51B IMP EST SP SGL TOT INC3"
ia3eincims4="R3 IA51B IMP EST SP SGL TOT INC4"
ia3eincims5="R3 IA51B IMP EST SP SGL TOT INC5"
ew3pycredbal="R3 EW1 PAY OFF CREDIT CARD BALAN"
ew3crecardeb="R3 EW2 TOTAL CREDIT CARD DEBT"
ew3credcdmed="R3 EW3 CREDIT CARD MEDICAL CARE"
ew3amtcrdmed="R3 EW4 AMT ON CARDS FOR MED CARE"
ew3medpaovtm="R3 EW5 MED BILLS PAID OVERTIME"
ew3ampadovrt="R3 EW6 AMT FOR MED BILL OVR TIME"
ew3finhlpfam="R3 EW7 FINANCIAL HELP FRM FAMILY"
ew3whohelfi1="R3 EW8 CHILD HELPED FINANCIALLY"
ew3whohelfi2="R3 EW8 OTHER HELPED FINANCIALLY"
ew3atchhelyr="R3 EW10 AMT FROM CHILDR LST YR"
ew3fingftfam="R3 EW11 FINANCIAL GIFTS TO FAMLY"
ew3whregoth1="R3 EW12 SP GAVE CHILD FINCL HLP"
ew3whregoth2="R3 EW12 SP GAVE GRANDCHD FIN HLP"
ew3whregoth3="R3 EW12 SP GAVE OTHR FINANCL HLP"
ew3amthlpgiv="R3 EW14 AMOUNT OF HELP GIVEN"
ew3progneed1="R3 EW15 SP RECEIVD FOOD STAMPS"
ew3progneed2="R3 EW15 SP REC OTHR FOOD ASST"
ew3progneed3="R3 EW15 SP REC GAS ENERGY ASST"
ew3mealskip1="R3 EW16 SKIP MEALS NO MONEY"
ew3mealskip2="R3 EW16 SKIP MEALS HOW OFTEN"
ew3nopayhous="R3 EW18 NO MONEY FOR HOUSING"
ew3nopayutil="R3 EW18 NO MONEY FOR UTILITIES"
ew3nopaymed="R3 EW18 NO MONEY FOR MEDICAL"
pn3painlim1="R3 PN2A PAIN LIMIT GO OUTSIDE"
pn3painlim2="R3 PN2B PAIN LIMIT HH ACTIVITY"
pn3painlim3="R3 PN2C PAIN LIMIT SHOPPING"
pn3painlim4="R3 PN2D PAIN LIMIT SC ACTIVITY"
pn3painlim5="R3 PN2E PAIN LIMIT WALKING"
pn3painlim6="R3 PN2F PAIN LIMIT SOCIAL ACT"
pn3painall="R3 PN3 PAIN LIMIT OVERALL"
pn3painscale="R3 PN4 AVERAGE PAIN SCALE "
pn3painmonth="R3 PN5A PAIN LAST 24HRS IN MONTH"
pn3painyear="R3 PN5B PAIN LAST 24 HRS IN YEAR"
pt3outgoing="R3 PT2A SP IS OUTGOING"
pt3organized="R3 PT2B SP IS ORGANIZED"
pt3warm="R3 PT2C SP IS WARM"
pt3worrying="R3 PT2D SP IS WORRYING"
pt3creative="R3 PT2E SP IS CREATIVE"
pt3talkative="R3 PT2F SP IS TALKATIVE"
pt3caring="R3 PT2G SP IS CARING"
pt3nervous="R3 PT2H SP IS NERVOUS"
pt3imagine="R3 PT2I SP IS IMAGINATIVE"
pt3thorough="R3 PT2J SP IS THOROUGH"
pt3invention="R3 PT3 INVENTION HELP ACTIVITY"
sl3bedtime1="R3 SL1A USUAL BED TIME HOUR"
sl3bedtime2="R3 SL1B USUAL BED TIME MINUTE"
sl3bedtime3="R3 SL1C USUAL BED TIME AM PM"
sl3asleep1="R3 SL2A HOW LONG FALL ASLEEP HR"
sl3asleep2="R3 SL2B HOW LONG FALL ASLEEP MIN"
sl3morning1="R3 SL3A WAKE UP TIME HOUR"
sl3morning2="R3 SL3B WAKE UP TIME MIN"
sl3morning3="R3 SL3C WAKE UP TIME AM PM"
sl3sleephour="R3 SL4 HOURS OF SLEEP"
sl3sleepbre="R3 SL5 DIF STAYING ASLEEP BREATH"
sl3sleeppain="R3 SL6 DIF STAYING ASLEEP PAIN"
sl3sleepqual="R3 SL7 QUALITY OF SLEEP"
sl3awakedif="R3 SL8 DIF STAYING AWAKE DAY"
sl3napsoft="R3 SL9 HOW OFTEN TAKE NAPS"
sl3naps1="R3 SL10A NAPS LENGTH HR"
sl3naps2="R3 SL10B NAPS LENGTH MIN"
sl3napplan="R3 SL11 WERE NAPS PLANNED"
ir3intlang="R3 IR1A1 INTERVIEW LANGUAGE"
ir3spattitud="R3 IR2 SP ATTITUDE TOWARD INTVW"
ir3undrstand="R3 IR3 SP UNDERSTAND QUESTION"
ir3sppresent="R3 IR4 AMT OF INTERVIW SP PRESNT"
ir3spnotprs1="R3 IR5 REASON SP NOT PRESENT_SLEEP "
ir3spnotprs2="R3 IR5 REASON SP NOT PRESENT_2ILL "
ir3spnotprs3="R3 IR5 REASON SP NOT PRESENT_ALZH "
ir3spnotprs4="R3 IR5 REASON SP NOT PRESENT_PRXYREQ "
ir3spnotprs5="R3 IR5 REASON SP NOT PRESENT_INFCLTY "
ir3spnotprs6="R3 IR5 REASON SP NOT PRESENT_OTHSPFY "
ir3intvwhlp="R3 IR6 ANYONE HELP WITH INTVW"
ir3prsnhlp1="R3 IR6A SPOUSE HELPED WITH INTVW"
ir3prsnhlp2="R3 IR6A CHILD HELPED WITH INTVW"
ir3prsnhlp3="R3 IR6A RELATIVE HELP WITH INTVW"
ir3prsnhlp4="R3 IR6A FRIEND HELPED WITH INTVW"
ir3prsnhlp5="R3 IR6A STAFF HELPED WITH INTVW"
ir3prsnhlp6="R3 IR6A AIDE HELPED WITH INTVW"
ir3prsnhlp91="R3 IR6A OTHER HELPED WITH INTVW"
ir3demolang1="R3 IR10B PHYS ACT DEMO SAFETY TRANS"
ir3sessions="R3 IR12 MORE ONE INTVW SESSION"
ir3sessrsn1="R3 IR12A MORE 1 SESSION SP TIRED"
ir3sessrsn2="R3 IR12A MORE 1 SESSION SP ILL"
ir3sessrsn3="R3 IR12A MORE 1 SESSION SCHEDULE"
ir3sessrsn91="R3 IR12A MORE 1 SESSION OTHER"
ir3conhomapt="R3 IR12C INTRV CONDTD AT HME/APT"
ir3insidhome="R3 IR12E GO INSIDE HOME/APT/UNIT"
ir3condihom1="R3 IR13 PAINT PEELING IN SP HOME"
ir3condihom2="R3 IR13 PESTS IN SP HOME"
ir3condihom3="R3 IR13 BROKN FURNITURE SP HOME"
ir3condihom4="R3 IR13 FLOORING NEEDS REPAIR"
ir3condihom5="R3 IR13 HOME OTHR TRIPPING HAZRD"
ir3clutterr1="R3 IR14 CLUTTR IN INTERVIEW ROOM"
ir3clutterr2="R3 IR14 CLUTTR IN OTHR SP ROOMS"
ir3areacond1="R3 IR15 LITTER GLASS ON SDWLK ST"
ir3areacond2="R3 IR15 GRAFFITI ON BUILDG WALLS"
ir3areacond3="R3 IR15 VACANT HOUSES OR STORES"
ir3condhome1="R3 IR16 BROKEN WINDOWS IN HOME"
ir3condhome2="R3 IR16 CRUMBLNG FOUNDTN IN HOME"
ir3condhome3="R3 IR16 MISSNG BRCKS SIDNG IN HM"
ir3condhome4="R3 IR16 ROOF PROBLEM IN HOME"
ir3condhome5="R3 IR16 BROKEN STEPS TO HOME"
ir3condhome6="R3 IR16 CONTINUOUS SIDEWALKS"
fq3dfacdescr="R3 FQ6 FACILITY TYPE"
fq3dosfacd="R3 FQ6A OTHER SPECIFY FAC TYPE"
fq3prtlivnam="R3 FQ8 FAC NM DIFF4PLC SP LIVES"
fq3dfacarea="R3 FQ10 FACILITY AREA SP LIVES"
fq3dosfaca="R3 FQ10A OTHER SPECIFY FAC AREA"
fq3assdnrsng="R3 FQ11 ASSIST LIV OR NURSG HOME"
fq3othrlevls="R3 FQ12 OTH LEVELS OF CARE AVAIL"
fq3whotlevl1="R3 FQ13 INDEPNDNT LIV CARE AVAIL"
fq3whotlevl2="R3 FQ13 ASSISTED LVNG CARE AVAIL"
fq3whotlevl3="R3 FQ13 ALZHEIMER CARE AVAIL"
fq3whotlevl4="R3 FQ13 NURSING HOME CARE AVAIL"
fq3whotlevl5="R3 FQ13 OTHR SPECIFY CARE AVAIL"
fq3servaval1="R3 FQ15 MEALS AVAIL"
fq3servaval2="R3 FQ15 HELP WITH MEDS AVAIL"
fq3servaval3="R3 FQ15 HELP W BATH DRESS AVAIL"
fq3servaval4="R3 FQ15 LAUNDRY SERVCS AVAIL"
fq3servaval5="R3 FQ15 HOUSEKEEPING SERV AVAIL"
fq3servaval6="R3 FQ15 TRANSPRT MED CARE PROV"
fq3servaval7="R3 FQ15 TRANSPRT TO STORE EVENT"
fq3servaval8="R3 FQ15 RECREATIONAL FAC AVAIL"
fq3servaval9="R3 FQ15 SOCIAL EVENTS AVAIL"
fq3paysourc1="R3 FQ16 SP OR SP FAMILY PAYMENT"
fq3paysourc2="R3 FQ16 SOC SEC SSI PAYMENT"
fq3paysourc3="R3 FQ16 MEDICAID PAYMENT"
fq3paysourc4="R3 FQ16 MEDICARE PAYMENT"
fq3paysourc5="R3 FQ16 PRIVATE INSURANCE PAYMNT"
fq3paysourc6="R3 FQ16 OTHR GOVT PAYMENT"
fq3totalpaym="R3 FQ17 TOTAL PAYMENT FOR CARE"
fq3mnthlyamt="R3 FQ18 TOT MTHLY AMT FOR CARE"
fq3primpayer="R3 FQ19 PRIMARY PAYER FOR CARE"
fq3govsource="R3 FQ20 GOVERNMENT SOURCE"
fq3dlocsp="R3 D FQ6 6A 10 10A FOR SAMP WGT "
w3anfinwgt0="R3 FINAL ANALYTIC WGT FULL SAMP"
w3anfinwgt1="R3 FINAL ANALYTIC WGT REP 1"
w3anfinwgt2="R3 FINAL ANALYTIC WGT REP 2"
w3anfinwgt3="R3 FINAL ANALYTIC WGT REP 3"
w3anfinwgt4="R3 FINAL ANALYTIC WGT REP 4"
w3anfinwgt5="R3 FINAL ANALYTIC WGT REP 5"
w3anfinwgt6="R3 FINAL ANALYTIC WGT REP 6"
w3anfinwgt7="R3 FINAL ANALYTIC WGT REP 7"
w3anfinwgt8="R3 FINAL ANALYTIC WGT REP 8"
w3anfinwgt9="R3 FINAL ANALYTIC WGT REP 9"
w3anfinwgt10="R3 FINAL ANALYTIC WGT REP 10"
w3anfinwgt11="R3 FINAL ANALYTIC WGT REP 11"
w3anfinwgt12="R3 FINAL ANALYTIC WGT REP 12"
w3anfinwgt13="R3 FINAL ANALYTIC WGT REP 13"
w3anfinwgt14="R3 FINAL ANALYTIC WGT REP 14"
w3anfinwgt15="R3 FINAL ANALYTIC WGT REP 15"
w3anfinwgt16="R3 FINAL ANALYTIC WGT REP 16"
w3anfinwgt17="R3 FINAL ANALYTIC WGT REP 17"
w3anfinwgt18="R3 FINAL ANALYTIC WGT REP 18"
w3anfinwgt19="R3 FINAL ANALYTIC WGT REP 19"
w3anfinwgt20="R3 FINAL ANALYTIC WGT REP 20"
w3anfinwgt21="R3 FINAL ANALYTIC WGT REP 21"
w3anfinwgt22="R3 FINAL ANALYTIC WGT REP 22"
w3anfinwgt23="R3 FINAL ANALYTIC WGT REP 23"
w3anfinwgt24="R3 FINAL ANALYTIC WGT REP 24"
w3anfinwgt25="R3 FINAL ANALYTIC WGT REP 25"
w3anfinwgt26="R3 FINAL ANALYTIC WGT REP 26"
w3anfinwgt27="R3 FINAL ANALYTIC WGT REP 27"
w3anfinwgt28="R3 FINAL ANALYTIC WGT REP 28"
w3anfinwgt29="R3 FINAL ANALYTIC WGT REP 29"
w3anfinwgt30="R3 FINAL ANALYTIC WGT REP 30"
w3anfinwgt31="R3 FINAL ANALYTIC WGT REP 31"
w3anfinwgt32="R3 FINAL ANALYTIC WGT REP 32"
w3anfinwgt33="R3 FINAL ANALYTIC WGT REP 33"
w3anfinwgt34="R3 FINAL ANALYTIC WGT REP 34"
w3anfinwgt35="R3 FINAL ANALYTIC WGT REP 35"
w3anfinwgt36="R3 FINAL ANALYTIC WGT REP 36"
w3anfinwgt37="R3 FINAL ANALYTIC WGT REP 37"
w3anfinwgt38="R3 FINAL ANALYTIC WGT REP 38"
w3anfinwgt39="R3 FINAL ANALYTIC WGT REP 39"
w3anfinwgt40="R3 FINAL ANALYTIC WGT REP 40"
w3anfinwgt41="R3 FINAL ANALYTIC WGT REP 41"
w3anfinwgt42="R3 FINAL ANALYTIC WGT REP 42"
w3anfinwgt43="R3 FINAL ANALYTIC WGT REP 43"
w3anfinwgt44="R3 FINAL ANALYTIC WGT REP 44"
w3anfinwgt45="R3 FINAL ANALYTIC WGT REP 45"
w3anfinwgt46="R3 FINAL ANALYTIC WGT REP 46"
w3anfinwgt47="R3 FINAL ANALYTIC WGT REP 47"
w3anfinwgt48="R3 FINAL ANALYTIC WGT REP 48"
w3anfinwgt49="R3 FINAL ANALYTIC WGT REP 49"
w3anfinwgt50="R3 FINAL ANALYTIC WGT REP 50"
w3anfinwgt51="R3 FINAL ANALYTIC WGT REP 51"
w3anfinwgt52="R3 FINAL ANALYTIC WGT REP 52"
w3anfinwgt53="R3 FINAL ANALYTIC WGT REP 53"
w3anfinwgt54="R3 FINAL ANALYTIC WGT REP 54"
w3anfinwgt55="R3 FINAL ANALYTIC WGT REP 55"
w3anfinwgt56="R3 FINAL ANALYTIC WGT REP 56"
w3varstrat="R3 VARIANCE ESTIMATION STRATUM"
w3varunit="R3 VARIANCE ESTIMATION CLUSTER";
run;
