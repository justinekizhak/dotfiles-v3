# -----------------------------------------------------------------------------
# Copyright (c) 2018, Justine T Kizhakkinedath
# All rights reserved
#
# Licensed under the terms of MIT License
# See LICENSE file in the project root for full information.
# -----------------------------------------------------------------------------

# Settings
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export TERM="xterm-256color"
export VISUAL=vim

# Alias
alias emacs="emacsclient -c -a '' -n"
alias fed='f -e "emacsclient -n -c"'
alias ls="colorls -A --sort-dirs --git-status"
alias lsg="ls -l | ag"
alias pip="pip3"
alias psg="ps ax | ag"
alias python="python3"
alias vim=/Applications/MacVim.app/Contents/MacOS/Vim
alias gs="git status"

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

# Add to path
add-to-path $HOME/dotfiles/scripts
add-to-path $HOME/Library/Python/3.6/bin
add-to-path $HOME/.cargo/bin
