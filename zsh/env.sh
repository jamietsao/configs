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

# Gametime scripts
export PATH=$PATH:~/workspace/gametime/bin

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

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
