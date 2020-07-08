export ZSH="${HOME}/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(
    git
    node
    yarn
    golang
    docker
    kubectl
    helm
    zsh-autosuggestions
    zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh
source ~/.bash_profile
