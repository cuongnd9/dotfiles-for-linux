#!/bin/bash

# Initialize
function initialize {

    sudo apt-get update
    sudo apt-get install -y curl
    sudo apt-get install -y git

}


# Install UI
function install_theme {

    # Install elementary Tweaks
    sudo apt-get install software-properties-common
    sudo add-apt-repository ppa:philip.scott/elementary-tweaks
    sudo apt-get update
    sudo apt-get install elementary-tweaks    

    # Install dconf-tools
    sudo apt-get install dconf-tools
    
    # Color Scheme for Pantheon terminal
    gsettings set io.elementary.terminal.settings palette '#4d4d4d:#ff5555:#50fa7b:#f1fa8c:#bd93f9:#ff79c6:#8be9fd:#bbbbbb:#555555:#ff5555:#50fa7b:#f1fa8c:#bd93f9:#ff79c6:#8be9fd:#ffffff'
    
    gsettings set io.elementary.terminal.settings background '#282a36'

    gsettings set io.elementary.terminal.settings foreground '#f8f8f2'

    gsettings set io.elementary.terminal.settings cursor-color '#f6f7ec'

}


# Setting System
function setting_system {

    # Setting Pantheon Terminal
    gsettings set io.elementary.terminal.settings remember-tabs false

    # Setting File
    gsettings set io.elementary.files.preferences restore-tabs false

}


# Install zsh and oh-my-zsh
function install_zsh {

    echo "Installing zsh and oh-my-zsh..."

    sudo apt-get install -y zsh

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    sudo chsh -s /usr/bin/zsh

    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
    
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

    # Install Fonts Powerline
    sudo apt-get install fonts-powerline

    # Set Monospace font
    org.gnome.desktop.interface monospace-font-name 'Hack 10'
    
    # Install Spaceship ZSH
    sudo git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
    sudo ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

}


function config_dotfiles {

    cp .zshrc ~/.zshrc

}


function install_environments {

    # Install Node.js v10.x
    sudo curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
    sudo apt-get install -y nodejs
    
    # Install Ruby
    sudo apt-get install ruby-full

}


function install_applications {

    # Install snap
    sudo apt update
    sudo apt install snapd

    # Install Visual Studio Code
    sudo snap install vscode --classic

    # Install Sublime Text 3
    sudo snap install sublime-text --classic

    # Install Atom
    sudo snap install atom --classic

    # Install Chromium
    sudo snap install chromium

    # Install Mailspring
    sudo snap install mailspring

}

function clean {

    cd ..
    sudo rm -rf dotfiles

}



initialize
install_theme
setting_system
install_zsh
config_dotfiles
install_environments
install_applications
clean
