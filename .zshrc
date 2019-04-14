export ZSH="/home/ndc07/.oh-my-zsh"

# ZSH_THEME="spaceship"
ZSH_THEME=""

source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
prompt pure

normalEmojis=(😎 😱 😍 😋 🤑 🤩 😘 😇 😴 🙄 🤣 🤭)
NUM1=$(cat /dev/urandom | tr -dc '1-12' | fold -w 256 | head -n 1 | head --bytes 1)

errorEmojis=(😡 🤮 😈 👻 👽 💀 🤢 🤕)
NUM2=$(cat /dev/urandom | tr -dc '1-8' | fold -w 256 | head -n 1 | head --bytes 1)

PROMPT='%(?.${normalEmojis[NUM1]}.${errorEmojis[NUM2]})%f '
PURE_PROMPT_SYMBOL='»'
PURE_GIT_DOWN_ARROW='↓'
PURE_GIT_UP_ARROW='↑'

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-wakatime/zsh-wakatime.plugin.zsh

source ~/.bash_profile
