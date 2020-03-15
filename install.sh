#!/bin/bash

# Initialize
function initialize {

    echo "Initializing..."

    sudo apt update
    sudo apt install -y curl
    sudo apt install -y git
    git config --global user.email 'justcuongw@gmail.com'
    git config --global user.name 'Cuong Duy Nguyen Tran'

}


# Install UI
function install_theme {

    echo "Installing theme..."

    # Install dconf-tools
    sudo apt install -y dconf-tools
    
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

    echo "Installing environments..."

    # Install nvm
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

    # Install Node.js v10.x
    curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
    sudo apt-get install -y nodejs

    # Install build tools
    sudo apt install -y build-essential
    
    # Install Docker
    sudo apt update
    sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
    sudo apt update
    apt-cache policy docker-ce
    sudo apt install docker-ce
    sudo systemctl status docker
    # Docker without sudo
    sudo usermod -aG docker ${USER}
    
    # Install Docker Compose
    sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    
}


function install_applications {

    echo "Installing applications..."

    # Install Elementary Tweaks
    sudo add-apt-repository ppa:philip.scott/elementary-tweaks
    sudo apt install -y elementary-tweaks

    # Install snap
    sudo apt install -y snapd

    # Install Sublime Text 3
    sudo snap install sublime-text --classic

    # Install Visual Studio Code
    sudo snap install code --classic

    # Install Postman
    sudo snap install postman
    
    # Install DBeaver
    sudo snap install dbeaver-ce

    # Install Spotify
    sudo snap install spotify

    # Install Telegram
    sudo snap install telegram-desktop

}

function clean {

    cd ..
    sudo rm -rf dotfiles

}

function reboot {
    
    sudo reboot
    
}

initialize
# install_theme
install_zsh
config_dotfiles
install_environments
install_applications
# clean
# reboot

