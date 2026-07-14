--##################
--## KEYBINDINGS ###
--##################

local terminal = "kitty"
local editor = terminal .. " nvim"
local menu = "rofi -show drun"
local mainMod = "SUPER"

-- Core Binds
hl.bind(mainMod .. " + O", function() hl.plugin.hyprexpo.expo("toggle") end)
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Q", hl.dsp.window.kill())
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("killall Hyprland"))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd(editor))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + G", hl.dsp.exec_cmd("[workspace 2] zen-browser"))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("killall -q waybar;waybar"))
hl.bind(mainMod .. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + F", hl.dsp.window.resize({ x = 945, y = 501 }))
hl.bind(mainMod .. " + F", hl.dsp.window.center())
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + I", hl.dsp.layout("swapwithmaster master"))
hl.bind(mainMod .. " + X", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("hyprshot -m output -o ~/pics/ss"))
hl.bind(mainMod .. " + ALT + C", hl.dsp.exec_cmd("hyprshot -m window -o ~/pics/ss"))
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.exec_cmd("hyprshot -m region -o ~/pics/ss"))
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd("hyprpicker -a"))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.exec_cmd("kitty +kitten panel --edge=background --detach -o background_opacity=0 -o window_padding_width=2 cava"))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("walzec"))
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd("swicht"))

-- Navigation Binds
hl.bind(mainMod .. " + J", hl.dsp.window.cycle_next({ next = true }))
hl.bind(mainMod .. " + J", hl.dsp.layout("swapwithmaster master"))
hl.bind(mainMod .. " + K", hl.dsp.window.cycle_next({ prev = true }))
hl.bind(mainMod .. " + K", hl.dsp.layout("swapwithmaster master"))
hl.bind("ALT + J", hl.dsp.focus({ direction = "down" }))
hl.bind("ALT + K", hl.dsp.focus({ direction = "up" }))
hl.bind("ALT + H", hl.dsp.focus({ direction = "left" }))
hl.bind("ALT + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + left", hl.dsp.layout("mfact -0.01"))
hl.bind(mainMod .. " + right", hl.dsp.layout("mfact +0.01"))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Workspace Binds
for i = 1, 9 do
    hl.bind(mainMod .. " + " .. i, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Mouse Integration
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())

-- Media & Hardware Controls
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+ && wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2 * 100)}' > /tmp/wobpipe"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%- && wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2 * 100)}' > /tmp/wobpipe"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("gdbus call -e -d net.zoidplex.wlr_gamma_service -o /net/zoidplex/wlr_gamma_service -m net.zoidplex.wlr_gamma_service.brightness.increase 0.01 && pkill -RTMIN+10 waybar"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("~/scrpts/wob-brightnessget > /tmp/wobpipe"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("gdbus call -e -d net.zoidplex.wlr_gamma_service -o /net/zoidplex/wlr_gamma_service -m net.zoidplex.wlr_gamma_service.brightness.decrease 0.01 && pkill -RTMIN+10 waybar"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("~/scrpts/wob-brightnessget > /tmp/wobpipe"), { locked = true, repeating = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
