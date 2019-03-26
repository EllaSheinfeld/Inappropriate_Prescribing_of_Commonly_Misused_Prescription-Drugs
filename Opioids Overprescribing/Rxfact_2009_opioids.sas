PROC SQL;
create table Rxdata.Rxfact_2009_opi
			(MONTH_ID num(8), SVC_DT num(8), PATIENT_ID num(8), CHNL_CD char(1), CLAIM_ID num(8), RX_TYP_CD num(8), PROVIDER_ID num(8), 
			PAY_TYP_CD num(8), MODEL_TYP_CD char(9), PRODUCT_ID num(8), AUTH_RFLL_NBR num(8), DSPNSD_QTY num(8), DAYS_SUPPLY_CNT num(8), year num(4));

insert into Rxdata.Rxfact_2009_opi
select MONTH_ID, SVC_DT, PATIENT_ID, CHNL_CD, CLAIM_ID, RX_TYP_CD, 
		PROVIDER_ID, PAY_TYP_CD, MODEL_TYP_CD, PRODUCT_ID, AUTH_RFLL_NBR, DSPNSD_QTY, DAYS_SUPPLY_CNT, 2009
from Rxdata.Rxfact_2009
where PRODUCT_ID in (
	select PRODUCT_ID
	from Rxdata.products
	where USC_CD <> 64610
);

