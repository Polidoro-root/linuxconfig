HOME=/home/$(logname)
if [ -d $HOME/.oh-my-zsh ] &&
  [ -d $HOME/.asdf ] &&
  [ -d $HOME/.config/nvim ] &&
  [ -d $HOME/.config/tmux ] && 
  [ -d $HOME/.config/alacritty ]; then
   exit
fi


if [ -f /etc/arch-release ]; then
# Install base packages
pacman -Syyu --noconfirm \
  atuin \
  autoconf \
  alacritty \
  base-devel \
  bat \
  bison \
  build-essential \
  curl \
  docker \
  docker-compose \
  gcc \
  go \
  git \
  git-lfs \
  fd \
  font-config \
  fzf \
  git \
  git-lfs \
  go \
  htop \
  jdk17-openjdk \
  jq \
  lazygit \
  libssh \
  neovim \
  nerd-fonts \
  nerd-fonts-complete-mono-glyphs \
  nodejs \
  npm \
  openssh \
  php \
  protonvpn \
  python \
  python-pip \
  ripgrep \
  rust \
  tmux \
  tmuxp \
  unzip \
  wget \
  yarn \
  yay \
  zsh \
  zsh-autosuggestions \
  zsh-completions \
  zsh-history-substring-search \
  zsh-syntax-highlighting \
  zsh-theme-powerlevel10k
fi

git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc
source $HOME/.zshrc

config remote add origin git@github.com:Polidoro-root/linuxconfig.git
config pull origin main

# Install asdf
git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch v0.13.1

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
  && asdf install php latest
  && asdf install rust 1.69.0
