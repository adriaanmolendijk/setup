# home folder
cp -r home/. ~

# git setup
git config --global core.editor vim
git config --global core.excludesfile ~/.gitignore_global

git config --global alias.delete-remote-branches  '!git fetch -p && git branch -vv | grep '"'"': gone]'"'"' | awk '"'"'{print $1}'"'"' | xargs -r git branch -D'
