local data =
{
	name = "siexqs" ,
	settings =
	{
		gift_start = { "bool" , "runtime-global" , true } ,
		gift_restart = { "bool" , "runtime-global" , true } ,
		
		gift_level = { "string" , "startup" , "poor" , nil , nil , { "poor" , "medium" , "rich" , "master" , "debug" } } ,
		
		give_machine = { "bool" , "startup" , true } ,
		give_vehicle = { "bool" , "startup" , true } ,
		give_weapon = { "bool" , "startup" , true } ,
		give_armor = { "bool" , "startup" , true } ,
		give_module = { "bool" , "startup" , true } ,
		give_train = { "bool" , "startup" , true } ,
		give_robot = { "bool" , "startup" , true } ,
		give_turret = { "bool" , "startup" , true } ,
		give_debug = { "bool" , "startup" , true }
	}
}

if SIMods.SIEXHyperspaceStorage.loaded then
	data.settings.siexhs_give_core = { "bool" , "startup" , true }
	data.settings.siexhs_give_machine = { "bool" , "startup" , true }
	data.settings.siexhs_give_teleporter = { "bool" , "startup" , true }
end

return data