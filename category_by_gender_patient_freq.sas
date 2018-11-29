options compress=yes reuse=yes;

PROC SQL;
create table Rxdata.category_by_gender_freq
		(category char(6), gender char(1), count num, year int);


insert into Rxdata.category_by_gender_freq 
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, pat.PAT_GENDER_CD, 
		count(distinct rx.PATIENT_ID) as PATIENT_COUNT, 2009
from Rxdata.Rxfact_2009 rx left join 
	Rxdata.Patient pat on rx.PATIENT_ID = pat.PATIENT_ID left join
	Rxdata.Products prd on rx.PRODUCT_ID = prd.PRODUCT_ID
	group by category, pat.PAT_GENDER_CD;

insert into Rxdata.category_by_gender_freq 
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, pat.PAT_GENDER_CD, 
		count(distinct rx.PATIENT_ID) as PATIENT_COUNT, 2010
from Rxdata.Rxfact_2010 rx left join 
	Rxdata.Patient pat on rx.PATIENT_ID = pat.PATIENT_ID left join
	Rxdata.Products prd on rx.PRODUCT_ID = prd.PRODUCT_ID
	group by category, pat.PAT_GENDER_CD;

insert into Rxdata.category_by_gender_freq 
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, pat.PAT_GENDER_CD, 
		count(distinct rx.PATIENT_ID) as PATIENT_COUNT, 2011
from Rxdata.Rxfact_2011 rx left join 
	Rxdata.Patient pat on rx.PATIENT_ID = pat.PATIENT_ID left join
	Rxdata.Products prd on rx.PRODUCT_ID = prd.PRODUCT_ID
	group by category, pat.PAT_GENDER_CD;

insert into Rxdata.category_by_gender_freq 
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, pat.PAT_GENDER_CD, 
		count(distinct rx.PATIENT_ID) as PATIENT_COUNT, 2012
from Rxdata.Rxfact_2012 rx left join 
	Rxdata.Patient pat on rx.PATIENT_ID = pat.PATIENT_ID left join
	Rxdata.Products prd on rx.PRODUCT_ID = prd.PRODUCT_ID
	group by category, pat.PAT_GENDER_CD;

insert into Rxdata.category_by_gender_freq 
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, pat.PAT_GENDER_CD, 
		count(distinct rx.PATIENT_ID) as PATIENT_COUNT, 2013
from Rxdata.Rxfact_2013 rx left join 
	Rxdata.Patient pat on rx.PATIENT_ID = pat.PATIENT_ID left join
	Rxdata.Products prd on rx.PRODUCT_ID = prd.PRODUCT_ID
	group by category, pat.PAT_GENDER_CD;

insert into Rxdata.category_by_gender_freq 
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, pat.PAT_GENDER_CD, 
		count(distinct rx.PATIENT_ID) as PATIENT_COUNT, 2014
from Rxdata.Rxfact_2014 rx left join 
	Rxdata.Patient pat on rx.PATIENT_ID = pat.PATIENT_ID left join
	Rxdata.Products prd on rx.PRODUCT_ID = prd.PRODUCT_ID
	group by category, pat.PAT_GENDER_CD;

insert into Rxdata.category_by_gender_freq 
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, pat.PAT_GENDER_CD, 
		count(distinct rx.PATIENT_ID) as PATIENT_COUNT, 2015
from Rxdata.Rxfact_2015 rx left join 
	Rxdata.Patient pat on rx.PATIENT_ID = pat.PATIENT_ID left join
	Rxdata.Products prd on rx.PRODUCT_ID = prd.PRODUCT_ID
	group by category, pat.PAT_GENDER_CD;

insert into Rxdata.category_by_gender_freq 
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, pat.PAT_GENDER_CD, 
		count(distinct rx.PATIENT_ID) as PATIENT_COUNT, 2016
from Rxdata.Rxfact_2016 rx left join 
	Rxdata.Patient pat on rx.PATIENT_ID = pat.PATIENT_ID left join
	Rxdata.Products prd on rx.PRODUCT_ID = prd.PRODUCT_ID
	group by category, pat.PAT_GENDER_CD;

insert into Rxdata.category_by_gender_freq 
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, pat.PAT_GENDER_CD, 
		count(distinct rx.PATIENT_ID) as PATIENT_COUNT, 2017
from Rxdata.Rxfact_2017 rx left join 
	Rxdata.Patient pat on rx.PATIENT_ID = pat.PATIENT_ID left join
	Rxdata.Products prd on rx.PRODUCT_ID = prd.PRODUCT_ID
	group by category, pat.PAT_GENDER_CD;
