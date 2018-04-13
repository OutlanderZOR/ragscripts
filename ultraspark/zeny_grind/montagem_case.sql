select concat("case ", id, ": set .@Zeny, .@Zeny + ", floor(ATK + EHP) * 6, "; break;	// ",kName)
from vw_mob_db_zeny
where HP >= 5000
order by kName asc;

