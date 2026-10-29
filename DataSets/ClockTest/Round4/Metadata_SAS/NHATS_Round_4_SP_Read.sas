/* NHATS_Round_4_SP_Read.SAS - Public Use */

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

VALUE $RFDK_3C
    '-1 ' = '-1 Inapplicable'
    '-7 ' = '-7 RF'
    '-8 ' = '-8 DK'
    '-9 ' = '-9 Missing';

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

    VALUE dresid
        1 = '1 Community '
        2 = '2 Residential Care Resident not nursing home (SP interview complete)'
        3 = '3 Residential Care Resident not nursing home (FQ only)'
        4 = '4 Nursing Home Resident';
    VALUE f_dresid
        1 = '1 Community '
        2 = '2 Residential care not nursing home (SP interview)'
        3 = '3 Residential care not nursing home (FQ only)'
        4 = '4 Nursing home (SP interview)'
        5 = '5 Nursing home (FQ only)'
        6 = '6 Deceased'
        7 = '7 Residential care not nursing home in R1 and R2 (FQ only)'
        8 = '8 Nursing home in R1 and R2 (FQ only)' ;
    VALUE f2dresid
		-1='-1 Inapplicable'
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
    VALUE f4dresid
		-1='-1 Inapplicable'
		1 = '1 Community '
        2 = '2 Residential care not nursing home (SP interview)'
        3 = '3 Residential care not nursing home (FQ only)'
        4 = '4 Nursing home (SP interview)'
        5 = '5 Nursing home (FQ only)'
        6 = '6 Deceased'
        7 = '7 Residential care not nursing home in R1 and R4 (FQ only)'
        8 = '8 Nursing home in R1 and R4 (FQ only)' ;


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

        VALUE  DMDS4FLG
            -1 = "-1 Inapplicable"
             1 = "1 No SP interview last round"
             2 = "2 Died and month death missing"
             3 = "3 Died <=1 month after last interview"
             4 = "4 Died 12-13 months after last interview"
             5 = "5 Died and not mobile (fl4notmobile=1)"
             6 = "6 Died and not alert (fl4notalert =1)"
             7 = "7 Skipped 1 or more help questions";
run;
/* Section #2 - Input statement with variable name and location on the .txt file  
		Reminder - change [PATH] to reflect your file locations       */
Data spfile;
INFILE  "[PATH]\NHATS_Round_4_SP_File.txt"

