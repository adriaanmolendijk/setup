### @adriaanmolendijk ###

## macOS
# set home and end key
bindkey "\033[H" beginning-of-line
bindkey "\033[F" end-of-line

# language
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# git autocomplete
autoload -Uz compinit && compinit

## java
# export JAVA_HOME=<placeholder>

## kubernetes
alias h='helm'
alias k='kubectl'
alias kns='kubectl config set-context --current --namespace'
alias knsc='kubectl config get-contexts'
alias kctx='kubectl config use-context'

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
alias kctx='k ctx'

## fuzzyfinder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

### @adriaanmolendijk ###
