# dotfiles

[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg)](#contributors)
[![Hits-of-Code](https://hitsofcode.com/github/103cuong/dotfiles)](https://hitsofcode.com/view/github/103cuong/dotfiles)
[![Build Status](https://travis-ci.org/103cuong/dotfiles.svg?branch=master)](https://travis-ci.org/103cuong/dotfiles)
[![](https://img.shields.io/github/license/103cuong/dotfiles.svg)](https://github.com/103cuong/dotfiles/blob/master/LICENSE.md)

📝 My dotfiles for ElementaryOS.

### General installation

```sh
$ yes | sh -c "$(curl -sSL https://raw.githubusercontent.com/103cuong/dotfiles/master/install.sh)"
```

### ibus-unikey

```sh
$ ibus-daemon -drx
$ sudo apt install -y ibus-unikey
$ ibus restart
$ ibus-setup
$ gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Unikey')]"
```

Add **ibus-daemon -drx** to **startup**

### Generating a new SSH key

```sh
$ ssh-keygen -t rsa -b 4096 -C "103cuong@gmail.com"
$ cat ~/.ssh/id_rsa.pub
```

### Fira Code font

```sh
$ sh -c "$(curl -sSL https://raw.githubusercontent.com/103cuong/dotfiles/master/install-fira-code-font.sh)"
```

**VS Code**

```json
{
    "editor.fontFamily": "'Fira Code'",
    "editor.fontLigatures": true
} 
```

### Other

- [night-owl-pantheon](https://github.com/103cuong/night-owl-pantheon) - 🌌🦉Night Owl theme for Pantheon terminal.
- [mediumship](https://github.com/swapagarwal/mediumship) - 📚 Read all Medium stories for free!
- [SpotifyAdBlock](https://github.com/x0uid/SpotifyAdBlock) - Block all Spotify Ads
- [Telegram](https://desktop.telegram.org/)
- [Skype](https://www.skype.com/en/get-skype/)
- [Slack](https://slack.com/intl/en-vn/downloads/linux)
- [Mailspring](https://getmailspring.com/download)
- [Dockstation](https://dockstation.io/)

## Contributors

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
<table><tr><td align="center"><a href="http://103cuong.me"><img src="https://avatars0.githubusercontent.com/u/34389409?v=4" width="100px;" alt="Cuong Duy Nguyen"/><br /><sub><b>Cuong Duy Nguyen</b></sub></a><br /><a href="https://github.com/103cuong/thinid/commits?author=103cuong" title="Code">💻</a> <a href="https://github.com/103cuong/thinid/commits?author=103cuong" title="Documentation">📖</a> <a href="https://github.com/103cuong/thinid/commits?author=103cuong" title="Tests">⚠️</a> <a href="#review-103cuong" title="Reviewed Pull Requests">👀</a></td></tr></table>

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!

## License

MIT
