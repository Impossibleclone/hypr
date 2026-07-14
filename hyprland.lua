--#########################
--## MAIN CONFIGURATION ###
--#########################

local config_dir = os.getenv("HOME") .. "/.config/hypr/"

-- Import modules
dofile(config_dir .. "looknfeel.lua")
dofile(config_dir .. "autostart.lua")
dofile(config_dir .. "animations.lua")
dofile(config_dir .. "rules.lua")
dofile(config_dir .. "binds.lua")
dofile(config_dir .. "plugins.lua")
