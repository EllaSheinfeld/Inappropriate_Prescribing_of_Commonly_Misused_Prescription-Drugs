Proc SQL;
title 'create a combined product_mme table';
create table rxdata.product_mme as
select distinct prd.PRODUCT_ID, mme.NDC_CD, mme.MME_Conversion_Factor, mme.STRN as STRENGTH
from rxdata.products prd join rxdata.Markopioidsmme mme
	on prd.NDC_CD = mme.NDC_CD;
run;



PROC SQL;
create table rxdata.rxfact_2009_comb as
select rx.MONTH_ID, rx.SVC_DT, rx.PATIENT_ID, rx.CLAIM_ID, rx.PROVIDER_ID, rx.PRODUCT_ID, rx.DSPNSD_QTY, rx.DAYS_SUPPLY_CNT,
		mme.MME_Conversion_Factor, mme.STRENGTH
	from rxdata.rxfact_2009 rx join rxdata.product_mme mme on rx.PRODUCT_ID = mme.PRODUCT_ID;


create table rxdata.rxfact_2010_comb as
select rx.MONTH_ID, rx.SVC_DT, rx.PATIENT_ID, rx.CLAIM_ID, rx.PROVIDER_ID, rx.PRODUCT_ID, rx.DSPNSD_QTY, rx.DAYS_SUPPLY_CNT,
		mme.MME_Conversion_Factor, mme.STRENGTH
	from rxdata.rxfact_2010 rx join rxdata.product_mme mme on rx.PRODUCT_ID = mme.PRODUCT_ID;

create table rxdata.rxfact_2011_comb as
select rx.MONTH_ID, rx.SVC_DT, rx.PATIENT_ID, rx.CLAIM_ID, rx.PROVIDER_ID, rx.PRODUCT_ID, rx.DSPNSD_QTY, rx.DAYS_SUPPLY_CNT,
		mme.MME_Conversion_Factor, mme.STRENGTH
	from rxdata.rxfact_2011 rx join rxdata.product_mme mme on rx.PRODUCT_ID = mme.PRODUCT_ID;

create table rxdata.rxfact_2012_comb as
select rx.MONTH_ID, rx.SVC_DT, rx.PATIENT_ID, rx.CLAIM_ID, rx.PROVIDER_ID, rx.PRODUCT_ID, rx.DSPNSD_QTY, rx.DAYS_SUPPLY_CNT,
		mme.MME_Conversion_Factor, mme.STRENGTH
	from rxdata.rxfact_2012 rx join rxdata.product_mme mme on rx.PRODUCT_ID = mme.PRODUCT_ID;

create table rxdata.rxfact_2013_comb as
select rx.MONTH_ID, rx.SVC_DT, rx.PATIENT_ID, rx.CLAIM_ID, rx.PROVIDER_ID, rx.PRODUCT_ID, rx.DSPNSD_QTY, rx.DAYS_SUPPLY_CNT,
		mme.MME_Conversion_Factor, mme.STRENGTH
	from rxdata.rxfact_2013 rx join rxdata.product_mme mme on rx.PRODUCT_ID = mme.PRODUCT_ID;

create table rxdata.rxfact_2014_comb as
select rx.MONTH_ID, rx.SVC_DT, rx.PATIENT_ID, rx.CLAIM_ID, rx.PROVIDER_ID, rx.PRODUCT_ID, rx.DSPNSD_QTY, rx.DAYS_SUPPLY_CNT,
		mme.MME_Conversion_Factor, mme.STRENGTH
	from rxdata.rxfact_2014 rx join rxdata.product_mme mme on rx.PRODUCT_ID = mme.PRODUCT_ID;

create table rxdata.rxfact_2015_comb as
select rx.MONTH_ID, rx.SVC_DT, rx.PATIENT_ID, rx.CLAIM_ID, rx.PROVIDER_ID, rx.PRODUCT_ID, rx.DSPNSD_QTY, rx.DAYS_SUPPLY_CNT,
		mme.MME_Conversion_Factor, mme.STRENGTH
	from rxdata.rxfact_2015 rx join rxdata.product_mme mme on rx.PRODUCT_ID = mme.PRODUCT_ID;

create table rxdata.rxfact_2016_comb as
select rx.MONTH_ID, rx.SVC_DT, rx.PATIENT_ID, rx.CLAIM_ID, rx.PROVIDER_ID, rx.PRODUCT_ID, rx.DSPNSD_QTY, rx.DAYS_SUPPLY_CNT,
		mme.MME_Conversion_Factor, mme.STRENGTH
	from rxdata.rxfact_2016 rx join rxdata.product_mme mme on rx.PRODUCT_ID = mme.PRODUCT_ID;
	
create table rxdata.rxfact_2017_comb as
select rx.MONTH_ID, rx.SVC_DT, rx.PATIENT_ID, rx.CLAIM_ID, rx.PROVIDER_ID, rx.PRODUCT_ID, rx.DSPNSD_QTY, rx.DAYS_SUPPLY_CNT,
		mme.MME_Conversion_Factor, mme.STRENGTH
	from rxdata.rxfact_2017 rx join rxdata.product_mme mme on rx.PRODUCT_ID = mme.PRODUCT_ID;
