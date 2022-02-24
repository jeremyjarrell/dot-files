#!/bin/bash

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias ls='ls -lhaG'
alias cls='clear'
alias less='less -N'
alias wtf='man'
alias python=python3

export HISTSIZE=10000
export HISTFILESIZE=10000

export PATH=/usr/local/share/python:$PATH
export PATH=/usr/local/bin:$PATH

function mkcd { mkdir -p "$@" && eval cd "\"\$$#\""; }

