PROC SQL;

create table Rxdata.product_freq
		(category char(6), count num, year int);

insert into Rxdata.product_freq
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(*), 2009
from Rxdata.Rxfact_2009 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(*), 2010
from Rxdata.Rxfact_2010 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(*), 2011
from Rxdata.Rxfact_2011 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(*), 2012
from Rxdata.Rxfact_2012 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(*), 2013
from Rxdata.Rxfact_2013 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(*), 2014
from Rxdata.Rxfact_2014 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(*), 2015
from Rxdata.Rxfact_2015 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(*), 2016
from Rxdata.Rxfact_2016 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(*), 2017
from Rxdata.Rxfact_2017 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

create table Rxdata.product_freq_by_patient
		(category char(6), count num, year int);

insert into Rxdata.product_freq_by_patient
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(distinct(PATIENT_ID)), 2009
from Rxdata.Rxfact_2009 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq_by_patient
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(distinct(PATIENT_ID)), 2010
from Rxdata.Rxfact_2010 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq_by_patient
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(distinct(PATIENT_ID)), 2011
from Rxdata.Rxfact_2011 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq_by_patient
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(distinct(PATIENT_ID)), 2012
from Rxdata.Rxfact_2012 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq_by_patient
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(distinct(PATIENT_ID)), 2013
from Rxdata.Rxfact_2013 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq_by_patient
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(distinct(PATIENT_ID)), 2014
from Rxdata.Rxfact_2014 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq_by_patient
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(distinct(PATIENT_ID)), 2015
from Rxdata.Rxfact_2015 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq_by_patient
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(distinct(PATIENT_ID)), 2016
from Rxdata.Rxfact_2016 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq_by_patient
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(distinct(PATIENT_ID)), 2017
from Rxdata.Rxfact_2017 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

create table Rxdata.product_freq_by_provider
		(category char(6), count num, year int);

insert into Rxdata.product_freq_by_provider
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(distinct(PROVIDER_ID)), 2009
from Rxdata.Rxfact_2009 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq_by_provider
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(distinct(PROVIDER_ID)), 2010
from Rxdata.Rxfact_2010 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq_by_provider
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(distinct(PROVIDER_ID)), 2011
from Rxdata.Rxfact_2011 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq_by_provider
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(distinct(PROVIDER_ID)), 2012
from Rxdata.Rxfact_2012 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq_by_provider
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(distinct(PROVIDER_ID)), 2013
from Rxdata.Rxfact_2013 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq_by_provider
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(distinct(PROVIDER_ID)), 2014
from Rxdata.Rxfact_2014 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq_by_provider
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(distinct(PROVIDER_ID)), 2015
from Rxdata.Rxfact_2015 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq_by_provider
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(distinct(PROVIDER_ID)), 2016
from Rxdata.Rxfact_2016 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;

insert into Rxdata.product_freq_by_provider
select case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, count(distinct(PROVIDER_ID)), 2017
from Rxdata.Rxfact_2017 rxf left join Rxdata.Products prd on rxf.PRODUCT_ID = prd.PRODUCT_ID
group by category;
