#!/bin/bash

#disable compression for makepkg
sudo sed -i "s|PKGEXT='.pkg.tar.xz'|PKGEXT='.pkg.tar'|g" /etc/makepkg.conf

#install base-devel
sudo pacman -S base-devel --noconfirm

#yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd -

#install apps
yay -S --noconfirm mlocate htop visual-studio-code-bin screenfetch zip bat curl flameshot git zsh chromium terminator intellij-idea-ultimate-edition spotify

#oh-my-zsh
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
cp -rf configs/.zshrc ~/.zshrc

#nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | zsh

#sdkman 
curl -s "https://get.sdkman.io" | zsh

./gnomeSetup.sh

#gnome extensions
#todo
#https://extensions.gnome.org/extension/779/clipboard-indicator/
#add hotkeys
#backslide

#chezmoi
    #vscode
    #intellij
    #terminator
    #backslide ?
    #clipboard indicator ?


    polybar?

    spotify theme von norb?