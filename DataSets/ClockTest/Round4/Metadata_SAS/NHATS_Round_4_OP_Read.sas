/* NHATS_Round_4_Read_OP.SAS  - Public Use - */

/* Section #1 - Creating the Formats */
Proc format;

    VALUE $RFDK_F
    '-7' = '-7 RF'
    '-8' = '-8 DK'
    '-1' = '-1 Inapplicable'
    '-9' = '-9 Missing';

  VALUE CHILDDEC
    1 =  '1 CHILD DECEASED'
    -7 = '-7 RF'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

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
-1='-1 Inapplicable'
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

Value d4mssadd
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
14='14 no flags and added at IS section'
15='15 no flags and added at HL section'
16='16 no flags and added at SL section';

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
VALUE FQ_4F
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
          1='1 YES'
          2='2 NO';

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

    VALUE R1DRESID
     1 = '1 Community '
     2 = '2 Residential Care Resident not nursing home (SP interview complete)'
     3 = '3 Residential Care Resident not nursing home (FQ only)'
     4 = '4 Nursing Home Resident';

VALUE RFDK_F
    -7 = '-7 RF'
    -8 = '-8 DK'
    -1 = '-1 Inapplicable'
    -9 = '-9 Missing';

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

    VALUE $RFDK_F
    '-7' = '-7 RF'
    '-8' = '-8 DK'
    '-1' = '-1 Inapplicable'
    '-9' = '-9 Missing';

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

  VALUE W200012W
   -7 = '-7 RF'
   -8 = '-8 DK'
   -1 = '-1 Inapplicable'
   -9 = '-9 Missing'
    1 = "1 REGULAR"
    2 = "2 VARIED"  ;

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
run;

/* OP DATA */
/* Section #2 - Input statement with variable name and location on the .txt file  */

Data OP_Public;
    INFILE  "[PATH]\NHATS_Round_4_OP_File.txt"
    lrecl=710;
