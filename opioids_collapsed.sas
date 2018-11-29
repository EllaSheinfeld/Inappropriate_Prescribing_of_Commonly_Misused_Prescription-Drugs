PROC SQL;
Select distinct case when prd.USC_CD=64610 then 'benzos' else 'opioid' end as category, pfrq.year, sum(pfrq.count)
from Rxdata.Product_freq_by_patient as pfrq left join 
	Rxdata.Products as prd on pfrq.PRODUCT_ID = prd.PRODUCT_ID
group by category, pfrq.year;
