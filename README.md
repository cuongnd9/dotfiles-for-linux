# dotfiles

[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg)](#contributors)
[![Hits-of-Code](https://hitsofcode.com/github/103cuong/dotfiles)](https://hitsofcode.com/view/github/103cuong/dotfiles)
[![Build Status](https://travis-ci.org/103cuong/dotfiles.svg?branch=master)](https://travis-ci.org/103cuong/dotfiles)
[![](https://img.shields.io/github/license/103cuong/dotfiles.svg)](https://github.com/103cuong/dotfiles/blob/master/LICENSE.md)

> 💻 dotfiles and 🚀 more (ElementaryOS).

### 🧰 general installation

```sh
yes | /bin/bash -c "$(curl -sSL https://raw.githubusercontent.com/103cuong/dotfiles/master/install.sh)"
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
ssh-keygen -t rsa -b 4096 -C "103cuong@gmail.com"
cat ~/.ssh/id_rsa.pub
```

### 💅 other

- [night-owl-pantheon](https://github.com/103cuong/night-owl-pantheon) - 🌌🦉Night Owl theme for Pantheon terminal.
- [dracula-pantheon](https://github.com/103cuong/dracula-pantheon) - 🧛🏻‍♂️ Dark theme for Pantheon terminal.
- [mediumship](https://github.com/swapagarwal/mediumship) - 📚 Read all Medium stories for free!
- [Telegram](https://desktop.telegram.org/)
- [Dockstation](https://dockstation.io/)

## 🧑🏻‍💻 contributors

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
<table><tr><td align="center"><a href="http://103cuong.me"><img src="https://avatars0.githubusercontent.com/u/34389409?v=4" width="100px;" alt="Cuong Duy Nguyen"/><br /><sub><b>Cuong Duy Nguyen</b></sub></a><br /><a href="https://github.com/103cuong/thinid/commits?author=103cuong" title="Code">💻</a> <a href="https://github.com/103cuong/thinid/commits?author=103cuong" title="Documentation">📖</a> <a href="https://github.com/103cuong/thinid/commits?author=103cuong" title="Tests">⚠️</a> <a href="#review-103cuong" title="Reviewed Pull Requests">👀</a></td></tr></table>

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!

## 🔖 license

MIT
