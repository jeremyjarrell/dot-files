#!/bin/bash

PS1="\W $ "

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# aliases
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias ls='ls -lhaG'
alias cls='clear'
alias less='less -N'
alias wtf='man'

export HISTSIZE=10000
export HISTFILESIZE=10000

export PATH=/usr/local/share/python:$PATH
export PATH=/usr/local/bin:$PATH

function mkcd { mkdir -p "$@" && eval cd "\"\$$#\""; }

