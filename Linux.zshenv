#!/bin/zsh

# read also from scripts, not just from interactive shells
# adds the stuff in front of the $PATH (I'm tired of trying
# to protect $PATH ordering).
# Haskell

export CABAL_HOME="$HOME/cabal"
export GHC_HOME="$HOME/tools/ghc-7.4.1"
export PATH="$CABAL_HOME/bin:$GHC_HOME/bin:$PATH"

# Java
export ECLIPSE_HOME="$HOME/tools/eclipse"
export PATH="$ECLIPSE_HOME:$PATH"

#export GEM_HOME="$HOME/.gem/ruby/1.9.1"
#export PATH="$GEM_HOME/bin:$PATH"
