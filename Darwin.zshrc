#!/bin/zsh

_editor() {
    /usr/bin/emacsclient \
            --no-wait \
            --alternate-editor=/usr/bin/emacs \
            $@
}

###>> Colorized 'ls'
export LSCOLORS='cxfxcxdxbxegedabagacad'

###>> Aliases
alias ls='ls -G'

alias s='sudo port '
alias si='s install '
alias ss='s search '
alias sp='s contents '
alias S='port -d selfupdate'

