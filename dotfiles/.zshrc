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

# shell
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Don't consider certain characters part of the word
WORDCHARS=''

# Replace `forward-word` with `emacs-forward-word`. Problem solved.
zle -A emacs-forward-word forward-word
