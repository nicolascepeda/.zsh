#!/bin/zsh
# read also from scripts, not just from interactive shells
# adds the stuff in front of the $PATH (I'm tired of trying
# to protect $PATH ordering).

# Haskell
export CABAL_HOME="$HOME/.cabal"
export HASKELL_HOME="$HOME/Library/Haskell"
export PATH="$CABAL_HOME/bin:$HASKELL_HOME/bin:$PATH"

# ImageMagick
#export MAGICK_HOME="/Applications/ImageMagick"
#export PATH="$MAGICK_HOME/bin:$PATH"
#export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"

# Ruby
#export GEM_HOME="$HOME/.gem/ruby/1.9.1"
#export PATH="$GEM_HOME/bin:$PATH"
export DOC_ROOT="$HOME/Documents"
