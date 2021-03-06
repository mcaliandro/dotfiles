# set env vars for oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
#export ZDOTDIR="$HOME/.config/zsh"

# set theme
ZSH_THEME="oxide"

# use plugins
plugins=(
    ansible
    archlinux
    git
    kubectl
    systemd
    terraform
)

# use oh-my-zsh
source $ZSH/oh-my-zsh.sh


# === User configuration ===

# alias for ls command, coloring terminal
alias ls='ls --color=auto'

# show dir content after cd
autoload -U add-zsh-hook
add-zsh-hook -Uz chpwd() { ls; }
