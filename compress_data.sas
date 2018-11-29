options compress=yes reuse=yes;

libname temp "c:\temp";
libname source (Rxdata);

proc datasets lib=temp kill nowarn nolist;
    copy in=source out=temp noclone datecopy memtype=data index=yes constraint=yes;
  run;
    copy in=temp out=source noclone datecopy memtype=data index=yes constraint=yes move;
  run;
quit;

libname temp clear;
