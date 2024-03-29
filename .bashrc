export BASH_RC_EXECUTED=1

[[ "$BASH_PROFILE_EXECUTED" != 1 ]] && source ~/.bash_profile

export BASH_RC_EXECUTED=""

source ~/.bash_secrets

###########
# aliases #
###########

# ls
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# git
alias gs="git status"
alias gb="git branch"
alias gba="git branch -a"
alias gd="git diff"
alias gp="git pull"
alias gu="git push"
alias gl="git log"
alias glp="git log -p"
alias gcb="git checkout -b"
alias gcm="git checkout master"
alias gpb="git push -u origin HEAD"
alias grv="git remote -v"
alias gpom="git pull origin master"
alias gbc="git branch --merged master | grep -v \"\* master\" | xargs -n 1 git branch -d"

gpr() {
  if [ -z "$1" ]; then
    echo "remote required"
  else
    git push $1 main
  fi
}

# clojure
alias sc="npx shadow-cljs"

# tmux
alias ts="tmux new -s default"

# mvn
alias mci="mvn clean install"
alias mcib="mvn clean install -DskipTests"

# docker
alias up="docker compose up"
alias down="docker compose down"

##########
# prompt #
##########
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
