ods pdf file='C:\Projects\Rx_Data_Sas\columns_names.pdf';
proc contents data=Rxdata.Rxfact_2009 out=meta (keep=NAME) ; 
run ; 
proc print data=meta ; run ;
ods pdf close;
