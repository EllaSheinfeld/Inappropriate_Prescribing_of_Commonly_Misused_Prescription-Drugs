ods pdf file='C:\Projects\Rx_Data_Sas\Buprenorphine extraction.pdf';

Proc sql;
title "Table 1 - Products filtered by names according to research paper";
select *
from Rxdata.Products
where upper(MKTED_PROD_NM) like upper('%Buprenorphine%') OR
	upper(MKTED_PROD_NM) like upper('%Suboxone%') OR
	upper(MKTED_PROD_NM) like upper('%Subutex%') OR
	upper(MKTED_PROD_NM) like upper('%Zubsolv%') OR
	upper(MKTED_PROD_NM) like upper('%Bunavail%');

title "Table 2 - Products filtered by matching NDC values in the MME table";
select *
from Rxdata.Products
where NDC_CD in 
	(select NDC_Numeric
	from Rxdata.Ndc_opioid_conversion
	where upper(GENNME) like upper('%Buprenorphine%') OR
		upper(PRODNME) like upper('%Suboxone%') OR
		upper(PRODNME) like upper('%Subutex%') OR
		upper(PRODNME) like upper('%Zubsolv%') OR
		upper(PRODNME) like upper('%Bunavail%'));

title "Table 3 - Products by NDC found in FDA table";
select *
from Rxdata.Products
where NDC_CD in
	(select NDC_PKG_CD
	from Rxdata.Fda_Buprenorphine);

ods pdf close;
