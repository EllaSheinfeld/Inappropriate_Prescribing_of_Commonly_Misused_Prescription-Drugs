Proc sql;
delete
from Rxdata.Products_opioids_mme
where USC_CD=64610 OR
	(MKTED_PROD_NM not like Upper('Butorphanol%') AND
	MKTED_PROD_NM not like Upper('Codeine%')AND	
	MKTED_PROD_NM not like Upper('Dihydrocodeine%') AND
	MKTED_PROD_NM not like Upper('Fentanyl%') AND 
	MKTED_PROD_NM not like Upper('Hydrocodone%') AND
	MKTED_PROD_NM not like Upper('Hydromorphone%') AND
	MKTED_PROD_NM not like Upper('Levorphanol%')AND
	MKTED_PROD_NM not like Upper('Meperidine%') AND
	MKTED_PROD_NM not like Upper('Methadone%') AND
	MKTED_PROD_NM not like Upper('Morphine%') AND
	MKTED_PROD_NM not like Upper('Opium%') AND
	MKTED_PROD_NM not like Upper('Oxycodone%') AND
	MKTED_PROD_NM not like Upper('Oxymorphone%') AND
	MKTED_PROD_NM not like Upper('Pentazocine%') AND
	MKTED_PROD_NM not like Upper('Tapentadol%') AND
	MKTED_PROD_NM not like Upper('Tramadol%'));
