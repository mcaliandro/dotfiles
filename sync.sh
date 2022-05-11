#!/bin/bash

# 
dirs=(
    # --- files ---
    ".zshrc"
    ".config/code-flags.conf"
    # --- directories ---
    ".config/alacritty"
    ".config/gtk-3.0"
    ".config/gtk-4.0"
    ".config/mako"
    ".config/nvim"
    ".config/sway"
    ".config/swaylock"
    ".config/tmux"
    ".config/waybar"
    ".config/wofi"
    #".local/share/applications"
)


# === utility functions ===

# 'sync' updates between $HOME dotfiles and github repo <stub> folder
function sync {
    source_dir=$1; dest_dir=$2
    # check 'dest' and 'source' dirs before rsync
    if [[ -z $source_dir && -z $dest_dir ]]; then
        echo "Error: no source and destination dirs specified for resync"; exit
    fi
    # sync each directory in 'dirs' array
    for dir in ${dirs[@]}; do
        /usr/bin/rsync -avzh $source_dir/$dir $dest_dir/$dir; wait; echo
    done
}

# pull updates from github repo, then sync
function pull {
    /usr/bin/git pull; wait
    sync $1 $2
}

# sync before pushing updates to github
function push {
    sync $1 $2; wait
    /usr/bin/git add .
    /usr/bin/git commit -m "updates $(date +%F\ %T)"
    /usr/bin/git push
}


# === main logic starts here ===

ACTION=$1
STUB_DIR="$(dirname $0)/dotfiles"

# check for errors in $ACTION arg
if [[ ! "$ACTION" =~ ^(pull|push|sync)$ ]]; then
    echo "Unknown parameter \"$ACTION\""; exit
fi

case $ACTION in
pull) # if pull, sync dotfiles in $HOME with updates in github repo
    eval $ACTION $STUB_DIR $HOME ;;
push) # if push, sync this repo with updates in $HOME 
    eval $ACTION $HOME $STUB_DIR ;;
sync) # if sync, just update this stub with the updates in $HOME, without pushing on github
    eval $ACTION $HOME $STUB_DIR ;;
*) # exit in any other case
    exit ;;
esac

