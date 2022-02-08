#### @adriaanmolendijk ####
## java
# export JAVA_HOME=<placeholder>

## kubernetes
alias h='helm'
alias k='kubectl'
alias kns='kubectl config set-context --current --namespace'
alias knsc='kubectl config get-contexts'
alias kctx='kubectl config use-context'
source <(kubectl completion bash)
complete -F __start_kubectl k

# krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
alias kctx='kubectl ctx'

## maven
# export PATH=$PATH:/opt/apache-maven/bin

## terminal prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@linux\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[\033[1;31m\]$(parse_git_branch)\[\033[00m\]\$ '

## terminal fuzzyfinder
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

## terraform
complete -C /usr/bin/terraform terraform
#### @adriaanmolendijk ####
