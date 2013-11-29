#!/bin/zsh

###>> Color support for 'ls'
eval $( dircolors ) #-b $HOME/.LS_COLORS )

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

#PSH_HOME=$HOME/.psh
#source $PSH_HOME/psh_init


###>> Aliases
alias ls='ls --color'

## misc
#alias ml='mntvboxfs London'

## system related aliases
alias s='yaourt '
alias S='s -Syau'
#alias sn='sudo netcfg -r vbox-nat && sudo netcfg -r vbox-vboxnet0'
alias sd='sudo shutdown -h now'
alias st='pstree -aup'
