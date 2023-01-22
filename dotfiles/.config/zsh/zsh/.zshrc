# --- oh-my-zsh configurations ---

# oh-my-zsh home directory
ZSH="$HOME/.config/ohmyzsh"
ZSH_CUSTOM="${ZSH}-custom"
# set theme
ZSH_THEME="oxide"
# use plugins
plugins=(ansible archlinux docker git kubectl lxc lxd systemd terraform)
# use oh-my-zsh
source $ZSH/oh-my-zsh.sh

# --- standard zsh configurations ---

# show dir content after cd
autoload -U add-zsh-hook
add-zsh-hook -Uz chpwd() { ls; }
# enable autocompletion with arrow-key interface
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher0list 'm:{a-z}={A-Z}' menu select

# --- user configurations ---

export EDITOR="nvim"
export LXD_DEFAULT_USER="lxd"

alias ls='ls --color=auto'
alias mpa='mpv --no-video'

