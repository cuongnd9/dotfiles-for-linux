# dotfiles

[![Build Status](https://travis-ci.org/cuongw/dotfiles.svg?branch=master)](https://travis-ci.org/cuongw/dotfiles)
[![](https://img.shields.io/github/license/cuongw/dotfiles.svg)](https://github.com/cuongw/dotfiles/blob/master/LICENSE.md)

> 📝 My dotfiles for Elementary OS.

<p>
  <img src='./images/rocket-raccoon.gif' height=200 />
  <img src='./images/joker.gif' height=200 />
</p>

## Installation

### install.sh file

#### Step 1: Clone this project

```sh
$ ghttps://github.com/cuongw/dotfiles.git && cd dotfiles
```

#### Step 2: Allow execute shell script

```sh
$ chmod +x install.sh
```

#### Step 3: Run `install.sh` file

```sh
$ yes | ./install.sh
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
$ ssh-keygen -t rsa -b 4096 -C "justcuongw@gmail.com"
$ cat ~/.ssh/id_rsa.pub
```

### Fira Code font

```sh
$ chmod +x install-fira-code-font.sh
$ ./install-fira-code-font.sh
```

**VS Code**

```jon
{
    "editor.fontFamily": "'Fira Code'",
    "editor.fontLigatures": true
} 
```

### Other

- [mediumship](https://github.com/swapagarwal/mediumship) - 📚 Read all Medium stories for free!
- [SpotifyAdBlock](https://github.com/x0uid/SpotifyAdBlock) - Block all Spotify Ads

## License

MIT
