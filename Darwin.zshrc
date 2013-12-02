#!/bin/zsh

_editor() {
    $EMACS_HOME/bin/emacsclient \
            --no-wait \
            --socket-name=emacs-server \
            --alternate-editor=$EMACS_HOME/Emacs \
            $@ &
}

###>> Colorized 'ls'
export LSCOLORS='cxfxcxdxbxegedabagacad'

PRMT_CLR=$PR_YELLOW

###>> Aliases
alias ls='ls -G'
alias e='_editor'

alias o='open '
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias tmp='cd $HOME/Downloads'

alias sys='sudo port '
alias sysi='s install '
alias syss='s search '
alias sysp='s contents '
alias sysS='port -d selfupdate'
