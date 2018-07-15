# -----------------------------------------------------------------------------
# Copyright (c) 2018, Justine T Kizhakkinedath
# All rights reserved
#
# Licensed under the terms of MIT License
# See LICENSE file in the project root for full information.
# -----------------------------------------------------------------------------

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export TERM="xterm-256color"

alias vim=/Applications/MacVim.app/Contents/MacOS/Vim

# Settings
  export VISUAL=vim

# alias ls="ls -l"
alias lsg="ls -la | ag"

# For vim mappings:
  stty -ixon

# Fix for arrow-key searching
# start typing + [Up-Arrow] - fuzzy find history forward
if [[ "${terminfo[kcuu1]}" != "" ]]; then
  autoload -U up-line-or-beginning-search
  zle -N up-line-or-beginning-search
  bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
fi
# start typing + [Down-Arrow] - fuzzy find history backward
if [[ "${terminfo[kcud1]}" != "" ]]; then
  autoload -U down-line-or-beginning-search
  zle -N down-line-or-beginning-search
  bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi

add-to-path $HOME/dotfiles/scripts
add-to-path $HOME/Library/Python/3.6/bin
add-to-path $HOME/.cargo/bin
