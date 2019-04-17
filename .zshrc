export ZSH="/home/ndc07/.oh-my-zsh"

ZSH_THEME=""

source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
prompt pure

normalEmojis=(😀 😁 😂 🤣 😅 😉 😊 😋 😎 😍 😘 😚 ☺️ 🤗 🤩 🤔 🙄 😜 🙃 🤑 😇 🤭 🐧 🐶 🚀 🐢 🎯 🇻🇳 🌲 🦄 👑 🙌 ⚛️ 👏)

errorEmojis=(😥 😴 😭 😰 😡 😠 👻 👽 💩 🤢 🤮)

PROMPT='%(?.${normalEmojis[$((1 + RANDOM % 34))]}.${errorEmojis[$((1 + RANDOM % 11))]})%f '
PURE_PROMPT_SYMBOL='»'
PURE_GIT_DOWN_ARROW='↓'
PURE_GIT_UP_ARROW='↑'

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-wakatime/zsh-wakatime.plugin.zsh

source ~/.bash_profile
