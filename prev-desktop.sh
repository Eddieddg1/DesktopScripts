 #!/bin/bash

current_desktop=$(qdbus org.kde.KWin /KWin currentDesktop)
curr_desktop=$(xdotool get_desktop)
total_desktops=$(xdotool get_num_desktops)

if [ $curr_desktop -eq 0 ]; then
    qdbus org.kde.KWin /KWin setCurrentDesktop $total_desktops
else
    prev_desktop=$((current_desktop - 1))
    qdbus org.kde.KWin /KWin setCurrentDesktop $prev_desktop
fi