INPUT @1 spid 8.
@9 opid $3.
@12 opround 2.
@14 r4dresid 2.
@16 r3dresid 2.
@18 r2dresid 2.
@20 r1dresid 2.
@22 op4proxy 2.
@24 op4relatnshp 2.
@26 op4drelatfl 2.
@28 op4drelflro 2.
@30 op4dgender 2.
@32 op4prsninhh 2.
@34 op4dage 2.
@36 op4dagefl 2.
@38 op4dageflro 2.
@40 op4dgenderfl 2.
@42 op4dgenderflro 2.
@44 op4spouprtnr 2.
@46 op4nwspouprt 2.
@48 op4eduspo 2.
@50 op4leveledu 2.
@52 op4childinhh 2.
@54 op4reasgone 2.
@56 op4dspoudec 2.
@58 op4ddeceased 2.
@60 op4chnotinhh 2.
@62 op4educhild 2.
@64 op4martlstat 2.
@66 op4numchldrn 2.
@68 op4anychdu18 2.
@70 op4numchdu18 2.
@72 op4dchilddec 2.
@74 op4dchldedit 2.
@76 op4soclntwrk 2.
@78 op4dsocwrkfl 2.
@80 op4outhlp 2.
@82 op4insdhlp 2.
@84 op4bedhlp 2.
@86 op4tkplhlp1 2.
@88 op4tkplhlp2 2.
@90 op4launhlp 2.
@92 op4shophlp 2.
@94 op4mealhlp 2.
@96 op4bankhlp 2.
@98 op4moneyhlp 2.
@100 op4eathlp 2.
@102 op4bathhlp 2.
@104 op4toilhlp 2.
@106 op4dreshlp 2.
@108 op4medshlp 2.
@110 op4dochlp 2.
@112 op4dochlpmst 2.
@114 op4insurhlp 2.
@116 op4spcaredfr 2.
@118 op4chhlpfin 2.
@120 op4hlpchfin 2.
@122 op4ishelper 2.
@124 op4helpsched 2.
@126 op4numdayswk 2.
@128 op4numdaysmn 2.
@130 op4numhrsday 2.
@132 op4paidhelpr 2.
@134 op4sppayshlp 2.
@136 op4govpayhlp 2.
@138 op4inspayhlp 2.
@140 op4othpayhlp 2.
@142 op4payunit 8.
@150 op4hourlypay 8.2
@158 op4weeklypay 8.
@166 op4monthlypy 8.
@174 op4progmpaid 8.
@182 op4dhrsmth 8.2
@190 op4contctflg 2.
@192 op4dflmiss 2.
@194 op4dmissadd 2.
@196 op4dprobdup  2.
@198 op4ddupeid $3.
@201 op4ddiffop 2.
@203 op3proxy 2.
@205 op3relatnshp 2.
@207 op3drelatfl 2.
@209 op3drelflro 2.
@211 op3dgender 2.
@213 op3prsninhh 2.
@215 op3dage 2.
@217 op3dagefl 2.
@219 op3dageflro 2.
@221 op3dgenderfl 2.
@223 op3dgenderflro 2.
@225 op3spouprtnr 2.
@227 op3nwspouprt 2.
@229 op3eduspo 2.
@231 op3leveledu 2.
@233 op3childinhh 2.
@235 op3reasgone 2.
@237 op3dspoudec 2.
@239 op3ddeceased 2.
@241 op3chnotinhh 2.
@243 op3educhild 2.
@245 op3martlstat 2.
@247 op3numchldrn 2.
@249 op3anychdu18 2.
@251 op3numchdu18 2.
@253 op3dchilddec 2.
@255 op3dchldedit 2.
@257 op3soclntwrk 2.
@259 op3dsocwrkfl 2.
@261 op3outhlp 2.
@263 op3insdhlp 2.
@265 op3bedhlp 2.
@267 op3tkplhlp1 2.
@269 op3tkplhlp2 2.
@271 op3launhlp 2.
@273 op3shophlp 2.
@275 op3mealhlp 2.
@277 op3bankhlp 2.
@279 op3moneyhlp 2.
@281 op3eathlp 2.
@283 op3bathhlp 2.
@285 op3toilhlp 2.
@287 op3dreshlp 2.
@289 op3medshlp 2.
@291 op3dochlp 2.
@293 op3dochlpmst 2.
@295 op3insurhlp 2.
@297 op3spcaredfr 2.
@299 op3chhlpfin 2.
@301 op3hlpchfin 2.
@303 op3ishelper 2.
@305 op3helpsched 2.
@307 op3numdayswk 2.
@309 op3numdaysmn 2.
@311 op3numhrsday 2.
@313 op3paidhelpr 2.
@315 op3sppayshlp 2.
@317 op3govpayhlp 2.
@319 op3inspayhlp 2.
@321 op3othpayhlp 2.
@323 op3payunit 8.
@331 op3hourlypay 8.2
@339 op3weeklypay 8.
@347 op3monthlypy 8.
@355 op3progmpaid 8.
@363 op3dhrsmth 8.2
@371 op3contctflg 2.
@373 op3dflmiss 2.
@375 op3dmissadd 2.
@377 op3dprobdup  2.
@379 op3ddupeid $3.
@382 op3ddiffop 2.
@384 op2proxy 2.
@386 op2relatnshp 2.
@388 op2drelatfl 2.
@390 op2dgender 2.
@392 op2prsninhh 2.
@394 op2dage 2.
@396 op2dagefl 2.
@398 op2dgenderfl 2.
@400 op2spouprtnr 2.
@402 op2nwspouprt 2.
@404 op2eduspo 2.
@406 op2leveledu 2.
@408 op2childinhh 2.
@410 op2reasgone 2.
@412 op2dspoudec 2.
@414 op2ddeceased 2.
@416 op2chnotinhh 2.
@418 op2educhild 2.
@420 op2martlstat 2.
@422 op2numchldrn 2.
@424 op2anychdu18 2.
@426 op2numchdu18 2.
@428 op2dchilddec 2.
@430 op2soclntwrk 2.
@432 op2dsocwrkfl 2.
@434 op2outhlp 2.
@436 op2insdhlp 2.
@438 op2bedhlp 2.
@440 op2tkplhlp1 2.
@442 op2tkplhlp2 2.
@444 op2launhlp 2.
@446 op2shophlp 2.
@448 op2mealhlp 2.
@450 op2bankhlp 2.
@452 op2moneyhlp 2.
@454 op2eathlp 2.
@456 op2bathhlp 2.
@458 op2toilhlp 2.
@460 op2dreshlp 2.
@462 op2medshlp 2.
@464 op2dochlp 2.
@466 op2dochlpmst 2.
@468 op2insurhlp 2.
@470 op2spcaredfr 2.
@472 op2chhlpfin 2.
@474 op2hlpchfin 2.
@476 op2ishelper 2.
@478 op2helpsched 2.
@480 op2numdayswk 2.
@482 op2numdaysmn 2.
@484 op2numhrsday 2.
@486 op2paidhelpr 2.
@488 op2sppayshlp 2.
@490 op2govpayhlp 2.
@492 op2inspayhlp 2.
@494 op2othpayhlp 2.
@496 op2payunit 8.
@504 op2hourlypay 8.2
@512 op2weeklypay 8.
@520 op2monthlypy 8.
@528 op2progmpaid 8.
@536 op2dhrsmth 8.2
@544 op2contctflg 2.
@546 op2dflmiss 2.
@548 op2dmissadd 2.
@550 op2dprobdup 2.
@552 op2ddupeid $3.
@555 op2ddiffop 2.
@557 op1proxy 2.
@559 op1relatnshp 2.
@561 op1gender 2.
@563 op1spouprtnr 2.
@565 op1leveledu 2.
@567 op1prsninhh 2.
@569 op1childinhh 2.
@571 op1dage 2.
@573 op1chnotinhh 2.
@575 op1martlstat 2.
@577 op1numchldrn 2.
@579 op1anychdu18 2.
@581 op1numchdu18 2.
@583 op1soclntwrk 2.
@585 op1dcatgryag 2.
@587 op1dsocwrkfl 2.
@589 op1outhlp 2.
@591 op1insdhlp 2.
@593 op1bedhlp 2.
@595 op1tkplhlp1 2.
@597 op1tkplhlp2 2.
@599 op1launhlp 2.
@601 op1shophlp 2.
@603 op1mealhlp 2.
@605 op1bankhlp 2.
@607 op1moneyhlp 2.
@609 op1eathlp 2.
@611 op1bathhlp 2.
@613 op1toilhlp 2.
@615 op1dreshlp 2.
@617 op1medshlp 2.
@619 op1dochlp 2.
@621 op1dochlpmst 2.
@623 op1insurhlp 2.
@625 op1spcaredfr 2.
@627 op1chhlpfin 2.
@629 op1hlpchfin 2.
@631 op1ishelper 2.
@633 op1helpsched 3.
@636 op1numdayswk 2.
@638 op1numdaysmn 2.
@640 op1numhrsday 2.
@642 op1paidhelpr 2.
@644 op1sppayshlp 2.
@646 op1govpayhlp 2.
@648 op1inspayhlp 2.
@650 op1othpayhlp 2.
@652 op1payunit 8.
@660 op1hourlypay 8.2
@668 op1weeklypay 8.
@676 op1monthlypy 8.
@684 op1progmpaid 8.
@692 op1dhrsmth 8.2
@700 op1contctflg 2.
@702 op1dflmiss 2.
@704 op1dmissadd 2.
@706 op1dprobdup 2.
@708 op1ddupeid $3.;

