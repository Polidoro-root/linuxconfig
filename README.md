# linuxconfig

This is my main tooling for linux terminal based development, I'm migrating from VSCode and other heavy dev tools to try this new minimalistic experience (I'm loving it)

## Structure

- .config/
  - nvim
  - alacritty
  - tmux
  - i3
  - picom
- .p10k.zsh
- .zshrc
- install.sh

### Install

> At the moment it only works on Arch based distros (the ones that I use most)

Installation script to make life easier

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Polidoro-root/linuxconfig/main/install.sh)"
```

### .config

#### [neovim](https://neovim.io/)

Neovim custom configuration, using [Lazy](https://github.com/folke/lazy.nvim) as plugin manager. To install everything just run `nvim` on terminal.

#### [alacritty](https://alacritty.org/)

The best terminal I ever used, fast and simple. 

#### [tmux](https://github.com/tmux/tmux)

Tmux makes possible to organize my workflow inside terminal which I spend most of my time, if you don't know it yet, try: Sessions, Windows and Panes.

#### [i3](https://i3wm.org/)

> I'm getting used

Changing my Desktop Environtment for a minimalist keyboard based approach, this is how I meet i3 window manager. (But I still love Gnome)

#### [picom](https://wiki.archlinux.org/title/picom)

Using picom to customize my i3 experience

#### [.p10k.zsh](https://github.com/romkatv/powerlevel10k)

Zsh theme that I've been using

#### [.zshrc](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

Prefered shell profile because it can be a lot extensible when used with [Oh My ZSH!](https://github.com/ohmyzsh/ohmyzsh)