LRECL=3362 ;
INPUT @1 spid 8.
@9 r4dlmlint 2.
@11 r4dresid 2.
@13 r3dresid 2.
@15 r2dresid 2.
@17 r1dresid 2.
@19 r4dresidlml 2.
@21 r4breakoffst 8.
@29 r4breakoffqt $8.
@37 is4resptype 2.
@39 is4reasnprx1 2.
@41 is4reasnprx2 2.
@43 is4reasnprx3 2.
@45 is4reasnprx4 2.
@47 is4reasnprx5 2.
@49 is4reasnprx6 2.
@51 is4reasnprx7 2.
@53 is4reasnprx9 2.
@55 is4tempres 2.
@57 is4prxyrelat 2.
@59 is4prxygendr 2.
@61 is4famrrutin 2.
@63 is4proxlivsp 2.
@65 r1dgender 2.
@67 rl1dracehisp 2.
@69 r4d2intvrage 3.
@72 is4dproxyid $3.
@75 re4spadrsnew 2.
@77 re4intplace 2.
@79 re4newstrct 2.
@81 re4newblgfl 2.
@83 re4mthmove 2.
@85 re4yearmove 4.
@89 re4placedec 2.
@91 re4alonedec 2.
@93 re4dresistrct 2.
@95 re4dbldg 2.
@97 re4dcensdiv 2.
@99 fl4structure 2.
@101 fl4resnew 2.
@103 fl4facility 2.
@105 fl4hotype 2.
@107 fl4retirecom 2.
@109 pd4placedied 2.
@111 pd4homedied 2.
@113 pd4hospdied 2.
@115 pd4hospice1 2.
@117 pd4hospice2 2.
@119 pd4stayunit 2.
@121 pd4staydays 3.
@124 pd4staywks 2.
@126 pd4staymths 2.
@128 pd4stayyrs 2.
@130 pd4staymthpl 2.
@132 pd4placepre 2.
@134 pd4hospcelml 2.
@136 pd4alert 2.
@138 pd4outbed 2.
@140 r4d2deathage 3.
@143 fl4spdied 2.
@145 fl4notalert 2.
@147 fl4notmobile 2.
@149 lm4pain 2.
@151 lm4painhlp 2.
@153 lm4painhlpam 2.
@155 lm4bre 2.
@157 lm4brehlp 2.
@159 lm4brehlpam 2.
@161 lm4sad 2.
@163 lm4sadhlp 2.
@165 lm4sadhlpam 2.
@167 lm4caredecis 2.
@169 lm4carenowan 2.
@171 lm4perscare 2.
@173 lm4respect 2.
@175 lm4informed 2.
@177 lm4doctor 2.
@179 lm4docclear 2.
@181 lm4relg 2.
@183 lm4relgamt 2.
@185 lm4ratecare 2.
@187 hc4health 2.
@189 hc4disescn1 2.
@191 hc4disescn2 2.
@193 hc4disescn3 2.
@195 hc4disescn4 2.
@197 hc4disescn5 2.
@199 hc4disescn6 2.
@201 hc4disescn7 2.
@203 hc4disescn8 2.
@205 hc4disescn9 2.
@207 hc4disescn10 2.
@209 hc4cancerty1 2.
@211 hc4brokebon1 2.
@213 hc4brokebon2 2.
@215 hc4hosptstay 2.
@217 hc4hosovrnht 2.
@219 hc4knesrgyr 2.
@221 hc4hipsrgyr 2.
@223 hc4catrsrgyr 2.
@225 hc4backsrgyr 2.
@227 hc4hartsrgyr 2.
@229 hc4fllsinmth 2.
@231 hc4worryfall 2.
@233 hc4worrylimt 2.
@235 hc4faleninyr 2.
@237 hc4multifall 2.
@239 hc4depresan1 2.
@241 hc4depresan2 2.
@243 hc4depresan3 2.
@245 hc4depresan4 2.
@247 hc4aslep30mn 2.
@249 hc4trbfalbck 2.
@251 hc4sleepmed 2.
@253 ht4placedesc 2.
@255 ht4retiresen 2.
@257 ht4diffareun 2.
@259 ht4helpmedbd 2.
@261 ht4meals 2.
@263 ht4spacename 2.
@267 se4servcoff1 2.
@269 se4servcoff2 2.
@271 se4servcoff3 2.
@273 se4servcoff4 2.
@275 se4servcoff5 2.
@277 se4servcoff6 2.
@279 se4servcoff7 2.
@281 se4servcoff8 2.
@283 se4servcoff9 2.
@285 se4servused1 2.
@287 se4servused2 2.
@289 se4servused3 2.
@291 se4servused4 2.
@293 se4servused5 2.
@295 se4servused6 2.
@297 se4servused7 2.
@299 se4servused8 2.
@301 se4servused9 2.
@303 se4payservi1 2.
@305 se4payservi2 2.
@307 se4payservi3 2.
@309 se4payservi4 2.
@311 se4payservi5 2.
@313 se4payservi6 2.
@315 se4payservi7 2.
@317 se4payservi8 2.
@319 se4payservi9 2.
@321 hh4marchange 2.
@323 hh4martlstat 2.
@325 hh4yrendmarr 4.
@329 hh4newspoprt 2.
@331 hh4spgender 2.
@333 hh4dspouage 2.
@335 hh4dspageall 2.
@337 hh4spouseduc 2.
@339 hh4spoupchlp 2.
@341 hh4livwthspo 2.
@343 hh4placekind 2.
@345 hh4dmarstat 2.
@347 hh4dlvngarrg 2.
@349 hh4dhshldnum 2.
@351 hh4dhshldchd 2.
@353 hh4dspouseid $3.
@356 cs4sistrsnum 2.
@358 cs4brthrsnum 2.
@360 cs4dnumchild 2.
@362 cs4dnmstpchd 2.
@364 cs4dnumdaugh 2.
@366 cs4dnumson 2.
@368 sn4dnumsn 2.
@370 fl4noonetalk 2.
@372 ho4entrstair 2.
@374 ho4entrccomn 2.
@376 ho4entrnramp 2.
@378 ho4bldgamen1 2.
@380 ho4bldgamen2 2.
@382 ho4bldgamen3 2.
@384 ho4bldgamen4 2.
@386 ho4levelsflr 2.
@388 ho4homeamen1 2.
@390 ho4homeamen2 2.
@392 ho4homeamen3 2.
@394 ho4bathprivt 2.
@396 ho4bathamen1 2.
@398 ho4bathamen2 2.
@400 ho4bathamen3 2.
@402 ho4bathamen4 2.
@404 ho4bathamen5 2.
@406 ho4bathamen6 2.
@408 ho4bathamen7 2.
@410 ho4kitchnprv 2.
@412 ho4kitchncom 2.
@414 ho4microwave 2.
@416 ho4dbldg1 2.
@418 ho4dbldg2 2.
@420 ho4dbldg3 2.
@422 ho4dbldg4 2.
@424 ho4dbathprvt 2.
@426 ho4dkitchnpr 2.
@428 ho4dkitchnco 2.
@430 fl4bathgrbbr 2.
@432 fl4bathseat 2.
@434 fl4raisedtlt 2.
@436 fl4tltgrbbr 2.
@438 em4modhere1 2.
@440 em4addlstyr1 2.
@442 em4addlstyr2 2.
@444 em4addlstyr3 2.
@446 em4addlstyr4 2.
@448 em4addlstyr5 2.
@450 em4addlstyr6 2.
@452 em4addlstyr7 2.
@454 em4payyufam1 2.
@456 em4payyufam2 2.
@458 em4payyufam3 2.
@460 em4payyufam4 2.
@462 em4payyufam5 2.
@464 em4payyufam6 2.
@466 em4payyufam7 2.
@468 em4paydevce1 2.
@470 em4paydevce2 2.
@472 em4paydevce3 2.
@474 em4paydevce4 2.
@476 em4paydevce5 2.
@478 em4paydevce6 2.
@480 em4paydevce7 2.
@482 em4paydevce8 2.
@484 em4paydevce9 2.
@486 em4payaltgth 2.
@488 em4morls1000 2.
@490 em4morls100 2.
@492 cm4knowwell 2.
@494 cm4willnghlp 2.
@496 cm4peoptrstd 2.
@498 te4cellphone 2.
@500 te4othrphone 2.
@502 te4computer 2.
@504 te4compoth 2.
@506 te4tablet 2.
@508 te4emailtext 2.
@510 te4oftnemail 2.
@512 te4online 2.
@514 te4shoponli1 2.
@516 te4shoponli2 2.
@518 te4shoponli3 2.
@520 te4socialnet 2.
@522 te4intrntmd1 2.
@524 te4intrntmd2 2.
@526 te4intrntmd3 2.
@528 md4canewlker 2.
@530 md4cane 2.
@532 md4walker 2.
@534 md4wheelchar 2.
@536 md4whelcrspc 2.
@538 md4scooter 2.
@540 md4scterinsp 2.
@542 fl4cane 2.
@544 fl4walker 2.
@546 fl4wheelchr 2.
@548 fl4whlchrhom 2.
@550 fl4scooter 2.
@552 fl4scooterhm 2.
@554 ss4heringaid 2.
@556 ss4hearphone 2.
@558 ss4convwradi 2.
@560 ss4convquiet 2.
@562 ss4glasseswr 2.
@564 ss4seewellst 2.
@566 ss4seestvgls 2.
@568 ss4glasscls 2.
@570 ss4othvisaid 2.
@572 ss4glrednewp 2.
@574 ss4probchswl 2.
@576 ss4probspeak 2.
@578 ss4painbothr 2.
@580 ss4painlimts 2.
@582 ss4painmedof 2.
@584 ss4painwhe1 2.
@586 ss4painwhe2 2.
@588 ss4painwhe3 2.
@590 ss4painwhe4 2.
@592 ss4painwhe5 2.
@594 ss4painwhe6 2.
@596 ss4painwhe7 2.
@598 ss4painwhe8 2.
@600 ss4painwhe9 2.
@602 ss4painwhe10 2.
@604 ss4painwhe11 2.
@606 ss4painwhe12 2.
@608 ss4painwhe13 2.
@610 ss4probbreat 2.
@612 ss4prbbrlimt 2.
@614 ss4strnglmup 2.
@616 ss4uplimtact 2.
@618 ss4lwrbodstr 2.
@620 ss4lwrbodimp 2.
@622 ss4lowenergy 2.
@624 ss4loenlmtat 2.
@626 ss4prbbalcrd 2.
@628 ss4prbbalcnt 2.
@630 fl4deaf 2.
@632 fl4blind 2.
@634 pc4walk6blks 2.
@636 pc4walk3blks 2.
@638 pc4up20stair 2.
@640 pc4up10stair 2.
@642 pc4car20pnds 2.
@644 pc4car10pnds 2.
@646 pc4geonknees 2.
@648 pc4bendover 2.
@650 pc4hvobovrhd 2.
@652 pc4rechovrhd 2.
@654 pc4opnjarwhd 2.
@656 pc4grspsmobj 2.
@658 cp4memrygood 2.
@660 cp4knownspyr 2.
@662 cp4chgthink1 2.
@664 cp4chgthink2 2.
@666 cp4chgthink3 2.
@668 cp4chgthink4 2.
@670 cp4chgthink5 2.
@672 cp4chgthink6 2.
@674 cp4chgthink7 2.
@676 cp4chgthink8 2.
@678 cp4memcogpr1 2.
@680 cp4memcogpr2 2.
@682 cp4memcogpr3 2.
@684 cp4memcogpr4 2.
@686 cp4dad8dem 2.
@688 cg4speaktosp 2.
@690 cg4quesremem 2.
@692 cg4reascano1 2.
@694 cg4reascano2 2.
@696 cg4reascano3 2.
@698 cg4reascano4 2.
@700 cg4reascano5 2.
@702 cg4reascano6 2.
@704 cg4reascano7 2.
@706 cg4reascano8 2.
@708 cg4reascano9 2.
@710 cg4ratememry 2.
@712 cg4ofmemprob 2.
@714 cg4memcom1yr 2.
@716 cg4todaydat1 2.
@718 cg4todaydat2 2.
@720 cg4todaydat3 2.
@722 cg4todaydat4 2.
@724 cg4todaydat5 2.
@726 cg4todaydat6 2.
@728 cg4prewrdrcl 2.
@730 cg4dwrdlstnm 2.
@732 cg4wrdsrcal1 2.
@734 cg4wrdsrcal2 2.
@736 cg4wrdsrcal3 2.
@738 cg4wrdsrcal4 2.
@740 cg4wrdsrcal5 2.
@742 cg4wrdsrcal6 2.
@744 cg4wrdsrcal7 2.
@746 cg4wrdsrcal8 2.
@748 cg4wrdsrcal9 2.
@750 cg4wrdsrcal10 2.
@752 cg4dwrdimmrc 2.
@754 cg4dwrdinone 2.
@756 cg4dwrdirref 2.
@758 cg4wrdsntlst 2.
@760 cg4numnotlst 2.
@762 cg4probreca1 2.
@764 cg4probreca2 2.
@766 cg4probreca3 2.
@768 cg4probreca4 2.
@770 cg4probreca5 2.
@772 cg4dclkdraw 2.
@774 cg4dclkimgcl 2.
@776 cg4atdrwclck 2.
@778 cg4presidna1 2.
@780 cg4presidna2 2.
@782 cg4presidna3 2.
@784 cg4presidna4 2.
@786 cg4vpname1 2.
@788 cg4vpname2 2.
@790 cg4vpname3 2.
@792 cg4vpname4 2.
@794 cg4wrdsdcal1 2.
@796 cg4wrdsdcal2 2.
@798 cg4wrdsdcal3 2.
@800 cg4wrdsdcal4 2.
@802 cg4wrdsdcal5 2.
@804 cg4wrdsdcal6 2.
@806 cg4wrdsdcal7 2.
@808 cg4wrdsdcal8 2.
@810 cg4wrdsdcal9 2.
@812 cg4wrdsdca10 2.
@814 cg4dwrddlyrc 2.
@816 cg4dwrddnone 2.
@818 cg4dwrddrref 2.
@820 cg4wrdnotlst 2.
@822 cg4numwrdnot 2.
@824 cg4dwrd1rcl 2.
@826 cg4dwrd2rcl 2.
@828 cg4dwrd3rcl 2.
@830 cg4dwrd4rcl 2.
@832 cg4dwrd5rcl 2.
@834 cg4dwrd6rcl 2.
@836 cg4dwrd7rcl 2.
@838 cg4dwrd8rcl 2.
@840 cg4dwrd9rcl 2.
@842 cg4dwrd10rcl 2.
@844 cg4dwrd1dly 2.
@846 cg4dwrd2dly 2.
@848 cg4dwrd3dly 2.
@850 cg4dwrd4dly 2.
@852 cg4dwrd5dly 2.
@854 cg4dwrd6dly 2.
@856 cg4dwrd7dly 2.
@858 cg4dwrd8dly 2.
@860 cg4dwrd9dly 2.
@862 cg4dwrd10dly 2.
@864 mo4outoft 2.
@866 mo4outcane 2.
@868 mo4outwalkr 2.
@870 mo4outwlchr 2.
@872 mo4outsctr 2.
@874 mo4outhlp 2.
@876 mo4outslf 2.
@878 mo4outdif 2.
@880 mo4outyrgo 2.
@882 mo4outwout 2.
@884 mo4oftgoarea 2.
@886 mo4oflvslepr 2.
@888 mo4insdcane 2.
@890 mo4insdwalkr 2.
@892 mo4insdwlchr 2.
@894 mo4insdsctr 2.
@896 mo4oftholdwl 2.
@898 mo4insdhlp 2.
@900 mo4insdslf 2.
@902 mo4insddif 2.
@904 mo4insdyrgo 2.
@906 mo4insdwout 2.
@908 mo4beddev 2.
@910 mo4bedhlp 2.
@912 mo4bedslf 2.
@914 mo4beddif 2.
@916 mo4bedwout 2.
@918 mo4doutsfdf 2.
@920 mo4doutdevi 2.
@922 mo4douthelp 2.
@924 mo4dinsdsfdf 2.
@926 mo4dinsddevi 2.
@928 mo4dinsdhelp 2.
@930 mo4dbedsfdf 2.
@932 mo4dbeddevi 2.
@934 mo4dbedhelp 2.
@936 fl4didntleav 2.
@938 fl4ntlvrmslp 2.
@940 dm4helpmobil 2.
@942 dm4helpstmo 2.
@944 dm4helpstyr 4.
@948 dm4helpendmo 2.
@950 dm4helpendyr 4.
@954 dm4nohelp 2.
@956 dm4nohelpmos 2.
@958 dm4lstyrcane 4.
@962 dm4devstmo 2.
@964 dm4devstyr 4.
@968 dm4devendmo 2.
@970 dm4devendyr 4.
@974 dm4nodev 2.
@976 dm4nodevmos 2.
@978 dm4dmohlp 3.
@981 dm4dmodev 3.
@984 dm4dmohlpgr 2.
@986 dm4dmodevgr 2.
@988 dmds4dintvl 2.
@990 dm4flag 2.
@992 dt4driveyr 2.
@994 dt4oftedrive 2.
@996 dt4avoidriv1 2.
@998 dt4avoidriv2 2.
@1000 dt4avoidriv3 2.
@1002 dt4avoidriv4 2.
@1004 dt4getoplcs1 2.
@1006 dt4getoplcs2 2.
@1008 dt4getoplcs3 2.
@1010 dt4getoplcs4 2.
@1012 dt4getoplcs5 2.
@1014 dt4getoplcs6 2.
@1016 dt4getoplcs7 2.
@1018 dt4otfrfamtk 2.
@1020 fl4drives 2.
@1022 fl4drvlstyr 2.
@1024 fl1dneverdrv 2.
@1026 ha4laun 2.
@1028 ha4launslf 2.
@1030 ha4whrmachi1 2.
@1032 ha4whrmachi2 2.
@1034 ha4whrmachi3 2.
@1036 ha4whrmachi4 2.
@1038 ha4whrmachi5 2.
@1040 ha4whrmachi6 2.
@1042 ha4dlaunreas 2.
@1044 ha4laundif 2.
@1046 ha4launoft 2.
@1048 ha4launwout 2.
@1050 ha4shop 2.
@1052 ha4shopslf 2.
@1054 ha4howpaygr1 2.
@1056 ha4howpaygr2 2.
@1058 ha4howpaygr3 2.
@1060 ha4howpaygr4 2.
@1062 ha4howpaygr5 2.
@1064 ha4howpaygr6 2.
@1066 ha4howpaygr7 2.
@1068 ha4howgtstr1 2.
@1070 ha4howgtstr2 2.
@1072 ha4howgtstr3 2.
@1074 ha4howgtstr4 2.
@1076 ha4howgtstr5 2.
@1078 ha4howgtstr6 2.
@1080 ha4howgtstr7 2.
@1082 ha4howgtstr8 2.
@1084 ha4shopcart 2.
@1086 ha4shoplean 2.
@1088 ha4dshopreas 2.
@1090 ha4shopdif 2.
@1092 ha4shopoft 2.
@1094 ha4shopwout 2.
@1096 ha4meal 2.
@1098 ha4mealslf 2.
@1100 ha4restamels 2.
@1102 ha4mealwheel 2.
@1104 ha4oftmicrow 2.
@1106 ha4dmealreas 2.
@1108 ha4mealdif 2.
@1110 ha4mealoft 2.
@1112 ha4mealwout 2.
@1114 ha4bank 2.
@1116 ha4bankslf 2.
@1118 ha4dbankreas 2.
@1120 ha4bankdif 2.
@1122 ha4bankoft 2.
@1124 ha4bankwout 2.
@1126 ha4money 2.
@1128 ha4moneyhlp 2.
@1130 ha4dlaunsfdf 2.
@1132 ha4dshopsfdf 2.
@1134 ha4dmealsfdf 2.
@1136 ha4dbanksfdf 2.
@1138 ha4dmealwhl 2.
@1140 ha4dmealtkot 2.
@1142 sc4eatdev 2.
@1144 sc4eatdevoft 2.
@1146 sc4eathlp 2.
@1148 sc4eatslfoft 2.
@1150 sc4eatslfdif 2.
@1152 sc4eatwout 2.
@1154 sc4showrbat1 2.
@1156 sc4showrbat2 2.
@1158 sc4showrbat3 2.
@1160 sc4bdevdec 2.
@1162 sc4prfrshbth 2.
@1164 sc4scusgrbrs 2.
@1166 sc4shtubseat 2.
@1168 sc4bathhlp 2.
@1170 sc4bathoft 2.
@1172 sc4bathdif 2.
@1174 sc4bathyrgo 2.
@1176 sc4bathwout 2.
@1178 sc4usvartoi1 2.
@1180 sc4usvartoi2 2.
@1182 sc4usvartoi3 2.
@1184 sc4usvartoi4 2.
@1186 sc4toilhlp 2.
@1188 sc4toiloft 2.
@1190 sc4toildif 2.
@1192 sc4toilwout 2.
@1194 sc4dresoft 2.
@1196 sc4dresdev 2.
@1198 sc4dreshlp 2.
@1200 sc4dresslf 2.
@1202 sc4dresdif 2.
@1204 sc4dresyrgo 2.
@1206 sc4dreswout 2.
@1208 sc4deatdevi 2.
@1210 sc4deathelp 2.
@1212 sc4deatsfdf 2.
@1214 sc4dbathdevi 2.
@1216 sc4dbathhelp 2.
@1218 sc4dbathsfdf 2.
@1220 sc4dtoildevi 2.
@1222 sc4dtoilhelp 2.
@1224 sc4dtoilsfdf 2.
@1226 sc4ddresdevi 2.
@1228 sc4ddreshelp 2.
@1230 sc4ddressfdf 2.
@1232 fl4showering 2.
@1234 fl4takingbth 2.
@1236 fl4washingup 2.
@1238 ds4gethlpeat 2.
@1240 ds4helpstmo 2.
@1242 ds4helpstyr 4.
@1246 ds4helpendmo 2.
@1248 ds4helpendyr 4.
@1252 ds4nohelp 2.
@1254 ds4nohelpmos 2.
@1256 ds4dschlp 3.
@1259 ds4dschlpgr 2.
@1261 ds4flag 2.
@1263 mc4meds 2.
@1265 mc4medstrk 2.
@1267 mc4medsslf 2.
@1269 mc4whrgtmed1 2.
@1271 mc4whrgtmed2 2.
@1273 mc4whrgtmed3 2.
@1275 mc4whrgtmed4 2.
@1277 mc4howpkupm1 2.
@1279 mc4howpkupm2 2.
@1281 mc4howpkupm3 2.
@1283 mc4medsrem 2.
@1285 mc4dmedsreas 2.
@1287 mc4medsdif 2.
@1289 mc4medsyrgo 2.
@1291 mc4medsmis 2.
@1293 mc4havregdoc 2.
@1295 mc4regdoclyr 2.
@1297 mc4hwgtregd1 2.
@1299 mc4hwgtregd2 2.
@1301 mc4hwgtregd3 2.
@1303 mc4hwgtregd4 2.
@1305 mc4hwgtregd5 2.
@1307 mc4hwgtregd6 2.
@1309 mc4hwgtregd7 2.
@1311 mc4hwgtregd8 2.
@1313 mc4hwgtregd9 2.
@1315 mc4ansitindr 2.
@1317 mc4tpersevr1 2.
@1319 mc4tpersevr2 2.
@1321 mc4tpersevr3 2.
@1323 mc4tpersevr4 2.
@1325 mc4chginspln 2.
@1327 mc4anhlpwdec 2.
@1329 mc4dmedssfdf 2.
@1331 pa4vistfrfam 2.
@1333 pa4hlkepfvst 2.
@1335 pa4trkpfrvis 2.
@1337 pa4impvstfam 2.
@1339 pa4attrelser 2.
@1341 pa4htkfrrlsr 2.
@1343 pa4trprrelsr 2.
@1345 pa4imprelser 2.
@1347 pa4clbmtgrac 2.
@1349 pa4hlkpfrclb 2.
@1351 pa4trprkpfgr 2.
@1353 pa4imparclub 2.
@1355 pa4outfrenjy 2.
@1357 pa4hlkpgoenj 2.
@1359 pa4trprgoout 2.
@1361 pa4impouteny 2.
@1363 pa4workfrpay 2.
@1365 pa4hlkpfrwrk 2.
@1367 pa4voltrwork 2.
@1369 pa4hlkpfrvol 2.
@1371 pa4prcranoth 2.
@1373 pa4evrgowalk 2.
@1375 pa4vigoractv 2.
@1377 pa4dofavact 2.
@1379 pa4helmfvact 2.
@1381 pa1dv2favact 3.
@1384 sd4smokesnow 2.
@1386 sd4numcigday 3.
@1389 pe4whhndsign 2.
@1391 pe4surghdwrt 2.
@1393 pe4surgyside 2.
@1395 pe4flruppain 2.
@1397 pe4sideflrup 2.
@1399 pe4surgarmsh 2.
@1401 pe4sidsurgar 2.
@1403 pe4surgyhips 2.
@1405 pe4sidhipsrg 2.
@1407 pe4stndwhold 2.
@1409 pe4upchbyslf 2.
@1411 pe4wlkdsself 2.
@1413 fl4lefthand 2.
@1415 fl4righthand 2.
@1417 fl4eiherhand 2.
@1419 fl4lftgrptst 2.
@1421 fl4rhtgrptst 2.
@1423 fl4charstnds 2.
@1425 fl4balstands 2.
@1427 fl4wlkingrse 2.
@1429 ba4dblssadm 2.
@1431 ba4dblstadm 2.
@1433 ba4dblftadm 2.
@1435 ba4dblopadm 2.
@1437 ba4dblcladm 2.
@1439 wa4dwlkadm 2.
@1441 ch4dschradm 2.
@1443 ch4drchradm 2.
@1445 gr4dgripadm 2.
@1447 wc4dwaistadm 2.
@1449 pk4dpeakadm 2.
@1451 ab4datemonth 2.
@1453 ab4dateyear 4.
@1457 in4strtabhrs 4.
@1461 in4strtabmin 4.
@1465 in4strtmampm 2.
@1467 ba4sxsresult 2.
@1469 ba4blstdsecs 2.
@1471 ba4blstdhndr 2.
@1473 ba4rsn1ssstd 2.
@1475 ba4rsn2ssstd 2.
@1477 ba4rsn3ssstd 2.
@1479 ba4rsn4ssstd 2.
@1481 ba4rsn9ssstd 2.
@1483 ba4stdmreslt 2.
@1485 ba4stdmsecs 2.
@1487 ba4stdmhndr 2.
@1489 ba4rsn1ststd 2.
@1491 ba4rsn2ststd 2.
@1493 ba4rsn3ststd 2.
@1495 ba4rsn4ststd 2.
@1497 ba4rsn9ststd 2.
@1499 ba4ftdmreslt 2.
@1501 ba4ftdmsecs 2.
@1503 ba4ftdmhndr 2.
@1505 ba4rsn1ftstd 2.
@1507 ba4rsn2ftstd 2.
@1509 ba4rsn3ftstd 2.
@1511 ba4rsn4ftstd 2.
@1513 ba4rsn9ftstd 2.
@1515 ba41leoreslt 2.
@1517 ba41leosfsec 2.
@1519 ba41leohndr 2.
@1521 ba4rsn11leo 2.
@1523 ba4rsn21leo 2.
@1525 ba4rsn31leo 2.
@1527 ba4rsn41leo 2.
@1529 ba4rsn91leo 2.
@1531 ba41lecreslt 2.
@1533 ba41lecsfsec 2.
@1535 ba41lechndr 2.
@1537 ba4rsn11lec 2.
@1539 ba4rsn21lec 2.
@1541 ba4rsn31lec 2.
@1543 ba4rsn41lec 2.
@1545 ba4rsn91lec 2.
@1547 wa4wlkcorspc 2.
@1549 wa4wkaidused 2.
@1551 wa4wlkc1rslt 2.
@1553 wa4wlkc1secs 4.
@1557 wa4wlk1hndr 4.
@1561 wa4rsn11wkc 2.
@1563 wa4rsn21wkc 2.
@1565 wa4rsn31wkc 2.
@1567 wa4rsn41wkc 2.
@1569 wa4rsn51wkc 2.
@1571 wa4rsn91wkc 2.
@1573 wa4wkaidusc2 2.
@1575 wa4wlkc2rslt 2.
@1577 wa4wlkc2secs 4.
@1581 wa4wlk2hndr 4.
@1585 wa4rsn12wkc 2.
@1587 wa4rsn22wkc 2.
@1589 wa4rsn32wkc 2.
@1591 wa4rsn42wkc 2.
@1593 wa4rsn92wkc 2.
@1595 ch4chravail 2.
@1597 ch4chstcompl 2.
@1599 ch4chairheit 3.
@1602 ch4whlchrusd 2.
@1604 ch4sgchstres 2.
@1606 ch4armuse 2.
@1608 ch4rsn11chs 2.
@1610 ch4rsn21chs 2.
@1612 ch4rsn31chs 2.
@1614 ch4rsn41chs 2.
@1616 ch4rsn51chs 2.
@1618 ch4rsn91chs 2.
@1620 ch42chstrslt 2.
@1622 ch4chstndsec 2.
@1624 ch4chstdhndr 3.
@1627 ch4chstddone 2.
@1629 ch4chstntdn1 2.
@1631 ch4chstntdn2 2.
@1633 ch4chstntdn3 2.
@1635 ch4chstntdn4 2.
@1637 ch4chstntdn5 2.
@1639 ch4chstntdn9 2.
@1641 ch4chstntat1 2.
@1643 ch4chstntat2 2.
@1645 ch4chstntat3 2.
@1647 ch4chstntat4 2.
@1649 ch4chstntat9 2.
@1651 gr4handtstd1 2.
@1653 gr4adjgr1ps3 2.
@1655 gr4grp1reslt 2.
@1657 gr4grp1rdng 6.3
@1663 gr4grp1noat1 2.
@1665 gr4grp1noat2 2.
@1667 gr4grp1noat3 2.
@1669 gr4grp1noat4 2.
@1671 gr4grp1noat9 2.
@1673 gr4handtstd2 2.
@1675 gr4adjgr2ps3 2.
@1677 gr4grp2reslt 2.
@1679 gr4grp2rdng 6.3
@1685 gr4grp2noat1 2.
@1687 gr4grp2noat2 2.
@1689 gr4grp2noat3 2.
@1691 gr4grp2noat4 2.
@1693 gr4grp2noat9 2.
@1695 wc4measdiff1 2.
@1697 wc4measdiff2 2.
@1699 wc4measdiff3 2.
@1701 wc4measdiff4 2.
@1703 wc4measdiff5 2.
@1705 wc4measdiff6 2.
@1707 wc4measdiff9 2.
@1709 wc4waistrslt 4.
@1713 wc4wstmsrinc 4.
@1717 wc4wstmsrqrt 4.
@1721 wc4wstbulkcl 2.
@1723 wc4whomeasur 2.
@1725 wc4wstpostn 2.
@1727 wc4wstnotat1 2.
@1729 wc4wstnotat2 2.
@1731 wc4wstnotat3 2.
@1733 wc4wstnotat4 2.
@1735 wc4wstnotat5 2.
@1737 wc4wstnotat9 2.
@1739 pk4pkarf1pos 2.
@1741 pk4pkarfl1ef 2.
@1743 pk4pkarfl1rs 2.
@1745 pk4pkarfl1rd 3.
@1748 pk4pk1noatt1 2.
@1750 pk4pk1noatt2 2.
@1752 pk4pk1noatt3 2.
@1754 pk4pk1noatt4 2.
@1756 pk4pk1noatt9 2.
@1758 pk4paf2posit 2.
@1760 pk4pkarfl2ef 2.
@1762 pk4pkarfl2rs 2.
@1764 pk4pkarfl2rd 3.
@1767 pk4pk2noatt1 2.
@1769 pk4pk2noatt2 2.
@1771 pk4pk2noatt3 2.
@1773 pk4pk2noatt4 2.
@1775 pk4pk2noatt9 2.
@1777 cl4endtimhrs 2.
@1779 cl4endtimmin 4.
@1783 cl4endtmampm 2.
@1785 r4dnhatssppb 4.
@1789 r4dnhatsbasc 4.
@1793 r4dnhatswksc 4.
@1797 r4dnhatschsc 4.
@1801 r4dnhatsgrav 8.
@1809 r4dnhatsgrb 8.
@1817 r4dnhatspkav 8.
@1825 r4dnhatspkb 8.
@1833 r4dsppbmiss 2.
@1835 r4dorigsppb 2.
@1837 r4dorigbasc 2.
@1839 r4dorigwksc 2.
@1841 r4dorigchsc 2.
@1843 hw4currweigh 3.
@1846 hw4lst10pnds 2.
@1848 hw4trytolose 2.
@1850 hw4howtallft 2.
@1852 hw4howtallin 3.
@1855 el4mothalive 2.
@1857 el4fathalive 2.
@1859 wb4offelche1 2.
@1861 wb4offelche2 2.
@1863 wb4offelche3 2.
@1865 wb4offelche4 2.
@1867 wb4truestme1 2.
@1869 wb4truestme2 2.
@1871 wb4truestme3 2.
@1873 wb4truestme4 2.
@1875 wb4ageyofeel 3.
@1878 wb4agrwstmt1 2.
@1880 wb4agrwstmt2 2.
@1882 wb4agrwstmt3 2.
@1884 ip4covmedcad 2.
@1886 ip4otdrugcov 2.
@1888 ip4mgapmedsp 2.
@1890 ip4cmedicaid 2.
@1892 ip4covtricar 2.
@1894 ip4nginslast 2.
@1896 ip4nginsnurs 2.
@1898 ip4typcarco1 2.
@1900 ip4typcarco2 2.
@1902 ip4typcarco3 2.
@1904 ip4paypremms 8.
@1912 lf4workfpay 2.
@1914 lf4abstlstwk 2.
@1916 lf4wrkplstmn 2.
@1918 lf4mrthnonjb 2.
@1920 lf4hrswkwork 4.
@1924 lf4hrwrkltwk 4.
@1928 lf4hrwrklstw 4.
@1932 lf4oftpaid 2.
@1934 lf4huswifwrk 8.
@1942 lf4doccup 4.
@1946 hp4ownrentot 2.
@1948 hp4mrtpadoff 2.
@1950 hp4mthlymort 8.
@1958 hp4mortpaymt 8.
@1966 hp4whnpayoff 4.
@1970 hp4amtstlowe 8.
@1978 hp4amoutowed 8.
@1986 hp4homevalue 8.
@1994 hp4homvalamt 8.
@2002 hp4payrent 2.
@2004 hp4rentamt 8.
@2012 hp4rentamout 8.
@2020 hp4sec8pubsn 8.
@2028 ew4pycredbal 2.
@2030 ew4crecardeb 2.
@2032 ew4credcdmed 2.
@2034 ew4amtcrdmed 2.
@2036 ew4medpaovtm 2.
@2038 ew4ampadovrt 2.
@2040 ew4finhlpfam 2.
@2042 ew4whohelfi1 2.
@2044 ew4whohelfi2 2.
@2046 ew4atchhelyr 2.
@2048 ew4fingftfam 2.
@2050 ew4whregoth1 2.
@2052 ew4whregoth2 2.
@2054 ew4whregoth3 2.
@2056 ew4amthlpgiv 2.
@2058 ew4progneed1 2.
@2060 ew4progneed2 2.
@2062 ew4progneed3 2.
@2064 ew4mealskip1 2.
@2066 ew4mealskip2 2.
@2068 ew4nopayhous 2.
@2070 ew4nopayutil 2.
@2072 ew4nopaymed 2.
@2074 pn4painlim1 2.
@2076 pn4painlim2 2.
@2078 pn4painlim3 2.
@2080 pn4painlim4 2.
@2082 pn4painlim5 2.
@2084 pn4painlim6 2.
@2086 pn4painall 2.
@2088 pn4painscale 2.
@2090 pn4painmonth 2.
@2092 pn4painyear 2.
@2094 pt4outgoing 2.
@2096 pt4organized 2.
@2098 pt4warm 2.
@2100 pt4worrying 2.
@2102 pt4creative 2.
@2104 pt4talkative 2.
@2106 pt4caring 2.
@2108 pt4nervous 2.
@2110 pt4imagine 2.
@2112 pt4thorough 2.
@2114 pt4invention 4.
@2118 sl4bedtime1 2.
@2120 sl4bedtime2 2.
@2122 sl4bedtime3 2.
@2124 sl4asleep1 2.
@2126 sl4asleep2 2.
@2128 sl4morning1 2.
@2130 sl4morning2 2.
@2132 sl4morning3 2.
@2134 sl4sleephour 2.
@2136 sl4sleepbre 2.
@2138 sl4sleeppain 2.
@2140 sl4sleepqual 2.
@2142 sl4awakedif 2.
@2144 sl4napsoft 2.
@2146 sl4naps1 2.
@2148 sl4naps2 2.
@2150 sl4napplan 2.
@2152 ir4intlang 2.
@2154 ir4spattitud 2.
@2156 ir4undrstand 2.
@2158 ir4sppresent 2.
@2160 ir4spnotprs1 2.
@2162 ir4spnotprs2 2.
@2164 ir4spnotprs3 2.
@2166 ir4spnotprs4 2.
@2168 ir4spnotprs5 2.
@2170 ir4spnotprs6 2.
@2172 ir4intvwhlp 2.
@2174 ir4prsnhlp1 2.
@2176 ir4prsnhlp2 2.
@2178 ir4prsnhlp3 2.
@2180 ir4prsnhlp4 2.
@2182 ir4prsnhlp5 2.
@2184 ir4prsnhlp6 2.
@2186 ir4prsnhlp91 2.
@2188 ir4demolang1 2.
@2190 ir4sessions 2.
@2192 ir4sessrsn1 2.
@2194 ir4sessrsn2 2.
@2196 ir4sessrsn3 2.
@2198 ir4sessrsn91 2.
@2200 ir4conhomapt 2.
@2202 ir4insidhome 2.
@2204 ir4condihom1 2.
@2206 ir4condihom2 2.
@2208 ir4condihom3 2.
@2210 ir4condihom4 2.
@2212 ir4condihom5 2.
@2214 ir4clutterr1 2.
@2216 ir4clutterr2 2.
@2218 ir4areacond1 2.
@2220 ir4areacond2 2.
@2222 ir4areacond3 2.
@2224 ir4condhome1 2.
@2226 ir4condhome2 2.
@2228 ir4condhome3 2.
@2230 ir4condhome4 2.
@2232 ir4condhome5 2.
@2234 ir4condhome6 2.
@2236 fq4dfacdescr 2.
@2238 fq4dosfacd 2.
@2240 fq4prtlivnam 2.
@2242 fq4dfacarea 2.
@2244 fq4dosfaca 2.
@2246 fq4assdnrsng 2.
@2248 fq4othrlevls 2.
@2250 fq4whotlevl1 2.
@2252 fq4whotlevl2 2.
@2254 fq4whotlevl3 2.
@2256 fq4whotlevl4 2.
@2258 fq4whotlevl5 2.
@2260 fq4servaval1 2.
@2262 fq4servaval2 2.
@2264 fq4servaval3 2.
@2266 fq4servaval4 2.
@2268 fq4servaval5 2.
@2270 fq4servaval6 2.
@2272 fq4servaval7 2.
@2274 fq4servaval8 2.
@2276 fq4servaval9 2.
@2278 fq4paysourc1 6.
@2284 fq4paysourc2 6.
@2290 fq4paysourc3 6.
@2296 fq4paysourc4 6.
@2302 fq4paysourc5 6.
@2308 fq4paysourc6 6.
@2314 fq4totalpaym 8.
@2322 fq4mnthlyamt 5.
@2327 fq4primpayer 2.
@2329 fq4govsource 2.
@2331 fq4dlocsp 2.
@2333 w4anfinwgt0 18.11
@2351 w4anfinwgt1 18.11
@2369 w4anfinwgt2 18.11
@2387 w4anfinwgt3 18.11
@2405 w4anfinwgt4 18.11
@2423 w4anfinwgt5 18.11
@2441 w4anfinwgt6 18.11
@2459 w4anfinwgt7 18.11
@2477 w4anfinwgt8 18.11
@2495 w4anfinwgt9 18.11
@2513 w4anfinwgt10 18.11
@2531 w4anfinwgt11 18.11
@2549 w4anfinwgt12 18.11
@2567 w4anfinwgt13 18.11
@2585 w4anfinwgt14 18.11
@2603 w4anfinwgt15 18.11
@2621 w4anfinwgt16 18.11
@2639 w4anfinwgt17 18.11
@2657 w4anfinwgt18 18.11
@2675 w4anfinwgt19 18.11
@2693 w4anfinwgt20 18.11
@2711 w4anfinwgt21 18.11
@2729 w4anfinwgt22 18.11
@2747 w4anfinwgt23 18.11
@2765 w4anfinwgt24 18.11
@2783 w4anfinwgt25 18.11
@2801 w4anfinwgt26 18.11
@2819 w4anfinwgt27 18.11
@2837 w4anfinwgt28 18.11
@2855 w4anfinwgt29 18.11
@2873 w4anfinwgt30 18.11
@2891 w4anfinwgt31 18.11
@2909 w4anfinwgt32 18.11
@2927 w4anfinwgt33 18.11
@2945 w4anfinwgt34 18.11
@2963 w4anfinwgt35 18.11
@2981 w4anfinwgt36 18.11
@2999 w4anfinwgt37 18.11
@3017 w4anfinwgt38 18.11
@3035 w4anfinwgt39 18.11
@3053 w4anfinwgt40 18.11
@3071 w4anfinwgt41 18.11
@3089 w4anfinwgt42 18.11
@3107 w4anfinwgt43 18.11
@3125 w4anfinwgt44 18.11
@3143 w4anfinwgt45 18.11
@3161 w4anfinwgt46 18.11
@3179 w4anfinwgt47 18.11
@3197 w4anfinwgt48 18.11
@3215 w4anfinwgt49 18.11
@3233 w4anfinwgt50 18.11
@3251 w4anfinwgt51 18.11
@3269 w4anfinwgt52 18.11
@3287 w4anfinwgt53 18.11
@3305 w4anfinwgt54 18.11
@3323 w4anfinwgt55 18.11
@3341 w4anfinwgt56 18.11
@3359 w4varstrat 2.
@3361 w4varunit 2.;

