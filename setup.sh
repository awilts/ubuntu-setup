#simple apps
sudo apt install htop screenfetch zip bat curl flameshot git zsh -y

#oh-my-zsh
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
cp -rf configs/.zshrc ~/.zshrc

#vscode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code -y

#terminator
sudo add-apt-repository ppa:gnome-terminator -y
sudo apt-get update
sudo apt-get install terminator -y
mkdir -p ~/.config/terminator/ 
cp configs/terminator.config ~/.config/terminator/config

#spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update 
sudo apt-get install spotify-client -y

#intellij
wget "https://download.jetbrains.com/product?code=IIU&latest&distribution=linux" -O intellij.tar.gz
sudo mkdir /usr/share/intellij
sudo tar -xzf intellij.tar.gz -C /usr/share/intellij

#nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | zsh

#sdkman
curl -s "https://get.sdkman.io" | zsh

#wps-office
sudo snap install wps-office  

#mailspring
sudo apt install gdebi-core
wget -O ~/mailspring.deb "https://updates.getmailspring.com/download?platform=linuxDeb"
yes | sudo gdebi ~/mailspring.deb

#better gnome desktop
sudo apt install gnome-tweak-tool
sudo apt remove gnome-shell-extension-ubuntu-dock
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


#custom shortcuts
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Terminator'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'terminator'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Super>t'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name 'Flameshot'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command 'flameshot gui'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding '<Super>s'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ name 'Shutdown'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ command 'gnome-session-quit  --power-off'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ binding '<Alt>F4'

#disable standby on lid-close
gsettings set org.gnome.settings-daemon.plugins.power lid-close-battery-action 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power lid-close-ac-action 'nothing'