
# MongoDB
export PATH=$PATH:~/workspace/lib/mongo/bin

# Play!
export PATH=$PATH:~/workspace/lib/play

# SumAll scripts
export PATH=$PATH:~/workspace/configs/sumall/

# git
source ~/workspace/configs/git/git-completion.sh
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1="\w \$(parse_git_branch) $ "

