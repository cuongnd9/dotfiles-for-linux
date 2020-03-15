#!/bin/bash

# Initialize
function initialize {

    sudo apt update
    sudo apt install -y curl
    sudo apt install -y git

}


# Install UI
function install_theme {

    # Install dconf-tools
    sudo apt install dconf-tools
    
    # Color Scheme for Pantheon terminal
    gsettings set io.elementary.terminal.settings palette '#011627:#EF5350:#22da6e:#addb67:#82aaff:#c792ea:#21c7a8:#ffffff:#575656:#ef5350:#22da6e:#ffeb95:#82aaff:#c792ea:#7fdbca:#ffffff'
    
    gsettings set io.elementary.terminal.settings background '#011627'

    gsettings set io.elementary.terminal.settings foreground '#d6deeb'

    gsettings set io.elementary.terminal.settings cursor-color '#7e57c2'

}


# Install zsh and oh-my-zsh
function install_zsh {

    echo "Installing zsh and oh-my-zsh..."
    
    sudo apt install zsh

    # Set zsh default shell
    sudo chsh -s $(which zsh)

    exec zsh

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
    
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
    
    # Install Spaceship ZSH
    sudo git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
    sudo ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
   
}


function config_dotfiles {

    cp .zshrc ~/.zshrc
    cp .bash_profile ~/.bash_profile

}


function install_environments {

    # Install nvm
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

    # Install Node.js v10.x
    curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
    sudo apt install -y nodejs

    # Install build tools
    sudo apt install -y build-essential

}


function install_applications {

    # Install snap
    sudo apt install snapd

    # Install Sublime Text 3
    sudo snap install sublime-text --classic

    # Install Visual Studio Code
    sudo snap install code --classic

    # Install Brave
    sudo snap install brave

    # Install Mailspring
    sudo snap install mailspring

    # Install Postman
    sudo snap install postman

    # Install Spotify
    sudo snap install spotify

    # Install Zenkit
    sudo snap install zenkit

}

function clean {

    cd ..
    sudo rm -rf dotfiles

}

function reboot {
    
    sudo reboot
    
}

initialize
install_theme
install_zsh
config_dotfiles
install_environments
install_applications
clean
reboot
