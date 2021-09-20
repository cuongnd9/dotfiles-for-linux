#!/bin/bash

# Initialize
function initialize {

    echo "🚲 Initializing..."

    sudo apt update
    sudo apt install -y curl
    sudo apt install -y git
    git config --global user.email 'harrytran103@gmail.com'
    git config --global user.name 'Harry Tran'

}


# Install zsh and oh-my-zsh
function install_zsh {

    echo "🚥 Installing zsh and oh-my-zsh..."
    
    sudo apt install -y zsh

    # Set zsh default shell
    sudo chsh -s $(which zsh)

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
        
    # Install Spaceship ZSH
    echo "🛰 Installing Spaceship ZSH..."
    sudo git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
    sudo ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
   
}


function config_dotfiles {
    
    rm ~/.zshrc
    rm ~/.bash_profile
    curl https://raw.githubusercontent.com/harrytran103/dotfiles-for-linux/main/.zshrc --output .zshrc
    curl https://raw.githubusercontent.com/harrytran103/dotfiles-for-linux/main/.bash_profile --output .bash_profile
    cp .zshrc ~/.zshrc
    cp .bash_profile ~/.bash_profile

}


function install_environments {

    echo "🌲 Installing environments..."

    # Install nvm
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

    # Install Node.js v10.x
    curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
    sudo apt-get install -y nodejs

    # Install build tools
    sudo apt install -y build-essential
    
    # Install Yarn
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
    sudo apt update
    sudo apt install yarn

    # Install n
    yarn global add n
    sudo mkdir -p /usr/local/n
    sudo chown -R $(whoami) /usr/local/n
    sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
    
    # Install Python3
    sudo apt update
    sudo apt install software-properties-common
    sudo add-apt-repository ppa:deadsnakes/ppa
    sudo apt update
    sudo apt install python3.8

    # Install Go
    sudo apt install golang
    echo 'export GOPATH=$HOME/go' >> ~/.zshrc
    echo 'export PATH=${PATH}:${GOPATH}/bin' >> ~/.zshrc 
    source ~/.zshrc 

    # Install Pip3
    sudo apt update
    sudo apt install python3-pip

    # Install Docker
    sudo apt update
    sudo apt install -y apt-transport-https ca-certificates software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
    sudo apt update
    apt-cache policy docker-ce
    sudo apt install docker-ce
    # Docker without sudo
    sudo usermod -aG docker ${USER}
    
    # Install Docker Compose
    sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    
}


function install_applications {

    echo "📱 Installing applications..."

    # Install Elementary Tweaks
    sudo add-apt-repository ppa:philip.scott/elementary-tweaks
    sudo apt install -y elementary-tweaks

    # Install snap
    sudo apt install -y snapd

    # Install Sublime Text 3
    sudo snap install sublime-text --classic

    # Install Visual Studio Code
    sudo snap install code --classic

    # Install kubectl
    snap install kubectl --classic    

    # Install k9s
    snap install k9s --edge --devmode

    # Install helm
    sudo snap install helm --classic

    # Install Postman
    sudo snap install postman
    
    # Install DBeaver
    sudo snap install dbeaver-ce
    
    # Install WebStorm
    sudo snap install webstorm --classic

    # Install DataGrip
    sudo snap install datagrip --classic

    # Install PyCharm
    sudo snap install pycharm-professional --classic

    # Install GoLand
    sudo snap install goland --classic

}

function restart {
    
    sudo shutdown -r +7 "Elementary OS will 😴 restart in 7 minutes. Please 🛡️ save your work."
    
    echo "🍺🍺🍺 Congratulations!!!! 🍺🍺🍺"
    
}

initialize
install_zsh
config_dotfiles
install_environments
install_applications
restart
