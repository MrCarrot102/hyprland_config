Hyprland Configuration
======================

This repository contains my personal configuration files for Hyprland, a dynamic tiling Wayland compositor. Below, you'll find detailed explanations of the configuration, keybindings, and other relevant information.

Table of Contents
-----------------
1. Configuration Overview
2. Environment Variables
3. Keybindings
4. Window Rules
5. Scripts
6. Customization
7. Contributing
8. License

1. Configuration Overview
-------------------------
The main configuration file for Hyprland is located at ~/.config/hypr/hyprland.conf. This file defines various settings such as monitor configuration, input devices, general behavior, decorations, animations, and more.

- Monitor Configuration:
  monitor=,preferred,auto,auto
  This line configures the primary monitor to use the preferred resolution and refresh rate.

- Input Devices:
  input {
      kb_layout = pl
      follow_mouse = 1
      touchpad {
          natural_scroll = yes
      }
      sensitivity = 0
  }
  This section configures the keyboard layout to Polish (pl), enables natural scrolling for the touchpad, and sets the mouse sensitivity to 0 (no modification).

- General Settings:
  general {
      gaps_in = 5
      gaps_out = 0
      border_size = 2
      col.active_border = rgba(33ccffee) rgba(00ff99ee) 45deg
      col.inactive_border = rgba(595959aa)
      layout = dwindle
  }
  This section sets the gaps between windows, border size, and colors for active and inactive borders. The layout is set to dwindle.

- Decorations:
  decoration {
      rounding = 5
      blur {
          size = 7
          passes = 4
          new_optimizations = true
      }
  }
  This section configures window rounding and blur effects.

- Animations:
  animations {
      enabled = yes
      bezier = myBezier, 0.05, 0.9, 0.1, 1.05
      animation = windows, 1, 5, myBezier
      animation = windowsOut, 1, 5, default, popin 80%
      animation = border, 1, 10, default
      animation = borderangle, 1, 8, default
      animation = fade, 1, 7, default
      animation = workspaces, 1, 5, default
      animation = specialWorkspace, 1, 5, myBezier, slidevert
  }
  This section enables animations and defines various animation styles for windows, borders, and workspaces.

2. Environment Variables
-------------------------
Several environment variables are set to ensure compatibility and proper behavior of applications under Hyprland:

env = GDK_BACKEND=wayland
env = QT_QPA_PLATFORM,wayland
env = SDL_VIDEODRIVER,wayland
env = CLUTTER_BACKEND,wayland
env = XDG_CURRENT_DESKTOP,Hyprland
env = XDG_SESSION_TYPE,wayland
env = XDG_SESSION_DESKTOP,Hyprland
env = QT_AUTO_SCREEN_SCALE_FACTOR,1
env = QT_QPA_PLATFORM,wayland;xcb
env = QT_WAYLAND_DISABLE_WINDOWDECORATION,1
env = QT_QPA_PLATFORMTHEME,qt5ct
env = GTK_THEME,Sweet-Dark
env = XCURSOR_THEME,"Capitaine Cursors"
env = XCURSOR_SIZE,20

3. Keybindings
--------------
The following keybindings are defined in the configuration:

- Super + T: Open Kitty terminal
- Super + Q: Close active window
- Super + Shift + Q: Open logout menu
- Super + M: Exit Hyprland
- Super + F: Toggle fullscreen
- Super + G: Toggle window grouping
- Super + P: Take a screenshot
- Super + Space: Toggle special workspace
- Super + Shift + N: Open Kitty with Neovim
- Super + Shift + Space: Move window to special workspace
- Super + Shift + X: Move window to workspace 1
- Super + Shift + P: Take a screenshot of a selected area
- Super + \: Open Kitty with Ranger
- Super + V: Toggle floating window
- Super + D: Open application launcher (Wofi)
- Super + S: Toggle split layout
- Super + L: Lock screen
- Super + K: Suspend system
- Super + Page Up/Down: Switch workspaces
- Super + Arrow Keys: Move focus between windows
- Super + 1-0: Switch to workspace 1-10
- Super + Shift + 1-0: Move window to workspace 1-10

4. Window Rules
---------------
Window rules are defined to manage specific behaviors for certain applications:

windowrulev2 = float,class:^(Lxappearance)$
windowrulev2 = opacity 0.8 0.8,title:^(rofi)(.*)$
windowrulev2 = opacity 0.8 0.8,class:^(kitty)$
windowrulev2 = opacity 0.8 0.8,class:^(wofi)$
windowrulev2 = opacity 0.8 0.8,class:^(thunar)$
windowrulev2 = maximize,class:^(winbox.exe)$
windowrulev2 = maximize,title:^(nvim)$
windowrulev2 = float,class:^(org.telegram.desktop|vlc)$
windowrulev2 = float,title:^(ranger)$
windowrulev2 = size 60% 80%,class:^(org.telegram.desktop|vlc)$
windowrulev2 = size 60% 80%,title:^(Open Files|ranger)$
windowrulev2 = center,class:^(org.telegram.desktop|Open Files|ranger|vlc)$
windowrulev2 = opacity 0.8 0.8,title:^(Open Files|ranger)$
windowrulev2 = opacity 1 1,class:^(kitty)$,title:^(nvim)(.*)$
windowrulev2 = noborder,fullscreen:1
layerrule = blur,gtk-layer-shell

5. Scripts
----------
Several scripts are used to enhance functionality:

- xdg-portal-hyprland.sh: Handles XDG portals for Hyprland.
- screenshot.sh: Takes a screenshot.
- screenshot-selection.sh: Takes a screenshot of a selected area.
- power-menu.sh: Displays a power menu.

6. Customization
----------------
Feel free to customize this configuration to suit your needs. You can modify the keybindings, window rules, and other settings as required.

7. Contributing
---------------
If you have any suggestions or improvements, please feel free to open an issue or submit a pull request.
