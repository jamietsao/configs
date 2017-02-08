#
# jamietsao customizations
#

export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# go
export GOPATH=/Users/jamie/workspace/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# maven
export PATH=/Users/jamie/workspace/lib/apache-maven-3.3.3/bin:$PATH

# java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

# ruby
export BUNDLER_EDITOR=subl

# Gametime scripts
export PATH=$PATH:~/workspace/gametime/bin

# Useful scripts
export PATH=$PATH:~/workspace/scripts/git

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
source /Users/jamie/workspace/gametime/bin/gt_aliases

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# awscli
source /usr/local/share/zsh/site-functions/_aws

# rbenv
eval "$(rbenv init -)"