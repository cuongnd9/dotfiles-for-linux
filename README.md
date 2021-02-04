# dotfiles

[![Hits-of-Code](https://hitsofcode.com/github/thekimcuong/dotfiles)](https://hitsofcode.com/view/github/thekimcuong/dotfiles)
[![Build Status](https://travis-ci.org/thekimcuong/dotfiles.svg?branch=master)](https://travis-ci.org/thekimcuong/dotfiles)
[![](https://img.shields.io/github/license/thekimcuong/dotfiles.svg)](https://github.com/thekimcuong/dotfiles/blob/master/LICENSE.md)

> 💻 dotfiles and 🚀 more (ElementaryOS).

### 🧰 general installation

```sh
yes | /bin/bash -c "$(curl -sSL https://raw.githubusercontent.com/thekimcuong/dotfiles/master/install.sh)"
```

### ⚙️ ibus-unikey

```sh
ibus-daemon -drx
sudo apt install -y ibus-unikey
ibus restart
ibus-setup
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Unikey')]"
```

Add **ibus-daemon -drx** to **startup**

### 🔑 generating a new SSH key

```sh
ssh-keygen -t rsa -b 4096 -C "thekimcuong@gmail.com"
cat ~/.ssh/id_rsa.pub
```

### 💅 other

- [night-owl-pantheon](https://github.com/103cuong/night-owl-pantheon) - 🌌🦉Night Owl theme for Pantheon terminal.
- [dracula-pantheon](https://github.com/103cuong/dracula-pantheon) - 🧛🏻‍♂️ Dark theme for Pantheon terminal.
- [mediumship](https://github.com/swapagarwal/mediumship) - 📚 Read all Medium stories for free!
- [golangci-lint](https://golangci-lint.run/usage/integrations/)
- [protoc](http://google.github.io/proto-lens/installing-protoc.html)
- [Telegram](https://desktop.telegram.org/)
- [Dockstation](https://dockstation.io/)
- [BloomRPC](https://github.com/uw-labs/bloomrpc)

## 🔖 license

MIT
