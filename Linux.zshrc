#!/bin/zsh

_editor() {
    /usr/bin/emacsclient \
        --no-wait \
        --alternate-editor="emacs" \
        -f $HOME/remote/public/emacs-server/$EMACS_SERVER_NAME \
        $@
}

_editorG() {
    detach /usr/bin/emacs $@
}

##>> Functions
mntsshfs() {
if [[ -n "$1" ]]; then
if [[ ! -d "$HOME/remote/$1" ]]; then
mkdir -p $HOME/remote/$1
fi
sshfs me@$1: $HOME/remote/$1
else
print "need host or ip"
fi
}

# Mounts a VirtualBox share. The share's name is used as the mount
# point. Instead of mounting the share on-demand put it in
# '/etc/rc.local'. If you do so remember to replace the `id -u` and
# `id -g` calls with your user's id and group id. Note that you could
# add '/bin/mount' and '/bin/umount' to '/etc/sudoers' not to be asked for
# a password.
mntvboxfs() {
if [[ -n "$1" ]]; then
if [[ ! -d "$HOME/remote/$1" ]]; then
mkdir -p $HOME/remote/$1
fi
sudo mount.vboxsf -w -o uid=`id -u`,gid=`id -g` $1 /home/me/remote/$1
fi
}

###>> SSH
# Arch does (as do other distributions) not export ssh-agent
# environment variables (SSH_AUTH_SOCK, SSH_AGENT_PID, ...) by
# default. Also using ssh-agent spawns a new ssh-agent process with
# every login session. To circumvent this problem install keychain,
# which is available in the official arch repo.

# see https://wiki.archlinux.org/index.php/SSH_Keys#SSH_agents
#eval $(ssh-agent) # this would spawn a nef ssh-agent with every login
eval $(keychain --eval --agents ssh -Q --quiet bitbucket github london)

###>> Color support for 'ls'
eval $( dircolors -b $HOME/.LS_COLORS )

###>> Project shells
# credits:
#  - dan.in.a.bottle
#
# project shells (project specific bindings)
# if a file named .zshrc exists in the current directory, it is sourced
# when the new shell starts.
# You can can modify your shell to your liking and execute anything
# you want.
# loads reshell
# initialize pzsh (project shells) support

PSH_HOME=$HOME/.psh
source $PSH_HOME/psh_init


###>> Aliases
alias ls='ls --color'
alias EE='(export EMACS_INIT_ORG="1"; $EDITORG)'

## misc
#alias ml='mntvboxfs London'

## system related aliases
alias s='yaourt '
alias S='s -Syau'
alias sn='sudo netcfg -r vbox-nat && sudo netcfg -r vbox-vboxnet0'
alias sd='sudo shutdown -h now'
alias st='pstree -aup'
