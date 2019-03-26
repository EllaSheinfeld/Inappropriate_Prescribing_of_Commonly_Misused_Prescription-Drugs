DATA Rxdata.Benzos_2009 Rxdata.Benzos_2010 Rxdata.Benzos_2011 Rxdata.Benzos_2012 Rxdata.Benzos_2013 Rxdata.Benzos_2014
Rxdata.Benzos_2015 Rxdata.Benzos_2016 Rxdata.Benzos_2017;
    SET Rxdata.Benzos_overall;
    IF (year=2009) THEN OUTPUT Rxdata.Benzos_2009;
    IF (year=2010) THEN OUTPUT Rxdata.Benzos_2010;
    IF (year=2011) THEN OUTPUT Rxdata.Benzos_2011;
    IF (year=2012) THEN OUTPUT Rxdata.Benzos_2012;
    IF (year=2013) THEN OUTPUT Rxdata.Benzos_2013;
    IF (year=2014) THEN OUTPUT Rxdata.Benzos_2014;
    IF (year=2015) THEN OUTPUT Rxdata.Benzos_2015;
    IF (year=2016) THEN OUTPUT Rxdata.Benzos_2016;
    IF (year=2017) THEN OUTPUT Rxdata.Benzos_2017;
RUN;
