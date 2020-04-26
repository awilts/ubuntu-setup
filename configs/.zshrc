export ZSH="/home/alex/.oh-my-zsh"

#theme
ZSH_THEME="robbyrussell"
DISABLE_UPDATE_PROMPT="true"

plugins=(git zsh-autosuggestions z)

source $ZSH/oh-my-zsh.sh

export EDITOR='nano'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/alex/.sdkman"
[[ -s "/home/alex/.sdkman/bin/sdkman-init.sh" ]] && source "/home/alex/.sdkman/bin/sdkman-init.sh"
