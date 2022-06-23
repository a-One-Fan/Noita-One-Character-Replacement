dofile("data/scripts/lib/mod_settings.lua")

function cape_change( mod_id, gui, in_main_menu, setting, old_value, new_value  )
	dofile("mods/one_character/files/change_cape_color.lua")
end

local mod_id = "one_character"
mod_settings_version = 1
mod_settings = 
{
	{
		id = "capestyle",
		ui_name = "Cape style",
		ui_description = "Style of cape One will have - Manga-style red cape or game-style white cape, with extra options like black trim or black inside.",
		value_default = "redblack",
		values = { {"off", "Off"}, {"red", "Pure red"}, {"white", "Pure white"}, {"redblack", "Red with black trim"}, {"whiteblack", "White with black trim"}, {"blackwhite", "Black inside with white outside"}, },
		scope = MOD_SETTING_SCOPE_RUNTIME,
		change_fn = cape_change,
	},
	{
		id = "helptext",
		ui_name = "Use the 'Off' option if you want to use any other cape-changing mods.",
		not_setting = true,
	}
}

function ModSettingsUpdate( init_scope )
	local old_version = mod_settings_get_version( mod_id ) -- This can be used to migrate some settings between mod versions.
	mod_settings_update( mod_id, mod_settings, init_scope )
end

function ModSettingsGuiCount()
	return mod_settings_gui_count( mod_id, mod_settings )
end

function ModSettingsGui( gui, in_main_menu )
	mod_settings_gui( mod_id, mod_settings, gui, in_main_menu )
end