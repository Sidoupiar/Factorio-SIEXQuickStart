return
{
	base = "EXQuickStart" ,
	autoLoad = true ,
	autoName = true ,
	BeforeLoad = function()
		local level = SIEXQS.level[SIStartup.SIEXQS.gift_level()]
		if SIStartup.SIEXQS.give_machine() then
			if level == 1 then
				table.insert( SIEXQS.giftListStart , { "boiler" , 2 } )
				table.insert( SIEXQS.giftListStart , { "steam-engine" , 4 } )
				table.insert( SIEXQS.giftListStart , { "small-electric-pole" , 10 } )
				table.insert( SIEXQS.giftListStart , { "assembling-machine-1" , 5 } )
				table.insert( SIEXQS.giftListStart , { "stone-furnace" , 5 } )
			elseif level == 2 then
				table.insert( SIEXQS.giftListStart , { "boiler" , 10 } )
				table.insert( SIEXQS.giftListStart , { "steam-engine" , 20 } )
				table.insert( SIEXQS.giftListStart , { "medium-electric-pole" , 20 } )
				table.insert( SIEXQS.giftListStart , { "big-electric-pole" , 10 } )
				table.insert( SIEXQS.giftListStart , { "assembling-machine-1" , 15 } )
				table.insert( SIEXQS.giftListStart , { "stone-furnace" , 15 } )
				table.insert( SIEXQS.giftListStart , { "electric-mining-drill" , 10 } )
				table.insert( SIEXQS.giftListStart , { "inserter" , 20 } )
				table.insert( SIEXQS.giftListStart , { "transport-belt" , 200 } )
				table.insert( SIEXQS.giftListStart , { "underground-belt" , 30 } )
				table.insert( SIEXQS.giftListStart , { "splitter" , 10 } )
			elseif level == 3 then
				table.insert( SIEXQS.giftListStart , { "boiler" , 10 } )
				table.insert( SIEXQS.giftListStart , { "steam-engine" , 20 } )
				table.insert( SIEXQS.giftListStart , { "solar-panel" , 50 } )
				table.insert( SIEXQS.giftListStart , { "accumulator" , 50 } )
				table.insert( SIEXQS.giftListStart , { "medium-electric-pole" , 50 } )
				table.insert( SIEXQS.giftListStart , { "big-electric-pole" , 50 } )
				table.insert( SIEXQS.giftListStart , { "assembling-machine-2" , 50 } )
				table.insert( SIEXQS.giftListStart , { "steel-furnace" , 50 } )
				table.insert( SIEXQS.giftListStart , { "electric-mining-drill" , 50 } )
				table.insert( SIEXQS.giftListStart , { "fast-inserter" , 50 } )
				table.insert( SIEXQS.giftListStart , { "fast-transport-belt" , 500 } )
				table.insert( SIEXQS.giftListStart , { "fast-underground-belt" , 150 } )
				table.insert( SIEXQS.giftListStart , { "fast-splitter" , 50 } )
			elseif level == 4 then
				table.insert( SIEXQS.giftListStart , { "boiler" , 20 } )
				table.insert( SIEXQS.giftListStart , { "steam-engine" , 40 } )
				table.insert( SIEXQS.giftListStart , { "solar-panel" , 100 } )
				table.insert( SIEXQS.giftListStart , { "accumulator" , 100 } )
				table.insert( SIEXQS.giftListStart , { "medium-electric-pole" , 50 } )
				table.insert( SIEXQS.giftListStart , { "substation" , 50 } )
				table.insert( SIEXQS.giftListStart , { "big-electric-pole" , 50 } )
				table.insert( SIEXQS.giftListStart , { "assembling-machine-3" , 100 } )
				table.insert( SIEXQS.giftListStart , { "electric-furnace" , 100 } )
				table.insert( SIEXQS.giftListStart , { "electric-mining-drill" , 200 } )
				table.insert( SIEXQS.giftListStart , { "stack-inserter" , 100 } )
				table.insert( SIEXQS.giftListStart , { "express-transport-belt" , 1200 } )
				table.insert( SIEXQS.giftListStart , { "express-underground-belt" , 250 } )
				table.insert( SIEXQS.giftListStart , { "express-splitter" , 100 } )
			elseif level == 5 then
				table.insert( SIEXQS.giftListStart , { "electric-energy-interface" , 10 } )
				table.insert( SIEXQS.giftListStart , { "substation" , 200 } )
				table.insert( SIEXQS.giftListStart , { "assembling-machine-3" , 100 } )
				table.insert( SIEXQS.giftListStart , { "electric-furnace" , 100 } )
				table.insert( SIEXQS.giftListStart , { "electric-mining-drill" , 200 } )
				table.insert( SIEXQS.giftListStart , { "stack-inserter" , 100 } )
				table.insert( SIEXQS.giftListStart , { "linked-chest" , 50 } )
			end
		end
		if SIStartup.SIEXQS.give_vehicle() then
			if level == 1 then
				table.insert( SIEXQS.giftListStart , { "car" } )
				table.insert( SIEXQS.giftListStart , { "coal" , 10 } )
				table.insert( SIEXQS.giftListRestart , { "car" } )
				table.insert( SIEXQS.giftListRestart , { "coal" , 10 } )
			elseif level == 2 then
				table.insert( SIEXQS.giftListStart , { "car" } )
				table.insert( SIEXQS.giftListStart , { "nuclear-fuel" } )
				table.insert( SIEXQS.giftListRestart , { "car" } )
				table.insert( SIEXQS.giftListRestart , { "nuclear-fuel" } )
			elseif level == 3 then
				table.insert( SIEXQS.giftListStart , { "tank" } )
				table.insert( SIEXQS.giftListStart , { "nuclear-fuel" } )
				table.insert( SIEXQS.giftListRestart , { "tank" } )
				table.insert( SIEXQS.giftListRestart , { "nuclear-fuel" } )
			elseif level == 4 then
				table.insert( SIEXQS.giftListStart , { "spidertron" } )
				table.insert( SIEXQS.giftListRestart , { "spidertron" } )
			elseif level == 5 then
				table.insert( SIEXQS.giftListStart , { "spidertron" } )
				table.insert( SIEXQS.giftListRestart , { "spidertron" } )
			end
		end
		if SIStartup.SIEXQS.give_weapon() then
			if level == 2 then
				table.insert( SIEXQS.giftListStart , { "submachine-gun" } )
				table.insert( SIEXQS.giftListStart , { "firearm-magazine" , 40 } )
				table.insert( SIEXQS.giftListRestart , { "submachine-gun" } )
				table.insert( SIEXQS.giftListRestart , { "firearm-magazine" , 40 } )
			elseif level == 3 then
				table.insert( SIEXQS.giftListStart , { "submachine-gun" } )
				table.insert( SIEXQS.giftListStart , { "uranium-rounds-magazine" , 50 } )
				table.insert( SIEXQS.giftListStart , { "grenade" , 10 } )
				table.insert( SIEXQS.giftListRestart , { "submachine-gun" } )
				table.insert( SIEXQS.giftListRestart , { "uranium-rounds-magazine" , 50 } )
				table.insert( SIEXQS.giftListRestart , { "grenade" , 10 } )
			elseif level == 4 then
				table.insert( SIEXQS.giftListStart , { "submachine-gun" } )
				table.insert( SIEXQS.giftListStart , { "uranium-rounds-magazine" , 100 } )
				table.insert( SIEXQS.giftListStart , { "cluster-grenade" , 20 } )
				table.insert( SIEXQS.giftListStart , { "destroyer-capsule" , 10 } )
				table.insert( SIEXQS.giftListRestart , { "submachine-gun" } )
				table.insert( SIEXQS.giftListRestart , { "uranium-rounds-magazine" , 100 } )
				table.insert( SIEXQS.giftListRestart , { "cluster-grenade" , 20 } )
				table.insert( SIEXQS.giftListRestart , { "destroyer-capsule" , 10 } )
			elseif level == 5 then
				table.insert( SIEXQS.giftListStart , { "submachine-gun" } )
				table.insert( SIEXQS.giftListStart , { "uranium-rounds-magazine" , 100 } )
				table.insert( SIEXQS.giftListStart , { "cluster-grenade" , 100 } )
				table.insert( SIEXQS.giftListRestart , { "submachine-gun" } )
				table.insert( SIEXQS.giftListRestart , { "uranium-rounds-magazine" , 100 } )
				table.insert( SIEXQS.giftListRestart , { "cluster-grenade" , 100 } )
			end
		end
		if SIStartup.SIEXQS.give_armor() then
			if level == 1 then
				table.insert( SIEXQS.giftListStart , { "heavy-armor" } )
				table.insert( SIEXQS.giftListRestart , { "heavy-armor" } )
			elseif level == 2 then
				table.insert( SIEXQS.giftListStart , { "modular-armor" } )
				table.insert( SIEXQS.giftListStart , { "solar-panel-equipment" , 2 } )
				table.insert( SIEXQS.giftListStart , { "battery-equipment" } )
				table.insert( SIEXQS.giftListStart , { "night-vision-equipment" } )
				table.insert( SIEXQS.giftListRestart , { "modular-armor" } )
				table.insert( SIEXQS.giftListRestart , { "solar-panel-equipment" , 2 } )
				table.insert( SIEXQS.giftListRestart , { "battery-equipment" } )
				table.insert( SIEXQS.giftListRestart , { "night-vision-equipment" } )
			elseif level == 3 then
				table.insert( SIEXQS.giftListStart , { "power-armor" } )
				table.insert( SIEXQS.giftListStart , { "fusion-reactor-equipment" } )
				table.insert( SIEXQS.giftListStart , { "battery-mk2-equipment" , 2 } )
				table.insert( SIEXQS.giftListStart , { "night-vision-equipment" } )
				table.insert( SIEXQS.giftListStart , { "personal-roboport-equipment" , 2 } )
				table.insert( SIEXQS.giftListStart , { "exoskeleton-equipment" } )
				table.insert( SIEXQS.giftListStart , { "belt-immunity-equipment" } )
				table.insert( SIEXQS.giftListRestart , { "power-armor" } )
				table.insert( SIEXQS.giftListRestart , { "fusion-reactor-equipment" } )
				table.insert( SIEXQS.giftListRestart , { "battery-mk2-equipment" , 2 } )
				table.insert( SIEXQS.giftListRestart , { "night-vision-equipment" } )
				table.insert( SIEXQS.giftListRestart , { "personal-roboport-equipment" , 2 } )
				table.insert( SIEXQS.giftListRestart , { "exoskeleton-equipment" } )
				table.insert( SIEXQS.giftListRestart , { "belt-immunity-equipment" } )
			elseif level == 4 or level == 5 then
				table.insert( SIEXQS.giftListStart , { "power-armor-mk2" } )
				table.insert( SIEXQS.giftListStart , { "fusion-reactor-equipment" , 2 } )
				table.insert( SIEXQS.giftListStart , { "battery-mk2-equipment" , 5 } )
				table.insert( SIEXQS.giftListStart , { "night-vision-equipment" } )
				table.insert( SIEXQS.giftListStart , { "personal-roboport-mk2-equipment" , 5 } )
				table.insert( SIEXQS.giftListStart , { "exoskeleton-equipment" , 3 } )
				table.insert( SIEXQS.giftListStart , { "belt-immunity-equipment" } )
				table.insert( SIEXQS.giftListRestart , { "power-armor-mk2" } )
				table.insert( SIEXQS.giftListRestart , { "fusion-reactor-equipment" , 2 } )
				table.insert( SIEXQS.giftListRestart , { "battery-mk2-equipment" , 5 } )
				table.insert( SIEXQS.giftListRestart , { "night-vision-equipment" } )
				table.insert( SIEXQS.giftListRestart , { "personal-roboport-mk2-equipment" , 5 } )
				table.insert( SIEXQS.giftListRestart , { "exoskeleton-equipment" , 3 } )
				table.insert( SIEXQS.giftListRestart , { "belt-immunity-equipment" } )
			end
		end
		if SIStartup.SIEXQS.give_module() then
			if level == 2 then
				table.insert( SIEXQS.giftListStart , { "speed-module" , 10 } )
			elseif level == 3 then
				table.insert( SIEXQS.giftListStart , { "speed-module" , 10 } )
				table.insert( SIEXQS.giftListStart , { "effectivity-module" , 10 } )
			elseif level == 4 then
				table.insert( SIEXQS.giftListStart , { "speed-module" , 20 } )
				table.insert( SIEXQS.giftListStart , { "productivity-module" , 20 } )
				table.insert( SIEXQS.giftListStart , { "effectivity-module" , 20 } )
			elseif level == 5 then
				table.insert( SIEXQS.giftListStart , { "speed-module-3" , 100 } )
				table.insert( SIEXQS.giftListStart , { "productivity-module-3" , 100 } )
				table.insert( SIEXQS.giftListStart , { "effectivity-module-3" , 100 } )
				table.insert( SIEXQS.giftListRestart , { "speed-module-3" , 100 } )
				table.insert( SIEXQS.giftListRestart , { "productivity-module-3" , 100 } )
				table.insert( SIEXQS.giftListRestart , { "effectivity-module-3" , 100 } )
			end
		end
		if SIStartup.SIEXQS.give_train() then
			if level == 1 then
				table.insert( SIEXQS.giftListStart , { "rail" , 400 } )
				table.insert( SIEXQS.giftListStart , { "rail-signal" , 20 } )
				table.insert( SIEXQS.giftListStart , { "rail-chain-signal" , 20 } )
				table.insert( SIEXQS.giftListStart , { "train-stop" , 5 } )
				table.insert( SIEXQS.giftListStart , { "locomotive" , 3 } )
				table.insert( SIEXQS.giftListStart , { "cargo-wagon" , 10 } )
			elseif level == 2 then
				table.insert( SIEXQS.giftListStart , { "rail" , 800 } )
				table.insert( SIEXQS.giftListStart , { "rail-signal" , 30 } )
				table.insert( SIEXQS.giftListStart , { "rail-chain-signal" , 30 } )
				table.insert( SIEXQS.giftListStart , { "train-stop" , 5 } )
				table.insert( SIEXQS.giftListStart , { "locomotive" , 4 } )
				table.insert( SIEXQS.giftListStart , { "cargo-wagon" , 12 } )
				table.insert( SIEXQS.giftListStart , { "fluid-wagon" , 2 } )
			elseif level == 3 then
				table.insert( SIEXQS.giftListStart , { "rail" , 1500 } )
				table.insert( SIEXQS.giftListStart , { "rail-signal" , 50 } )
				table.insert( SIEXQS.giftListStart , { "rail-chain-signal" , 50 } )
				table.insert( SIEXQS.giftListStart , { "train-stop" , 10 } )
				table.insert( SIEXQS.giftListStart , { "locomotive" , 5 } )
				table.insert( SIEXQS.giftListStart , { "cargo-wagon" , 15 } )
				table.insert( SIEXQS.giftListStart , { "fluid-wagon" , 5 } )
			elseif level == 4 or level == 5 then
				table.insert( SIEXQS.giftListStart , { "rail" , 2500 } )
				table.insert( SIEXQS.giftListStart , { "rail-signal" , 100 } )
				table.insert( SIEXQS.giftListStart , { "rail-chain-signal" , 100 } )
				table.insert( SIEXQS.giftListStart , { "train-stop" , 20 } )
				table.insert( SIEXQS.giftListStart , { "locomotive" , 10 } )
				table.insert( SIEXQS.giftListStart , { "cargo-wagon" , 30 } )
				table.insert( SIEXQS.giftListStart , { "fluid-wagon" , 10 } )
			end
		end
		if SIStartup.SIEXQS.give_robot() then
			if level == 1 then
				table.insert( SIEXQS.giftListStart , { "construction-robot" , 50 } )
			elseif level == 2 then
				table.insert( SIEXQS.giftListStart , { "roboport" , 2 } )
				table.insert( SIEXQS.giftListStart , { "construction-robot" , 50 } )
				table.insert( SIEXQS.giftListStart , { "logistic-robot" , 50 } )
				table.insert( SIEXQS.giftListStart , { "logistic-chest-passive-provider" , 5 } )
			elseif level == 3 then
				table.insert( SIEXQS.giftListStart , { "roboport" , 5 } )
				table.insert( SIEXQS.giftListStart , { "construction-robot" , 100 } )
				table.insert( SIEXQS.giftListStart , { "logistic-robot" , 100 } )
				table.insert( SIEXQS.giftListStart , { "logistic-chest-passive-provider" , 5 } )
				table.insert( SIEXQS.giftListStart , { "logistic-chest-storage" , 10 } )
			elseif level == 4 then
				table.insert( SIEXQS.giftListStart , { "roboport" , 10 } )
				table.insert( SIEXQS.giftListStart , { "construction-robot" , 200 } )
				table.insert( SIEXQS.giftListStart , { "logistic-robot" , 200 } )
				table.insert( SIEXQS.giftListStart , { "logistic-chest-passive-provider" , 15 } )
				table.insert( SIEXQS.giftListStart , { "logistic-chest-storage" , 30 } )
			elseif level == 5 then
				table.insert( SIEXQS.giftListStart , { "sicfl-item-roboport-vast" } )
				table.insert( SIEXQS.giftListStart , { "sicfl-item-robot-construction" , 10000 } )
				table.insert( SIEXQS.giftListStart , { "sicfl-item-robot-logistic" , 10000 } )
				table.insert( SIEXQS.giftListStart , { "logistic-chest-passive-provider" , 50 } )
				table.insert( SIEXQS.giftListStart , { "logistic-chest-storage" , 100 } )
			end
		end
		if SIStartup.SIEXQS.give_turret() then
			if level == 1 then
				table.insert( SIEXQS.giftListStart , { "stone-wall" , 50 } )
				table.insert( SIEXQS.giftListStart , { "gun-turret" , 10 } )
			elseif level == 2 then
				table.insert( SIEXQS.giftListStart , { "stone-wall" , 100 } )
				table.insert( SIEXQS.giftListStart , { "gun-turret" , 25 } )
			elseif level == 3 then
				table.insert( SIEXQS.giftListStart , { "stone-wall" , 200 } )
				table.insert( SIEXQS.giftListStart , { "laser-turret" , 50 } )
			elseif level == 4 or level == 5 then
				table.insert( SIEXQS.giftListStart , { "stone-wall" , 500 } )
				table.insert( SIEXQS.giftListStart , { "laser-turret" , 100 } )
				table.insert( SIEXQS.giftListStart , { "artillery-turret" , 3 } )
				table.insert( SIEXQS.giftListStart , { "artillery-shell" , 50 } )
			end
		end
		if SIStartup.SIEXQS.give_debug() then
			if level == 5 then
				table.insert( SIEXQS.giftListStart , { "sicfl-item-delmap" } )
				table.insert( SIEXQS.giftListStart , { "sicfl-item-oremap" } )
				table.insert( SIEXQS.giftListStart , { "infinity-chest" , 10 } )
				table.insert( SIEXQS.giftListRestart , { "sicfl-item-delmap" } )
				table.insert( SIEXQS.giftListRestart , { "sicfl-item-oremap" } )
				table.insert( SIEXQS.giftListRestart , { "infinity-chest" , 10 } )
			end
		end
		if SIMods.SIEXHyperspaceStorage.loaded then
			if SIStartup.SIEXQS.siexhs_give_core() then
				if level == 2 then
					table.insert( SIEXQS.giftListStart , { "siexhs-item-main-core" } )
				elseif level == 3 then
					table.insert( SIEXQS.giftListStart , { "siexhs-item-main-core" , 2 } )
					table.insert( SIEXQS.giftListStart , { "siexhs-item-main-core-automation" , 2 } )
				elseif level == 4 then
					table.insert( SIEXQS.giftListStart , { "siexhs-item-main-core" , 5 } )
					table.insert( SIEXQS.giftListStart , { "siexhs-item-main-core-automation" , 5 } )
				elseif level == 5 then
					table.insert( SIEXQS.giftListStart , { "siexhs-item-main-core" , 100 } )
					table.insert( SIEXQS.giftListStart , { "siexhs-item-main-core-automation" , 100 } )
				end
			end
			if SIStartup.SIEXQS.siexhs_give_machine() then
				if level == 1 then
					table.insert( SIEXQS.giftListStart , { "siexhs-item-assembling-machine-mk1" , 5 } )
				elseif level == 2 then
					table.insert( SIEXQS.giftListStart , { "siexhs-item-assembling-machine-mk1" , 10 } )
				elseif level == 3 then
					table.insert( SIEXQS.giftListStart , { "siexhs-item-assembling-machine-mk1" , 10 } )
					table.insert( SIEXQS.giftListStart , { "siexhs-module-module-speed-mk2" , 10 } )
				elseif level == 4 then
					table.insert( SIEXQS.giftListStart , { "siexhs-item-assembling-machine-mk2" , 10 } )
					table.insert( SIEXQS.giftListStart , { "siexhs-module-module-speed-mk3" , 10 } )
				elseif level == 5 then
					table.insert( SIEXQS.giftListStart , { "siexhs-item-assembling-machine-mk5" , 10 } )
					table.insert( SIEXQS.giftListStart , { "siexhs-module-module-speed-mk5" , 10 } )
					table.insert( SIEXQS.giftListStart , { "siexhs-module-module-product-mk5" , 10 } )
					table.insert( SIEXQS.giftListRestart , { "siexhs-item-assembling-machine-mk5" , 10 } )
					table.insert( SIEXQS.giftListRestart , { "siexhs-module-module-speed-mk5" , 10 } )
					table.insert( SIEXQS.giftListRestart , { "siexhs-module-module-product-mk5" , 10 } )
				end
			end
			if SIStartup.SIEXQS.siexhs_give_teleporter() then
				if level == 1 then
					table.insert( SIEXQS.giftListStart , { "siexhs-item-clover-machine" , 5 } )
				elseif level == 2 then
					table.insert( SIEXQS.giftListStart , { "siexhs-item-clover-machine" , 5 } )
					table.insert( SIEXQS.giftListStart , { "siexhs-item-pentalobe-machine" , 5 } )
				elseif level == 3 then
					table.insert( SIEXQS.giftListStart , { "siexhs-item-clover-machine" , 10 } )
					table.insert( SIEXQS.giftListStart , { "siexhs-item-pentalobe-machine" , 10 } )
				elseif level == 4 then
					table.insert( SIEXQS.giftListStart , { "siexhs-item-clover-machine" , 10 } )
					table.insert( SIEXQS.giftListStart , { "siexhs-item-pentalobe-machine" , 10 } )
					table.insert( SIEXQS.giftListStart , { "siexhs-item-teleporter-input-mk1" , 10 } )
					table.insert( SIEXQS.giftListStart , { "siexhs-item-teleporter-output-mk1" , 10 } )
				elseif level == 5 then
					table.insert( SIEXQS.giftListStart , { "siexhs-item-clover-machine" , 100 } )
					table.insert( SIEXQS.giftListStart , { "siexhs-item-pentalobe-machine" , 100 } )
					table.insert( SIEXQS.giftListStart , { "siexhs-item-hexaphyllum-machine" , 100 } )
					table.insert( SIEXQS.giftListStart , { "siexhs-item-teleporter-input-mk5" , 100 } )
					table.insert( SIEXQS.giftListStart , { "siexhs-item-teleporter-output-mk5" , 100 } )
					table.insert( SIEXQS.giftListRestart , { "siexhs-item-clover-machine" , 100 } )
					table.insert( SIEXQS.giftListRestart , { "siexhs-item-pentalobe-machine" , 100 } )
					table.insert( SIEXQS.giftListRestart , { "siexhs-item-hexaphyllum-machine" , 100 } )
					table.insert( SIEXQS.giftListRestart , { "siexhs-item-teleporter-input-mk5" , 100 } )
					table.insert( SIEXQS.giftListRestart , { "siexhs-item-teleporter-output-mk5" , 100 } )
				end
			end
		end
	end ,
	
	chestCount = 5 ,
	level =
	{
		poor = 1 ,
		medium = 2 ,
		rich = 3 ,
		master = 4 ,
		debug = 5
	} ,
	giftListStart = {} ,
	giftListRestart = {}
}