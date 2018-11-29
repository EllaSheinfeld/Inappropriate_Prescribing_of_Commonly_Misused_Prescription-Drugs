PROC SQL;
create table Rxdata.benzos_overall
			(MONTH_ID num(8), SVC_DT num(8), PATIENT_ID num(8), CHNL_CD char(1), CLAIM_ID num(8), RX_TYP_CD num(8), PROVIDER_ID num(8), 
			PAY_TYP_CD num(8), MODEL_TYP_CD char(9), PRODUCT_ID num(8), AUTH_RFLL_NBR num(8), DSPNSD_QTY num(8), DAYS_SUPPLY_CNT num(8), year num(4));

insert into Rxdata.benzos_overall
select MONTH_ID, SVC_DT, PATIENT_ID, CHNL_CD, CLAIM_ID, RX_TYP_CD, 
		PROVIDER_ID, PAY_TYP_CD, MODEL_TYP_CD, PRODUCT_ID, AUTH_RFLL_NBR, DSPNSD_QTY, DAYS_SUPPLY_CNT, 2009
from Rxdata.Rxfact_2009
where PRODUCT_ID in (
	select PRODUCT_ID
	from Rxdata.benzos_products
);

insert into Rxdata.benzos_overall
select MONTH_ID, SVC_DT, PATIENT_ID, CHNL_CD, CLAIM_ID, RX_TYP_CD, 
		PROVIDER_ID, PAY_TYP_CD, MODEL_TYP_CD, PRODUCT_ID, AUTH_RFLL_NBR, DSPNSD_QTY, DAYS_SUPPLY_CNT, 2010
from Rxdata.Rxfact_2010
where PRODUCT_ID in (
	select PRODUCT_ID
	from Rxdata.benzos_products
);

insert into Rxdata.benzos_overall
select MONTH_ID, SVC_DT, PATIENT_ID, CHNL_CD, CLAIM_ID, RX_TYP_CD, 
		PROVIDER_ID, PAY_TYP_CD, MODEL_TYP_CD, PRODUCT_ID, AUTH_RFLL_NBR, DSPNSD_QTY, DAYS_SUPPLY_CNT, 2011
from Rxdata.Rxfact_2011
where PRODUCT_ID in (
	select PRODUCT_ID
	from Rxdata.benzos_products
);

insert into Rxdata.benzos_overall
select MONTH_ID, SVC_DT, PATIENT_ID, CHNL_CD, CLAIM_ID, RX_TYP_CD, 
		PROVIDER_ID, PAY_TYP_CD, MODEL_TYP_CD, PRODUCT_ID, AUTH_RFLL_NBR, DSPNSD_QTY, DAYS_SUPPLY_CNT, 2012
from Rxdata.Rxfact_2012
where PRODUCT_ID in (
	select PRODUCT_ID
	from Rxdata.benzos_products
);

insert into Rxdata.benzos_overall
select MONTH_ID, SVC_DT, PATIENT_ID, CHNL_CD, CLAIM_ID, RX_TYP_CD, 
		PROVIDER_ID, PAY_TYP_CD, MODEL_TYP_CD, PRODUCT_ID, AUTH_RFLL_NBR, DSPNSD_QTY, DAYS_SUPPLY_CNT, 2013
from Rxdata.Rxfact_2013
where PRODUCT_ID in (
	select PRODUCT_ID
	from Rxdata.benzos_products
);

insert into Rxdata.benzos_overall
select MONTH_ID, SVC_DT, PATIENT_ID, CHNL_CD, CLAIM_ID, RX_TYP_CD, 
		PROVIDER_ID, PAY_TYP_CD, MODEL_TYP_CD, PRODUCT_ID, AUTH_RFLL_NBR, DSPNSD_QTY, DAYS_SUPPLY_CNT, 2014
from Rxdata.Rxfact_2014
where PRODUCT_ID in (
	select PRODUCT_ID
	from Rxdata.benzos_products
);

insert into Rxdata.benzos_overall
select MONTH_ID, SVC_DT, PATIENT_ID, CHNL_CD, CLAIM_ID, RX_TYP_CD, 
		PROVIDER_ID, PAY_TYP_CD, MODEL_TYP_CD, PRODUCT_ID, AUTH_RFLL_NBR, DSPNSD_QTY, DAYS_SUPPLY_CNT, 2015
from Rxdata.Rxfact_2015
where PRODUCT_ID in (
	select PRODUCT_ID
	from Rxdata.benzos_products
);

insert into Rxdata.benzos_overall
select MONTH_ID, SVC_DT, PATIENT_ID, CHNL_CD, CLAIM_ID, RX_TYP_CD, 
		PROVIDER_ID, PAY_TYP_CD, MODEL_TYP_CD, PRODUCT_ID, AUTH_RFLL_NBR, DSPNSD_QTY, DAYS_SUPPLY_CNT, 2016
from Rxdata.Rxfact_2016
where PRODUCT_ID in (
	select PRODUCT_ID
	from Rxdata.benzos_products
);

insert into Rxdata.benzos_overall
select MONTH_ID, SVC_DT, PATIENT_ID, CHNL_CD, CLAIM_ID, RX_TYP_CD, 
		PROVIDER_ID, PAY_TYP_CD, MODEL_TYP_CD, PRODUCT_ID, AUTH_RFLL_NBR, DSPNSD_QTY, DAYS_SUPPLY_CNT, 2017
from Rxdata.Rxfact_2017
where PRODUCT_ID in (
	select PRODUCT_ID
	from Rxdata.benzos_products
);
