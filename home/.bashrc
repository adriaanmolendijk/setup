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
alias gco='git checkout'
alias gcm='git commit -m'
alias gcmp='git commit -m "TESTING ONLY" && git push'
alias gl='git log'
alias gm='git merge'
alias gp='git push'
alias gpl='git pull'
alias gst='git status'

# java
# export JAVA_HOME=$(/usr/libexec/java_home -v ${version})

# kubernetes
alias h='helm'
alias k='kubectl'
alias kns='kubectl config set-context --current --namespace'
alias knsc='kubectl config get-contexts'
alias kctx='kubectl config use-context'

######################################################################
# shell
######################################################################
# fuzzyfinder
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# git prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# shell
alias ls='ls --color=auto'
alias grep='grep --color=auto'