/* Section #3 - format assignment statement   */
format  spid 8.
        opid op1ddupeid op2ddupeid op3ddupeid $3.
        opround 3.
        op4ddupeid  op3ddupeid  op2ddupeid  op1ddupeid  $RFDK_F.
        op4dchilddec op3dchilddec op2dchilddec   CHILDDEC.
        op4dhrsmth op3dhrsmth  op2dhrsmth  D2HRSMTH.
        op4dmissadd D4MSSADD.
		op3dmissadd op2dmissadd D2MSSADD.
        op1dmissadd DMISSADD.
        op1dcatgryag    DOPAGE3C.
        op1dage DOPAGECT.
        r4dresid f4dresid.
		r3dresid f3dresid.
        r2dresid    F_DRESID.
		op4bankhlp op4bathhlp op4bedhlp op4childinhh op4chnotinhh op4dochlp op4dochlpmst op4dreshlp op4eathlp
 		op4govpayhlp op4insdhlp op4inspayhlp op4insurhlp op4ishelper op4launhlp op4mealhlp op4medshlp op4moneyhlp
 		op4othpayhlp op4outhlp op4proxy op4prsninhh op4shophlp op4soclntwrk op4spcaredfr op4spouprtnr op4sppayshlp
 		op4tkplhlp1  op4tkplhlp2 op4toilhlp op4contctflg op3contctflg 
        op3proxy op3prsninhh op3spouprtnr op3childinhh op3chnotinhh op3soclntwrk op3outhlp op3insdhlp op3bedhlp
        op3tkplhlp1 op3tkplhlp2 op3launhlp op3shophlp op3mealhlp op3bankhlp op3moneyhlp op3eathlp op3bathhlp
        op3toilhlp op3dreshlp op3medshlp op3dochlp op3dochlpmst op3insurhlp op3spcaredfr op3ishelper op3sppayshlp
        op3govpayhlp op3inspayhlp op3othpayhlp op3contctflg op2proxy op2prsninhh op2spouprtnr op2childinhh
        op2soclntwrk op2outhlp op2insdhlp op2bedhlp op2tkplhlp1 op2tkplhlp2 op2launhlp op2shophlp op2mealhlp
        op2bankhlp op2moneyhlp op2eathlp op2bathhlp op2toilhlp op2dreshlp op2medshlp op2dochlp op2dochlpmst
        op2insurhlp op2spcaredfr op2ishelper op2sppayshlp op2govpayhlp op2inspayhlp op2othpayhlp op2contctflg FQ_4F.
        op1dhrsmth  HOURSF.
        r1dresid    R1DRESID.
		op4numchldrn op4numchdu18 op4numdayswk op4numdaysmn op4numhrsday op4hourlypay op4weeklypay op4monthlypy
 		/*op4drelflro  op4dageflro  op4dgenderflro */ op3drelflro  op3dageflro  op3dgenderflro 
        op3numchldrn op3numchdu18 op3numdayswk op3numdaysmn op3numhrsday op3hourlypay op3weeklypay op3monthlypy
        op2numchldrn op2numchdu18 op2numdayswk op2numdaysmn op2numhrsday op2hourlypay op2weeklypay op2monthlypy
        op1numchldrn op1numchdu18 op1numdayswk op1numdaysmn op1numhrsday op1hourlypay op1weeklypay op1monthlypy RFDK_F.
        op4dsocwrkfl op4nwspouprt op4ddeceased op4dspoudec op4chhlpfin op4hlpchfin op4dflmiss 
		op3dsocwrkfl op3nwspouprt op3ddeceased op3dspoudec op3chhlpfin op3hlpchfin op3dflmiss 
        op2dsocwrkfl op2nwspouprt op2ddeceased op2dspoudec op2chhlpfin op2hlpchfin op2dflmiss 
		op2dgenderfl op2chnotinhh op2drelatfl op2dagefl
        op2dprobdup op2ddiffop op1proxy op1spouprtnr op1chnotinhh op1soclntwrk op1dsocwrkfl op1outhlp
        op1insdhlp op1bedhlp op1tkplhlp1 op1tkplhlp2 op1launhlp op1shophlp op1mealhlp op1bankhlp op1moneyhlp op1eathlp
        op1bathhlp op1toilhlp op1dreshlp op1medshlp op1dochlp op1dochlpmst op1insurhlp op1spcaredfr op1chhlpfin
        op1hlpchfin op1ishelper op1dflmiss op1dprobdup  RFDK_Y.
        op4anychdu18 op4paidhelpr 
		op3anychdu18 op3paidhelpr op2anychdu18 op2paidhelpr op1childinhh op1anychdu18 op1paidhelpr op1sppayshlp
        op1govpayhlp op1inspayhlp op1othpayhlp op1contctflg RFDK_YN.
        op4dgender op3dgender op2dgender op1gender W000002W.
        op1prsninhh W000005W.
		op4eduspo op4leveledu op4educhild
		op3eduspo op3leveledu op3educhild op2eduspo op2leveledu op2educhild op1leveledu W200005W.
        op4dage op3dage op2dage W200008X.
        op4relatnshp op3relatnshp op2relatnshp op1relatnshp W200009W.
        op4martlstat op3martlstat op2martlstat op1martlstat W200010W.
        op4helpsched op3helpsched op2helpsched op1helpsched W200012W.
        op4payunit op3payunit op2payunit op1payunit W200015W.
        op4progmpaid op3progmpaid op2progmpaid op1progmpaid W200016W.
        op4reasgone op3reasgone op2reasgone W200061W.
        op3dgenderfl op3ddiffop op3dprobdup op3drelatfl op3dchldedit op3drelflro op3dageflro op3dgenderflro 
		op3dagefl 
		op4dgenderfl op4ddiffop op4dprobdup op4drelatfl op4dchldedit op4drelflro op4dageflro op4dgenderflro 
		op4dagefl  RFDK_Y. ;

    /* Section #4 - Label assignment statement   */
