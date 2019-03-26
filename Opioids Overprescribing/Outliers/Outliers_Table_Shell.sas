proc sql;

/*
title 'payment distribution under 90';
select rx.PAY_TYP_CD, count(rx.PAY_TYP_CD) format=comma11.0
from rxdata.Rxfact_2009 rx join rxdata.Yearly_dose_2009 yr
	on rx.CLAIM_ID = yr.CLAIM_ID
where yr.DOSE < 90
group by rx.PAY_TYP_CD;


title 'payment distribution over 350';
select rx.PAY_TYP_CD, count(rx.PAY_TYP_CD) format=comma11.0
from rxdata.Rxfact_2009 rx join rxdata.Yearly_dose_2009 yr
	on rx.CLAIM_ID = yr.CLAIM_ID
where yr.DOSE >= 350
group by rx.PAY_TYP_CD;
*/
/*
title 'Patient id missing under 90';
select count(rx.PATIENT_ID) format=comma11.0
from rxdata.Rxfact_2009 rx join rxdata.Yearly_dose_2009 yr
	on rx.CLAIM_ID = yr.CLAIM_ID
where yr.DOSE < 90 and rx.PATIENT_ID is null;


title 'Patient id missing over 350';
select count(rx.PATIENT_ID) format=comma11.0
from rxdata.Rxfact_2009 rx join rxdata.Yearly_dose_2009 yr
	on rx.CLAIM_ID = yr.CLAIM_ID
where yr.DOSE >= 350 and rx.PATIENT_ID is null;

title 'Prescriber id missing under 90';
select count(rx.PROVIDER_ID) format=comma11.0
from rxdata.Rxfact_2009 rx join rxdata.Yearly_dose_2009 yr
	on rx.CLAIM_ID = yr.CLAIM_ID
where yr.DOSE < 90 and rx.PROVIDER_ID is null;


title 'Prescriber id missing over 350';
select count(rx.PROVIDER_ID) format=comma11.0
from rxdata.Rxfact_2009 rx join rxdata.Yearly_dose_2009 yr
	on rx.CLAIM_ID = yr.CLAIM_ID
where yr.DOSE >= 350 and rx.PROVIDER_ID is null;
*/
/*
title 'Channel distribution under 90';
select rx.CHNL_CD, count(rx.CHNL_CD) format=comma11.0
from rxdata.Rxfact_2009 rx join rxdata.Yearly_dose_2009 yr
	on rx.CLAIM_ID = yr.CLAIM_ID
where yr.DOSE < 90
group by rx.CHNL_CD;


title 'Channel distribution over 350';
select rx.CHNL_CD, count(rx.CHNL_CD) format=comma11.0
from rxdata.Rxfact_2009 rx join rxdata.Yearly_dose_2009 yr
	on rx.CLAIM_ID = yr.CLAIM_ID
where yr.DOSE >= 350
group by rx.CHNL_CD;
*/
/*
ODS TAGSETS.EXCELXP
file='C:\Projects\Rx_Data_Sas\Results\Provider zipcode distribution.xls'
STYLE=minimal
OPTIONS (Orientation = 'landscape'
FitToPage = 'yes'
Pages_FitWidth = '1'
Pages_FitHeight = '100' );

title 'Provider zipcode distribution under 90';
select py.ZIP, count(py.ZIP) 
from rx_desc.Physician py
where py.PROVIDER_ID in (select distinct rx.PROVIDER_ID
							from rxdata.Rxfact_2009 rx join rxdata.Yearly_dose_2009 yr
								on rx.CLAIM_ID = yr.CLAIM_ID
							where yr.DOSE < 90)
group by py.ZIP;


title 'Provider zipcode distribution over 350';
select py.ZIP, count(py.ZIP) 
from rx_desc.Physician py
where py.PROVIDER_ID in (select distinct rx.PROVIDER_ID
							from rxdata.Rxfact_2009 rx join rxdata.Yearly_dose_2009 yr
								on rx.CLAIM_ID = yr.CLAIM_ID
							where yr.DOSE >= 350)
group by py.ZIP;

ODS TAGSETS.EXCELXP CLOSE;
*/

/*title 'Provider gender distribution under 90';
select py.GENDER_CD, count(py.GENDER_CD) 
from rx_desc.Physician py
where py.PROVIDER_ID in (select distinct rx.PROVIDER_ID
							from rxdata.Rxfact_2009 rx join rxdata.Yearly_dose_2009 yr
								on rx.CLAIM_ID = yr.CLAIM_ID
							where yr.DOSE < 90)
group by py.GENDER_CD;


title 'Provider gender distribution over 350';
select py.GENDER_CD, count(py.GENDER_CD) 
from rx_desc.Physician py
where py.PROVIDER_ID in (select distinct rx.PROVIDER_ID
							from rxdata.Rxfact_2009 rx join rxdata.Yearly_dose_2009 yr
								on rx.CLAIM_ID = yr.CLAIM_ID
							where yr.DOSE >= 350)
group by py.GENDER_CD;*/

ODS TAGSETS.EXCELXP
file='C:\Projects\Rx_Data_Sas\Results\Top 5 specialities distribution.xls'
STYLE=minimal
OPTIONS (Orientation = 'landscape'
FitToPage = 'yes'
Pages_FitWidth = '1'
Pages_FitHeight = '100' );

title 'Top 5 specialities distribution under 90';
select py.PRI_SPCL_CD, count(PRI_SPCL_CD) 
from rx_desc.Physician py
where py.PROVIDER_ID in (select distinct rx.PROVIDER_ID
							from rxdata.Rxfact_2009 rx join rxdata.Yearly_dose_2009 yr
								on rx.CLAIM_ID = yr.CLAIM_ID
							where yr.DOSE < 90)
group by py.PRI_SPCL_CD;


title 'Top 5 specialities distribution over 350';
select py.PRI_SPCL_CD, count(py.PRI_SPCL_CD) 
from rx_desc.Physician py
where py.PROVIDER_ID in (select distinct rx.PROVIDER_ID
							from rxdata.Rxfact_2009 rx join rxdata.Yearly_dose_2009 yr
								on rx.CLAIM_ID = yr.CLAIM_ID
							where yr.DOSE >= 350)
group by py.PRI_SPCL_CD;

ODS TAGSETS.EXCELXP CLOSE;
