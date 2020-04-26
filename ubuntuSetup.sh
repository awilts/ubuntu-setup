#!/bin/bash

#simple apps
sudo apt install htop screenfetch zip bat curl flameshot git zsh chromium-browser gnome-tweak-tool -y

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

#spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update 
sudo apt-get install spotify-client -y

#intellij
wget "https://download.jetbrains.com/product?code=IIU&latest&distribution=linux" -O intellij.tar.gz
sudo mkdir /usr/share/intellij
sudo tar -xzf intellij.tar.gz -C /usr/share/intellij
rm intellij.tar.gz

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

sudo apt remove gnome-shell-extension-ubuntu-dock

./gnomeSetup.sh

#gnome extensions
#todo
#https://extensions.gnome.org/extension/779/clipboard-indicator/
#add hotkeys
#backslide

#terminator
sudo add-apt-repository ppa:gnome-terminator -y
sudo apt-get update
sudo apt-get install terminator -y
mkdir -p ~/.config/terminator/ 
cp configs/terminator.config ~/.config/terminator/config

# This installs alacritty terminal on ubuntu (https://github.com/jwilm/alacritty)
curl https://sh.rustup.rs -sSf | sh
sudo apt-get install -y cmake libfreetype6-dev libfontconfig1-dev xclip
git clone https://github.com/jwilm/alacritty
cd alacritty
cargo install

# Add Man-Page entries
sudo mkdir -p /usr/local/share/man/man1
gzip -c alacritty.man | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null

# Add shell completion for bash and zsh
mkdir -p ~/.bash_completion
cp alacritty-completions.bash ~/.bash_completion/alacritty
echo "source ~/.bash_completion/alacritty" >> ~/.bashrc

sudo cp alacritty-completions.zsh /usr/share/zsh/functions/Completion/X/_alacritty

# Copy default config into home dir
cp alacritty.yml ~/.alacritty.yml

# Create desktop file
cp Alacritty.desktop ~/.local/share/applications/

# Copy binary to path
sudo cp target/release/alacritty /usr/local/bin

# Use Alacritty as default terminal (Ctrl + Alt + T)
gsettings set org.gnome.desktop.default-applications.terminal exec 'alacritty'

# Remove temporary dir
cd ..
rm -r alacritty