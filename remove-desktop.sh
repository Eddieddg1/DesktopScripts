#!/bin/bash

# Function to remove the current virtual desktop in KDE Plasma
remove_virtual_desktop() {
  # Get the current number of desktops
  current_desktops=$(qdbus org.kde.KWin /VirtualDesktopManager org.kde.KWin.VirtualDesktopManager.count)

  # Check if there is more than one desktop
  if [ "$current_desktops" -gt 1 ]; then
    # Get the ID of the current desktop
    current_desktop_id=$(qdbus org.kde.KWin /VirtualDesktopManager org.kde.KWin.VirtualDesktopManager.current)

    # Remove the current desktop
    qdbus org.kde.KWin /VirtualDesktopManager org.kde.KWin.VirtualDesktopManager.removeDesktop $current_desktop_id
  fi
}

# Execute the function to remove the current virtual desktop
remove_virtual_desktop
