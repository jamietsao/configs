#
# jamietsao customizations
#
# source this at bottom of .zshrc file. e.g.:
# source ~/workspace/configs/zsh/env.sh

export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# go
export GOPATH=/Users/jamie/workspace/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
alias gosrc='cd $GOPATH/src/github.com/gametimesf'

# Useful scripts
export PATH=$PATH:~/workspace/scripts/git

# installed software
export PATH=$PATH:~/workspace/bin:/Users/jamie/workspace/bin/protoc-3.5.1-osx-x86_64/bin

# http://stackoverflow.com/questions/9502274/last-command-in-same-terminal
unsetopt share_history

# aliases
alias utc='TZ="UTC" date'
alias gp='git pull'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gr='git rebase master'
alias gri='git rebase -i master'
alias gc='git checkout'
alias gcb='git checkout -b'
be() { bundle exec "$*" }

# gametime aliases
alias av="aws-vault"
alias av-me="aws-vault exec jamietsao --duration=8h"
alias aws-ecr-login="aws ecr get-login-password --region us-west-1 | docker login --username AWS --password-stdin 728489771660.dkr.ecr.us-west-1.amazonaws.com"
alias lazyc="aws-vault exec jamietsao -- env LOCAL_DEV=1 /bin/bash /Users/jamie/workspace/gametime/code/guide/scripts/local_cloud/lazy_cloud.sh -e staging"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
