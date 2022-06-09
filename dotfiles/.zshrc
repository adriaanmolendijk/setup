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

# fuzzyfinder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

WORDCHARS=''                                # Don't consider certain characters part of the word.
zle -A emacs-forward-word forward-word      # Replace 'forward-word' with 'emacs-forward-word'.

HISTFILE=~/.config/adriaan/.zsh_history
HISTSIZE=1000                               # Determines the number of commands loaded into the memory from the history file.
SAVEHIST=2000
setopt hist_expire_dups_first               # Delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups                     # Ignore duplicated commands history list
setopt hist_ignore_space                    # Ignore commands that start with space
