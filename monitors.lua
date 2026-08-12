-- MONITORS
hl.monitor({
    output = "eDP-1",
    mode = "highres@highrr",
    position = "0x0",
    scale = "1",
    bitdepth = 10,
})

hl.monitor({
    output = "",
    mode = "highres@highrr",
    position = "auto",
    scale = "1",
    mirror = "eDP-1",
})
