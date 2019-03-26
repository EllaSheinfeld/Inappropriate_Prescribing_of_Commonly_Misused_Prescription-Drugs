ODS TAGSETS.EXCELXP
file='C:\Projects\Rx_Data_Sas\Results\large_DSPNSD_QTY_patients.xls'
STYLE=minimal
OPTIONS (Orientation = 'landscape'
FitToPage = 'yes'
Pages_FitWidth = '1'
Pages_FitHeight = '100' );
option nofmterr;
proc sql;
select *
from rxdesc.patient
where patient_id in (
1020491495,
1019905285,
988385911,
1057033731,
88957813,
971784258,
1028318908,
100826435,
100826435,
135655326);
proc sql;
select * 
from rxdesc.physician
where provider_id in (447920,
7021307,
7086691,
7065982,
7688033,
7291912,
14976113,
7609781,
7609781,
7748455);
ODS TAGSETS.EXCELXP CLOSE;
