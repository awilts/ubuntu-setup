#simple apps
sudo apt install htop screenfetch zip bat curl flameshot zsh -y

#oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp configs/.zshrc ~/.zshrc


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

#spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update 
sudo apt-get install spotify-client -y

#intellij
wget "https://download.jetbrains.com/product?code=IIU&latest&distribution=linux" -O intellij.tar.gz
sudo mkdir /usr/share/intellij
sudo tar -xzf intellij.tar.gz -C /usr/share/intellij



#gnome desktop

#sdkman

#hotkey flameshot
#hotkey terminal
#config vscode
#config intellij 
#hotkeys window moving


    # - name: Install wps-office
    #   apt:
    #     name: wps-office
        
    # - name: Install zsh
    #   apt:
    #     name: zsh

    # - name: Install intellij
    #   unarchive:
    #     src: https://download.jetbrains.com/product?code=IIU&latest&distribution=linux
    #     dest: /usr/share/intellij
    #     creates: /usr/share/intellij
    #     remote_src: yes







