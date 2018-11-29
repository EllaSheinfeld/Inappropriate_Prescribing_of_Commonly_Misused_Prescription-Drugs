ODS TAGSETS.EXCELXP
file='C:\Projects\Rx_Data_Sas\freq_per_category_overall_patient_provider.xls'
STYLE=minimal
OPTIONS (Orientation = 'landscape'
FitToPage = 'yes'
Pages_FitWidth = '1'
Pages_FitHeight = '100' );
option nofmterr;

PROC SQL;
title 'product_freq_by_provider';
Select *
from Rxdata.product_freq_by_provider; 

PROC SQL;
title 'product_freq_by_patient';
Select *
from Rxdata.product_freq_by_patient; 

PROC SQL;
title 'product_freq';
Select *
from Rxdata.product_freq; 


ODS TAGSETS.EXCELXP CLOSE;
