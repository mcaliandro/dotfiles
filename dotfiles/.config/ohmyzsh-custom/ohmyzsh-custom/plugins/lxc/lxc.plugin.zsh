lxc-login () {
    lxc exec $1 -- sudo --user=$LXD_DEFAULT_USER --login
}

lxc-run () {
    instance=$1; shift
    lxc exec $instance -- sudo --user=$LXD_DEFAULT_USER $@
}

