-- put former exec-once commands inside the func and former exec commands outside
hl.on("hyprland.start", function ()

    -- Bar, wallpaper
    hl.exec_cmd("$HOME/.config/hypr/hyprland/scripts/start_geoclue_agent.sh")
    hl.exec_cmd("qs -c $qsConfig")
    hl.exec_cmd("$HOME/.config/hypr/custom/scripts/__restore_video_wallpaper.sh")

    -- Core components (authentication, lock screen, notification daemon)
    hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("dbus-update-activation-environment --all")
    hl.exec_cmd("sleep 1 && dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP") -- Some fix idk

    -- Audio
    hl.exec_cmd("easyeffects --hide-window --service-mode")

    -- Clipboard: history
    --hl.exec_cmd("wl-paste --watch cliphist store")
    hl.exec_cmd("wl-paste --type text --watch bash -c 'cliphist store && qs -c $qsConfig ipc call cliphistService update'")
    hl.exec_cmd("wl-paste --type image --watch bash -c 'cliphist store && qs -c $qsConfig ipc call cliphistService update'")

    -- Cursor
    hl.exec_cmd("hyprctl setcursor Bibata-Modern-Classic 24")

    -- Load plugins on startup
    hl.exec_cmd("hyprpm reload -n")
    
    -- CUSTOM
    hl.exec_cmd("sleep 10s && rog-control-center")
    hl.exec_cmd("sleep 10s && protonvpn-app")
    hl.exec_cmd("sleep 10s && syncthingtray-qt6")
    hl.exec_cmd("sleep 10s && tailscale systray")
    hl.exec_cmd("sleep 10s && kdeconnect-indicator")

    hl.exec_cmd("sleep 10s && tipp10")
    hl.exec_cmd("sleep 10s && libreoffice")

    hl.exec_cmd("sleep 10s && glava")
end)

