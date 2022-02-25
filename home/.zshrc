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

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
alias kctx='k ctx'

# fuzzyfinder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
setopt PROMPT_SUBST
PROMPT='adriaan@mac %9c%{%F{green}%}$(parse_git_branch)%{%F{none}%} $ '

# custom tools
alias github='python3 ~/tool_github_url.py'

#################### @adriaanmolendijk ####################
