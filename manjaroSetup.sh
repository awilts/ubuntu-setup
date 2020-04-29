#!/bin/bash

#disable compression for makepkg
sudo sed -i "s|PKGEXT='.pkg.tar.xz'|PKGEXT='.pkg.tar'|g" /etc/makepkg.conf

#install base-devel
sudo pacman -S base-devel --noconfirm --needed

#yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm --needed
cd -

#install apps
yay -Sc --noconfirm --needed mlocate bashtop visual-studio-code-bin chezmoi screenfetch zip bat curl flameshot git zsh chromium terminator intellij-idea-ultimate-edition spotify

#oh-my-zsh
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

#nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | zsh

#sdkman + java 
curl -s "https://get.sdkman.io" | zsh
export SDKMAN_DIR="/home/alex/.sdkman"
[[ -s "/home/alex/.sdkman/bin/sdkman-init.sh" ]] && source "/home/alex/.sdkman/bin/sdkman-init.sh"
sdk i java
echo 'export JAVA_HOME=/home/alex/.sdkman/candidates/java/current' >> ~/.profile

#setup dotfiles
#chezmoi init https://github.com/awilts/dotfiles.git
    #vscode
    #intellij
    #terminator
    #git
    #backslide ?
    #clipboard indicator ?

#setup gnome
./gnomeSetup.sh

#gnome extensions
#https://extensions.gnome.org/extension/779/clipboard-indicator/
#add hotkeys
#backslide
#polybar?
#spotify theme von norb?