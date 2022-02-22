### @adriaanmolendijk ###

## macOS
# git autocomplete
autoload -Uz compinit && compinit

# language
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# pyenv
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# set home and end key
bindkey "\033[H" beginning-of-line
bindkey "\033[F" end-of-line

## java
# export JAVA_HOME=`/usr/libexec/java_home -v ${version}`

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
