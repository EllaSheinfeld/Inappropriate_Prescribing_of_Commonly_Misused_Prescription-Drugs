PROC IMPORT OUT= RXDATA.RxFact_2014 
            DATAFILE= "C:\Rx_Data\RxFact_2014.dat" 
            DBMS=DLM REPLACE;
     DELIMITER='7C'x; 
     GETNAMES=YES;
     DATAROW=2; 
RUN;
