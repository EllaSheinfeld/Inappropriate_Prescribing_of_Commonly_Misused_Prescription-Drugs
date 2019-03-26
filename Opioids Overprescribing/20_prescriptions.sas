ODS TAGSETS.EXCELXP
file='C:\Projects\Rx_Data_Sas\Results\20_prescriptions.xls'
STYLE=minimal
OPTIONS (Orientation = 'landscape'
FitToPage = 'yes'
Pages_FitWidth = '1'
Pages_FitHeight = '100' );
option nofmterr;
PROC SQL;
title '20 prescriptions - raw';
select *
from rxdata.rxfact_2009
where claim_id in (450996293699,
					50600047732,
					454460987308,
					451607715076,
					450128034631,
					32508574032,
					454177962970,
					450952922831,
					453169045338,
					450751069465,
					451607715076,
					454272048300,
					454033216498,
					451937649611,
					451150677565,
					452122203121,
					454045709848,
					450677417400,
					451085469459,
					453094370679,
					450887702750);
ODS TAGSETS.EXCELXP CLOSE;
