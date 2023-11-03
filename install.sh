#!/bin/bash

HOME=/home/$USER

cd $HOME

if [ -d $HOME/.oh-my-zsh ] &&
  [ -d $HOME/.asdf ] &&
  [ -d $HOME/.config/nvim ] &&
  [ -d $HOME/.config/tmux ] && 
  [ -d $HOME/.config/alacritty ]; then
   exit
fi


if [ -f /etc/arch-release ]; then
# setup keyring
pacman-key --init \
    && pacman-key --populate archlinux \
    && sed 's/ParallelDownloads = \d+/ParallelDownloads = ${PACMAN_PARALLELDOWNLOADS}/g' -i /etc/pacman.conf \
    && sed 's/NoProgressBar/#NoProgressBar/g' -i /etc/pacman.conf

# points to fastest mirrors
pacman-mirrors --fasttrack

# Install needed packages
pacman -Syyu --needed --noconfim \
  base-devel \
  git

# Install base packages
pacman -Syyu --noconfirm \
  atuin \
  autoconf \
  alacritty \
  bat \
  bison \
  curl \
  docker \
  docker-compose \
  gcc \
  go \
  git-lfs \
  fd \
  flatpak \
  fontconfig \
  fzf \
  git \
  git-lfs \
  go \
  gufw \
  htop \
  jdk17-openjdk \
  jq \
  lazygit \
  libssh \
  neovim \
  nerd-fonts \
  networkmanager \
  nodejs \
  npm \
  openssh \
  php \
  python \
  python-pip \
  ripgrep \
  rust \
  timeshift \
  tmux \
  tmuxp \
  ufw \
  unzip \
  wget \
  yarn \
  zsh \
  zsh-autosuggestions \
  zsh-completions \
  zsh-history-substring-search \
  zsh-syntax-highlighting \
  zsh-theme-powerlevel10k

# enable flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

systemctl enable ufw
fi

if [ -f /etc/manjaro-release ]; then
# install manjaro specific packages
pacman -S --noconfirm \
  yay \
  pamac
fi


# Install asdf
git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch v0.13.1

git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc
source $HOME/.zshrc

config remote add origin https://github.com/Polidoro-root/linuxconfig.git
config pull origin main

# Install asdf plugins
asdf plugin add golang https://github.com/asdf-community/asdf-golang.git \
  && asdf plugin add java https://github.com/halcyon/asdf-java.git \
  && asdf plugin add nodejs \
  && asdf plugin add lua https://github.com/Stratus3D/asdf-lua.git \
  && asdf plugin add php https://github.com/asdf-community/asdf-php.git \
  && asdf plugin add python \
  && asdf plugin add rust https://github.com/code-lever/asdf-rust.git

# Install asdf versions
asdf install golang latest \
  && asdf install java temurin-17.0.8+7  \
  && asdf install nodejs latest \
  && asdf install lua latest \
  && asdf install php latest \
  && asdf install rust 1.69.0