/* Section #3 - format assignment statement   */
format 

hh4dspouseid $RFDK_3C.
is4dproxyid $RFDK_3C.
r4breakoffqt $RFDK_C.
cl4endtmampm A0001AB.
in4strtmampm A0001AB.
wa4wlkcorspc A0002WA.
ch4chstcompl A0004CH.
wa4wkaidusc2 A0004WA.
wa4wkaidused A0004WA.
ch4armuse A0008CH.
ch4chstddone A0014CH.
ba4dblcladm BA1CL.
ba4dblopadm BA1OP.
ba4dblssadm BA1SS.
ba4dblstadm BA1STAN.
ba4dblftadm BA1TAN.
RE4dcensdiv CENDIV.
ch4drchradm CH1RSH.
ch4dschradm CH1SCH.
r4dresidlml D_LMLLOC.
fq4dlocsp D_LOCSP.
R4d2deathage D2INTVRA.
r4d2intvrage D2INTVRA.
cp4dad8dem DAD8DEM.
ha4dbankreas DBANKREA.
ha4dbanksfdf DBANKSFD.
sc4dbathdevi DBATHDEV.
sc4dbathhelp DBATHHEL.
sc4dbathsfdf DBATHSFD.
mo4dbeddevi DBEDDEVI.
mo4dbedhelp DBEDHELP.
mo4dbedsfdf DBEDSFDF.
cg4dclkimgcl DCLCKCL.
cg4dclkdraw DCLCKSC.
sc4ddresdevi DDRESDEV.
sc4ddreshelp DDRESHEL.
sc4ddressfdf DDRESSFD.
sc4deatdevi DEATDEVI.
sc4deathelp DEATHELP.
sc4deatsfdf DEATSFDF.
mo4dinsddevi DINSDDEV.
mo4dinsdhelp DINSDHLP.
mo4dinsdsfdf DINSDSFD.
ha4dlaunreas DLAUNREA.
ha4dlaunsfdf DLAUNSFD.
R4dlmlint DLMLINT.
hh4dmarstat DMARSTAT.
ha4dmealreas DMEALREA.
ha4dmealsfdf DMEALSFD.
mc4dmedsreas DMEDSREA.
mc4dmedssfdf DMEDSSFD.
mo4doutdevi DOUTDEVI.
mo4douthelp DOUTHELP.
mo4doutsfdf DOUTSFDF.
ha4dshopreas DSHOPREA.
ha4dshopsfdf DSHOPSFD.
hh4dspageall DSPSAGEC.
hh4dspouage DSPSAGEC.
sc4dtoildevi DTOILDEV.
sc4dtoilhelp DTOILHEL.
sc4dtoilsfdf DTOILSFD.
cg4dwrddnone DWRDINON.
cg4dwrdinone DWRDINON.
cg4dwrddrref DWRDIRRE.
cg4dwrdirref DWRDIRRE.
pk4pkarfl1ef EFFORT.
pk4pkarfl2ef EFFORT.
r4dresid f4dresid.
fq4dfacdescr F200006W.
fq4govsource F200007W.
fq4othrlevls F200007W.
fq4prtlivnam F200007W.
fq4totalpaym F200007W.
fq4dfacarea F200008W.
fq4dosfacd dosfacd.
fq4dosfaca dosfaca.
fq4assdnrsng F200009W.
fq4servaval1 F200011W.
fq4servaval2 F200011W.
fq4servaval3 F200011W.
fq4servaval4 F200011W.
fq4servaval5 F200011W.
fq4servaval6 F200011W.
fq4servaval7 F200011W.
fq4servaval8 F200011W.
fq4servaval9 F200011W.
fq4primpayer F200012W.
gr4dgripadm GR1GRIP.
ir4condihom1 I200002W.
ir4condihom2 I200002W.
ir4condihom3 I200002W.
ir4condihom4 I200002W.
ir4condihom5 I200002W.
ir4insidhome I200002W.
ir4sessions I200002W.
ir4intlang I200003W.
ir4spattitud I200005W.
ir4undrstand I200006W.
ir4sppresent I200008W.
ir4intvwhlp I200010W.
ir4demolang1 I200013W.
ir4conhomapt I200016W.
ir4clutterr1 I200017W.
ir4clutterr2 I200017W.
ir4areacond1 I200018W.
ir4areacond2 I200018W.
ir4areacond3 I200018W.
ir4condhome1 I200019W.
ir4condhome2 I200019W.
ir4condhome3 I200019W.
ir4condhome4 I200019W.
ir4condhome5 I200019W.
ir4condhome6 I200019W.
hh4dlvngarrg LVGARRG.
sd4numcigday NUMCIGS.
lf4doccup OCC_CODE.
pa1dv2favact PA25FMT.
ba41lecreslt PE_RSLT.
ba41leoreslt PE_RSLT.
ba4ftdmreslt PE_RSLT.
ba4stdmreslt PE_RSLT.
ba4sxsresult PE_RSLT.
ch42chstrslt PE_RSLT.
ch4sgchstres PE_RSLT.
gr4grp1reslt PE_RSLT.
gr4grp2reslt PE_RSLT.
pk4pkarfl1rs PE_RSLT.
pk4pkarfl2rs PE_RSLT.
wa4wlkc1rslt PE_RSLT.
wa4wlkc2rslt PE_RSLT.
wc4waistrslt PE_RSLT.
wc4whomeasur PERSON.
pk4dpeakadm PK1PEAK.
R4DNHATSBASC QUARTILE.
R4DNHATSCHSC QUARTILE.
R4DNHATSGRAV QUARTILE.
R4DNHATSGRB QUARTILE.
R4DNHATSPKAV QUARTILE.
R4DNHATSPKB QUARTILE.
R4DNHATSWKSC QUARTILE.
r1dresid R1DRESID.
r4breakoffst RFDK_B.
ab4dateyear RFDK_F.
ba41lechndr RFDK_F.
ba41lecsfsec RFDK_F.
ba41leohndr RFDK_F.
ba41leosfsec RFDK_F.
ba4blstdhndr RFDK_F.
ba4blstdsecs RFDK_F.
ba4ftdmhndr RFDK_F.
ba4ftdmsecs RFDK_F.
ba4stdmhndr RFDK_F.
ba4stdmsecs RFDK_F.
cg4numnotlst RFDK_F.
cg4numwrdnot RFDK_F.
ch4chairheit RFDK_F.
ch4chstdhndr RFDK_F.
ch4chstndsec RFDK_F.
cl4endtimhrs RFDK_F.
cl4endtimmin RFDK_F.
cs4brthrsnum RFDK_F.
cs4sistrsnum RFDK_F.
dm4devendmo SP3019aW.
dm4devendyr RFDK_F.
dm4devstmo SP3019aW.
dm4devstyr RFDK_F.
dm4nodevmos RFDK_F.
dm4nohelpmos RFDK_F.
ds4nohelpmos RFDK_F.
fq4mnthlyamt RFDK_F.
fq4paysourc1 RFDK_F.
fq4paysourc2 RFDK_F.
fq4paysourc3 RFDK_F.
fq4paysourc4 RFDK_F.
fq4paysourc5 RFDK_F.
fq4paysourc6 RFDK_F.
gr4grp1rdng RFDK_F.
gr4grp2rdng RFDK_F.
hc4hosovrnht RFDK_F.
hp4amtstlowe RFDK_F.
hp4homevalue RFDK_F.
hp4mthlymort RFDK_F.
hp4rentamt RFDK_F.
hw4currweigh RFDK_F.
hw4howtallft RFDK_F.
hw4howtallin RFDK_F.
in4strtabhrs RFDK_F.
in4strtabmin RFDK_F.
lf4hrswkwork RFDK_F.
lf4hrwrklstw RFDK_F.
lf4hrwrkltwk RFDK_F.
sn4dnumsn RFDK_F. 
cs4dnmstpchd  RFDK_F.  
cs4dnumchild  RFDK_F.  
cs4dnumdaugh  RFDK_F.  
cs4dnumson  RFDK_F.  
hh4dhshldchd  RFDK_F.  
hh4dhshldnum RFDK_F.  
pd4staydays RFDK_F.
pd4staymths RFDK_F.
pd4staywks RFDK_F.
pd4stayyrs RFDK_F.
pk4pkarfl1rd RFDK_F.
pk4pkarfl2rd RFDK_F.
R4dorigbasc RFDK_F.
R4dorigchsc RFDK_F.
R4DORIGSPPB RFDK_F.
R4dorigwksc RFDK_F.
wa4wlk1hndr RFDK_F.
wa4wlk2hndr RFDK_F.
wa4wlkc1secs RFDK_F.
wa4wlkc2secs RFDK_F.
wb4ageyofeel RFDK_F.
wc4wstmsrinc RFDK_F.
wc4wstmsrqrt RFDK_F.
fl1dneverdrv RFDK_Y.
ha4dmealtkot RFDK_YN.
ha4dmealwhl RFDK_YN.
wc4wstbulkcl RFDK_Y.
ba4rsn11lec RFDK_YN.
ba4rsn11leo RFDK_YN.
ba4rsn1ftstd RFDK_YN.
ba4rsn1ssstd RFDK_YN.
ba4rsn1ststd RFDK_YN.
ba4rsn21lec RFDK_YN.
ba4rsn21leo RFDK_YN.
ba4rsn2ftstd RFDK_YN.
ba4rsn2ssstd RFDK_YN.
ba4rsn2ststd RFDK_YN.
ba4rsn31lec RFDK_YN.
ba4rsn31leo RFDK_YN.
ba4rsn3ftstd RFDK_YN.
ba4rsn3ssstd RFDK_YN.
ba4rsn3ststd RFDK_YN.
ba4rsn41lec RFDK_YN.
ba4rsn41leo RFDK_YN.
ba4rsn4ftstd RFDK_YN.
ba4rsn4ssstd RFDK_YN.
ba4rsn4ststd RFDK_YN.
ba4rsn91lec RFDK_YN.
ba4rsn91leo RFDK_YN.
ba4rsn9ftstd RFDK_YN.
ba4rsn9ssstd RFDK_YN.
ba4rsn9ststd RFDK_YN.
cg4dwrd10dly RFDK_YN.
cg4dwrd10rcl RFDK_YN.
cg4dwrd1dly RFDK_YN.
cg4dwrd1rcl RFDK_YN.
cg4dwrd2dly RFDK_YN.
cg4dwrd2rcl RFDK_YN.
cg4dwrd3dly RFDK_YN.
cg4dwrd3rcl RFDK_YN.
cg4dwrd4dly RFDK_YN.
cg4dwrd4rcl RFDK_YN.
cg4dwrd5dly RFDK_YN.
cg4dwrd5rcl RFDK_YN.
cg4dwrd6dly RFDK_YN.
cg4dwrd6rcl RFDK_YN.
cg4dwrd7dly RFDK_YN.
cg4dwrd7rcl RFDK_YN.
cg4dwrd8dly RFDK_YN.
cg4dwrd8rcl RFDK_YN.
cg4dwrd9dly RFDK_YN.
cg4dwrd9rcl RFDK_YN.
cg4presidna1 RFDK_YN.
cg4presidna2 RFDK_YN.
cg4presidna3 RFDK_YN.
cg4presidna4 RFDK_YN.
cg4probreca1 RFDK_YN.
cg4probreca2 RFDK_YN.
cg4probreca3 RFDK_YN.
cg4probreca4 RFDK_YN.
cg4reascano1 RFDK_YN.
cg4reascano2 RFDK_YN.
cg4reascano3 RFDK_YN.
cg4reascano4 RFDK_YN.
cg4reascano5 RFDK_YN.
cg4reascano6 RFDK_YN.
cg4vpname1 RFDK_YN.
cg4vpname2 RFDK_YN.
cg4vpname3 RFDK_YN.
cg4vpname4 RFDK_YN.
ch4chravail RFDK_YN.
ch4chstntat1 RFDK_YN.
ch4chstntat2 RFDK_YN.
ch4chstntat3 RFDK_YN.
ch4chstntat4 RFDK_YN.
ch4chstntat9 RFDK_YN.
ch4chstntdn1 RFDK_YN.
ch4chstntdn2 RFDK_YN.
ch4chstntdn3 RFDK_YN.
ch4chstntdn4 RFDK_YN.
ch4chstntdn5 RFDK_YN.
ch4chstntdn9 RFDK_YN.
ch4rsn11chs RFDK_YN.
ch4rsn21chs RFDK_YN.
ch4rsn31chs RFDK_YN.
ch4rsn41chs RFDK_YN.
ch4rsn51chs RFDK_YN.
ch4rsn91chs RFDK_YN.
ch4whlchrusd RFDK_YN.
ew4whohelfi1 RFDK_YN.
ew4whohelfi2 RFDK_YN.
ew4whregoth1 RFDK_YN.
ew4whregoth2 RFDK_YN.
ew4whregoth3 RFDK_YN.
fq4whotlevl1 RFDK_YN.
fq4whotlevl2 RFDK_YN.
fq4whotlevl3 RFDK_YN.
fq4whotlevl4 RFDK_YN.
fq4whotlevl5 RFDK_YN.
gr4adjgr1ps3 RFDK_YN.
gr4adjgr2ps3 RFDK_YN.
gr4grp1noat1 RFDK_YN.
gr4grp1noat2 RFDK_YN.
gr4grp1noat3 RFDK_YN.
gr4grp1noat4 RFDK_YN.
gr4grp1noat9 RFDK_YN.
gr4grp2noat1 RFDK_YN.
gr4grp2noat2 RFDK_YN.
gr4grp2noat3 RFDK_YN.
gr4grp2noat4 RFDK_YN.
gr4grp2noat9 RFDK_YN.
ha4howgtstr1 RFDK_YN.
ha4howgtstr2 RFDK_YN.
ha4howgtstr3 RFDK_YN.
ha4howgtstr4 RFDK_YN.
ha4howgtstr5 RFDK_YN.
ha4howgtstr6 RFDK_YN.
ha4howgtstr7 RFDK_YN.
ha4howgtstr8 RFDK_YN.
ha4howpaygr1 RFDK_YN.
ha4howpaygr2 RFDK_YN.
ha4howpaygr3 RFDK_YN.
ha4howpaygr4 RFDK_YN.
ha4howpaygr5 RFDK_YN.
ha4howpaygr6 RFDK_YN.
ha4howpaygr7 RFDK_YN.
ha4whrmachi1 RFDK_YN.
ha4whrmachi2 RFDK_YN.
ha4whrmachi3 RFDK_YN.
ha4whrmachi4 RFDK_YN.
ha4whrmachi5 RFDK_YN.
ha4whrmachi6 RFDK_YN.
ho4dbathprvt RFDK_YN.
ho4dbldg1 RFDK_YN.
ho4dbldg2 RFDK_YN.
ho4dbldg3 RFDK_YN.
ho4dbldg4 RFDK_YN.
ho4dkitchnco RFDK_YN.
ho4dkitchnpr RFDK_YN.
ip4typcarco1 RFDK_YN.
ip4typcarco2 RFDK_YN.
ip4typcarco3 RFDK_YN.
ir4prsnhlp1 RFDK_YN.
ir4prsnhlp2 RFDK_YN.
ir4prsnhlp3 RFDK_YN.
ir4prsnhlp4 RFDK_YN.
ir4prsnhlp5 RFDK_YN.
ir4prsnhlp6 RFDK_YN.
ir4prsnhlp91 RFDK_YN.
ir4sessrsn1 RFDK_YN.
ir4sessrsn2 RFDK_YN.
ir4sessrsn3 RFDK_YN.
ir4sessrsn91 RFDK_YN.
ir4spnotprs1 RFDK_YN.
ir4spnotprs2 RFDK_YN.
ir4spnotprs3 RFDK_YN.
ir4spnotprs4 RFDK_YN.
ir4spnotprs5 RFDK_YN.
ir4spnotprs6 RFDK_YN.
is4reasnprx1 RFDK_YN.
is4reasnprx2 RFDK_YN.
is4reasnprx3 RFDK_YN.
is4reasnprx4 RFDK_YN.
is4reasnprx5 RFDK_YN.
is4reasnprx6 RFDK_YN.
is4reasnprx7 RFDK_YN.
is4reasnprx9 RFDK_YN.
mc4howpkupm1 RFDK_YN.
mc4howpkupm2 RFDK_YN.
mc4howpkupm3 RFDK_YN.
mc4hwgtregd1 RFDK_YN.
mc4hwgtregd2 RFDK_YN.
mc4hwgtregd3 RFDK_YN.
mc4hwgtregd4 RFDK_YN.
mc4hwgtregd5 RFDK_YN.
mc4hwgtregd6 RFDK_YN.
mc4hwgtregd7 RFDK_YN.
mc4hwgtregd8 RFDK_YN.
mc4hwgtregd9 RFDK_YN.
mc4whrgtmed1 RFDK_YN.
mc4whrgtmed2 RFDK_YN.
mc4whrgtmed3 RFDK_YN.
mc4whrgtmed4 RFDK_YN.
pk4pk1noatt1 RFDK_YN.
pk4pk1noatt2 RFDK_YN.
pk4pk1noatt3 RFDK_YN.
pk4pk1noatt4 RFDK_YN.
pk4pk1noatt9 RFDK_YN.
pk4pk2noatt1 RFDK_YN.
pk4pk2noatt2 RFDK_YN.
pk4pk2noatt3 RFDK_YN.
pk4pk2noatt4 RFDK_YN.
pk4pk2noatt9 RFDK_YN.
sc4showrbat1 RFDK_YN.
sc4showrbat2 RFDK_YN.
sc4showrbat3 RFDK_YN.
ss4painwhe1 RFDK_YN.
ss4painwhe10 RFDK_YN.
ss4painwhe11 RFDK_YN.
ss4painwhe12 RFDK_YN.
ss4painwhe13 RFDK_YN.
ss4painwhe2 RFDK_YN.
ss4painwhe3 RFDK_YN.
ss4painwhe4 RFDK_YN.
ss4painwhe5 RFDK_YN.
ss4painwhe6 RFDK_YN.
ss4painwhe7 RFDK_YN.
ss4painwhe8 RFDK_YN.
ss4painwhe9 RFDK_YN.
wa4rsn11wkc RFDK_YN.
wa4rsn12wkc RFDK_YN.
wa4rsn21wkc RFDK_YN.
wa4rsn22wkc RFDK_YN.
wa4rsn31wkc RFDK_YN.
wa4rsn32wkc RFDK_YN.
wa4rsn41wkc RFDK_YN.
wa4rsn42wkc RFDK_YN.
wa4rsn51wkc RFDK_YN.
wa4rsn91wkc RFDK_YN.
wa4rsn92wkc RFDK_YN.
wc4measdiff1 RFDK_YN.
wc4measdiff2 RFDK_YN.
wc4measdiff3 RFDK_YN.
wc4measdiff4 RFDK_YN.
wc4measdiff5 RFDK_YN.
wc4measdiff6 RFDK_YN.
wc4measdiff9 RFDK_YN.
wc4wstnotat1 RFDK_YN.
wc4wstnotat2 RFDK_YN.
wc4wstnotat3 RFDK_YN.
wc4wstnotat4 RFDK_YN.
wc4wstnotat5 RFDK_YN.
wc4wstnotat9 RFDK_YN.
gr4handtstd1 RGT_LFT.
gr4handtstd2 RGT_LFT.
R4DNHATSSPPB SPPB.
R4DSPPBMISS SPPB_MIS.
pk4paf2posit STAND.
pk4pkarf1pos STAND.
wc4wstpostn STAND.
hh4spgender W200002W.
is4prxygendr W200002W.
hh4spouseduc W200005W.
hh4martlstat W200010W.
cg4quesremem W200011W.
cg4speaktosp W200011W.
cg4wrdnotlst W200011W.
cg4wrdsntlst W200011W.
cp4knownspyr W200011W.
cp4memcogpr1 W200011W.
cp4memcogpr2 W200011W.
cp4memcogpr3 W200011W.
cp4memcogpr4 W200011W.
dm4helpmobil W200011W.
dm4lstyrcane W200011W.
ds4gethlpeat W200011W.
dt4getoplcs1 W200011W.
dt4getoplcs2 W200011W.
dt4getoplcs3 W200011W.
dt4getoplcs4 W200011W.
dt4getoplcs5 W200011W.
dt4getoplcs6 W200011W.
dt4getoplcs7 W200011W.
dt4otfrfamtk W200011W.
el4fathalive W200011W.
el4mothalive W200011W.
em4addlstyr1 W200011W.
em4addlstyr2 W200011W.
em4addlstyr3 W200011W.
em4addlstyr4 W200011W.
em4addlstyr5 W200011W.
em4addlstyr6 W200011W.
em4addlstyr7 W200011W.
em4paydevce1 W200011W.
em4paydevce2 W200011W.
em4paydevce3 W200011W.
em4paydevce4 W200011W.
em4paydevce5 W200011W.
em4paydevce6 W200011W.
em4paydevce7 W200011W.
em4paydevce8 W200011W.
em4paydevce9 W200011W.
em4payyufam1 W200011W.
em4payyufam2 W200011W.
em4payyufam3 W200011W.
em4payyufam4 W200011W.
em4payyufam5 W200011W.
em4payyufam6 W200011W.
em4payyufam7 W200011W.
ew4credcdmed W200011W.
ew4fingftfam W200011W.
ew4finhlpfam W200011W.
ew4mealskip1 W200011W.
ew4medpaovtm W200011W.
ew4nopayhous W200011W.
ew4nopaymed W200011W.
ew4nopayutil W200011W.
ew4progneed1 W200011W.
ew4progneed2 W200011W.
ew4progneed3 W200011W.
fl4balstands W200011W.
fl4bathgrbbr W200011W.
fl4bathseat W200011W.
fl4blind W200011W.
fl4cane W200011W.
fl4charstnds W200011W.
fl4deaf W200011W.
fl4didntleav W200011W.
fl4drives W200011W.
fl4drvlstyr W200011W.
fl4eiherhand W200011W.
fl4facility W200011W.
fl4lefthand W200011W.
fl4lftgrptst W200011W.
fl4noonetalk W200011W.
fl4notalert W200011W.
fl4notmobile W200011W.
fl4ntlvrmslp W200011W.
fl4raisedtlt W200011W.
fl4resnew W200011W.
fl4retirecom W200011W.
fl4rhtgrptst W200011W.
fl4righthand W200011W.
fl4scooter W200011W.
fl4scooterhm W200011W.
fl4showering W200011W.
fl4spdied W200011W.
fl4takingbth W200011W.
fl4tltgrbbr W200011W.
fl4walker W200011W.
fl4washingup W200011W.
fl4wheelchr W200011W.
fl4whlchrhom W200011W.
fl4wlkingrse W200011W.
ha4bankslf W200011W.
ha4bankwout W200011W.
ha4launslf W200011W.
ha4launwout W200011W.
ha4mealslf W200011W.
ha4mealwout W200011W.
ha4money W200011W.
ha4moneyhlp W200011W.
ha4shopcart W200011W.
ha4shoplean W200011W.
ha4shopslf W200011W.
ha4shopwout W200011W.
hc4backsrgyr W200011W.
hc4cancerty1 W200011W.
hc4brokebon1 W200011W.
hc4brokebon2 W200011W.
hc4catrsrgyr W200011W.
hc4disescn1 W200011W.
hc4disescn10 W200011W.
hc4disescn2 W200011W.
hc4disescn3 W200011W.
hc4disescn4 W200011W.
hc4disescn5 W200011W.
hc4disescn6 W200011W.
hc4disescn7 W200011W.
hc4disescn8 W200011W.
hc4disescn9 W200011W.
hc4faleninyr W200011W.
hc4fllsinmth W200011W.
hc4hartsrgyr W200011W.
hc4hipsrgyr W200011W.
hc4hosptstay W200011W.
hc4knesrgyr W200011W.
hc4multifall W200011W.
hc4worryfall W200011W.
hc4worrylimt W200011W.
hh4livwthspo W200011W.
hh4marchange W200011W.
hh4spoupchlp W200011W.
ho4bathamen1 W200011W.
ho4bathamen2 W200011W.
ho4bathamen3 W200011W.
ho4bathamen4 W200011W.
ho4bathamen5 W200011W.
ho4bathamen6 W200011W.
ho4bathamen7 W200011W.
ho4bathprivt W200011W.
ho4bldgamen1 W200011W.
ho4bldgamen2 W200011W.
ho4bldgamen3 W200011W.
ho4bldgamen4 W200011W.
ho4entrnramp W200011W.
ho4entrstair W200011W.
ho4homeamen1 W200011W.
ho4homeamen2 W200011W.
ho4homeamen3 W200011W.
ho4kitchncom W200011W.
ho4kitchnprv W200011W.
ho4microwave W200011W.
hp4payrent W200011W.
hp4sec8pubsn W200011W.
ht4diffareun W200011W.
ht4helpmedbd W200011W.
ht4meals W200011W.
ht4retiresen W200011W.
hw4lst10pnds W200011W.
hw4trytolose W200011W.
ip4cmedicaid W200011W.
ip4covmedcad W200011W.
ip4covtricar W200011W.
ip4mgapmedsp W200011W.
ip4nginsnurs W200011W.
ip4otdrugcov W200011W.
is4proxlivsp W200011W.
lf4huswifwrk W200011W.
lf4mrthnonjb W200011W.
lf4wrkplstmn W200011W.
lm4bre W200011W.
lm4brehlp W200011W.
lm4docclear W200011W.
lm4pain W200011W.
lm4painhlp W200011W.
lm4relgamt W200011W.
lm4sad W200011W.
lm4sadhlp W200011W.
mc4anhlpwdec W200011W.
mc4ansitindr W200011W.
mc4chginspln W200011W.
mc4havregdoc W200011W.
mc4meds W200011W.
mc4medsmis W200011W.
mc4medsslf W200011W.
mc4regdoclyr W200011W.
mc4tpersevr1 W200011W.
mc4tpersevr2 W200011W.
mc4tpersevr3 W200011W.
mc4tpersevr4 W200011W.
md4cane W200011W.
md4canewlker W200011W.
md4scooter W200011W.
md4scterinsp W200011W.
md4walker W200011W.
md4wheelchar W200011W.
md4whelcrspc W200011W.
mo4bedhlp W200011W.
mo4bedwout W200011W.
mo4insdhlp W200011W.
mo4insdwout W200011W.
mo4outhlp W200011W.
mo4outwout W200011W.
pa4attrelser W200011W.
pa4clbmtgrac W200011W.
pa4evrgowalk W200011W.
pa4hlkepfvst W200011W.
pa4hlkpfrclb W200011W.
pa4hlkpfrvol W200011W.
pa4hlkpfrwrk W200011W.
pa4hlkpgoenj W200011W.
pa4htkfrrlsr W200011W.
pa4outfrenjy W200011W.
pa4prcranoth W200011W.
pa4trkpfrvis W200011W.
pa4trprgoout W200011W.
pa4trprkpfgr W200011W.
pa4trprrelsr W200011W.
pa4vigoractv W200011W.
pa4vistfrfam W200011W.
pa4voltrwork W200011W.
pa4workfrpay W200011W.
pc4bendover W200011W.
pc4car10pnds W200011W.
pc4car20pnds W200011W.
pc4geonknees W200011W.
pc4grspsmobj W200011W.
pc4hvobovrhd W200011W.
pc4opnjarwhd W200011W.
pc4rechovrhd W200011W.
pc4up10stair W200011W.
pc4up20stair W200011W.
pc4walk3blks W200011W.
pc4walk6blks W200011W.
pd4hospice1 W200011W.
pd4staymthpl W200011W.
pe4flruppain W200011W.
pe4stndwhold W200011W.
pe4surgarmsh W200011W.
pe4surghdwrt W200011W.
pe4surgyhips W200011W.
pe4upchbyslf W200011W.
pe4wlkdsself W200011W.
re4alonedec W200011W.
re4intplace W200011W.
re4placedec W200011W.
sc4bathhlp W200011W.
sc4bathwout W200011W.
sc4bdevdec W200011W.
sc4dresdev W200011W.
sc4dreshlp W200011W.
sc4dreswout W200011W.
sc4eathlp W200011W.
sc4eatwout W200011W.
sc4toilhlp W200011W.
sc4toilwout W200011W.
sc4usvartoi1 W200011W.
sc4usvartoi2 W200011W.
sc4usvartoi3 W200011W.
sc4usvartoi4 W200011W.
sd4smokesnow W200011W.
se4servcoff1 W200011W.
se4servcoff2 W200011W.
se4servcoff3 W200011W.
se4servcoff4 W200011W.
se4servcoff5 W200011W.
se4servcoff6 W200011W.
se4servcoff7 W200011W.
se4servcoff8 W200011W.
se4servcoff9 W200011W.
se4servused1 W200011W.
se4servused2 W200011W.
se4servused3 W200011W.
se4servused4 W200011W.
se4servused5 W200011W.
se4servused6 W200011W.
se4servused7 W200011W.
se4servused8 W200011W.
se4servused9 W200011W.
ss4convquiet W200011W.
ss4convwradi W200011W.
ss4glasscls W200011W.
ss4glrednewp W200011W.
ss4hearphone W200011W.
ss4loenlmtat W200011W.
ss4lowenergy W200011W.
ss4lwrbodimp W200011W.
ss4lwrbodstr W200011W.
ss4othvisaid W200011W.
ss4painbothr W200011W.
ss4painlimts W200011W.
ss4prbbalcnt W200011W.
ss4prbbalcrd W200011W.
ss4prbbrlimt W200011W.
ss4probbreat W200011W.
ss4probchswl W200011W.
ss4probspeak W200011W.
ss4seestvgls W200011W.
ss4seewellst W200011W.
ss4strnglmup W200011W.
ss4uplimtact W200011W.
te4cellphone W200011W.
te4compoth W200011W.
te4emailtext W200011W.
te4intrntmd1 W200011W.
te4intrntmd2 W200011W.
te4intrntmd3 W200011W.
te4online W200011W.
te4othrphone W200011W.
te4shoponli1 W200011W.
te4shoponli2 W200011W.
te4shoponli3 W200011W.
re4dresistrct W200018W.
re4newstrct W200018W.
fl4structure W200020W.
re4dbldg W200021W.
re4newblgfl W200021W.
fl4hotype W200022W.
is4resptype W200030W.
is4tempres W200032W.
is4prxyrelat W200035W.
is4famrrutin W200036W.
re4spadrsnew W200037W.
ab4datemonth W200038W.
re4mthmove W200038W.
hh4yrendmarr W200039W.
re4yearmove W200039W.
dm4helpendyr W200040W.
dm4helpstyr W200040W.
ds4helpendyr W200040W.
ds4helpstyr W200040W.
pd4placedied W200041W.
pd4homedied W200042W.
pd4hospdied W200043W.
pd4hospice2 W200044W.
pd4stayunit W200045W.
pd4placepre SP30046W.
pd4alert W200047W.
pd4outbed W200047W.
lm4brehlpam W200048W.
lm4painhlpam W200048W.
lm4sadhlpam W200048W.
lm4caredecis W200049W.
lm4carenowan W200049W.
lm4doctor W200049W.
lm4relg W200049W.
lm4informed W200050W.
lm4perscare W200050W.
lm4respect W200050W.
cg4ratememry W200051W.
cp4memrygood W200051W.
hc4health W200051W.
lm4ratecare SP30051W.
hc4depresan1 W200052W.
hc4depresan2 W200052W.
hc4depresan3 W200052W.
hc4depresan4 W200052W.
hc4aslep30mn W200053W.
hc4sleepmed W200053W.
hc4trbfalbck W200054W.
ht4placedesc W200055W.
ht4spacename W200057W.
hh4newspoprt W200058W.
hh4placekind W200060W.
ho4entrccomn W200067W.
ho4levelsflr W200068W.
em4modhere1 W200069W.
em4payaltgth W200070W.
em4morls1000 W200071W.
em4morls100 W200072W.
te4computer W200073W.
te4oftnemail W200074W.
ss4heringaid W200076W.
ss4glasseswr W200077W.
cg4ofmemprob W200078W.
dt4oftedrive W200078W.
mo4oflvslepr W200078W.
mo4oftgoarea W200078W.
sc4dresoft W200078W.
ss4painmedof W200078W.
wb4offelche1 W200078W.
wb4offelche2 W200078W.
wb4offelche3 W200078W.
wb4offelche4 W200078W.
cp4chgthink1 W200080W.
cp4chgthink2 W200080W.
cp4chgthink3 W200080W.
cp4chgthink4 W200080W.
cp4chgthink5 W200080W.
cp4chgthink6 W200080W.
cp4chgthink7 W200080W.
cp4chgthink8 W200080W.
cg4reascano7 RFDK_YN.
cg4reascano8 RFDK_YN.
cg4reascano9 RFDK_YN.
cg4memcom1yr W200082W.
cg4todaydat1 W200083W.
cg4todaydat2 W200083W.
cg4todaydat3 W200083W.
cg4todaydat4 W200083W.
cg4todaydat5 W200083W.
cg4todaydat6 W200083W.
cg4prewrdrcl W200084W.
cg4wrdsdca10 W200085W.
cg4wrdsdcal1 W200085W.
cg4wrdsdcal2 W200085W.
cg4wrdsdcal3 W200085W.
cg4wrdsdcal4 W200085W.
cg4wrdsdcal5 W200085W.
cg4wrdsdcal6 W200085W.
cg4wrdsdcal7 W200085W.
cg4wrdsdcal8 W200085W.
cg4wrdsdcal9 W200085W.
cg4wrdsrcal10 W200085W.
cg4wrdsrcal1 W200085W.
cg4wrdsrcal2 W200085W.
cg4wrdsrcal3 W200085W.
cg4wrdsrcal4 W200085W.
cg4wrdsrcal5 W200085W.
cg4wrdsrcal6 W200085W.
cg4wrdsrcal7 W200085W.
cg4wrdsrcal8 W200085W.
cg4wrdsrcal9 W200085W.
cg4probreca5 RFDK_YN.
cg4atdrwclck W200087W.
mo4outoft W200089W.
ha4oftmicrow W200090W.
ha4restamels W200090W.
mc4medsrem W200090W.
mo4beddev W200090W.
mo4insdcane W200090W.
mo4insdsctr W200090W.
mo4insdwalkr W200090W.
mo4insdwlchr W200090W.
mo4oftholdwl W200090W.
mo4outcane W200090W.
mo4outsctr W200090W.
mo4outwalkr W200090W.
mo4outwlchr W200090W.
sc4scusgrbrs W200090W.
sc4shtubseat W200090W.
mo4bedslf W200092W.
mo4insdslf W200092W.
mo4outslf W200092W.
sc4bathoft W200092W.
sc4dresslf W200092W.
sc4eatslfoft W200092W.
sc4toiloft W200092W.
ha4bankdif W200093W.
ha4laundif W200093W.
ha4mealdif W200093W.
ha4shopdif W200093W.
mc4medsdif W200093W.
mo4beddif W200093W.
mo4insddif W200093W.
mo4outdif W200093W.
sc4bathdif W200093W.
sc4dresdif W200093W.
sc4eatslfdif W200093W.
sc4toildif W200093W.
mo4insdyrgo W200094W.
mo4outyrgo W200094W.
dm4helpendmo W200095W.
dm4helpstmo W200095W.
ds4helpendmo W200095W.
ds4helpstmo W200095W.
dm4nodev W200096W.
dm4nohelp W200096W.
ds4nohelp W200096W.
ip4nginslast W200096W.
dt4driveyr W200097W.
dt4avoidriv1 W200098W.
dt4avoidriv2 W200098W.
dt4avoidriv3 W200098W.
dt4avoidriv4 W200098W.
ha4bank W200099W.
ha4laun W200099W.
ha4meal W200099W.
ha4shop W200099W.
mc4medstrk W200099W.
ha4bankoft W200102W.
ha4launoft W200102W.
ha4mealoft W200102W.
ha4shopoft W200102W.
mc4medsyrgo W200102W.
sc4bathyrgo W200102W.
sc4dresyrgo W200102W.
sc4eatdev W200106W.
sc4eatdevoft W200107W.
sc4prfrshbth W200109W.
pa4imparclub W200114W.
pa4impouteny W200114W.
pa4imprelser W200114W.
pa4impvstfam W200114W.
pa4dofavact W200115W.
pa4helmfvact W200115W.
pe4whhndsign W200116W.
pe4sideflrup W200117W.
pe4sidsurgar W200117W.
pe4surgyside W200117W.
pe4sidhipsrg W200118W.
cm4knowwell W200126W.
cm4peoptrstd W200126W.
cm4willnghlp W200126W.
wb4agrwstmt1 W200127W.
wb4agrwstmt2 W200127W.
wb4agrwstmt3 W200127W.
wb4truestme1 W200127W.
wb4truestme2 W200127W.
wb4truestme3 W200127W.
wb4truestme4 W200127W.
ip4paypremms W200129W.
lf4abstlstwk W200131W.
lf4workfpay W200131W.
lf4oftpaid W200132W.
hp4ownrentot W200133W.
hp4mrtpadoff W200134W.
hp4mortpaymt W200135W.
hp4rentamout W200135W.
hp4whnpayoff W200136W.
hp4amoutowed W200137W.
hp4homvalamt W200138W.
ew4pycredbal W200139W.
ew4crecardeb W200140W.
ew4amtcrdmed W200141W.
ew4ampadovrt W200142W.
ew4amthlpgiv W200142W.
ew4atchhelyr W200142W.
ew4mealskip2 W200146W.
se4payservi1 W200147W.
se4payservi2 W200147W.
se4payservi3 W200147W.
se4payservi4 W200147W.
se4payservi5 W200147W.
se4payservi6 W200147W.
se4payservi7 W200147W.
se4payservi8 W200147W.
se4payservi9 W200147W.
wa4dwlkadm WA1WLK.
wc4dwaistadm WC1WAIST.
cg4dwrddlyrc WORDRE_N.
cg4dwrdimmrc WORDRE_N.
cg4dwrdlstnm WORDREC.
r3dresid f3dresid.
r2dresid F_DRESID.
r1dgender w200002w.
rl1dracehisp RACEHISP.
pd4hospcelml W200011W.
te4tablet SP30076W.
te4socialnet W200011W.
ha4mealwheel W200090W.
pn4painlim1 SP30120W.
pn4painlim2 SP30120W.
pn4painlim3 SP30120W.
pn4painlim4 SP30120W.
pn4painlim5 SP30120W.
pn4painlim6 SP30120W.
pn4painall SP30120W.
pn4painscale RFDK_F.
pn4painmonth RFDK_YN.
pn4painyear SP30120W.
pt4outgoing SP30118W.
pt4organized SP30118W.
pt4warm SP30118W.
pt4worrying SP30118W.
pt4creative SP30118W.
pt4talkative SP30118W.
pt4caring SP30118W.
pt4nervous SP30118W.
pt4imagine SP30118W.
pt4thorough SP30118W.
sl4bedtime1 RFDK_F.
sl4bedtime2 RFDK_F.
sl4bedtime3 A0001AB.
sl4asleep1 SP30076K.
sl4asleep2 RFDK_F.
sl4morning1 SP30076G.
sl4morning2 RFDK_F.
sl4morning3 A0001AB.
sl4sleephour SP30076I.
sl4sleepbre W200053W.
sl4sleeppain W200053W.
sl4sleepqual W300151W.
sl4awakedif W200078W.
sl4napsoft W200078W.
sl4naps1 SP30076H.
sl4naps2 RFDK_F.
sl4napplan SP30155W.
sl4bedtime1 SP30076J.
dmds4dintvl DMDSINTV.
dm4dmohlp DMDS_DUR.
dm4dmodev DMDS_DUR.
dm4dmohlpgr DMH_GRP.
dm4dmodevgr DMU_GRP.
dm4flag DMDS4FLG.
ds4dschlp DMDS_DUR.
ds4dschlpgr DS_GRP.
ds4flag DMDS4FLG.
pt4invention invent.;

