#!/bin/bash

#better gnome desktop
gsettings set org.gnome.shell.keybindings toggle-overview '[]'
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right '[]'
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left '[]' 
gsettings set org.gnome.desktop.wm.keybindings org.gnome.desktop.wm.keybindings minimize ['<Super>Down']
gsettings set org.gnome.desktop.wm.keybindings org.gnome.desktop.wm.keybindings maximize ['[]']
gsettings set org.gnome.desktop.wm.keybindings org.gnome.desktop.wm.keybindings begin-resize ['[]']
gsettings set org.gnome.desktop.wm.keybindings org.gnome.desktop.wm.keybindings begin-move ['[]']
gsettings set org.gnome.desktop.wm.keybindings org.gnome.desktop.wm.keybindings switch-applications ['<Alt>Tab']
gsettings set org.gnome.desktop.wm.keybindings org.gnome.desktop.wm.keybindings switch-applications-backward ['<Shift><Alt>Tab']
gsettings set org.gnome.desktop.wm.keybindings org.gnome.desktop.wm.keybindings toggle-maximized ['<Super>Up']
gsettings set org.gnome.desktop.wm.keybindings org.gnome.desktop.wm.keybindings close ['<Super>w']
gsettings set org.gnome.desktop.wm.keybindings org.gnome.desktop.wm.keybindings show-desktop ['<Super>d']
gsettings set org.gnome.desktop.wm.preferences button-layout :


#custom shortcuts
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Terminator'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'terminator'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Super>t'
gsettings set org.gnome.desktop.default-applications.terminal exec 'terminator'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name 'Flameshot'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command 'flameshot gui'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding '<Super>s'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ name 'Shutdown'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ command 'gnome-session-quit  --power-off'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ binding '<Alt>F4'

#disable standby on lid-close
gsettings set org.gnome.settings-daemon.plugins.power lid-close-battery-action 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power lid-close-ac-action 'nothing'
