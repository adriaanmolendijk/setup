######################################################################
# macOS
######################################################################
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$PATH
export LC_ALL=en_US.UTF-8
export BASH_SILENCE_DEPRECATION_WARNING=1

######################################################################
# tooling
######################################################################
# git
alias ga='git add'
alias gb='git branch'
alias gl='git log'
alias gm='git merge'
alias gp='git push'
alias gpl='git pull'
alias gcm='git commit -m'
alias gco='git checkout'
alias gst='git status'
alias gcmp='git commit -m "TESTING ONLY" && git push'

# java
# export JAVA_HOME=$(/usr/libexec/java_home -v ${version})

# kubernetes
alias h='helm'
alias k='kubectl'
alias kctx='kubectl config use-context'
alias kns='kubectl config set-context --current --namespace'
alias knsc='kubectl config get-contexts'

######################################################################
# shell
######################################################################
# fuzzyfinder
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# git prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(parse_git_branch) \$ '

# shell
alias ls='ls --color=auto'
alias grep='grep --color=auto'