/* Section #4 - Label assignment statement   */
label spid="NHATS SAMPLED PERSON ID"
r4dlmlint="R4 D LAST MTH LIFE INTVW DONE"
r4dresid="R4 D RESIDENTIAL CARE STATUS"
r3dresid="R3 D RESIDENTIAL CARE STATUS"
r2dresid="R2 D RESIDENTIAL CARE STATUS"
r1dresid="R1 D RESIDENTIAL CARE STATUS"
r4dresidlml="R4 D LAST MTH LIFE RESIDNCE"
r4breakoffst="R4 CASE BREAKOFF STATUS"
r4breakoffqt="R4 CASE BREAKOFF QUESTION"
is4resptype="R4 IS2 TYPE OF RESPONDENT"
is4reasnprx1="R4 IS2A PROXY REAS SP DEMENTIA"
is4reasnprx2="R4 IS2A PROXY REAS SP ILL"
is4reasnprx3="R4 IS2A PRXY REAS SP SPCH IMPAIR"
is4reasnprx4="R4 IS2A PRXY REAS SP HEAR IMPAIR"
is4reasnprx5="R4 IS2A PROXY REAS LANG BARRIER"
is4reasnprx6="R4 IS2A PROXY REAS TEMP UNAVAIL"
is4reasnprx7="R4 IS2A PROXY REAS DECEASED"
is4reasnprx9="R4 IS2A PROXY REAS OTHER"
is4tempres="R4 IS2B2 TEMPORARY RESIDENCE"
is4prxyrelat="R4 IS9 PROXY RELATIONSHIP TO SP"
is4prxygendr="R4 IS10 PROXY GENDER"
is4famrrutin="R4 IS11 FAMILRTY SP DAILY ROUTIN"
is4proxlivsp="R4 IS11A PROXY LIVES W SP"
r1dgender="R1 D GENDER OF SP"
rl1dracehisp="R1 D RACE AND HISPANIC ETHNICITY"
r4d2intvrage="R4 D SP CAT AGE AT INTVW"
is4dproxyid="R4 D PROXY OPID"
re4spadrsnew="R4 RE4F SP ADDRESS SAME OR DIFF"
re4intplace="R4 RE7 SP INT AT PLACE OF RES"
re4newstrct="R4 RE8 NEW RESID PHYS STRUC IN R4"
re4newblgfl="R4 RE9 NEW RESID BLDG FLOORS IN R4 "
re4mthmove="R4 RE10 MONTH MOVED NEW ADDRESS "
re4yearmove="R4 RE10B YEAR MOVED NEW ADDRESS "
re4placedec="R4 RE11 CARE AT PLACE SP DIED"
re4alonedec="R4 RE12 LIVED ALONE AT DEATH"
re4dresistrct="R4 D RESIDNCE PHYSICAL STRCTUR"
re4dbldg="R4 D SP BLDG MORE THAN ONE FLOOR"
re4dcensdiv="R4 D SP CENSUS DIVISION"
fl4structure="R4 F RE STRUCTURE OF SP DWELLING"
fl4resnew="R4 F RE NEW ADDRESS FROM PRIOR ROUND"
fl4facility="R4 F RE ROUTING FLAG FROM RE4f HT3 5 6 7"
fl4hotype="R4 F RE HT TYPE OF HOME"
fl4retirecom="R4 F RE HT SP LIVES IN RETIREMT COM"
pd4placedied="R4 PD3 PLACE OF DEATH"
pd4homedied="R4 PD3B SP OR OTHER HOME DIED"
pd4hospdied="R4 PD3C HOSPITAL UNIT DIED"
pd4hospice1="R4 PD3D HOSPICE AT NURSING HOME"
pd4hospice2="R4 PD3E HOSPICE OTHER PLACE"
pd4stayunit="R4 PD4 LENGTH OF STAY UNIT"
pd4staydays="R4 PD4A LENGTH OF STAY DAYS"
pd4staywks="R4 PD4B LENGTH OF STAY WEEKS"
pd4staymths="R4 PD4C LENGTH OF STAY MONTHS"
pd4stayyrs="R4 PD4D LENGTH OF STAY YEARS"
pd4staymthpl="R4 PD4E LENGTH OF STAY MTH PLUS"
pd4placepre="R4 PD5 PLACE PRE HOSP HOSPICE NH"
pd4hospcelml="R4 PD5B HOSPICE CARE IN LAST MTH"
pd4alert="R4 PD6 ALERT IN LAST MONTH"
pd4outbed="R4 PD7 GET OUT OF BED IN LST MTH"
r4d2deathage ="R4 D SP CAT AGE AT DEATH"
fl4spdied="R4 F SP DIED PRIOR TO R4  "
fl4notalert="R4 F LML NOT ALERT"
fl4notmobile="R4 F LML NOT MOBILE"
lm4pain="R4 LM1 PAIN IN LAST MONTH"
lm4painhlp="R4 LM1A GET HELP WITH PAIN"
lm4painhlpam="R4 LM1B PAIN HELP AMOUNT"
lm4bre="R4 LM2 BREATHING TROUBLE"
lm4brehlp="R4 LM2A GET HELP WITH BREATHING"
lm4brehlpam="R4 LM2B BREATHING HELP AMOUNT"
lm4sad="R4 LM3 ANXIOUS OR SAD LAST MONTH"
lm4sadhlp="R4 LM3A ANXIOUS SAD GET HELP FOR"
lm4sadhlpam="R4 LM3B ANXIOUS SAD HELP AMOUNT"
lm4caredecis="R4 LM4 DEC ABOUT CARE WO INPUT"
lm4carenowan="R4 LM5 DEC ABOUT CARE NOT WANTED"
lm4perscare="R4 LM6 PERSONAL CARE NEEDS MET"
lm4respect="R4 LM7 TREATED WITH RESPECT"
lm4informed="R4 LM8 INFORMED ABOUT CONDITION"
lm4doctor="R4 LM9 MORE THAN ONE DOCTOR"
lm4docclear="R4 LM9A CLEAR DOCTOR IN CHARGE"
lm4relg="R4 LM10 TALK RELIGIOUS BELIEFS"
lm4relgamt="R4 LM10A RELIGIOUS BLIEF CONTACT"
lm4ratecare="R4 LM11 HOW RATE CARE"
hc4health="R4 HC1 OVERALL HEALTH CONDITION"
hc4disescn1="R4 HC2 SP HAD HEART ATTACK"
hc4disescn2="R4 HC2 SP HAS HEART DISEASE"
hc4disescn3="R4 HC2 SP HAS HIGH BLOOD PRESS"
hc4disescn4="R4 HC2 SP HAS ARTHRITIS"
hc4disescn5="R4 HC2 SP HAS OSTEOPOROSIS"
hc4disescn6="R4 HC2 SP HAS DIABETES"
hc4disescn7="R4 HC2 SP HAS LUNG DISEASE"
hc4disescn8="R4 HC2 SP HAD STROKE"
hc4disescn9="R4 HC2 SP HAS DEMENTIA OR ALZH"
hc4disescn10="R4 HC2 SP HAS CANCER"
hc4cancerty1="R4 HC3 SP HAD SKIN CANCER"
hc4brokebon1="R4 HC5A SP BROKEN OR FRACT HIP"
hc4brokebon2="R4 HC5B SP OTHR BRKN FRACT BONE"
hc4hosptstay="R4 HC7 SP HOSP STAY LAST 12MOS "
hc4hosovrnht="R4 HC8 SP NUM OF HOSP STAYS"
hc4knesrgyr="R4 HC9B KNEE SURGERY IN 12 MNTHS"
hc4hipsrgyr="R4 HC10B HIP SURG IN 12 MNTHS"
hc4catrsrgyr="R4 HC11B CATER SURG IN 12 MNTHS"
hc4backsrgyr="R4 HC12B BCK SPNE SURGR 12 MNTHS"
hc4hartsrgyr="R4 HC13B HEART SURGERY 12 MONTHS"
hc4fllsinmth="R4 HC14 FALL DOWN IN LAST MONTH"
hc4worryfall="R4 HC15 WORRIED ABOT FALLNG DOWN"
hc4worrylimt="R4 HC16 WORRY EVR LIMT ACTIVTIES"
hc4faleninyr="R4 HC17 FALLEN DOWN IN 12 MONTHS"
hc4multifall="R4 HC18 FALLEN DWN MORE THN ONCE"
hc4depresan1="R4 HC19A SP LITTLE INTERST PLEAS"
hc4depresan2="R4 HC19B SP DOWN DEPRES HOPELESS"
hc4depresan3="R4 HC19C SP NERVOUS ANXIOUS"
hc4depresan4="R4 HC19D SP UNABLE TO STOP WORRY"
hc4aslep30mn="R4 HC20 OVER 30 MIN FALL ASLEEP"
hc4trbfalbck="R4 HC21 TROBLE FALLNG BCK ASLEEP"
hc4sleepmed="R4 HC22 OFTN MEDICATE HELP SLEEP"
ht4placedesc="R4 HT3 PLACE BEST DESCRIPTION"
ht4retiresen="R4 HT4 RETIRMNT CMMTY SEN HOUSIN"
ht4diffareun="R4 HT5 DIFF AREAS UNITS TO MOVE"
ht4helpmedbd="R4 HT6 HELP W MEDS BATH DRESSING"
ht4meals="R4 HT7 MEALS FOR RESIDENTS"
ht4spacename="R4 HT10 NAME OF LIVING SPACE"
se4servcoff1="R4 SE1 FAC SERVICES MEALS"
se4servcoff2="R4 SE1 FAC SERVICES HELP W RX"
se4servcoff3="R4 SE1 FAC SERV HELP BATH DRESS"
se4servcoff4="R4 SE1 FAC SERVICES LAUNDRY"
se4servcoff5="R4 SE1 FAC SERVICES HOUSEKEEP"
se4servcoff6="R4 SE1 FAC SERV VAN TO DOCTOR"
se4servcoff7="R4 SE1 FAC SRV VAN TO STORE EVNT"
se4servcoff8="R4 SE1 FAC SERV RECREATIONAL FAC"
se4servcoff9="R4 SE1 FAC SERV SOCIAL EVENTS"
se4servused1="R4 SE2 SERVS USED MEALS"
se4servused2="R4 SE2 SERVS USED HELP W RX"
se4servused3="R4 SE2 SERVS USED HLP BATH DRESS"
se4servused4="R4 SE2 SERVS USED LAUNDRY"
se4servused5="R4 SE2 SERVS USED HOUSEKEEPING"
se4servused6="R4 SE2 SERVS USED VAN TO DOCTOR"
se4servused7="R4 SE2 SERVS USED VAN TO STORE"
se4servused8="R4 SE2 SERVS USED RECREATION FAC"
se4servused9="R4 SE2 SERVS USED SOCIAL EVENTS"
se4payservi1="R4 SE3 PAYMENT FOR SERV MEALS"
se4payservi2="R4 SE3 PAYMENT FOR SERV HLP W RX"
se4payservi3="R4 SE3 PAY FR SERV HLP BATH DRSS"
se4payservi4="R4 SE3 PAYMENT FOR SERV LAUNDRY"
se4payservi5="R4 SE3 PAYMNT FOR SERV HOUSEKEEP"
se4payservi6="R4 SE3 PAYMNT FR SERV VAN TO DOC"
se4payservi7="R4 SE3 PAY FOR SERV VAN TO STORE"
se4payservi8="R4 SE3 PAY FOR SERV RECREATION"
se4payservi9="R4 SE3 PAY FOR SERV SOCIAL EVNTS"
hh4marchange="R4 HH1A MARITAL STATUS CHANGE"
hh4martlstat="R4 HH1 MARITAL STATUS IF CHANGED"
hh4yrendmarr="R4 HH2B YR MARR END OR SPS PASS"
hh4newspoprt="R4 HH4A1 SPOUSE PRTNR SAME OR DIFF"
hh4spgender="R4 HH5 NEW R4 SPOU PART GENDER"
hh4dspouage="R4 D NEW R4 SPOU PART CAT AGE"
hh4dspageall="R4 D SPOU PAR AGE UPDATE AND NEW"
hh4spouseduc="R4 HH9 NEW R4 SPOU PART HIGH EDUC"
hh4spoupchlp="R4 HH10 SPOUS NEED PERS CARE HLP"
hh4livwthspo="R4 HH11 LIVE WITH SPOUSE PARTNER"
hh4placekind="R4 HH12 KIND OF PLACE LIVE IN"
hh4dmarstat="R4 D MARITAL STATUS AT R4"
hh4dlvngarrg="R4 D LIVING ARRANGEMENT"
hh4dhshldnum="R4 D TOTAL NUMBER IN HOUSEHOLD"
hh4dhshldchd="R4 D TOTAL CHILDREN IN HOUSEHOLD"
hh4dspouseid="R4 D SPOUSE ID"
cs4sistrsnum="R4 CS14 NUMBER OF LIVING SISTERS"
cs4brthrsnum="R4 CS15 NUMBER OF LIVNG BROTHERS"
cs4dnumchild="R4 D NUMBER OF CHILDREN"
cs4dnmstpchd="R4 D NUMBER OF STEP CHILDREN"
cs4dnumdaugh="R4 D NUMBER OF DAUGHTERS"
cs4dnumson="R4 D NUMBER OF SONS"
sn4dnumsn="R4 D NUMBER IN SOCIAL NETWORK"
fl4noonetalk="R4 F SN SP HAS NO ONE TO TALK TO"
ho4entrstair="R4 HO1 ENTRANCE STAIRS OUTSIDE"
ho4entrccomn="R4 HO2 ENTRANCE COMMON OR PRIVAT"
ho4entrnramp="R4 HO3 RAMP AT ENTRANCE"
ho4bldgamen1="R4 HO4A NEW RES BLDG HAS ELEVATOR"
ho4bldgamen2="R4 HO4B NEW RES BLDG STAIR LIFT GLIDE"
ho4bldgamen3="R4 HO4C NEW RES BLDG COMMN SPACE MEALS"
ho4bldgamen4="R4 HO4D NEW RES BLDG SPACE SOCIAL EVT"
ho4levelsflr="R4 HO5 NUMBR OF LEVELS OR FLOORS"
ho4homeamen1="R4 H08A BED KITCHN BATH SAME FLR"
ho4homeamen2="R4 H08B HOME HAS ELEVATOR"
ho4homeamen3="R4 H08C HOME HAS STAIR LFT GLIDE"
ho4bathprivt="R4 H010 NEW FAC RES PRIV BATH"
ho4bathamen1="R4 H011A BATH HAS BATHTUB"
ho4bathamen2="R4 H011B BATH HAS SHOWER STALL"
ho4bathamen3="R4 H011C BATH GRAB BAR IN SHOWER"
ho4bathamen4="R4 H011D BATH SEAT FR SHOWER TUB"
ho4bathamen5="R4 H011E BATH RAISED TOILET SEAT"
ho4bathamen6="R4 H011F BATH GRAB BARS TOILET"
ho4bathamen7="R4 H011G BATH MED EMERGNCY SYSTM"
ho4kitchnprv="R4 HO12 NEW FAC RES PRIV KITCHEN"
ho4kitchncom="R4 H013 NEW FAC RES COMMON KITCHEN"
ho4microwave="R4 HO14 USE OF MICROWAVE"
ho4dbldg1="R4 D BLDG HAS ELEVATOR"
ho4dbldg2="R4 D BLDG HAS STAIR LIFT GLIDE"
ho4dbldg3="R4 D BLDG HAS COMMN SPACE MEALS"
ho4dbldg4="R4 D BLDG HAS SPACE SOCIAL EVENT"
ho4dbathprvt="R4 D FAC HAS PRIVATE BATH"
ho4dkitchnpr="R4 D FAC HAS PRIV KITCHEN"
ho4dkitchnco="R4 D FAC HAS COMMON KITCHEN"
fl4bathgrbbr="R4 F HO SPS BATH HAS GRAB BARS"
fl4bathseat="R4 F HO SPS BATH HAS SEAT"
fl4raisedtlt="R4 F HO SP HAS RAISED TOILET"
fl4tltgrbbr="R4 F HO SP TOILET HAS GRAB BARS"
em4modhere1="R4 EM1 NEW RES ALL ITEMS HERE"
em4addlstyr1="R4 EM2A RAMP ADDED IN LAST YR"
em4addlstyr2="R4 EM2B ELEVATOR ADDED IN LST YR"
em4addlstyr3="R4 EM2C STR LIFT ADDED IN LST YR"
em4addlstyr4="R4 EM2D SHWR GRABBAR ADD LST YR"
em4addlstyr5="R4 EM2E BATHSEAT ADDED IN LST YR"
em4addlstyr6="R4 EM2F TOILETSEAT ADD IN LST YR"
em4addlstyr7="R4 EM2G TOILET GRABBARS ADDED YR"
em4payyufam1="R4 EM3A SP PAID FOR RAMP"
em4payyufam2="R4 EM3B SP PAID FOR ELEVATOR"
em4payyufam3="R4 EM3C SP PAID STAIR LFT GLIDE"
em4payyufam4="R4 EM3D SP PAID SHOWER GRABBAR"
em4payyufam5="R4 EM3E SP PAID SHOWER SEAT"
em4payyufam6="R4 EM3F SP PAID RAISD TOILT SEAT"
em4payyufam7="R4 EM3G SP PAID TOILET GRABBARS"
em4paydevce1="R4 EM4A SP PAID FOR VISION AIDS"
em4paydevce2="R4 EM4B SP PAID FOR HEARING AID"
em4paydevce3="R4 EM4C SP PAID FOR CANE"
em4paydevce4="R4 EM4D SP PAID FOR WALKER"
em4paydevce5="R4 EM4E SP PAID FOR WHEELCHAIR"
em4paydevce6="R4 EM4F SP PAID FOR SCOOTER"
em4paydevce7="R4 EM4G SP PAID FOR GRABBER"
em4paydevce8="R4 EM4H SP PD SPECIAL DRESS ITM"
em4paydevce9="R4 EM4I SP PAID ADAPTED UTENSILS"
em4payaltgth="R4 EM5 PAY FOR THESE ALTOGETHER"
em4morls1000="R4 EM6 MORE LESS OR ABOUT $1000"
em4morls100="R4 EM7 MORE LESS OR ABOUT $100"
cm4knowwell="R4 CM1 PEOPL KNOW EACH OTHR WELL"
cm4willnghlp="R4 CM2 PEOPL WILLG HLP EACH OTHR"
cm4peoptrstd="R4 CM4 PEOPLE CAN BE TRUSTED"
te4cellphone="R4 TE1 WORKING CELL PHONE"
te4othrphone="R4 TE3 ONE PHONE OTHER THAN CELL"
te4computer="R4 TE6 HAS A WORKING COMPUTER"
te4compoth="R4 TE8 USED COMPUTER ANYWHRE ELS"
te4tablet="R4 TE8A SP HAS A TABLET COMPUTER"
te4emailtext="R4 TE9 EMAIL OR TEXTING"
te4oftnemail="R4 TE10 EMAIL OR TEXTING OFTEN"
te4online="R4 TE11 ONLINE COMPUTER USE"
te4shoponli1="R4 TE12A INTERNET SHOP GROCERY"
te4shoponli2="R4 TE12B INTERNET BANKING"
te4shoponli3="R4 TE12C INTERNET ORDR REFLL RX "
te4socialnet="R4 TE12D SOCIAL NETWORK SITES"
te4intrntmd1="R4 TE13A INTERNET MEDICAL PROVDR"
te4intrntmd2="R4 TE13B INTERNET INSURANCE INFO"
te4intrntmd3="R4 TE13C INTERNET HEALTH CONDS"
md4canewlker="R4 MD1 USED CANE WALKER WHLCHAIR"
md4cane="R4 MD2 USED A CANE"
md4walker="R4 MD3 USED A WALKER"
md4wheelchar="R4 MD4 USED A WHEELCHAIR"
md4whelcrspc="R4 MD4A WHELCHAIR IN LIVNG SPACE"
md4scooter="R4 MD5 USE A SCOOTER"
md4scterinsp="R4 MD5A SCOOTER IN LIVING SPACE"
fl4cane="R4 F MD SP USES CANE"
fl4walker="R4 F MD SP USES WALKER"
fl4wheelchr="R4 F MD SP USES WHEELCHAIR"
fl4whlchrhom="R4 F MD SP HAS WHEELCHR AT HOME"
fl4scooter="R4 F MD SP USES SCOOTER"
fl4scooterhm="R4 F MD SP HAS SCOOTER AT HOME"
ss4heringaid="R4 SS3 HEARING AID USED"
ss4hearphone="R4 SS4A SP CAN USE TELEPHONE"
ss4convwradi="R4 SS4B CONVERSATIN WTH TV RADIO"
ss4convquiet="R4 SS4C CONVERS IN QUIET ROOM"
ss4glasseswr="R4 SS7 WEARS GLASSES CONTCTS"
ss4seewellst="R4 SS8A SEES ACROSS THE STREET"
ss4seestvgls="R4 SS8B TV ACROSS ROOM W GLASSES"
ss4glasscls="R4 SS10 WEAR GLS CONTCS SEE CLOS"
ss4othvisaid="R4 SS11 USED OTHER VISION AIDS"
ss4glrednewp="R4 SS12 CAN READ NEWSPAPER PRINT"
ss4probchswl="R4 SS13 PROBLEMS CHEW OR SWALLOW"
ss4probspeak="R4 SS14 PROBLEMS SPEAKING"
ss4painbothr="R4 SS15 BOTHERED BY PAIN"
ss4painlimts="R4 SS17 PAIN EVER LIMTS ACTIVIT"
ss4painmedof="R4 SS18A LST MNTH OFTEN PAIN MED"
ss4painwhe1="R4 SS18B BACK PAIN IN LAST MNTH"
ss4painwhe2="R4 SS18B HIP PAIN IN LAST MONTH"
ss4painwhe3="R4 SS18B KNEE PAIN IN LAST MNTH"
ss4painwhe4="R4 SS18B FOOT PAIN IN LAST MNTH"
ss4painwhe5="R4 SS18B HAND PAIN IN LAST MNTH"
ss4painwhe6="R4 SS18B WRIST PAIN IN LAST MNTH"
ss4painwhe7="R4 SS18B SHOULDR PAIN LST MNTH"
ss4painwhe8="R4 SS18B HEAD PAIN IN LAST MNTH"
ss4painwhe9="R4 SS18B NECK PAIN IN LAST MNTH"
ss4painwhe10="R4 SS18B ARM PAIN IN LAST MNTH"
ss4painwhe11="R4 SS18B LEG PAIN IN LAST MNTH"
ss4painwhe12="R4 SS18B STOMACH PAIN LAST MNTH"
ss4painwhe13="R4 SS18B OTHR SPCFY PAIN LST MO"
ss4probbreat="R4 SS19 BREATHING PROBLEMS"
ss4prbbrlimt="R4 SS20 BREATH PROBLS LIMT ACTIV"
ss4strnglmup="R4 SS21 UPPER BOD STRENGTH LIMIT"
ss4uplimtact="R4 SS22 UP BOD STRNGTH LIMT ACT"
ss4lwrbodstr="R4 SS23 LOWER BODY STRNGTH LIMIT"
ss4lwrbodimp="R4 SS24 LWER BOD STRNGTH IMT ACT"
ss4lowenergy="R4 SS25 LOW ENERGY IN LAST MONTH"
ss4loenlmtat="R4 SS26 LOW ENERGY EVER LIM ACT"
ss4prbbalcrd="R4 SS27 BALANCE OR COORD PROBS"
ss4prbbalcnt="R4 SS28 BAL COORD PROB LIMIT ACT"
fl4deaf="R4 F SS DEAF PRIOR OR CURRENT ROUND "
fl4blind="R4 F SS BLIND PRIOR OR CURRENT ROUND "
pc4walk6blks="R4 PC1 ABLE TO WALK 6 BLOCKS"
pc4walk3blks="R4 PC2 ABLE TO WALK 3 BLOCKS"
pc4up20stair="R4 PC3 ABLE TO WALK UP 20 STAIRS"
pc4up10stair="R4 PC4 ABLE TO WALK UP 10 STAIRS"
pc4car20pnds="R4 PC5 ABLE TO CARRY 20 POUNDS"
pc4car10pnds="R4 PC6 ABLE TO CARRY 10 POUNDS"
pc4geonknees="R4 PC7 ABLE TO GET DOWN ON KNEES"
pc4bendover="R4 PC8 ABLE TO BEND OVER"
pc4hvobovrhd="R4 PC9 HEAVY OBJECT ABOVE HEAD"
pc4rechovrhd="R4 PC10 ABLE TO REACH OVERHEAD"
pc4opnjarwhd="R4 PC11 OPEN SEALED JAR W HANDS"
pc4grspsmobj="R4 PC12 ABLE GRASP SMALL OBJECTS"
cp4memrygood="R4 CP1 HOW GOOD MEMRY AT PRESNT"
cp4knownspyr="R4 CP2 KNOWN SP 4 AT LEAST A YR"
cp4chgthink1="R4 CP3A SP DIFF REMEMBER DATE"
cp4chgthink2="R4 CP3B SP REPEATS SELF"
cp4chgthink3="R4 CP3C SP DIFF REMEMBER APPT"
cp4chgthink4="R4 CP3D SP CHNG INTRST ACT HOB"
cp4chgthink5="R4 CP3E SP DIFF WITH MONEY MGMT"
cp4chgthink6="R4 CP3F SP DIFF LEARNG USE TOOL"
cp4chgthink7="R4 CP3G SP PRBLMS WITH JDGMNT"
cp4chgthink8="R4 CP3H SP DLY PRBLMS W THNK MEM"
cp4memcogpr1="R4 CP4A LOST IN FAMILIAR ENVIRON"
cp4memcogpr2="R4 CP4B SP WANDERD OFF NO RETRN"
cp4memcogpr3="R4 CP4C SP ABLE LEFT ALONE 1 HR"
cp4memcogpr4="R4 CP4D SP HEARS SEES THNGS"
cp4dad8dem="R4 D DEMENTIA REPORTED IN PRIOR AD8"
cg4speaktosp="R4 CG1A MAY SPEAK TO SP ASK QUES"
cg4quesremem="R4 CG1C START W QUES ABOUT MEMRY"
cg4reascano1="R4 CG1D SP CANT ANS DEMENTIA"
cg4reascano2="R4 CG1D SP CANT ANS UNABLE SPEAK"
cg4reascano3="R4 CG1D SP CANT ANS UNABLE HEAR"
cg4reascano4="R4 CG1D SP CANT ANS SP REFUSED"
cg4reascano5="R4 CG1D SP CANT ANS PROXY REFUSD"
cg4reascano6="R4 CG1D SP CANT ANS NOT PRESENT"
cg4reascano7="R4 CG1D SP CANT ANS SP TOO ILL"
cg4reascano8="R4 CG1D SP CANT ANS LANG BARRIER"
cg4reascano9="R4 CG1D SP CANT ANS OTHR SPECIFY"
cg4ratememry="R4 CG2 RATE YOUR MEMORY"
cg4ofmemprob="R4 CG3 OFTN MEMRY PROBS INTERFER"
cg4memcom1yr="R4 CG4 MEMRY COMPARD TO 1 YR AGO"
cg4todaydat1="R4 CG6Aa TODAY'S DATE CORRCT MNTH"
cg4todaydat2="R4 CG6Ab TODAY'S DATE CORRECT DAY"
cg4todaydat3="R4 CG6Ac TODAY'S DATE CORRECT YR"
cg4todaydat4="R4 CG6Ad USED AID FOR MTH DAY YEAR"
cg4todaydat5="R4 CG6Ba TODAY'S DATE CORRCT DOW"
cg4todaydat6="R4 CG6Bb USED AID FOR DAY OF WEEK"
cg4prewrdrcl="R4 CG7PRE INTRO TO WORD RECALL"
cg4dwrdlstnm="R4 D WHICH WORD LIST ASSIGNED"
cg4wrdsrcal1="R4 CG8 1 TELL WORDS U CAN RECALL"
cg4wrdsrcal2="R4 CG8 2 TELL WORDS U CAN RECALL"
cg4wrdsrcal3="R4 CG8 3 TELL WORDS U CAN RECALL"
cg4wrdsrcal4="R4 CG8 4 TELL WORDS U CAN RECALL"
cg4wrdsrcal5="R4 CG8 5 TELL WORDS U CAN RECALL"
cg4wrdsrcal6="R4 CG8 6 TELL WORDS U CAN RECALL"
cg4wrdsrcal7="R4 CG8 7 TELL WORDS U CAN RECALL"
cg4wrdsrcal8="R4 CG8 8 TELL WORDS U CAN RECALL"
cg4wrdsrcal9="R4 CG8 9 TELL WORDS U CAN RECALL"
cg4wrdsrcal10="R4 CG8 10 TELLWORDS U CAN RECALL"
cg4dwrdimmrc="R4 D SCORE IMMEDIATE WORD RECALL"
cg4dwrdinone="R4 D IMMEDIATE RECALL NONE"
cg4dwrdirref="R4 D IMMEDIATE RECALL REFUSED"
cg4wrdsntlst="R4 CG8A WORDS NOT ON LIST"
cg4numnotlst="R4 CG8B NUM WORDS NOT ON LIST"
cg4probreca1="R4 CG9 SP HAD DIFF HEARING WORDS"
cg4probreca2="R4 CG9 INTERRUPTION AS LIST READ"
cg4probreca3="R4 CG9 PROB WORD RECALL SPECIFY"
cg4probreca4="R4 CG9 WD RECALL NO PROB OCCURRD"
cg4probreca5="R4 CG9 SP REFUSED WORD RECALL"
cg4dclkdraw="R4 D SCORE OF CLOCK DRAWING TEST"
cg4dclkimgcl="R4 D IMAGE CLARITY CLOCK DRAWING"
cg4atdrwclck="R4 CG10A SP ATTEMPT CLOCK DRAWIG"
cg4presidna1="R4 CG13A PRES LAST NAME CORRECT"
cg4presidna2="R4 CG13B PRES LAST NAME INCORRCT"
cg4presidna3="R4 CG13C PRES FIRST NAME CORRCT"
cg4presidna4="R4 CG13D PRES FIRST NAME INCORR"
cg4vpname1="R4 CG14A VP LAST NAME CORRECT"
cg4vpname2="R4 CG14B VP LAST NAME INCORRECT"
cg4vpname3="R4 CG14C VP FIRST NAME CORRECT"
cg4vpname4="R4 CG14D VP FIRST NAME INCORRECT"
cg4wrdsdcal1="R4 CG15 1 DELAYED WORD RECALL"
cg4wrdsdcal2="R4 CG15 2 DELAYED WORD RECALL"
cg4wrdsdcal3="R4 CG15 3 DELAYED WORD RECALL"
cg4wrdsdcal4="R4 CG15 4 DELAYED WORD RECALL"
cg4wrdsdcal5="R4 CG15 5 DELAYED WORD RECALL"
cg4wrdsdcal6="R4 CG15 6 DELAYED WORD RECALL"
cg4wrdsdcal7="R4 CG15 7 DELAYED WORD RECALL"
cg4wrdsdcal8="R4 CG15 8 DELAYED WORD RECALL"
cg4wrdsdcal9="R4 CG15 9 DELAYED WORD RECALL"
cg4wrdsdca10="R4 CG15 10 DELAYED WORD RECALL"
cg4dwrddlyrc="R4 D SCORE DELAYED WORD RECALL"
cg4dwrddnone="R4 D DELAYED RECALL NONE"
cg4dwrddrref="R4 D DELAYED RECALL REFUSED"
cg4wrdnotlst="R4 CG16 WORDS NOT ON LIST"
cg4numwrdnot="R4 CG17 NUM OF WORDS NOT ON LIST"
cg4dwrd1rcl="R4 D WORD1 IMMEDIATE RECALL"
cg4dwrd2rcl="R4 D WORD2 IMMEDIATE RECALL"
cg4dwrd3rcl="R4 D WORD3 IMMEDIATE RECALL"
cg4dwrd4rcl="R4 D WORD4 IMMEDIATE RECALL"
cg4dwrd5rcl="R4 D WORD5 IMMEDIATE RECALL"
cg4dwrd6rcl="R4 D WORD6 IMMEDIATE RECALL"
cg4dwrd7rcl="R4 D WORD7 IMMEDIATE RECALL"
cg4dwrd8rcl="R4 D WORD8 IMMEDIATE RECALL"
cg4dwrd9rcl="R4 D WORD9 IMMEDIATE RECALL"
cg4dwrd10rcl="R4 D WORD10 IMMEDIATE RECALL"
cg4dwrd1dly="R4 D WORD1 DELAYED RECALL"
cg4dwrd2dly="R4 D WORD2 DELAYED RECALL"
cg4dwrd3dly="R4 D WORD3 DELAYED RECALL"
cg4dwrd4dly="R4 D WORD4 DELAYED RECALL"
cg4dwrd5dly="R4 D WORD5 DELAYED RECALL"
cg4dwrd6dly="R4 D WORD6 DELAYED RECALL"
cg4dwrd7dly="R4 D WORD7 DELAYED RECALL"
cg4dwrd8dly="R4 D WORD8 DELAYED RECALL"
cg4dwrd9dly="R4 D WORD9 DELAYED RECALL"
cg4dwrd10dly="R4 D WORD10 DELAYED RECALL"
mo4outoft="R4 MO1 OFTEN GO OUTSIDE"
mo4outcane="R4 MO2 CANE USED OUTSIDE"
mo4outwalkr="R4 MO3 WALKER USED OUTSIDE"
mo4outwlchr="R4 MO4 WHEELCHAIR USED OUTSIDE"
mo4outsctr="R4 MO5 SCOOTER USED OUTSIDE"
mo4outhlp="R4 MO6 HELP GO OUTSIDE"
mo4outslf="R4 MO7 LEFT BY YOURSELF"
mo4outdif="R4 MO8 HOW DIFFICULT"
mo4outyrgo="R4 MO9 HOW OFTEN LEAVE"
mo4outwout="R4 MO10 STAYED IN NO HELP"
mo4oftgoarea="R4 MO11 HOW OFTEN GO OTHER AREAS"
mo4oflvslepr="R4 MO12 HOW OFTN LEAVE BEDROOM"
mo4insdcane="R4 MO13 OFTEN USED CANE INSIDE"
mo4insdwalkr="R4 MO14 OFTEN USED WALKER INSIDE"
mo4insdwlchr="R4 MO15 OFT USD WHEELCHAR INSIDE"
mo4insdsctr="R4 MO16 OFTEN USD SCOOTER INSIDE"
mo4oftholdwl="R4 MO17 OFTEN HOLD WALLS INSIDE"
mo4insdhlp="R4 MO18 GOT HELP INSIDE"
mo4insdslf="R4 MO20 HOW OFTEN BY YOURSELF"
mo4insddif="R4 MO21 HOW DIFF GET ARD W DEVCE"
mo4insdyrgo="R4 MO22 HOW OFTEN COMPRED YR AGO"
mo4insdwout="R4 MO23 PLACES INSIDE DID NOT GO"
mo4beddev="R4 MO24 OUT OF BED USED DEVICE"
mo4bedhlp="R4 MO25 GOT HELP OUT OF BED"
mo4bedslf="R4 MO26 OFT GOT OUT BED BY SLF"
mo4beddif="R4 MO27 DIFF GET OUT BED BY SELF"
mo4bedwout="R4 MO28 OFTEN HAD TO STAY IN BED"
mo4doutsfdf="R4 D GO OUTSIDE SELF "
mo4doutdevi="R4 D GO OUTSIDE USING DEVICES"
mo4douthelp="R4 D GO OUTSIDE USING HELP"
mo4dinsdsfdf ="R4 D MOVE INSIDE SELF"
mo4dinsddevi="R4 D MOVE INSIDE WITH DEVICES"
mo4dinsdhelp="R4 D MOVE INSIDE WITH HELP"
mo4dbedsfdf="R4 D GET OUT OF BED"
mo4dbeddevi="R4 D DEVICE USE 2 GET OUT OF BED"
mo4dbedhelp="R4 D HELP TO GET OUT OF BED"
fl4didntleav="R4 F MO SP DID NOT LEAVE HOME"
fl4ntlvrmslp="R4 F MO SP DID NOT LEAVE BEDROOM"
dm4helpmobil="R4 DM1 GET HELP WITH MOBILITY"
dm4helpstmo="R4 DM3C MONTH MOBIL HELP STARTED"
dm4helpstyr="R4 DM3C1 YEAR MOBIL HELP STARTED"
dm4helpendmo="R4 DM3D MONTH MOBIL HELP ENDED"
dm4helpendyr="R4 DM3D1 YEAR MOBIL HELP ENDED"
dm4nohelp="R4 DM3E NO MOBIl HELP MTH PLUS"
dm4nohelpmos="R4 DM3F MONTHS OF NO MOBIl HELP"
dm4lstyrcane="R4 DM4 IN LST YR USE CANE WALKER"
dm4devstmo="R4 DM6C MONTH DEVICE USE STARTED"
dm4devstyr="R4 DM6C1 YEAR DEVICE USE STARTED"
dm4devendmo="R4 DM6D MONTH DEVICE USE ENDED"
dm4devendyr="R4 DM6D1 YEAR DEVICE USE ENDED"
dm4nodev="R4 DM6E NO DEVICE MONTH PLUS"
dm4nodevmos="R4 DM6F MONTHS OF NO DEVICE"
dm4dmohlp="R4 D MONTHS OF MOBILITY HELP"
dm4dmodev="R4 D MONTHS OF MOBILITY DEVICE HELP"
dm4dmohlpgr="R4 D MOBILITY HELP GROUP"
dm4dmodevgr="R4 D MOBILITY DEVICE GROUP"
dmds4dintvl="R4 D MONTHS BETWEEN LAST INT AND EITHER CURRENT INT OR DATE OF DEATH"
dm4flag="R4 D SPECIAL CASES DM SECTION ROUTE"
dt4driveyr="R4 DT1A DRIVE IN LAST YEAR"
dt4oftedrive="R4 DT1 HOW OFTEN DRIVE PLACES"
dt4avoidriv1="R4 DT3A AVOID DRIVING AT NIGHT"
dt4avoidriv2="R4 DT3A AVOID DRIVING ALONE"
dt4avoidriv3="R4 DT3A AVOID DRIVING HIGHWAYS"
dt4avoidriv4="R4 DT3A AVOID DRIVING BAD WEATHER"
dt4getoplcs1="R4 DT4A SP WALKED GOT PLACES"
dt4getoplcs2="R4 DT4B GOT RIDE FAM FRIEND PD"
dt4getoplcs3="R4 DT4C VANSHUTTLE PROV BY PLACE"
dt4getoplcs4="R4 DT4D VAN SHUTTLE FOR SENIORS"
dt4getoplcs5="R4 DT4E SP TOOK PUBLIC TRANSPRT"
dt4getoplcs6="R4 DT4F SP TOOK TAXI GOT PLACES"
dt4getoplcs7="R4 DT4G GOT PLACES OTHR SPECIFY"
dt4otfrfamtk="R4 DT6 ANTH FND FAM MEM TOOK YOU"
fl4drives="R4 F DT SP DRIVES CAR"
fl4drvlstyr="R4 F DT SP DROVE CAR IN PAST YR"
fl1dneverdrv="R1 F DT SP NEVER DROVE"
ha4laun="R4 HA1 HOW LAUNDRY GOT DONE"
ha4launslf="R4 HA1A DO LAUNDRY YOURSELF"
ha4whrmachi1="R4 HA2 WASH MACHINE IN HOME"
ha4whrmachi2="R4 HA2 WASH MACHIN IN BUILDING"
ha4whrmachi3="R4 HA2 WASH MACHIN LAUNDROMAT"
ha4whrmachi4="R4 HA2 WASH MACHIN SINK IN HOME"
ha4whrmachi5="R4 HA2 WASH MACH SINK IN BUILDNG"
ha4whrmachi6="R4 HA2 WASH MACHIN OTHR SPECIFY"
ha4dlaunreas="R4 D LAUNDRY REASN WITH BY OTHERS"
ha4laundif="R4 HA5 DIFF DOING LAUNDY BY SELF"
ha4launoft="R4 HA6 HOW OFTEN DO LAUNDRY"
ha4launwout="R4 HA7 EVER GO WOUT CLEAN LAUNDR"
ha4shop="R4 HA20 HOW YOUR SHOPPING DONE"
ha4shopslf="R4 HA20A EVER SHOP BY YOURSELF"
ha4howpaygr1="R4 HA22 PAY GROC PERS ITMS CASH"
ha4howpaygr2="R4 HA22 PAY GROC PERS ITMS CHCK"
ha4howpaygr3="R4 HA22 PAY GROC PERS ITMS DEBIT"
ha4howpaygr4="R4 HA22 PAY GROC PERS CREDIT"
ha4howpaygr5="R4 HA22 PAY GROC PERS FOOD STMP"
ha4howpaygr6="R4 HA22 PAY GROC PERS SMON ELS"
ha4howpaygr7="R4 HA22 PAY GROC PERS OTHR SPEC"
ha4howgtstr1="R4 HA23 DROVE TO THE STORE"
ha4howgtstr2="R4 HA23 FAM FRND PD HLP DROVE"
ha4howgtstr3="R4 HA23 VAN PLACE SP LIVES DROVE"
ha4howgtstr4="R4 HA23 VAN 4 DIS SENIORS DROVE"
ha4howgtstr5="R4 HA23 PUBLIC TRANSPORT 2 STORE"
ha4howgtstr6="R4 HA23 SP TOOK TAXI 2 THE STORE"
ha4howgtstr7="R4 HA23 SP WALKED TO THE STORE"
ha4howgtstr8="R4 HA23 OTHR SPECIFY TO STORE"
ha4shopcart="R4 HA24A EVER USE MOTORIZED CART"
ha4shoplean="R4 HA24B EVER LEAN ON SHOP CART"
ha4dshopreas="R4 D SHOP REASN WITH BY OTHERS "
ha4shopdif="R4 HA27 DIFF SHOPPING BY SELF"
ha4shopoft="R4 HA28 HOW OFT SHOP GROCERIES"
ha4shopwout="R4 HA29 EVER GO WITHOUT GROCRIES"
ha4meal="R4 HA30 HOW HOT MEALS GET MADE"
ha4mealslf="R4 HA30A MAKE HOT MEALS YOURSELF"
ha4restamels="R4 HA30B OFTN HAV RESTARNT MEALS"
ha4mealwheel="R4 HA30C OFTN GET MEALS ON WHEEL"
ha4oftmicrow="R4 HA31 OFTEN USE THE MICROWAVE"
ha4dmealreas="R4 D MEALS REASN WITH BY OTHERS"
ha4mealdif="R4 HA34 DIFICULTY MAK MEALS SELF"
ha4mealoft="R4 HA35 HOW OFTEN MAKE HOT MEALS"
ha4mealwout="R4 HA36 EVER GO WITHOUT HOT MEAL"
ha4bank="R4 HA40 HOW BILLS BANKIN HANDLED"
ha4bankslf="R4 HA40A HNDL BILLS BNKING YRSLF"
ha4dbankreas="R4 D BANK BILL REASN WITH BY OTH"
ha4bankdif="R4 HA44 DIF HNDL BLLS BNKING SLF"
ha4bankoft="R4 HA45 HOW OFTEN YOU PAY BILLS"
ha4bankwout="R4 HA46 EVER GO WOUT PAYIN BILLS"
ha4money="R4 HA50 MONEY MATTERS TO HANDLE"
ha4moneyhlp="R4 HA51 ANYONE HLP W MONY MATTRS"
ha4dlaunsfdf="R4 D LAUNDRY SELF AND DIFF LEVEL"
ha4dshopsfdf="R4 D SLF SHOPPING AND DIFF LEVEL"
ha4dmealsfdf="R4 D SELF MEALS AND DIFF LEVEL"
ha4dbanksfdf="R4 D SELF BANKS AND DIFF LEVEL"
ha4dmealwhl ="R4 D HELPER IS MEALS ON WHEELS"
ha4dmealtkot ="R4 D HELPER IS RESTAURNT TAKEOUT"
sc4eatdev="R4 SC1 EVER USE ADAPTED UTENSILS"
sc4eatdevoft="R4 SC2 OFTEN USE ADAPTED UTENSLS"
sc4eathlp="R4 SC3 DID ANYONE HELP YOU EAT"
sc4eatslfoft="R4 SC4 HOW OFTEN EAT BY YOURSELF"
sc4eatslfdif="R4 SC5 DIFFICULTY EATING BY SELF"
sc4eatwout="R4 SC6 GO WOUT EAT BECSE NO HELP"
sc4showrbat1="R4 SC7 SP SHOWERED"
sc4showrbat2="R4 SC7 SP TOOK BATHS IN A TUB"
sc4showrbat3="R4 SC7 SP WASHED SOME OTHR WAY"
sc4bdevdec="R4 SC7A USE BATH DEVICE IN LML"
sc4prfrshbth="R4 SC8 PREFER SHOWR BATH OR OTHR"
sc4scusgrbrs="R4 SC9 HOW OFTEN USE GRAB BARS"
sc4shtubseat="R4 SC10 OFTN USE SHOWR TUB SEAT"
sc4bathhlp="R4 SC11 ANYN HLP SHOWR BATH OTHR"
sc4bathoft="R4 SC12 HOW OFTEN BATHE YOURSELF"
sc4bathdif="R4 SC13 DIFF USING BARS OR SEATS"
sc4bathyrgo="R4 SC14 BATHE MRE OFT THN YR AGO"
sc4bathwout="R4 SC15 EVER GO WITHOUT WASHING"
sc4usvartoi1="R4 SC16 SP USED PORTABLE COMMODE"
sc4usvartoi2="R4 SC16 SP USED PADS UNDERGMT"
sc4usvartoi3="R4 SC16 USED GRABBARS FR TOILET"
sc4usvartoi4="R4 SC16 USED RAISED TOILET SEAT"
sc4toilhlp="R4 SC17 ANYON HLP YOU USE TOILET"
sc4toiloft="R4 SC18 OFTEN USE TOILET BY SELF"
sc4toildif="R4 SC19 DIFFICUTY TOILETING SELF"
sc4toilwout="R4 SC20 ACCIDENT WET SOIL CLTHES"
sc4dresoft="R4 SC21 OFTEN YOU GET DRESSED"
sc4dresdev="R4 SC22 USE SPECL ITEMS TO DRESS"
sc4dreshlp="R4 SC23 ANYONE HELP GET DRESSED"
sc4dresslf="R4 SC24 OFTEN YOU DRESS YOURSELF"
sc4dresdif="R4 SC25 DIF WHN US SP ITMS YRSLF"
sc4dresyrgo="R4 SC26 HOW OFTN YOU GET DRESSED"
sc4dreswout="R4 SC27 GO WITHOUT GTTNG DRESSED"
sc4deatdevi="R4 D USES DEVICES WHILE EATING"
sc4deathelp="R4 D HAS HELP EATING"
sc4deatsfdf="R4 D DIFF EATING BY SELF WO HELP"
sc4dbathdevi="R4 D USES DEVICES WHILE BATHING"
sc4dbathhelp="R4 D HAS HELP WHILE BATHING"
sc4dbathsfdf="R4 D DIFF BATHING SELF NO HELP"
sc4dtoildevi="R4 D USES DEVICE WHILE TOILETING"
sc4dtoilhelp="R4 D HAS HELP WHILE TOILETING"
sc4dtoilsfdf="R4 D DIFF LEVEL TOILETING SELF"
sc4ddresdevi="R4 D USES DEVICES WHILE DRESSING"
sc4ddreshelp="R4 D HAS HELP WHILE DRESSING"
sc4ddressfdf="R4 D DIFF LEVEL DRESSING SELF"
fl4showering="R4 F SC SP USES SHOWER"
fl4takingbth="R4 F SC SP TAKES BATHS"
fl4washingup="R4 F SC SP WASHES OTHER WAY"
ds4gethlpeat="R4 DS1 GET HELP WITH EATING, ETC"
ds4helpstmo="R4 DS3C MONTH SELF CARE HLP START"
ds4helpstyr="R4 DS3C1 YEAR SELF CARE HELP STARTED"
ds4helpendmo="R4 DS3D MONTH SELF CARE HELP ENDED"
ds4helpendyr="R4 DS3D1 YEAR SELF CARE HELP ENDED"
ds4nohelp="R4 DS3E NO SELF CARE HELP MTH PLUS"
ds4nohelpmos="R4 DS3F MONTHS OF NO SELF CARE HELP"
ds4dschlp="R4 D MONTHS OF SELF CARE HELP"
ds4dschlpgr="R4 D SELF CARE HELP GROUP"
ds4flag="R4 D SPECIAL CASES DS SECTION ROUTE"
mc4meds="R4 MC1 IN MNTH TKE MEDS PRESCRBD"
mc4medstrk="R4 MC2 KEEP TRCK PRESCRIED MEDS"
mc4medsslf="R4 MC2A LAST MNTH KEEP TRACK SLF"
mc4whrgtmed1="R4 MC3 SP GOT MEDS LOCAL STORE"
mc4whrgtmed2="R4 MC3 SP GOT MEDS BY MAIL"
mc4whrgtmed3="R4 MC3 SP GOT MEDS HC PRVDR HSP"
mc4whrgtmed4="R4 MC3 SP GOT MEDS OTHR SPECIFY"
mc4howpkupm1="R4 MC3B SP PICKD UP MEDS BY SELF"
mc4howpkupm2="R4 MC3B SP HAD MEDS DELIVERED"
mc4howpkupm3="R4 MC3B SMEON ELSE PICKD UP MEDS"
mc4medsrem="R4 MC4 USE REMNDERS TO KEEP TRCK"
mc4dmedsreas="R4 D MEDS REASN BY WITH OTHERS "
mc4medsdif="R4 MC7 HOW DIFFIC KEEP TRACK MED"
mc4medsyrgo="R4 MC8 COMPAR YR AGO HW KEP TRCK"
mc4medsmis="R4 MC9 MAKE MISTAKE TAKING MEDS"
mc4havregdoc="R4 MC10 YOU HAVE REGULAR DOCTOR"
mc4regdoclyr="R4 MC12 SEEN REG DOC WTHN LST YR"
mc4hwgtregd1="R4 MC15 SP DROVE SELF TO REG DOC"
mc4hwgtregd2="R4 MC15 FAM PD HLP DRVE REG DOC"
mc4hwgtregd3="R4 MC15 VAN PLCE SP LIVE REG DOC"
mc4hwgtregd4="R4 MC15 VAN FR DIS SENIOR REG DC"
mc4hwgtregd5="R4 MC15 PUBLIC TRANSPORT REG DOC"
mc4hwgtregd6="R4 MC15 SP TOOK TAXI TO REG DOC"
mc4hwgtregd7="R4 MC15 SP WALKED TO REG DOC"
mc4hwgtregd8="R4 MC15 REG DOC WAS HOME VISIT"
mc4hwgtregd9="R4 MC15 OTHR SPECIFY REG DOC"
mc4ansitindr="R4 MC16 ANONE SIT IN W YOU AT DR"
mc4tpersevr1="R4 MC19 HLP UPTO EXAM TBL DRESS"
mc4tpersevr2="R4 MC19 REMND SP OF QSTNS FR DOC"
mc4tpersevr3="R4 MC19 ASK TELL DOC THINGS 4 SP"
mc4tpersevr4="R4 MC19 HLP SP UNDERSTAND DOC"
mc4chginspln="R4 MC20 CHGD ADD INS OR DRUG PLN"
mc4anhlpwdec="R4 MC21 ANYONE HELP W DECISION"
mc4dmedssfdf="R4 D DIFF LEVEL MEDICATIONS SELF"
pa4vistfrfam="R4 PA1 EVER VISIT FRIENDS FAMILY"
pa4hlkepfvst="R4 PA2 HLTH KP FR VIST FAM FRNDS"
pa4trkpfrvis="R4 PA3 TRAN PRB KP FR VST FRNDS"
pa4impvstfam="R4 PA4 IMPRTNT VISIT FRNDS FAMLY"
pa4attrelser="R4 PA5 EVER ATTEND RELIG SERVCES"
pa4htkfrrlsr="R4 PA6 HEALTH KEEP FRM RELI SERV"
pa4trprrelsr="R4 PA7 TRAN PRO KEEP FM RELG SER"
pa4imprelser="R4 PA8 HW IMPORT ARE RELIG SERVS"
pa4clbmtgrac="R4 PA9 CLUB MEETINGS GRP ACTIVES"
pa4hlkpfrclb="R4 PA10 HELTH KEP FRM CLB MTINGS"
pa4trprkpfgr="R4 PA11 TRANS PROB KEEP FM GROPS"
pa4imparclub="R4 PA12 IMPORT PARTIC CLUBS GRUP"
pa4outfrenjy="R4 PA13 EVER GO OUT FOR ENJOYMNT"
pa4hlkpgoenj="R4 PA14 HLTH KP GO OUT FOR ENJOY"
pa4trprgoout="R4 PA15 TRANSPROB KEEP FM GO OUT"
pa4impouteny="R4 PA16 IMPORT GO OUT FOR ENJOYT"
pa4workfrpay="R4 PA17 EVER WORK FOR PAY"
pa4hlkpfrwrk="R4 PA18 HEALTH KEEP YOU FRM WORK"
pa4voltrwork="R4 PA19 EVER DO VOLUNTEER WORK"
pa4hlkpfrvol="R4 PA20 HELTH KEEP FM VOLUNTRING"
pa4prcranoth="R4 PA21 PROVIDE CARE ANTHER PERS"
pa4evrgowalk="R4 PA23 EVER GO WALKING"
pa4vigoractv="R4 PA24 EVER VIGOROUS ACTIVITIES"
pa4dofavact="R4 PA25A GET TO DO FAV ACT LST YR"
pa4helmfvact="R4 PA26 HEALTH LIMIT FAV ACTIVTY"
pa1dv2favact="R1 D VERSION 2 FAVORITE ACTIVITY"
sd4smokesnow="R4 SD2 SMOKES NOW"
sd4numcigday="R4 SD3 NUM OF CIGARETTES PER DAY"
pe4whhndsign="R4 PE1 HAND USE TO SIGN YOR NAME"
pe4surghdwrt="R4 PE2 HAVE SURGRY TO HAND WRIST"
pe4surgyside="R4 PE3 WHICH SIDE WAS SURGERY"
pe4flruppain="R4 PE4 EXPER FLARE UP PAIN HAND"
pe4sideflrup="R4 PE5 SIDE CURRNT FLARE UP PAIN"
pe4surgarmsh="R4 PE6 SURGERY ARM OR SHOULDER"
pe4sidsurgar="R4 PE7 SIDE SURGERY ARM OR SHLDR"
pe4surgyhips="R4 PE8 SURG HIPS INCLUD REPLCMNT"
pe4sidhipsrg="R4 PE9 SIDE WAS HIP SURGERY ON"
pe4stndwhold="R4 PE11 STAND WITHOUT HOLDING ON"
pe4upchbyslf="R4 PE12 GET UP OUT CHAIR BY SELF"
pe4wlkdsself="R4 PE13 WALK SHORT DIST BY SELF"
fl4lefthand="R4 F PE CAN SP DO LEFT HAND TEST"
fl4righthand="R4 F PE CAN SP DO RGT HAND TEST"
fl4eiherhand="R4 F PE CAN SP DO EITHR HAND TST"
fl4lftgrptst="R4 F PE CAN SP DO LFT GRIP TEST"
fl4rhtgrptst="R4 F PE CAN SP DO RIGHT GRIP TST"
fl4charstnds="R4 F PE CAN SP DO CHAIR STANDS"
fl4balstands="R4 F PE CAN SP DO BALANCE STANDS"
fl4wlkingrse="R4 F PE CAN SP DO WALKING COURSE"
ba4dblssadm="R4 D BALANCE SIDE BY SIDE ADMIN"
ba4dblstadm="R4 D BALANCE SEMI TANDEM ADMIN"
ba4dblftadm="R4 D BALANCE FULL TANDEM ADMIN"
ba4dblopadm="R4 D BALANCE 1 LEG OP EYE ADMIN"
ba4dblcladm="R4 D BALANCE 1 LEG CLS EYE ADMIN"
wa4dwlkadm="R4 D WALKING COURSE ADMIN"
ch4dschradm="R4 D SINGLE CHAIR ADMIN"
ch4drchradm="R4 D REPEAT CHAIR ADMIN"
gr4dgripadm="R4 D GRIP STRENGTH ADMIN"
wc4dwaistadm="R4 D WAIST CIRCUMFERENCE ADMIN"
pk4dpeakadm="R4 D PEAK AIR FLOW ADMIN"
ab4datemonth="R4 AB COVER DATE MONTH"
ab4dateyear="R4 AB COVER DATE YEAR"
in4strtabhrs="R4 IN8 START TIME HOURS"
in4strtabmin="R4 IN8 START TIME MINUTES"
in4strtmampm="R4 IN8 START TIME AM OR PM"
ba4sxsresult="R4 BA3 SIDE BY SIDE STAND RESULT"
ba4blstdsecs="R4 BA4A SECS SIDE BY SIDE STAND"
ba4blstdhndr="R4 BA4B HNRDS SIDE BY SIDE STND"
ba4rsn1ssstd="R4 BA5 1 NO STAND SP FELT UNSAFE"
ba4rsn2ssstd="R4 BA5 2 NO STAND PRXY FELT UNSF"
ba4rsn3ssstd="R4 BA5 3 NO STND INTWR FELT UNSF"
ba4rsn4ssstd="R4 BA5 4NO STND SP UNABL2UNDRSTD"
ba4rsn9ssstd="R4 BA5 9 NO STAND OTHER SPECIFY"
ba4stdmreslt="R4 BA7 SEMI TANDEM STAND RESULT"
ba4stdmsecs="R4 BA8A SECS HELD SEMI TANDM STD"
ba4stdmhndr="R4 BA8B HNRDS HLD SEMI TANDM STD"
ba4rsn1ststd="R4 BA9 1 NO STNDM SP FELT UNSAFE"
ba4rsn2ststd="R4 BA9 2NO STNDM PRXY FELT UNSAF"
ba4rsn3ststd="R4 BA9 3 NO STNDM INTR FELT UNSF"
ba4rsn4ststd="R4 BA9 4NO STNDM SP UNABL2UNDSTD"
ba4rsn9ststd="R4 BA9 9 NO STNDM OTHER SPECIFY"
ba4ftdmreslt="R4 BA11 FULL TANDEM STAND RESULT"
ba4ftdmsecs="R4 BA12A SECS HLD FULL TANDM STD"
ba4ftdmhndr="R4 BA12B HNRDS HLD FLL TANDM STD"
ba4rsn1ftstd="R4 BA13 1 NO FTNDM SP FLT UNSAFE"
ba4rsn2ftstd="R4 BA13 2NO FTNDM PRXY FLT UNSAF"
ba4rsn3ftstd="R4 BA13 3 NO FTNDM INTR FLT UNSF"
ba4rsn4ftstd="R4 BA13 4NO FTNDM SP UNABL2UNDST"
ba4rsn9ftstd="R4 BA13 9 NO FTNDM OTHER SPECIFY"
ba41leoreslt="R4 BA15 ONE LEG STAND EYES OPEN"
ba41leosfsec="R4 BA16A SECS HLD 1LEG EYES OPEN"
ba41leohndr="R4 BA16B HNRDS HLD 1LEG EYE OPEN"
ba4rsn11leo="R4 BA17 1 NO1LEGEO SP FLT UNSAFE"
ba4rsn21leo="R4 BA17 2NO1LEGEO PRXY FLT UNSAF"
ba4rsn31leo="R4 BA17 3 NO1LEGEO INTR FLT UNSF"
ba4rsn41leo="R4 BA17 4NO1LEGEO SP UNABL2UNDST"
ba4rsn91leo="R4 BA17 9NO1LEGEO OTHER SPECIFY"
ba41lecreslt="R4 BA19 ONE LEG STAND EYES CLOS"
ba41lecsfsec="R4 BA20A SECS HLD 1LEG EYES CLOS"
ba41lechndr="R4 BA20B HNRDS HLD 1LEG EYE CLOS"
ba4rsn11lec="R4 BA21 1 NO1LEGEC SP FLT UNSAFE"
ba4rsn21lec="R4 BA21 2NO1LEGEC PRXY FLT UNSAF"
ba4rsn31lec="R4 BA21 3 NO1LEGEC INTR FLT UNSF"
ba4rsn41lec="R4 BA21 4NO1LEGEC SP UNABL2UNDST"
ba4rsn91lec="R4 BA21 9NO1LEGEC OTHER SPECIFY"
wa4wlkcorspc="R4 WA2 WALKING COURSE SPACE"
wa4wkaidused="R4 WA4 WALKING AID USED COURSE 1"
wa4wlkc1rslt="R4 WA5 WALKING COURSE 1 RESULT"
wa4wlkc1secs="R4 WA6A SECS HLD WALKNG COURSE1"
wa4wlk1hndr="R4 WA6B HNRDS HLD WALKNG COURSE1"
wa4rsn11wkc="R4 WA7 1 WLKCOURS1 SP FLT UNSAFE"
wa4rsn21wkc="R4 WA7 2WLKCOURS1 PRXY FLT UNSAF"
wa4rsn31wkc="R4 WA7 3WLKCOURS1 INTR FLT UNSF"
wa4rsn41wkc="R4 WA7 4WLKCOURS1 SP UNABL2UNDST"
wa4rsn51wkc="R4 WA7 5WLKCOURS1 NOT APPR SPACE"
wa4rsn91wkc="R4 WA7 9WLKCOURS1 OTHER SPECIFY"
wa4wkaidusc2="R4 WA8 WALKING AID USED COURSE 2"
wa4wlkc2rslt="R4 WA9 WALKING COURSE 2 RESULT"
wa4wlkc2secs="R4 WA10A SECS HLD WALKNG COURSE2"
wa4wlk2hndr="R4 WA10B HNRDS HLD WALKNG COURS2"
wa4rsn12wkc="R4 WA11 1 WKCOURS2 SP FLT UNSAFE"
wa4rsn22wkc="R4 WA11 2WKCOURS2 PRXY FLT UNSAF"
wa4rsn32wkc="R4 WA11 3WKCOURS2 INTR FLT UNSF"
wa4rsn42wkc="R4 WA11 4WKCOURS2 SP UNABL2UNDST"
wa4rsn92wkc="R4 WA11 9WKCOURS2 OTHER SPECIFY"
ch4chravail="R4 CH2 APPROPRIATE CHAIR AVAIL"
ch4chstcompl="R4 CH4 CHAIR STND COMPLETED TRY1"
ch4chairheit="R4 CH5 CHAIR HEIGHT(INCHES)"
ch4whlchrusd="R4 CH6 WHEELCHAIR USED"
ch4sgchstres="R4 CH7 SINGLE CHAIR STAND RESLT"
ch4armuse="R4 CH8 CHAIR STAND ARM USE"
ch4rsn11chs="R4 CH9 1CH STAND1 SP FLT UNSAFE"
ch4rsn21chs="R4 CH9 2CH STAND1 PRXY FLT UNSAF"
ch4rsn31chs="R4 CH9 3CH STAND1 INTR FLT UNSF"
ch4rsn41chs="R4 CH9 4CH STAND1 SP UNABL2UNDST"
ch4rsn51chs="R4 CH9 5CH STAND1 NOT APPR CHAIR"
ch4rsn91chs="R4 CH9 9CH STAND1 OTHER SPECIFY"
ch42chstrslt="R4 CH12 REPEAT CHAIR STAND RSLTS"
ch4chstndsec="R4 CH13A TIME REPEAT CH STD SECS"
ch4chstdhndr="R4 CH13B TIME RPEAT CH STD HNRDS"
ch4chstddone="R4 CH14 NUMBER CHAIR STANDS DONE"
ch4chstntdn1="R4 CH15 1 CH STD SP TIRED"
ch4chstntdn2="R4 CH15 2 CH STD SP USED ARMS"
ch4chstntdn3="R4 CH15 3 CH STD OVER 1 MIN"
ch4chstntdn4="R4 CH15 4 CH STD CNCRN SP SAFETY"
ch4chstntdn5="R4 CH15 5 CH STD SP STOPPED"
ch4chstntdn9="R4 CH15 9 CH STD OTHERSPECIFY"
ch4chstntat1="R4 CH16 1 NO CH ST SP UNSAFE"
ch4chstntat2="R4 CH16 2 NO CH ST PRXY UNSAFE"
ch4chstntat3="R4 CH16 3 NO CH ST INTV UNSAFE"
ch4chstntat4="R4 CH16 4 NO CH ST SP UNAB2UNDST"
ch4chstntat9="R4 CH16 9 NO CH ST OTHER SPEC"
gr4handtstd1="R4 GR3 GRIP1 TEST WHICH HAND"
gr4adjgr1ps3="R4 GR4 GRIP1POSITION ADJUST TO 3"
gr4grp1reslt="R4 GR5 GRIP STRENGTH 1 RESULT"
gr4grp1rdng="R4 GR6 GRP1 DISPLAY READING"
gr4grp1noat1="R4 GR7 1 SP FELT UNSAFE"
gr4grp1noat2="R4 GR7 2 PROXY FELT UNSAFE"
gr4grp1noat3="R4 GR7 3 INTERVIEWR FELT UNSAFE"
gr4grp1noat4="R4 GR7 4 SP UNABLE 2 UNDERSTAND"
gr4grp1noat9="R4 GR7 9 OTHER SPECIFY"
gr4handtstd2="R4 GR8 GRIP2 TEST WHICH HAND"
gr4adjgr2ps3="R4 GR9 GRIP2POSITION ADJUST TO 3"
gr4grp2reslt="R4 GR10GRIP STRENGTH 2 RESULT"
gr4grp2rdng="R4 GR11GRP2 DISPLAY READING"
gr4grp2noat1="R4 GR12 1 SP FELT UNSAFE"
gr4grp2noat2="R4 GR12 2 PROXY FELT UNSAFE"
gr4grp2noat3="R4 GR12 3 INTERVIEWR FELT UNSAFE"
gr4grp2noat4="R4 GR12 4 SP UNABLE 2 UNDERSTAND"
gr4grp2noat9="R4 GR12 9 OTHER SPECIFY"
wc4measdiff1="R4 WC2 1 MEAS DIFF NONE"
wc4measdiff2="R4 WC2 2 MEAS DIFF DIFF BREATH"
wc4measdiff3="R4 WC2 3 MEAS DIFF NOHOLD BREATH"
wc4measdiff4="R4 WC2 4 MEAS DIFF EFFORT PAIN"
wc4measdiff5="R4 WC2 5 MEAS DIFF EFFORT OTHER"
wc4measdiff6="R4 WC2 6 MEAS DIFF LOCATE NAVEL"
wc4measdiff9="R4 WC2 9 MEAS DIFF OTHER SPECIFY"
wc4waistrslt="R4 W3 WAIST CIRCUMFRNC RESULTS"
wc4wstmsrinc="R4 W4A WAIST MEASURE INCHES"
wc4wstmsrqrt="R4 W4B WAIST MEASURE QTR INCHES"
wc4wstbulkcl="R4 WC5 BULKY CLOTHING WORN"
wc4whomeasur="R4 WC6 WHO MEASURED"
wc4wstpostn="R4 WC7 POSITION 4 WAIST MEASURE"
wc4wstnotat1="R4 WC8 1 NO WC SP FELT UNSAFE"
wc4wstnotat2="R4 WC8 2 NO WC PROXY UNSAFE"
wc4wstnotat3="R4 WC8 3 NO WC INTERVIEWR UNSAFE"
wc4wstnotat4="R4 WC8 4 NO WC SP UNABLE2UNDRSTD"
wc4wstnotat5="R4 WC8 5 NO WC SP REFUSED"
wc4wstnotat9="R4 WC8 9 NO WC OTHER SPECIFY"
pk4pkarf1pos="R4 PK2 PEAK AIR FLOW 1 POSITION"
pk4pkarfl1ef="R4 PK3 PK AIR FLW 1 EFFORT GIVEN"
pk4pkarfl1rs="R4 PK4 PEAK AIR FLOW 1 RESULT"
pk4pkarfl1rd="R4 PK5 PEAK AIR FLOW 1 READING"
pk4pk1noatt1="R4 PK6 1 PEAK NO SP FELT UNSAFE"
pk4pk1noatt2="R4 PK6 2 PEAK NO PROXY UNSAFE"
pk4pk1noatt3="R4 PK6 3 PEAK NO INTERVWR UNSAFE"
pk4pk1noatt4="R4 PK6 4 PEAK NO SP UNABL2UNDSTD"
pk4pk1noatt9="R4 PK6 9 PEAK NO OTHER SPECIFY"
pk4paf2posit="R4 PK7 PEAK AIR FLOW 2 POSITION"
pk4pkarfl2ef="R4 PK8 PEAK AIR FLW 2 EFFRT GIVN"
pk4pkarfl2rs="R4 PK9 PEAK AIR FLOW 2 RESULT"
pk4pkarfl2rd="R4 PK10 PEAK AIR FLOW 2 READING"
pk4pk2noatt1="R4 PK11 1 PEAK NO SP FELT UNSAFE"
pk4pk2noatt2="R4 PK11 2 PEAK NO PROXY UNSAFE"
pk4pk2noatt3="R4 PK11 3 PEAK NO INTRVWR UNSAFE"
pk4pk2noatt4="R4 PK11 4 PEAK NO SP UNABL2UNDST"
pk4pk2noatt9="R4 PK11 9 PEAK NO OTHER SPECIFY"
cl4endtimhrs="R4 CL1 HRS END TIME HOURS"
cl4endtimmin="R4 CL1 MINS END TIME MINUTES"
cl4endtmampm="R4 CL1 AMPM END TIME AM OR PM"
r4dnhatssppb="R4 D NHATS SPPB SCORE"
r4dnhatsbasc="R4 D NHATS BALANCE SCORE"
r4dnhatswksc="R4 D NHATS WALK SCORE"
r4dnhatschsc="R4 D NHATS REPEAT CHAIR SCORE"
r4dnhatsgrav="R4 D NHATS AVG GRIP SCORE"
r4dnhatsgrb="R4 D NHATS BEST GRIP SCORE"
r4dnhatspkav="R4 D NHATS AVG AIR FLOW SCORE"
r4dnhatspkb="R4 D NHATS BEST AIR FLOW SCORE"
r4dsppbmiss="R4 D REASON MISSING SPPB"
r4dorigsppb="R4 D ORIGINAL SPPB SCORE"
r4dorigbasc="R4 D ORIGINAL BALNCE SCORE"
r4dorigwksc="R4 D ORIGINAL WALK SCORE"
r4dorigchsc="R4 D ORIGINAL REPEAT CHAIR SCORE"
hw4currweigh="R4 HW2 YOU CURRENTLY WEIGH"
hw4lst10pnds="R4 HW4 LOST 10 POUNDS IN LAST YR"
hw4trytolose="R4 HW5 WERE YOU TRYNG LOSE WEGHT"
hw4howtallft="R4 HW7 HOW TALL ARE YOU FEET"
hw4howtallin="R4 HW8 HOW TALL ARE YOU INCHES"
el4mothalive="R4 EL11 YOUR MOTHER STILL LIVING"
el4fathalive="R4 EL12 YOUR FATHER STILL LIVING"
wb4offelche1="R4 WB1 OFTEN YOU FEEL CHEERFUL"
wb4offelche2="R4 WB1 OFTEN YOU FEEL BORED"
wb4offelche3="R4 WB1 OFTEN YOU FEEL FULLOFLIFE"
wb4offelche4="R4 WB1 OFTEN YOU FEEL UPSET"
wb4truestme1="R4 WB2 SP LIFE HAS MEANING PURPS"
wb4truestme2="R4 WB2 SP FEELS CONFIDENT"
wb4truestme3="R4 WB2 SP GAVE UP IMPROVING LIFE"
wb4truestme4="R4 WB2 SP LIKES LIVING SITUATION"
wb4ageyofeel="R4 WB3 AGE YOU FEEL MOST OF TIME"
wb4agrwstmt1="R4 WB4 SP SELF DETERMINATION"
wb4agrwstmt2="R4 WB4 SP WANTS-FINDS WAY TO DO"
wb4agrwstmt3="R4 WB4 SP ADJUSTS TO CHANGE"
ip4covmedcad="R4 IP1 COVERD BY MEDICARE PART D"
ip4otdrugcov="R4 IP2 DRUG COVERG SOME OTHR WAY"
ip4mgapmedsp="R4 IP3 MEDIGAP OR MEDICARE SUPP"
ip4cmedicaid="R4 IP4 COV BY STATE MEDICAID PRG"
ip4covtricar="R4 IP5 COVERED BY TRICARE"
ip4nginslast="R4 IP5A HAVE LTC INS FROM LAST INT"
ip4nginsnurs="R4 IP6 NONGOV INSR FOR NURS HOME"
ip4typcarco1="R4 IP7 LTC INS NURSNG HOME COVD"
ip4typcarco2="R4 IP7 LTC INS ASSISTD LVNG COVD"
ip4typcarco3="R4 IP7 LTC INS HOME HEALTH COVD"
ip4paypremms="R4 IP8 HOW MUCH PAY IN PREMIUMS"
lf4workfpay="R4 LF1 WORKED FOR PAY RECENTLY"
lf4abstlstwk="R4 LF2 ABSENT FRM JOB LAST WEEK"
lf4wrkplstmn="R4 LF3 WORK FOR PAY IN LST MONTH"
lf4mrthnonjb="R4 LF4 MOR THN ONE JOB LAST WEEK"
lf4hrswkwork="R4 LF5 HRS PR WEEK WORK MAIN JOB"
lf4hrwrkltwk="R4 LF6 HOURS WORK LAST WEEK"
lf4hrwrklstw="R4 LF7 HOW MNY HOURS DID YOU WRK"
lf4oftpaid="R4 LF8 HOW OFTN PAID ON MAIN JOB"
lf4huswifwrk="R4 LF13 HUSB WIFE PARTN PAY WORK"
lf4doccup="R4 D CURRENT OCCUPATION CATEGORY  "
hp4ownrentot="R4 HP1 OWN RENT OR OTHER"
hp4mrtpadoff="R4 HP2 MORTGAGE PAID OFF"
hp4mthlymort="R4 HP3 MORTGAGE PAYMNT EACH MNTH"
hp4mortpaymt="R4 HP3A MORTGAGE PAYMENT AMOUNT"
hp4whnpayoff="R4 HP3B WHEN EXPCT PAY OFF MORTG"
hp4amtstlowe="R4 HP3C HOW MUCH STILL OWE"
hp4amoutowed="R4 HP3D THE AMOUNT OWED IS"
hp4homevalue="R4 HP4 PRESENT VALUE OF HOME"
hp4homvalamt="R4 HP4A HOME VALUE AMOUNT"
hp4payrent="R4 HP5 DO YOU PAY RENT"
hp4rentamt="R4 HP6 RENT PAID EACH MONTH"
hp4rentamout="R4 HP6A RENT AMOUNT"
hp4sec8pubsn="R4 HP7 HME SEC 8 PUBL SENOR HOUS"
ew4pycredbal="R4 EW1 PAY OFF CREDIT CARD BALAN"
ew4crecardeb="R4 EW2 TOTAL CREDIT CARD DEBT"
ew4credcdmed="R4 EW3 CREDIT CARD MEDICAL CARE"
ew4amtcrdmed="R4 EW4 AMT ON CARDS FOR MED CARE"
ew4medpaovtm="R4 EW5 MED BILLS PAID OVERTIME"
ew4ampadovrt="R4 EW6 AMT FOR MED BILL OVR TIME"
ew4finhlpfam="R4 EW7 FINANCIAL HELP FRM FAMILY"
ew4whohelfi1="R4 EW8 CHILD HELPED FINANCIALLY"
ew4whohelfi2="R4 EW8 OTHER HELPED FINANCIALLY"
ew4atchhelyr="R4 EW10 AMT FROM CHILDR LST YR"
ew4fingftfam="R4 EW11 FINANCIAL GIFTS TO FAMLY"
ew4whregoth1="R4 EW12 SP GAVE CHILD FINCL HLP"
ew4whregoth2="R4 EW12 SP GAVE GRANDCHD FIN HLP"
ew4whregoth3="R4 EW12 SP GAVE OTHR FINANCL HLP"
ew4amthlpgiv="R4 EW14 AMOUNT OF HELP GIVEN"
ew4progneed1="R4 EW15 SP RECEIVD FOOD STAMPS"
ew4progneed2="R4 EW15 SP REC OTHR FOOD ASST"
ew4progneed3="R4 EW15 SP REC GAS ENERGY ASST"
ew4mealskip1="R4 EW16 SKIP MEALS NO MONEY"
ew4mealskip2="R4 EW16 SKIP MEALS HOW OFTEN"
ew4nopayhous="R4 EW18 NO MONEY FOR HOUSING"
ew4nopayutil="R4 EW18 NO MONEY FOR UTILITIES"
ew4nopaymed="R4 EW18 NO MONEY FOR MEDICAL"
pn4painlim1="R4 PN2A PAIN LIMIT GO OUTSIDE"
pn4painlim2="R4 PN2B PAIN LIMIT HH ACTIVITY"
pn4painlim3="R4 PN2C PAIN LIMIT SHOPPING"
pn4painlim4="R4 PN2D PAIN LIMIT SC ACTIVITY"
pn4painlim5="R4 PN2E PAIN LIMIT WALKING"
pn4painlim6="R4 PN2F PAIN LIMIT SOCIAL ACT"
pn4painall="R4 PN3 PAIN LIMIT OVERALL"
pn4painscale="R4 PN4 AVERAGE PAIN SCALE "
pn4painmonth="R4 PN5A PAIN LAST 24HRS IN MONTH"
pn4painyear="R4 PN5B PAIN LAST 24 HRS IN YEAR"
pt4outgoing="R4 PT2A SP IS OUTGOING"
pt4organized="R4 PT2B SP IS ORGANIZED"
pt4warm="R4 PT2C SP IS WARM"
pt4worrying="R4 PT2D SP IS WORRYING"
pt4creative="R4 PT2E SP IS CREATIVE"
pt4talkative="R4 PT2F SP IS TALKATIVE"
pt4caring="R4 PT2G SP IS CARING"
pt4nervous="R4 PT2H SP IS NERVOUS"
pt4imagine="R4 PT2I SP IS IMAGINATIVE"
pt4thorough="R4 PT2J SP IS THOROUGH"
pt4invention="R4 PT3 INVENTION HELP ACTIVITY"
sl4bedtime1="R4 SL1A USUAL BED TIME HOUR"
sl4bedtime2="R4 SL1B USUAL BED TIME MINUTE"
sl4bedtime3="R4 SL1C USUAL BED TIME AM PM"
sl4asleep1="R4 SL2A HOW LONG FALL ASLEEP HR"
sl4asleep2="R4 SL2B HOW LONG FALL ASLEEP MIN"
sl4morning1="R4 SL3A WAKE UP TIME HOUR"
sl4morning2="R4 SL3B WAKE UP TIME MIN"
sl4morning3="R4 SL3C WAKE UP TIME AM PM"
sl4sleephour="R4 SL4 HOURS OF SLEEP"
sl4sleepbre="R4 SL5 DIF STAYING ASLEEP BREATH"
sl4sleeppain="R4 SL6 DIF STAYING ASLEEP PAIN"
sl4sleepqual="R4 SL7 QUALITY OF SLEEP"
sl4awakedif="R4 SL8 DIF STAYING AWAKE DAY"
sl4napsoft="R4 SL9 HOW OFTEN TAKE NAPS"
sl4naps1="R4 SL10A NAPS LENGTH HR"
sl4naps2="R4 SL10B NAPS LENGTH MIN"
sl4napplan="R4 SL11 WERE NAPS PLANNED"
ir4intlang="R4 IR1A1 INTERVIEW LANGUAGE"
ir4spattitud="R4 IR2 SP ATTITUDE TOWARD INTVW"
ir4undrstand="R4 IR4 SP UNDERSTAND QUESTION"
ir4sppresent="R4 IR4 AMT OF INTERVIW SP PRESNT"
ir4spnotprs1="R4 IR5 REASON SP NOT PRESENT_SLEEP "
ir4spnotprs2="R4 IR5 REASON SP NOT PRESENT_2ILL "
ir4spnotprs3="R4 IR5 REASON SP NOT PRESENT_ALZH "
ir4spnotprs4="R4 IR5 REASON SP NOT PRESENT_PRXYREQ "
ir4spnotprs5="R4 IR5 REASON SP NOT PRESENT_INFCLTY "
ir4spnotprs6="R4 IR5 REASON SP NOT PRESENT_OTHSPFY "
ir4intvwhlp="R4 IR6 ANYONE HELP WITH INTVW"
ir4prsnhlp1="R4 IR6A SPOUSE HELPED WITH INTVW"
ir4prsnhlp2="R4 IR6A CHILD HELPED WITH INTVW"
ir4prsnhlp3="R4 IR6A RELATIVE HELP WITH INTVW"
ir4prsnhlp4="R4 IR6A FRIEND HELPED WITH INTVW"
ir4prsnhlp5="R4 IR6A STAFF HELPED WITH INTVW"
ir4prsnhlp6="R4 IR6A AIDE HELPED WITH INTVW"
ir4prsnhlp91="R4 IR6A OTHER HELPED WITH INTVW"
ir4demolang1="R4 IR10B PHYS ACT DEMO SAFETY TRANS"
ir4sessions="R4 IR12 MORE ONE INTVW SESSION"
ir4sessrsn1="R4 IR12A MORE 1 SESSION SP TIRED"
ir4sessrsn2="R4 IR12A MORE 1 SESSION SP ILL"
ir4sessrsn3="R4 IR12A MORE 1 SESSION SCHEDULE"
ir4sessrsn91="R4 IR12A MORE 1 SESSION OTHER"
ir4conhomapt="R4 IR12C INTRV CONDTD AT HME/APT"
ir4insidhome="R4 IR12E GO INSIDE HOME/APT/UNIT"
ir4condihom1="R4 IR13 PAINT PEELING IN SP HOME"
ir4condihom2="R4 IR13 PESTS IN SP HOME"
ir4condihom3="R4 IR13 BROKN FURNITURE SP HOME"
ir4condihom4="R4 IR13 FLOORING NEEDS REPAIR"
ir4condihom5="R4 IR13 HOME OTHR TRIPPING HAZRD"
ir4clutterr1="R4 IR14 CLUTTR IN INTERVIEW ROOM"
ir4clutterr2="R4 IR14 CLUTTR IN OTHR SP ROOMS"
ir4areacond1="R4 IR15 LITTER GLASS ON SDWLK ST"
ir4areacond2="R4 IR15 GRAFFITI ON BUILDG WALLS"
ir4areacond3="R4 IR15 VACANT HOUSES OR STORES"
ir4condhome1="R4 IR16 BROKEN WINDOWS IN HOME"
ir4condhome2="R4 IR16 CRUMBLNG FOUNDTN IN HOME"
ir4condhome3="R4 IR16 MISSNG BRCKS SIDNG IN HM"
ir4condhome4="R4 IR16 ROOF PROBLEM IN HOME"
ir4condhome5="R4 IR16 BROKEN STEPS TO HOME"
ir4condhome6="R4 IR16 CONTINUOUS SIDEWALKS"
fq4dfacdescr="R4 FQ6 FACILITY TYPE"
fq4dosfacd="R4 FQ6A OTHER SPECIFY FAC TYPE"
fq4prtlivnam="R4 FQ8 FAC NM DIFF4PLC SP LIVES"
fq4dfacarea="R4 FQ10 FACILITY AREA SP LIVES"
fq4dosfaca="R4 FQ10A OTHER SPECIFY FAC AREA"
fq4assdnrsng="R4 FQ11 ASSIST LIV OR NURSG HOME"
fq4othrlevls="R4 FQ12 OTH LEVELS OF CARE AVAIL"
fq4whotlevl1="R4 FQ13 INDEPNDNT LIV CARE AVAIL"
fq4whotlevl2="R4 FQ13 ASSISTED LVNG CARE AVAIL"
fq4whotlevl3="R4 FQ13 ALZHEIMER CARE AVAIL"
fq4whotlevl4="R4 FQ13 NURSING HOME CARE AVAIL"
fq4whotlevl5="R4 FQ13 OTHR SPECIFY CARE AVAIL"
fq4servaval1="R4 FQ15 MEALS AVAIL"
fq4servaval2="R4 FQ15 HELP WITH MEDS AVAIL"
fq4servaval3="R4 FQ15 HELP W BATH DRESS AVAIL"
fq4servaval4="R4 FQ15 LAUNDRY SERVCS AVAIL"
fq4servaval5="R4 FQ15 HOUSEKEEPING SERV AVAIL"
fq4servaval6="R4 FQ15 TRANSPRT MED CARE PROV"
fq4servaval7="R4 FQ15 TRANSPRT TO STORE EVENT"
fq4servaval8="R4 FQ15 RECREATIONAL FAC AVAIL"
fq4servaval9="R4 FQ15 SOCIAL EVENTS AVAIL"
fq4paysourc1="R4 FQ16 SP OR SP FAMILY PAYMENT"
fq4paysourc2="R4 FQ16 SOC SEC SSI PAYMENT"
fq4paysourc3="R4 FQ16 MEDICAID PAYMENT"
fq4paysourc4="R4 FQ16 MEDICARE PAYMENT"
fq4paysourc5="R4 FQ16 PRIVATE INSURANCE PAYMNT"
fq4paysourc6="R4 FQ16 OTHR GOVT PAYMENT"
fq4totalpaym="R4 FQ17 TOTAL PAYMENT FOR CARE"
fq4mnthlyamt="R4 FQ18 TOT MTHLY AMT FOR CARE"
fq4primpayer="R4 FQ19 PRIMARY PAYER FOR CARE"
fq4govsource="R4 FQ20 GOVERNMENT SOURCE"
fq4dlocsp="R4 D FQ6 6A 10 10A FOR SAMP WGT "
w4anfinwgt0="R4 FINAL ANALYTIC WGT FULL SAMP"
w4anfinwgt1="R4 FINAL ANALYTIC WGT REP 1"
w4anfinwgt2="R4 FINAL ANALYTIC WGT REP 2"
w4anfinwgt3="R4 FINAL ANALYTIC WGT REP 3"
w4anfinwgt4="R4 FINAL ANALYTIC WGT REP 4"
w4anfinwgt5="R4 FINAL ANALYTIC WGT REP 5"
w4anfinwgt6="R4 FINAL ANALYTIC WGT REP 6"
w4anfinwgt7="R4 FINAL ANALYTIC WGT REP 7"
w4anfinwgt8="R4 FINAL ANALYTIC WGT REP 8"
w4anfinwgt9="R4 FINAL ANALYTIC WGT REP 9"
w4anfinwgt10="R4 FINAL ANALYTIC WGT REP 10"
w4anfinwgt11="R4 FINAL ANALYTIC WGT REP 11"
w4anfinwgt12="R4 FINAL ANALYTIC WGT REP 12"
w4anfinwgt13="R4 FINAL ANALYTIC WGT REP 13"
w4anfinwgt14="R4 FINAL ANALYTIC WGT REP 14"
w4anfinwgt15="R4 FINAL ANALYTIC WGT REP 15"
w4anfinwgt16="R4 FINAL ANALYTIC WGT REP 16"
w4anfinwgt17="R4 FINAL ANALYTIC WGT REP 17"
w4anfinwgt18="R4 FINAL ANALYTIC WGT REP 18"
w4anfinwgt19="R4 FINAL ANALYTIC WGT REP 19"
w4anfinwgt20="R4 FINAL ANALYTIC WGT REP 20"
w4anfinwgt21="R4 FINAL ANALYTIC WGT REP 21"
w4anfinwgt22="R4 FINAL ANALYTIC WGT REP 22"
w4anfinwgt23="R4 FINAL ANALYTIC WGT REP 23"
w4anfinwgt24="R4 FINAL ANALYTIC WGT REP 24"
w4anfinwgt25="R4 FINAL ANALYTIC WGT REP 25"
w4anfinwgt26="R4 FINAL ANALYTIC WGT REP 26"
w4anfinwgt27="R4 FINAL ANALYTIC WGT REP 27"
w4anfinwgt28="R4 FINAL ANALYTIC WGT REP 28"
w4anfinwgt29="R4 FINAL ANALYTIC WGT REP 29"
w4anfinwgt30="R4 FINAL ANALYTIC WGT REP 30"
w4anfinwgt31="R4 FINAL ANALYTIC WGT REP 31"
w4anfinwgt32="R4 FINAL ANALYTIC WGT REP 32"
w4anfinwgt33="R4 FINAL ANALYTIC WGT REP 33"
w4anfinwgt34="R4 FINAL ANALYTIC WGT REP 34"
w4anfinwgt35="R4 FINAL ANALYTIC WGT REP 35"
w4anfinwgt36="R4 FINAL ANALYTIC WGT REP 36"
w4anfinwgt37="R4 FINAL ANALYTIC WGT REP 37"
w4anfinwgt38="R4 FINAL ANALYTIC WGT REP 38"
w4anfinwgt39="R4 FINAL ANALYTIC WGT REP 39"
w4anfinwgt40="R4 FINAL ANALYTIC WGT REP 40"
w4anfinwgt41="R4 FINAL ANALYTIC WGT REP 41"
w4anfinwgt42="R4 FINAL ANALYTIC WGT REP 42"
w4anfinwgt43="R4 FINAL ANALYTIC WGT REP 43"
w4anfinwgt44="R4 FINAL ANALYTIC WGT REP 44"
w4anfinwgt45="R4 FINAL ANALYTIC WGT REP 45"
w4anfinwgt46="R4 FINAL ANALYTIC WGT REP 46"
w4anfinwgt47="R4 FINAL ANALYTIC WGT REP 47"
w4anfinwgt48="R4 FINAL ANALYTIC WGT REP 48"
w4anfinwgt49="R4 FINAL ANALYTIC WGT REP 49"
w4anfinwgt50="R4 FINAL ANALYTIC WGT REP 50"
w4anfinwgt51="R4 FINAL ANALYTIC WGT REP 51"
w4anfinwgt52="R4 FINAL ANALYTIC WGT REP 52"
w4anfinwgt53="R4 FINAL ANALYTIC WGT REP 53"
w4anfinwgt54="R4 FINAL ANALYTIC WGT REP 54"
w4anfinwgt55="R4 FINAL ANALYTIC WGT REP 55"
w4anfinwgt56="R4 FINAL ANALYTIC WGT REP 56"
w4varstrat="R4 VARIANCE ESTIMATION STRATUM"
w4varunit="R4 VARIANCE ESTIMATION CLUSTER";
run;
