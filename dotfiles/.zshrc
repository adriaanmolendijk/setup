# aliases
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

alias github="git config --get remote.origin.url | sed -e 's/:/\//g'| sed -e 's/ssh\/\/\///g'| sed -e 's/git@/https:\/\//g'"

alias k='kubectl'
alias k='kubectl'
alias kns='kubectl config set-context --current --namespace'
alias knsc='kubectl config get-contexts'
alias kctx='kubectl config use-context'

# shell
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Don't consider certain characters part of the word
WORDCHARS=''

# Replace `forward-word` with `emacs-forward-word`. Problem solved.
zle -A emacs-forward-word forward-word

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

setopt PROMPT_SUBST
PROMPT='%9c%{%F{blue}%}$(parse_git_branch)%{%F{none}%} $ '
