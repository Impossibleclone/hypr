--################
--## AUTOSTART ###
--################

local wob = "rm -f /tmp/wobpipe && mkfifo /tmp/wobpipe && tail -f /tmp/wobpipe | wob &"

hl.on("hyprland.start", function()
    hl.exec_cmd("hypridle")
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("hyprpm reload -n -f")
    hl.exec_cmd("wal -R")
    hl.exec_cmd("xrdb -merge ~/.Xresources")
    hl.exec_cmd("waybar")
    hl.exec_cmd(wob)
    hl.exec_cmd("sleep 0.6;swicht")
    hl.exec_cmd("brightnessctl set 50%")
end)
