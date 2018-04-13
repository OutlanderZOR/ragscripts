CREATE VIEW `ultraspark`.`vw_mob_db_zeny` AS

	select
		ID, 
		kName, 
		HP, 
		DEF, 
		(atk1+atk2)/180 ATK,
		HP * (1+(def+mdef)/1.8) / 80000 EHP
	from mob_db