options compress=yes reuse=yes;

data Rxdata.Rxfact_2009_day;
   set Rxdata.Rxfact_2009;
   format date date9.;
   format endDate date9.;
   date = input(put(SVC_DT,8.), YYMMDD8.);
   endDate = intnx('DAY' ,date, DAYS_SUPPLY_CNT);
   output;
   do while (date lt endDate) ;
      date = intnx('DAY',date,1);
	  output;
   end;
   drop	MONTH_ID CHNL_CD RX_TYP_CD PAY_TYP_CD MODEL_TYP_CD ;
run;
/* For every months, break into days 
Calculate dose
Aggregate by patient
	Calculate overlap https://communities.sas.com/t5/SAS-Programming/how-to-check-date-overlap-last-visit-s-end-date-is-later-than/td-p/327412
Outcome - table with patient ID and overdose year
*/

