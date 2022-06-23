local cape = EntityGetWithName("cape")
local cape_verlet = EntityGetFirstComponentIncludingDisabled(cape, "VerletPhysicsComponent")

local capestyle = ModSettingGetNextValue("one_character.capestyle")
-- print(to_string(capestyle))

local red = 0xFF220099
local white = 0xFFF9F9F9
local black = 0xFF3F3B3B
local invis = 0x00FFFFFF

if capestyle ~= "invisible" then
	
end

if capestyle == "red" then
	ComponentSetValue2(cape_verlet, "cloth_color", red)
	ComponentSetValue2(cape_verlet, "cloth_color_edge", red)
elseif capestyle == "white" then
	ComponentSetValue2(cape_verlet, "cloth_color", white)
	ComponentSetValue2(cape_verlet, "cloth_color_edge", white)
elseif capestyle == "redblack" then
	ComponentSetValue2(cape_verlet, "cloth_color", red)
	ComponentSetValue2(cape_verlet, "cloth_color_edge", black)
elseif capestyle == "whiteblack" then
	ComponentSetValue2(cape_verlet, "cloth_color", white)
	ComponentSetValue2(cape_verlet, "cloth_color_edge", black)
elseif capestyle == "blackwhite" then
	ComponentSetValue2(cape_verlet, "cloth_color", black)
	ComponentSetValue2(cape_verlet, "cloth_color_edge", white)
elseif capestyle == "invisible" then
	--EntityKill(cape)
elseif capestyle == "off" then
		
else 
	print("Unrecognized cape style:")
	print(to_string(capestyle))
end
