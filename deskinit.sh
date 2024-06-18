#!/bin/bash

current_desktop=$(qdbus org.kde.KWin /KWin currentDesktop)
curr_desktop=$(xdotool get_desktop)
total_desktops=$(xdotool get_num_desktops)
total_desktops=$((total_desktops - 1))

if [ $curr_desktop -eq $total_desktops ]; then
    qdbus org.kde.KWin /KWin setCurrentDesktop 1
else
    next_desktop=$((current_desktop + 1))
    qdbus org.kde.KWin /KWin setCurrentDesktop $next_desktop
fi
