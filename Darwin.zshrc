#!/bin/zsh

_editor() {
    /usr/bin/emacsclient \
            --no-wait \
            --alternate-editor=/usr/bin/emacs \
            $@
}

export EDITOR='/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl'

###>> Colorized 'ls'
export LSCOLORS='cxfxcxdxbxegedabagacad'

###>> Aliases
alias ls='ls -G'

alias sys='sudo port '
alias sysi='s install '
alias syss='s search '
alias sysp='s contents '
alias sysS='port -d selfupdate'

