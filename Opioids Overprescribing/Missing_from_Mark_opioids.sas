ODS TAGSETS.EXCELXP
file='C:\Projects\Rx_Data_Sas\MissingFromMarkOpioids.xls'
STYLE=minimal
OPTIONS (Orientation = 'landscape'
FitToPage = 'yes'
Pages_FitWidth = '1'
Pages_FitHeight = '100' );
option nofmterr;
proc sql;
select *
from Rxdata.Products prd
where prd.USC_CD not equals 64610 AND
	prd.NDC_CD not in (select NDC_CD
						from rxdata.Markopioidsmme);

ODS TAGSETS.EXCELXP CLOSE;
