/* date, prescriber_id, patient_id */
options compress=yes reuse=yes;

proc sql;
create table Rx_ext.Rxdact_2009_link
			(SVC_DT num(8), PATIENT_ID num(8), PROVIDER_ID num(8));
insert into Rx_ext.Rxdact_2009_link
select SVC_DT, PATIENT_ID, PROVIDER_ID
from Rxdata.Rxfact_2009;

create table Rx_ext.Rxdact_2010_link
			(SVC_DT num(8), PATIENT_ID num(8), PROVIDER_ID num(8));
insert into Rx_ext.Rxdact_2010_link
select SVC_DT, PATIENT_ID, PROVIDER_ID
from Rxdata.Rxfact_2010;

create table Rx_ext.Rxdact_2011_link
			(SVC_DT num(8), PATIENT_ID num(8), PROVIDER_ID num(8));
insert into Rx_ext.Rxdact_2011_link
select SVC_DT, PATIENT_ID, PROVIDER_ID
from Rxdata.Rxfact_2011;

create table Rx_ext.Rxdact_2012_link
			(SVC_DT num(8), PATIENT_ID num(8), PROVIDER_ID num(8));
insert into Rx_ext.Rxdact_2012_link
select SVC_DT, PATIENT_ID, PROVIDER_ID
from Rxdata.Rxfact_2012;

create table Rx_ext.Rxdact_2013_link
			(SVC_DT num(8), PATIENT_ID num(8), PROVIDER_ID num(8));
insert into Rx_ext.Rxdact_2013_link
select SVC_DT, PATIENT_ID, PROVIDER_ID
from Rxdata.Rxfact_2013;

create table Rx_ext.Rxdact_2014_link
			(SVC_DT num(8), PATIENT_ID num(8), PROVIDER_ID num(8));
insert into Rx_ext.Rxdact_2014_link
select SVC_DT, PATIENT_ID, PROVIDER_ID
from Rxdata.Rxfact_2014;

create table Rx_ext.Rxdact_2015_link
			(SVC_DT num(8), PATIENT_ID num(8), PROVIDER_ID num(8));
insert into Rx_ext.Rxdact_2015_link
select SVC_DT, PATIENT_ID, PROVIDER_ID
from Rxdata.Rxfact_2015;

create table Rx_ext.Rxdact_2016_link
			(SVC_DT num(8), PATIENT_ID num(8), PROVIDER_ID num(8));
insert into Rx_ext.Rxdact_2016_link
select SVC_DT, PATIENT_ID, PROVIDER_ID
from Rxdata.Rxfact_2016;

create table Rx_ext.Rxdact_2017_link
			(SVC_DT num(8), PATIENT_ID num(8), PROVIDER_ID num(8));
insert into Rx_ext.Rxdact_2017_link
select SVC_DT, PATIENT_ID, PROVIDER_ID
from Rxdata.Rxfact_2017;
