ODS TAGSETS.EXCELXP
file='C:\Projects\Rx_Data_Sas\List of products missing from MME tables.xls'
STYLE=minimal
OPTIONS (Orientation = 'landscape'
FitToPage = 'yes'
Pages_FitWidth = '1'
Pages_FitHeight = '100' );
option nofmterr;

PROC SQL;

title "List of products missing from MME tables";

Select distinct NDC_CD, MKTED_PROD_NM, STRNT_DESC, DOSAGE_FORM_NM, USC_DESC
from Rxdata.Products prd
where prd.USC_CD not equals 64610 AND
	prd.NDC_CD not in (select NDC_NUMERIC
					from Rxdata.Ndc_opioid_conversion) AND
	prd.PRODUCT_ID not in (select PRODUCT_ID
							from Rxdata.Products_opioids_mme);
ODS TAGSETS.EXCELXP CLOSE;

