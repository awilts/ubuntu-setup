#!/bin/bash

#simple apps
sudo pacman -S htop code screenfetch zip bat curl flameshot git zsh chromium terminator -y

#todo
git clone https://aur.archlinux.org/intellij-idea-ultimate-edition.git
makepkg -sic intellij-idea-ultimate-edition
intellij-idea-ultimate-edition

#oh-my-zsh
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
cp -rf configs/.zshrc ~/.zshrc

#spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update 
sudo apt-get install spotify-client -y

#nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | zsh

#sdkman 
curl -s "https://get.sdkman.io" | zsh

#mailspring
wget -O ~/mailspring.rpm "https://updates.getmailspring.com/download?platform=linuxRpm"
sudo dnf install ~/mailspring.rpm


./gnomeSetup.sh

#gnome extensions
#todo
#https://extensions.gnome.org/extension/779/clipboard-indicator/
#add hotkeys
#backslide


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

# Remove temporary dir
cd ..
rm -r alacritty


#chezmoi
    #vscode
    #intellij
    #terminator
    #backslide ?
    #clipboard indicator ?