/* NHATS_Round_3_Int_Inc_Imp_Read.SAS - General Use */

/* Section #1 - Creating the Formats */
PROC FORMAT;

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
	  
	VALUE IMP_FMT 
      -9='-9 Missing'
      -1='-1 inapplicable'
      1='1 Not imputed: exact value reported'
      2='2 Imputed: bracket response only'
      3='3 Imputed: missing exact value and bracket response'
	  4='4 Imputed: other';
run;
/* Section #2 - Input statement with variable name and location on the .txt file  
		Reminder - change [PATH] to reflect your file locations       */

Data Int_Inc_Imp_File;
INFILE  "[PATH]\NHATS_Round_3_Int_Inc_Imp_File.txt"
LRECL=172 ;
INPUT @1 spid 8.
			@9 ia3toincimif 2.
			@11 ia3dtoincimi1 8.
			@19 ia3dtoincimi2 8.
			@27 ia3dtoincimi3 8.
			@35 ia3dtoincimi4 8.
			@43 ia3dtoincimi5 8.
			@51 ia3dtoincimi6 8.
			@59 ia3dtoincimi7 8.
			@67 ia3dtoincimi8 8.
			@75 ia3dtoincimi9 8.
			@83 ia3dtoincimi10 8.
			@91 ia3dtoincimi11 8.
			@99 ia3dtoincimi12 8.
			@107 ia3dtoincimi13 8.
			@115 ia3dtoincimi14 8.
			@123 ia3dtoincimi15 8.
			@131 ia3dtoincimi16 8.
			@139 ia3dtoincimi17 8.
			@147 ia3dtoincimi18 8.
			@155 ia3dtoincimi19 8.
			@163 ia3dtoincimi20 8.
			@171 ia3dtoincimreas 2.;
	
/* Section #3 - format assignment statement */
	format ia3toincimif RFDK_Y.
			ia3dtoincimi1-ia3dtoincimi20 RFDK_F.
			ia3dtoincimreas IMP_FMT.;

/* Section #4 - Label assignment statement   */
		Label	spid="NHATS SAMPLED PERSON ID"
			ia3toincimif="R3 F IMPUTED TOTAL INC FLG INTERVAL"		
			ia3dtoincimi1="R3 D IA50 IMPUTED TOTAL INC1 INTERVAL"
			ia3dtoincimi2	="R3 D IA50 IMPUTED TOTAL INC2 INTERVAL"
			ia3dtoincimi3	="R3 D IA50 IMPUTED TOTAL INC3 INTERVAL"
			ia3dtoincimi4	="R3 D IA50 IMPUTED TOTAL INC4 INTERVAL"
			ia3dtoincimi5	="R3 D IA50 IMPUTED TOTAL INC5 INTERVAL"
			ia3dtoincimi6	="R3 D IA50 IMPUTED TOTAL INC6 INTERVAL"
			ia3dtoincimi7	="R3 D IA50 IMPUTED TOTAL INC7 INTERVAL"
			ia3dtoincimi8	="R3 D IA50 IMPUTED TOTAL INC8 INTERVAL"
			ia3dtoincimi9	="R3 D IA50 IMPUTED TOTAL INC9 INTERVAL"
			ia3dtoincimi10 ="R3 D IA50 IMPUTED TOTAL INC10 INTERVAL"
			ia3dtoincimi11 ="R3 D IA50 IMPUTED TOTAL INC11 INTERVAL"
			ia3dtoincimi12 ="R3 D IA50 IMPUTED TOTAL INC12 INTERVAL"
			ia3dtoincimi13 ="R3 D IA50 IMPUTED TOTAL INC13 INTERVAL"
			ia3dtoincimi14 ="R3 D IA50 IMPUTED TOTAL INC14 INTERVAL"
			ia3dtoincimi15 ="R3 D IA50 IMPUTED TOTAL INC15 INTERVAL"
			ia3dtoincimi16 ="R3 D IA50 IMPUTED TOTAL INC16 INTERVAL"
			ia3dtoincimi17 ="R3 D IA50 IMPUTED TOTAL INC17 INTERVAL"
			ia3dtoincimi18 ="R3 D IA50 IMPUTED TOTAL INC18 INTERVAL"
			ia3dtoincimi19 ="R3 D IA50 IMPUTED TOTAL INC19 INTERVAL"
			ia3dtoincimi20 ="R3 D IA50 IMPUTED TOTAL INC20 INTERVAL"
			ia3dtoincimreas="R3 D IMPUTED TOTAL INC REASON";
run;

