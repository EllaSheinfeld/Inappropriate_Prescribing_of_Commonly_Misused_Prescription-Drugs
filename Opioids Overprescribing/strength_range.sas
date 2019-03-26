ods pdf file='C:\Projects\Rx_Data_Sas\STRNT_DESC.pdf';
Proc sql;
title 'Strength Range';
Select distinct MKTED_PROD_NM, STRNT_DESC, DOSAGE_FORM_NM, USC_DESC
from Rxdata.Products_opioids_mme
where STRNT_DESC like '%-%';
ods pdf close;
