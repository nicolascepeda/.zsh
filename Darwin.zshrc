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

alias s='port '
alias si='s install '
alias ss='s search '
alias sc='s contents '
alias S='port -d selfupdate'

