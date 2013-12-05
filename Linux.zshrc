#!/bin/sh

# This makes cd'ing to frequently used dirs a swift!
# Credits: http://robots.thoughtbot.com/cding-to-frequently-used-directories-in-zsh
cdpath=($HOME /vagrant)

# See colors in ~/.zsh/zshrc
PRMT_CLR=$PR_BLUE

alias ls='ls --color'
