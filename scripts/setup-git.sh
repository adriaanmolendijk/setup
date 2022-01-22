# git editor
git config --global core.editor vim

# git global excludesfile
git config --global core.excludesfile ~/.gitignore_global

# git aliases
git config --global alias.b               'branch'
git config --global alias.co              'checkout'
git config --global alias.cm              'commit -m'
git config --global alias.p               'push'
git config --global alias.prune-branches '!git fetch -p && git branch -vv | grep '"'"': gone]'"'"' | awk '"'"'{print $1}'"'"' | xargs -r git branch -D'
git config --global alias.pl              'pull'
git config --global alias.st              'status'
