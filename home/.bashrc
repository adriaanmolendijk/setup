##### @adriaanmolendijk #####
# get git branch
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[\033[1;31m\]$(parse_git_branch)\[\033[00m\]\$ '

# docker
alias docker-rmnone='docker rmi $(docker images -f dangling=true -q)'

# fuzzyfinder 
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# java
# export JAVA_HOME=<placeholder>

# maven
export PATH=$PATH:/opt/apache-maven/bin
alias mvn-ci='mvn clean install'
alias mvn-cit='mvn clean install -D skipTests'
alias mvn-tree='mvn dependency:tree'

# kubernetes
alias k='kubectl'
alias kns='k config set-context --current --namespace'
alias knsc='k config get-contexts'
source <(kubectl completion bash)
complete -F __start_kubectl k

# terraform
complete -C /usr/bin/terraform terraform
##### @adriaanmolendijk #####
