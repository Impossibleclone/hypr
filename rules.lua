--###########
--## RULES ##
--###########

hl.workspace_rule({ workspace = "2", on_created_empty = "zen-browser" })
hl.window_rule({ match = { title = ".*tdf.*" }, opacity = "1.0 override 1.0 override 1.0 override" })
hl.window_rule({ match = { title = ".*kitty.*" }, opacity = "1.0 override 0.6 override 1.0 override" })

hl.window_rule({ match = { title = ".*mpv.*" }, size = "920 518", float = true, center = true })
hl.window_rule({ match = { title = ".*imv.*" }, size = "920 518", float = true, center = true })
hl.window_rule({ match = { title = ".*Camera.*" }, size = "920 518", float = true, center = true })

hl.window_rule({
    name = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name = "fix-xwayland-drags",
    match = {
        class = "^$", title = "^$", xwayland = true, float = true, fullscreen = false, pin = false,
    },
    no_focus = true,
})

hl.window_rule({
    name = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move = "20 monitor_h-120",
    float = true,
})

hl.window_rule({
    name = "steam-5",
    match = { class = "^steam$" },
    workspace = "5",
})

hl.window_rule({
    name = "zen-2",
    match = { class = "^zen$" },
    workspace = "2",
    fullscreen = false,
    fullscreen_state = "0 2"
})

hl.window_rule({
    name = "win10vm-6",
    match = { class = "^qemu-system.*$" },
    workspace = "6",
    fullscreen = true
})

hl.layer_rule({
    match = { namespace = "match:namespace = kitty-panel" },
})
