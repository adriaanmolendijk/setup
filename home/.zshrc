#################### @adriaanmolendijk ####################

##### macOS #####
# git autocomplete
autoload -Uz compinit && compinit

# language
export LC_ALL=en_US.UTF-8

# set home and end key
bindkey "\033[H" beginning-of-line
bindkey "\033[F" end-of-line

# stop backward-kill-word on directory delimiter
WORDCHARS='*?_.[]~=&;!#$%^(){}<>'

##### general #####
## Java
# export JAVA_HOME=`/usr/libexec/java_home -v ${version}`

# kubernetes
alias h='helm'
alias k='kubectl'
alias kns='kubectl config set-context --current --namespace'
alias knsc='kubectl config get-contexts'
alias kctx='kubectl config use-context'
source <(kubectl completion zsh)
compdef __start_kubectl k

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
alias kctx='k ctx'

# fuzzyfinder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# custom tools
alias github='python3 ~/tool_github_url.py'

#################### @adriaanmolendijk ####################
