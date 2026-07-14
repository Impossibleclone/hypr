--#############
--## PLUGINS ##
--#############

local home = os.getenv("HOME")
local colors = dofile(home .. "/.cache/wal/colors-hyprland.lua")

hl.config({
    plugin = {
        hyprexpo = {
            columns = 3,
            gaps_in = 5,
            gaps_out = 0,
            bg_col = colors.background,
            workspace_method = "center current",
            gesture_distance = 200,
            cancel_key = "escape",
            show_cursor = 1,
            label_enable = false,
            border_color_current = colors.color4,
            border_color_hover = colors.color5,
            border_color_focus = colors.color4,
        },
        dynamic_cursors = {
            enabled = true,
            mode = "stretch",
            threshold = 2,
            stretch = {
                limit = 300,
                activation = "quadratic",
                window = 100,
            },
        }
    }
})