LABEL spid="NHATS SAMPLED PERSON ID"
opid="OTHER PERSON ID"
opround="ROUND OTHER PERSON ADDED"
r4dresid="R4 D RESIDENTIAL CARE STATUS"
r3dresid="R3 D RESIDENTIAL CARE STATUS"
r2dresid="R2 D RESIDENTIAL CARE STATUS"
r1dresid="R1 D RESIDENTIAL CARE STATUS"
op4proxy="R4 IS2 PROXY"
op4relatnshp="R4 RELASHIP TO SP UPDATE AND NEW"
op4drelatfl="R4 D RELATIONSHIP TO SP CORRECTED R4"
op4drelflro="R4 D RELATIONSHIP TO SP ROUND LAST CORRECTED"
op4dgender="R4 D GENDER UPDATE AND NEW"
op4prsninhh="R4 OP IN HOUSEHOLD UPDATE AND NEW"
op4dage="R4 D OP CAT AGE UPDATE AND NEW"
op4dagefl="R4 D OP AGE CORRECTED R4"
op4dageflro="R4 D OP AGE ROUND LAST CORRECTED"
op4dgenderfl="R4 D GENDER CORRECTED"
op4dgenderflro="R4 D OP GENDER ROUND LAST CORRECTED"
op4spouprtnr="R4 SPOUSE PARTNER"
op4nwspouprt="R4 NEW SPOUSE PARTNER THIS ROUND"
op4eduspo="R4 HH9 SPOU PART EDUC WHEN ADDED"
op4leveledu="R4 OP HIGHEST ED WHEN ADDED"
op4childinhh="R4 CHILD IN HOUSEHOLD UPDATE AND NEW"
op4reasgone="R4 HH13E REASON GONE FROM HH"
op4dspoudec="R4 D SPOUSE DIED"
op4ddeceased="R4 D SPOUSE CHILD HH MEMBER DIED"
op4chnotinhh="R4 CHILD NOT HOUSEHOLD UPDATE AND NEW"
op4educhild="R4 HH9 CHILD EDUC WHEN ADDED"
op4martlstat="R4 CHILD MARITL STAT WHEN ADDED"
op4numchldrn="R4 CHILD NUM CHILDRN WHEN ADDED"
op4anychdu18="R4 CHILD CHILD U 18 WHEN ADDED"
op4numchdu18="R4 CHILD NUM CHILD U 18 WHEN ADDED"
op4dchilddec="R4 D CHILD NOT IN HH DIED"
op4dchldedit="R4 D CHILD ADDED IN EDITING AT ROUND 4"
op4soclntwrk="R4 SN2 PART OF SP SOCIAL NETWORK"
op4dsocwrkfl="R4 D LIKELY SOCIAL NETWRK MEMBER"
op4outhlp="R4 MO6A HELPS SP GO OUTSIDE"
op4insdhlp="R4 MO19A HELPS SP INSIDE HOUSE"
op4bedhlp="R4 MO25A HELPS SP OUT OF BED"
op4tkplhlp1="R4 DT5A TAKES SP PLACES MOST"
op4tkplhlp2="R4 DT7A TAKES SP PLACES OTH"
op4launhlp="R4 HA3A HELPS SP WITH LAUNDRY"
op4shophlp="R4 HA25A HELPS SP WITH SHOPPING"
op4mealhlp="R4 HA32A HELPS SP WITH MEALS"
op4bankhlp="R4 HA42A HELPS SP WITH BANKING"
op4moneyhlp="R4 HA52A HELPS SP WITH MONEY"
op4eathlp="R4 SC3A HELPS SP WITH EATING"
op4bathhlp="R4 SC11A HELPS SP WITH BATHING"
op4toilhlp="R4 SC17A HELPS SP WITH TOILETING"
op4dreshlp="R4 SC23A HELPS SP WITH DRESSING"
op4medshlp="R4 MC5A HELPS SP WITH MEDICINES"
op4dochlp="R4 MC17A SITS IN W SP AT DRS"
op4dochlpmst="R4 MC18 SITS MOST IF MORE THAN 1"
op4insurhlp="R4 MC22A HELPS WITH INSUR DECIS"
op4spcaredfr="R4 PA22D SP CARED FOR PERSON"
op4chhlpfin="R4 EW9 CHILDREN WHO HELP FINANCE"
op4hlpchfin="R4 EW13 HELPED CHILDREN FINANCE"
op4ishelper="R4 BXHL2 ELIGIBLE HL SECTION"
op4helpsched="R4 HL1 HELP IS REG SCHEDULED"
op4numdayswk="R4 HL2 NUM DAYS HELP PER WK"
op4numdaysmn="R4 HL3 NUM DAYS HELP PER MON"
op4numhrsday="R4 HL4 NUM HRS HELP PER DAY"
op4paidhelpr="R4 HL5 HELPER IS PAID"
op4sppayshlp="R4 HL6 SP PAYS FOR HELP"
op4govpayhlp="R4 HL6 GOVT PAYS FOR HELP"
op4inspayhlp="R4 HL6 INSUR PAYS FOR HELP"
op4othpayhlp="R4 HL6 OTHER PAYS FOR HELP"
op4payunit="R4 HL7 PAYMENT UNIT"
op4hourlypay="R4 HL7A HOURLY AMOUNT PAID"
op4weeklypay="R4 HL7B WEEKLY AMOUNT PAID"
op4monthlypy="R4 HL7C MONTHLY AMOUNT PAID"
op4progmpaid="R4 HL8 PROGRAM PAID FOR HELPER"
op4dhrsmth="R4 D HL2 HL3 HL4 HRS HELP MONTH"
op4contctflg="R4 PERSON IS LISTED AS CONTACT"
op4dflmiss="R4 D NO FLAGS SET FOR PERSON"
op4dmissadd ="R4 D WHERE NO FLAGS PERSN ADDED"
op4dprobdup ="R4 D OTH PERSN PROBABLE DUPLICAT"
op4ddupeid="R4 D POSSIBLE DUPLICATE OF ID"
op4ddiffop="R4 D SAME R1 OPID BUT DIFF PRSN"
op3proxy="R3 IS2 PROXY"
op3relatnshp="R3 RELASHIP TO SP UPDATE AND NEW"
op3drelatfl="R3 D RELATIONSHIP TO SP CORRECTED R3"
op3drelflro="R3 D RELATIONSHIP TO SP ROUND LAST CORRECTED"
op3dgender="R3 D GENDER UPDATE AND NEW"
op3prsninhh="R3 OP IN HOUSEHOLD UPDATE AND NEW"
op3dage="R3 D OP CAT AGE UPDATE AND NEW"
op3dagefl="R3 D OP AGE CORRECTED R3"
op3dageflro="R3 D OP AGE ROUND LAST CORRECTED"
op3dgenderfl="R3 D GENDER CORRECTED"
op3dgenderflro="R3 D OP GENDER ROUND LAST CORRECTED"
op3spouprtnr="R3 SPOUSE PARTNER"
op3nwspouprt="R3 NEW SPOUSE PARTNER THIS ROUND"
op3eduspo="R3 HH9 SPOU PART EDUC WHEN ADDED"
op3leveledu="R3 OP HIGHEST ED WHEN ADDED"
op3childinhh="R3 CHILD IN HOUSEHOLD UPDATE AND NEW"
op3reasgone="R3 HH13E REASON GONE FROM HH"
op3dspoudec="R3 D SPOUSE DIED"
op3ddeceased="R3 D SPOUSE CHILD HH MEMBER DIED"
op3chnotinhh="R3 CHILD NOT HOUSEHOLD UPDATE AND NEW"
op3educhild="R3 HH9 CHILD EDUC WHEN ADDED"
op3martlstat="R3 CHILD MARITL STAT WHEN ADDED"
op3numchldrn="R3 CHILD NUM CHILDRN WHEN ADDED"
op3anychdu18="R3 CHILD CHILD U 18 WHEN ADDED"
op3numchdu18="R3 CHILD NUM CHILD U 18 WHEN ADDED"
op3dchilddec="R3 D CHILD NOT IN HH DIED"
op3dchldedit="R3 D CHILD ADDED IN EDITING AT ROUND 3"
op3soclntwrk="R3 SN2 PART OF SP SOCIAL NETWORK"
op3dsocwrkfl="R3 D LIKELY SOCIAL NETWRK MEMBER"
op3outhlp="R3 MO6A HELPS SP GO OUTSIDE"
op3insdhlp="R3 MO19A HELPS SP INSIDE HOUSE"
op3bedhlp="R3 MO25A HELPS SP OUT OF BED"
op3tkplhlp1="R3 DT5A TAKES SP PLACES MOST"
op3tkplhlp2="R3 DT7A TAKES SP PLACES OTH"
op3launhlp="R3 HA3A HELPS SP WITH LAUNDRY"
op3shophlp="R3 HA25A HELPS SP WITH SHOPPING"
op3mealhlp="R3 HA32A HELPS SP WITH MEALS"
op3bankhlp="R3 HA42A HELPS SP WITH BANKING"
op3moneyhlp="R3 HA52A HELPS SP WITH MONEY"
op3eathlp="R3 SC3A HELPS SP WITH EATING"
op3bathhlp="R3 SC11A HELPS SP WITH BATHING"
op3toilhlp="R3 SC17A HELPS SP WITH TOILETING"
op3dreshlp="R3 SC23A HELPS SP WITH DRESSING"
op3medshlp="R3 MC5A HELPS SP WITH MEDICINES"
op3dochlp="R3 MC17A SITS IN W SP AT DRS"
op3dochlpmst="R3 MC18 SITS MOST IF MORE THAN 1"
op3insurhlp="R3 MC22A HELPS WITH INSUR DECIS"
op3spcaredfr="R3 PA22D SP CARED FOR PERSON"
op3chhlpfin="R3 EW9 CHILDREN WHO HELP FINANCE"
op3hlpchfin="R3 EW13 HELPED CHILDREN FINANCE"
op3ishelper="R3 BXHL2 ELIGIBLE HL SECTION"
op3helpsched="R3 HL1 HELP IS REG SCHEDULED"
op3numdayswk="R3 HL2 NUM DAYS HELP PER WK"
op3numdaysmn="R3 HL3 NUM DAYS HELP PER MON"
op3numhrsday="R3 HL4 NUM HRS HELP PER DAY"
op3paidhelpr="R3 HL5 HELPER IS PAID"
op3sppayshlp="R3 HL6 SP PAYS FOR HELP"
op3govpayhlp="R3 HL6 GOVT PAYS FOR HELP"
op3inspayhlp="R3 HL6 INSUR PAYS FOR HELP"
op3othpayhlp="R3 HL6 OTHER PAYS FOR HELP"
op3payunit="R3 HL7 PAYMENT UNIT"
op3hourlypay="R3 HL7A HOURLY AMOUNT PAID"
op3weeklypay="R3 HL7B WEEKLY AMOUNT PAID"
op3monthlypy="R3 HL7C MONTHLY AMOUNT PAID"
op3progmpaid="R3 HL8 PROGRAM PAID FOR HELPER"
op3dhrsmth="R3 D HL2 HL3 HL4 HRS HELP MONTH"
op3contctflg="R3 PERSON IS LISTED AS CONTACT"
op3dflmiss="R3 D NO FLAGS SET FOR PERSON"
op3dmissadd ="R3 D WHERE NO FLAGS PERSN ADDED"
op3dprobdup ="R3 D OTH PERSN PROBABLE DUPLICAT"
op3ddupeid="R3 D POSSIBLE DUPLICATE OF ID"
op3ddiffop="R3 D SAME R1 OPID BUT DIFF PRSN"
op2proxy="R2 IS2 PROXY"
op2relatnshp="R2 RELASHIP TO SP UPDATE AND NEW"
op2drelatfl="R2 D RELATIONSHIP TO SP CORRECTED R2"
op2dgender="R2 D GENDER UPDATE AND NEW"
op2prsninhh="R2 OP IN HOUSEHOLD UPDATE AND NEW"
op2dage="R2 D OP CAT AGE UPDATE AND NEW"
op2dagefl="R2 D OP AGE CORRECTED R2"
op2dgenderfl="R2 D GENDER CORRECTED"
op2spouprtnr="R2 SPOUSE PARTNER"
op2nwspouprt="R2 NEW SPOUSE PARTNER THIS ROUND"
op2eduspo="R2 HH9 SPOU PART EDUC WHEN ADDED"
op2leveledu="R2 OP HIGHEST ED UPDATE AND NEW"
op2childinhh="R2 CHILD IN HOUSEHOLD UPDATE AND NEW"
op2reasgone="R2 HH13E REASON GONE FROM HH"
op2dspoudec="R2 D SPOUSE DIED"
op2ddeceased="R2 D SPOUSE CHILD HH MEMBER DIED"
op2chnotinhh="R2 CHILD NOT HOUSEHOLD UPDATE AND NEW"
op2educhild="R2 HH9 CHILD EDUC WHEN ADDED"
op2martlstat="R2 CHILD MARITL STAT WHEN ADDED"
op2numchldrn="R2 CHILD NUM CHILDRN WHEN ADDED"
op2anychdu18="R2 CHILD CHILD U 18 WHEN ADDED"
op2numchdu18="R2 CHILD NUM CHILD U 18 WHEN ADDED"
op2dchilddec="R2 D CHILD NOT IN HH DIED"
op2soclntwrk="R2 SN2 PART OF SP SOCIAL NETWORK"
op2dsocwrkfl="R2 D LIKELY SOCIAL NETWRK MEMBER"
op2outhlp="R2 MO6A HELPS SP GO OUTSIDE"
op2insdhlp="R2 MO19A HELPS SP INSIDE HOUSE"
op2bedhlp="R2 MO25A HELPS SP OUT OF BED"
op2tkplhlp1="R2 DT5A TAKES SP PLACES MOST"
op2tkplhlp2="R2 DT7A TAKES SP PLACES OTH"
op2launhlp="R2 HA3A HELPS SP WITH LAUNDRY"
op2shophlp="R2 HA25A HELPS SP WITH SHOPPING"
op2mealhlp="R2 HA32A HELPS SP WITH MEALS"
op2bankhlp="R2 HA42A HELPS SP WITH BANKING"
op2moneyhlp="R2 HA52A HELPS SP WITH MONEY"
op2eathlp="R2 SC3A HELPS SP WITH EATING"
op2bathhlp="R2 SC11A HELPS SP WITH BATHING"
op2toilhlp="R2 SC17A HELPS SP WITH TOILETING"
op2dreshlp="R2 SC23A HELPS SP WITH DRESSING"
op2medshlp="R2 MC5A HELPS SP WITH MEDICINES"
op2dochlp="R2 MC17A SITS IN W SP AT DRS"
op2dochlpmst="R2 MC18 SITS MOST IF MORE THAN 1"
op2insurhlp="R2 MC22A HELPS WITH INSUR DECIS"
op2spcaredfr="R2 PA22D SP CARED FOR PERSON"
op2chhlpfin="R2 EW9 CHILDREN WHO HELP FINANCE"
op2hlpchfin="R2 EW13 HELPED CHILDREN FINANCE"
op2ishelper="R2 BXHL2 ELIGIBLE HL SECTION"
op2helpsched="R2 HL1 HELP IS REG SCHEDULED"
op2numdayswk="R2 HL2 NUM DAYS HELP PER WK"
op2numdaysmn="R2 HL3 NUM DAYS HELP PER MON"
op2numhrsday="R2 HL4 NUM HRS HELP PER DAY"
op2paidhelpr="R2 HL5 HELPER IS PAID"
op2sppayshlp="R2 HL6 SP PAYS FOR HELP"
op2govpayhlp="R2 HL6 GOVT PAYS FOR HELP"
op2inspayhlp="R2 HL6 INSUR PAYS FOR HELP"
op2othpayhlp="R2 HL6 OTHER PAYS FOR HELP"
op2payunit="R2 HL7 PAYMENT UNIT"
op2hourlypay="R2 HL7A HOURLY AMOUNT PAID"
op2weeklypay="R2 HL7B WEEKLY AMOUNT PAID"
op2monthlypy="R2 HL7C MONTHLY AMOUNT PAID"
op2progmpaid="R2 HL8 PROGRAM PAID FOR HELPER"
op2dhrsmth="R2 D HL2 HL3 HL4 HRS HELP MONTH"
op2contctflg="R2 PERSON IS LISTED AS CONTACT"
op2dflmiss="R2 D NO FLAGS SET FOR PERSON"
op2dmissadd ="R2 D WHERE NO FLAGS PERSN ADDED"
op2dprobdup ="R2 D OTH PERSN PROBABLE DUPLICAT"
op2ddupeid="R2 D POSSIBLE DUPLICATE OF ID"
op2ddiffop="R2 D SAME R1 OPID BUT DIFF PRSN"
op1proxy="R1 IS2 PROXY"
op1relatnshp="R1 OTHR PRSN RELATIONSHIP TO SP"
op1gender="R1 OTHER PERSON GENDER"
op1spouprtnr="R1 BXHH4A SPOUSE PARTNER"
op1leveledu="R1 OP HIGHEST LEVEL EDUCATION"
op1prsninhh="R1 OTHER PRSN IN HOUSEHOLD"
op1childinhh="R1 HH15 CHILD IN HOUSEHOLD"
op1dage="R1 D OTH PERSN CAT AGE AT INTVW"
op1chnotinhh="R1 CS2 CHILD NOT IN HOUSEHOLD"
op1martlstat="R1 OTHER PERSON MARITAL STATUS"
op1numchldrn="R1 OTHER PRSN NUMBER OF CHILDREN"
op1anychdu18="R1 OTH PRS ANY CHILDREN UNDER 18"
op1numchdu18="R1 OTH PR NUMBER OF CHILDREN U18"
op1soclntwrk="R1 SN2 PART OF SP SOCIAL NETWORK"
op1dcatgryag="R1 D OTH PERSN SN CAT AGE"
op1dsocwrkfl="R1 D LIKELY SOCIAL NETWRK MEMBER"
op1outhlp="R1 MO6A HELPS SP GO OUTSIDE"
op1insdhlp="R1 MO19A HELPS SP INSIDE HOUSE"
op1bedhlp="R1 MO25A HELPS SP OUT OF BED"
op1tkplhlp1="R1 DT5A TAKES SP PLACES MOST"
op1tkplhlp2="R1 DT7A TAKES SP PLACES OTH"
op1launhlp="R1 HA3A HELPS SP WITH LAUNDRY"
op1shophlp="R1 HA3A HELPS SP WITH SHOPPING"
op1mealhlp="R1 HA32A HELPS SP WITH MEALS"
op1bankhlp="R1 HA42A HELPS SP WITH BANKING"
op1moneyhlp="R1 HA 52A HELPS SP WITH MONEY"
op1eathlp="R1 SC3A HELPS SP WITH EATING"
op1bathhlp="R1 SC11A HELPS SP WITH BATHING"
op1toilhlp="R1 SC17A HELPS SP WITH TOILETING"
op1dreshlp="R1 SC23A HELPS SP WITH DRESSING"
op1medshlp="R1 MC5A HELPS SP WITH MEDICINES"
op1dochlp="R1 MC17A SITS IN W SP AT DRS"
op1dochlpmst="R1 MC18 SITS MOST IF MORE THAN 1"
op1insurhlp="R1 MC22A HELPS WITH INSUR DECIS"
op1spcaredfr="R1 PA22D SP CARED FOR PERSON"
op1chhlpfin="R1 EW9 CHILDREN WHO HELP FINANCE "
op1hlpchfin="R1 EW13 HELPED CHILDREN FINANCE "
op1ishelper="R1 BXHL1 HELPS SP"
op1helpsched="R1 HL1 HELP IS REG SCHEDULED"
op1numdayswk="R1 HL2 NUM DAYS HELP PER WK"
op1numdaysmn="R1 HL3 NUM DAYS HELPS PER MON"
op1numhrsday="R1 HL4 NUM HRS HELPS PER DAY"
op1paidhelpr="R1 HL5 HELPER IS PAID"
op1sppayshlp="R1 HL6 SP PAYS FOR HELP"
op1govpayhlp="R1 HL6 GOVT PAYS FOR HELP"
op1inspayhlp="R1 HL6 INSUR PAYS FOR HELP"
op1othpayhlp="R1 HL6 OTHER PAYS FOR HELP"
op1payunit="R1 HL7 PAYMENT UNIT"
op1hourlypay="R1 HL7A HOURLY AMOUNT PAID"
op1weeklypay="R1 HL7B WEEKLY AMOUNT PAID"
op1monthlypy="R1 HL7C MONTHLY AMOUNT PAID"
op1progmpaid="R1 HL8 PROGRAM PAID FOR HELPER"
op1dhrsmth="R1 D HL2 HL3 HL4 HRS HELP MONTH"
op1contctflg="R1 PERSON LISTED AS CONTACT"
op1dflmiss="R1 D NO FLAGS SET FOR PERSON"
op1dmissadd="R1D WHERE NO FLAGS PERSN ADDED"
op1dprobdup="R1 D OTH PERSN PROBABLE DUPLICAT"
op1ddupeid="R1 D POSSIBLE DUPLICATE OF ID";

run;

