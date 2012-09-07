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
