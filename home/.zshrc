### @adriaanmolendijk ###

## java
# export JAVA_HOME=<placeholder>

## kubernetes
alias h='helm'
alias k='kubectl'
alias kns='kubectl config set-context --current --namespace'
alias knsc='kubectl config get-contexts'
alias kctx='kubectl config use-context'

# kubectl krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
alias kctx='k ctx'

# terminal fuzzyfinder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

### @adriaanmolendijk ###
