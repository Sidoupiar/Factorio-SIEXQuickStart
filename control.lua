require( "__SICoreFunctionLibrary__/util" )

needlist( "__SICoreFunctionLibrary__" , "define/load" , "function/load" )
needlist( "__SICoreFunctionLibrary__/runtime/structure" , "sievent_bus" , "siglobal" )

load()

-- ------------------------------------------------------------------------------------------------
-- ---------- 装载数据 ----------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------

playerData = {}

function GetPosition( surface , center , prototype )
	local px = center[1] or center.x
	local py = center[2] or center.y
	for i = 2 , 15 , 1 do
		for x = px-i , px+i , 1 do
			if x ~= px then
				for y = py-i , py+i , 1 do
					if y ~= py then
						local entities = surface.find_entities{ { x-0.49 , y-0.49 } , { x+0.49 , y+0.49 } }
						if #entities < 1 then
							local tile = surface.get_tile( x , y )
							local mask = false
							for layer , value in pairs( prototype.collision_mask ) do
								if tile.collides_with( layer ) then
									mask = true
									break
								end
							end
							if not mask then return { x , y } end
						end
					end
				end
			end
		end
	end
	return nil
end

function CreateChest( player )
	local prototype = game.entity_prototypes["siexqs-container-wooden-chest-"..math.random( 1 , SIEXQS.chestCount )]
	local surface = player.surface
	local position = GetPosition( surface , player.position , prototype )
	if not position then return nil , nil end
	chest = surface.create_entity{ name = prototype.name , position = position , force = player.force }
	inventory = chest.get_inventory( defines.inventory.chest )
	return chest , inventory
end

function CreateGift( player , gifts )
	if not gifts then return end
	local chest , inventory = CreateChest( player )
	for i , gift in pairs( gifts ) do
		local name = gift[1]
		if not game.item_prototypes[name] then player.print( { "SIEXQS.no-gift" , name } , SIColors.printColor.orange )
		else
			local count = gift[2] or 1
			for i = 1 , 15 , 1 do
				if not inventory then
					player.print( { "SIEXQS.too-many-gift-type" } , SIColors.printColor.orange )
					break
				end
				count = count - inventory.insert{ name = name , count = count }
				if count > 0 then chest , inventory = CreateChest( player )
				else break end
			end
			if count > 0 then player.print( { "SIEXQS.too-many-gift" , name } , SIColors.printColor.orange ) end
		end
		if not inventory then
			player.print( { "SIEXQS.too-many-gift-type" } , SIColors.printColor.orange )
			break
		end
	end
	player.print( { "SIEXQS.give-gift" } , SIColors.printColor.green )
end

-- ------------------------------------------------------------------------------------------------
-- ---------- 事件注册 ----------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------

SIEventBus.Add( SIEvents.on_player_created , function( event )
	playerData[event.player_index] = SIEXQS.giftListStart
end )

SIEventBus.Add( SIEvents.on_player_joined_game , function( event )
	local playerIndex = event.player_index
	CreateGift( game.players[playerIndex] , playerData[playerIndex] )
end )

SIEventBus.Add( SIEvents.on_player_respawned , function( event )
	CreateGift( game.players[event.player_index] , SIEXQS.giftListRestart )
end )