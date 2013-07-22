#!/bin/bash

export JAVA_HOME="$(/usr/libexec/java_home)"
export AWS_IAM_HOME="/usr/local/opt/aws-iam-tools/jars"
export PATH=$PATH:$HOME/bin:/usr/local/mysql/bin:$HOME/Wireshark

test -r /sw/bin/init.sh && . /sw/bin/init.sh

export THREEWIDE_NETWORK_HOME=~/code/3yd-network
source $THREEWIDE_NETWORK_HOME/utils/aws-helper-methods

# aliases
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias ls='ls -lhaG'
alias cls='clear'
alias less='less -N'
alias jenkins='open https://dev.listhub.com/jenkins/'
alias jira='open https://listhub.atlassian.net/secure/Dashboard.jspa'
alias docs='open https://dev.listhub.com/3yd-network/3yd-network.html'
alias wtf='man'

export HISTSIZE=10000
export HISTFILESIZE=10000

export PATH=/usr/local/share/python:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/Users/jjarrell/bin/Sencha/Cmd/3.1.1.274:$PATH
export PATH=/Users/jjarrell/bin/gradle-1.6/bin:$PATH

export SENCHA_CMD_3_0_0="/Users/jjarrell/bin/Sencha/Cmd/3.1.1.274"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

function serve {
port="${1:-3000}"
ruby -r webrick -e "s = WEBrick::HTTPServer.new(:Port => $port, :DocumentRoot => Dir.pwd); trap('INT') { s.shutdown }; s.start"
}

function mkcd { mkdir -p "$@" && eval cd "\"\$$#\""; }

