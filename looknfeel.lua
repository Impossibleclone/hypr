--####################
--## LOOK AND FEEL ###
--####################

local home = os.getenv("HOME")
local colors = require(home .. "/.cache/wal/colors-hyprland")

-- ENVIRONMENT VARIABLES
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- INPUT DEVICES
hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5,
})

-- CORE CONFIGURATION
hl.config({
    input = {
        kb_layout = "us",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",
        follow_mouse = 1,
        sensitivity = 0,
        touchpad = {
            natural_scroll = true,
        },
    },
    general = {
        gaps_in = 5,
        gaps_out = 10,
        border_size = 3,
        col = {
            active_border = { colors = { colors.color1, colors.color2, colors.color3, colors.color4, colors.color5, colors.color6 }, angle = 0 },
            inactive_border = colors.background,
        },
        resize_on_border = false,
        allow_tearing = false,
        layout = "master",
    },
    decoration = {
        rounding = 4,
        rounding_power = 10,
        active_opacity = 0.90,
        inactive_opacity = 0.6,
        shadow = {
            enabled = false,
            range = 14,
            render_power = 10,
            color = colors.color4,
        },
        blur = {
            enabled = true,
            size = 8,
            passes = 4,
            noise = 0,
            brightness = 0.9,
            contrast = 1.25,
            xray = false,
            new_optimizations = true,
            vibrancy = 1.01696,
        },
    },
    master = {
        new_status = "master",
        new_on_top = true,
        mfact = 0.7,
    },
    misc = {
        font_family = "Fira Code Nerd Font Mono",
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
    },
})
