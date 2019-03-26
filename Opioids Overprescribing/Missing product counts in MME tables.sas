ODS HTML CLOSE;
 ODS HTML;

PROC SQL;

/*Select distinct NDC_CD, MKTED_PROD_NM, STRNT_DESC, DOSAGE_FORM_NM, USC_DESC*/
title "filter by both tables";
select count(*)
from Rxdata.Products prd
where prd.USC_CD not equals 64610 AND
	prd.NDC_CD not in (select NDC_NUMERIC
					from Rxdata.Ndc_opioid_conversion) AND
	prd.PRODUCT_ID not in (select PRODUCT_ID
							from Rxdata.Products_opioids_mme);

title "filter by marissa's table";
select count(*)
from Rxdata.Products prd
where prd.USC_CD not equals 64610 AND
	prd.NDC_CD not in (select NDC_NUMERIC
					from Rxdata.Ndc_opioid_conversion);

