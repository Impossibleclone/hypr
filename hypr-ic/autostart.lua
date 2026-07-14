--################
--## AUTOSTART ###
--################

local wob = "rm -f /tmp/wobpipe && mkfifo /tmp/wobpipe && tail -f /tmp/wobpipe | wob &"

hl.on("hyprland.start", function()
    hl.exec_cmd("wlr-gamma-service")
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("hyprpm reload -n -f")
    hl.exec_cmd("wal -R")
    hl.exec_cmd("waybar")
    hl.exec_cmd(wob)
    hl.exec_cmd("sleep 0.6;swicht")
    hl.exec_cmd("sleep 0.6;gdbus call -e -d net.zoidplex.wlr_gamma_service -o /net/zoidplex/wlr_gamma_service -m net.zoidplex.wlr_gamma_service.brightness.set 0.5")
end)
