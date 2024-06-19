#!/bin/bash

# Function to add a virtual desktop in KDE Plasma
add_virtual_desktop() {
  # Get the current number of desktops
  current_desktops=$(qdbus org.kde.KWin /VirtualDesktopManager org.freedesktop.DBus.Properties.Get org.kde.KWin.VirtualDesktopManager count)

  # Calculate the position for the new desktop
  new_desktop_position=$current_desktops

  # Create a new desktop with the default name
  qdbus org.kde.KWin /VirtualDesktopManager org.kde.KWin.VirtualDesktopManager.createDesktop $new_desktop_position "New Desktop $new_desktop_position"
}

# Execute the function to add a virtual desktop
add_virtual_desktop
