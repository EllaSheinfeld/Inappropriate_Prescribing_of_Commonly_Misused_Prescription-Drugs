ODS TAGSETS.EXCELXP
file='C:\Projects\Rx_Data_Sas\Patient_freq_per_category.xls'
STYLE=minimal
OPTIONS (Orientation = 'landscape'
FitToPage = 'yes'
Pages_FitWidth = '1'
Pages_FitHeight = '100' );
option nofmterr;

PROC SQL;
Select distinct prd.USC_CD, pfrq.year, prd.USC_DESC, sum(pfrq.count)
from Rxdata.Product_freq_by_patient as pfrq left join 
	Rxdata.Products as prd on pfrq.PRODUCT_ID = prd.PRODUCT_ID
group by prd.USC_CD, pfrq.year;

ODS TAGSETS.EXCELXP CLOSE;
