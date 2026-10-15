-- -----------------------------------------------------
-- ▄▀█ █▄░█ █ █▀▄▀█ ▄▀█ ▀█▀ █ █▀█ █▄░█
-- █▀█ █░▀█ █ █░▀░█ █▀█ ░█░ █ █▄█ █░▀█
-- -----------------------------------------------------

hl.curve("easeOutQuint", { type = "bezier", points = { { 0.16, 1 }, { 0.3, 1 } } })
hl.curve("easeOutQuad", { type = "bezier", points = { { 0.25, 1 }, { 0.5, 1 } } })
hl.curve("easeOutBack", { type = "bezier", points = { { 0.34, 1.15 }, { 0.64, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0 }, { 0.35, 1 } } })
hl.curve("easeInOutQuart", { type = "bezier", points = { { 0.76, 0 }, { 0.24, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.3, 0.1 }, { 0.7, 0.9 } } })
hl.curve("quick", { type = "bezier", points = { { 0.25, 0.1 }, { 0.25, 1 } } })
hl.curve("overshoot", { type = "bezier", points = { { 0.1, 0.8 }, { 0.2, 1.05 } } })

hl.animation({ leaf = "global", enabled = true, speed = 6, bezier = "default" })
hl.animation({ leaf = "windows", enabled = true, speed = 6, bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4, bezier = "easeOutQuad", style = "popin 30%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 4, bezier = "quick", style = "popinfade 60%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 5, bezier = "easeOutQuint" })
hl.animation({ leaf = "layers", enabled = true, speed = 5, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 5, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 5, bezier = "easeOutQuad", style = "fade" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 4, bezier = "easeOutQuint" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 4, bezier = "easeOutQuad" })
hl.animation({ leaf = "fadeLayers", enabled = true, speed = 4, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 4, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 4, bezier = "almostLinear" })
hl.animation({ leaf = "fadePopups", enabled = true, speed = 4, bezier = "almostLinear" })
hl.animation({ leaf = "fadePopupsIn", enabled = true, speed = 4, bezier = "almostLinear" })
hl.animation({ leaf = "fadePopupsOut", enabled = true, speed = 4, bezier = "almostLinear" })
hl.animation({ leaf = "fadeDpms", enabled = true, speed = 4, bezier = "linear" })
hl.animation({ leaf = "border", enabled = true, speed = 5, bezier = "easeOutQuad" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 5, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 5.5, bezier = "easeOutQuad", style = "slidefadevert 20%" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 5, bezier = "easeOutQuad", style = "slidefadevert 20%" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 5, bezier = "almostLinear", style = "slidefade 20%" })
hl.animation({ leaf = "specialWorkspaceIn", enabled = true, speed = 5.5, bezier = "easeOutQuad", style = "slidefade 20%" })
hl.animation({ leaf = "specialWorkspaceOut", enabled = true, speed = 5, bezier = "easeOutQuad", style = "slidefade 20%" })
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 3, bezier = "quick" })
hl.animation({ leaf = "monitorAdded", enabled = true, speed = 5, bezier = "easeOutQuint" })

hl.config({
    animations = {
        enabled = true,
    }
})
