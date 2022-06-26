--

--print("Trying to do UVs outside of functions")
--ModDevGenerateSpriteUVsForDirectory( "mods/one_character/data/enemies_gfx", true )
--ModDevGenerateSpriteUVsForDirectory( "mods/one_character/files", true )

ModLuaFileAppend("data/scripts/gun/gun_actions.lua", "mods/one_character/files/spells.lua")

function OnModPreInit()
	
end

function OnModInit()
	
end

function OnModPostInit()
	
end

function OnPlayerSpawned(player) -- This runs when player entity has been created
	dofile("mods/one_character/files/change_cape_color.lua")
	local x, y = EntityGetTransform(player)
	CreateItemActionEntity("ONE_CHAKRAM", x+20, y)
end
