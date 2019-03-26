/*proc sql;
insert into Rxdata.Markopioidsmme
select NDC_CD, MKTED_PROD_NM, STRNT_DESC, DOSAGE_FORM_NM, "", MME_Conversion_Factor, STRN
from Rxdata.Tap160listspecificopioids ;


PROC SQL;
insert into Rxdata.Markopioidsmme
select NDC_CD, MKTED_PROD_NM, STRNT_DESC, DOSAGE_FORM_NM, "", MME_Conversion_Factor, STRN
from Rxdata.Conversionreferencetableopioids
where NDC_CD not in (select tap.NDC_CD from Rxdata.Tap160listspecificopioids tap);

proc sql;
insert into Rxdata.Markopioidsmme_copy
select NDC_Numeric, PRODNME, "", Master_Form, "", MME_Conversion_Factor, Strength_Per_Unit
from Rxdata.Ndc_opioid_conversion
where Class <> 'Benzos' and 
	NDC_Numeric not in (select tap.NDC_CD from Rxdata.Tap160listspecificopioids tap) and
	NDC_Numeric not in (select tap.NDC_CD from Rxdata.Conversionreferencetableopioids tap);
*/

proc sql;
insert into Rxdata.Markopioidsmme
select NDC_CD, MKTED_PROD_NM, STRNT_DESC, DOSAGE_FORM_NM, USC_DESC, MME_Conversion_Factor_, STRN
from Rxdata.Missing_mme;
