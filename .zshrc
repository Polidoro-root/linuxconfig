# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERMINAL=alacritty

ZSH_THEME="powerlevel10k/powerlevel10k"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# export ANDROID_HOME=$HOME/Android/Sdk
#
# path+=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
# path+=$PATH:$ANDROID_HOME/platform-tools
# path+=$PATH:$ANDROID_HOME/tools/bin
# path+=$PATH:$ANDROID_HOME/emulator

plugins=(git docker docker-compose asdf)

source $ZSH/oh-my-zsh.sh

# User configuration
. "$HOME/.asdf/asdf.sh"
# . ~/.asdf/plugins/java/set-java-home.zsh

alias chcolor="/home/$HOME/.termux/colors.sh"
alias chfont="/home/$HOME/.termux/fonts.sh"

alias vim="nvim"

alias tmux="tmux -u"

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions

export GATLING_HOME=$HOME/gatling/3.10.3

# export GOPATH=$HOME/.asdf/installs/golang/1.20/packages
# export GOROOT=$HOME/.asdf/installs/golang/1.20/go
# export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH=$PATH:$(go env GOPATH)/bin

export PATH=$PATH:$HOME/.cargo/bin

export PATH=$PATH:$HOME/.local/bin

export PATH=$PATH:$GATLING_HOME/bin

## Set $JAVA_HOME
. ~/.asdf/plugins/java/set-java-home.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# pnpm
export PNPM_HOME="/home/$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
alias config="/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME"

export PATH=~/.npm-global/bin:$PATH

export PATH=~/.dotnet/tools:$PATH

export PICO_SDK_PATH="$HOME/pico/pico-sdk"

alias ts="$HOME/.local/bin/tmux-sessionizer"

alias terraform="tofu"

alias tf="tofu"

export GPG_TTY=$(tty)

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/github_ed25519
