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

# shell
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
WORDCHARS='' # Don't consider certain characters part of the word
