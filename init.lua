--

--print("Trying to do UVs outside of functions")
--ModDevGenerateSpriteUVsForDirectory( "mods/one_character/data/enemies_gfx", true )
--ModDevGenerateSpriteUVsForDirectory( "mods/one_character/files", true )



function OnModPreInit()
	
end

function OnModInit()
	
end

function OnModPostInit()
	
end

function OnPlayerSpawned( player_entity ) -- This runs when player entity has been created
	dofile("mods/one_character/files/change_cape_color.lua")
end
