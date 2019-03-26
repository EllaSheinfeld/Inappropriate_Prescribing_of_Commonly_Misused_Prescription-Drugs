proc sql;
create index CLAIM_ID
	on rxdata.Yearly_dose_2009(CLAIM_ID);
create index DOSE
	on rxdata.Yearly_dose_2009(DOSE);
