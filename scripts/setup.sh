# fuzzyfinder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

# copy dotfiles
cp -r home/. ~

# git config
git config --global core.editor "vim"
git config --global core.excludesfile "~/.gitignore_global"
git config --global alias.delete-remote-branches '!git fetch -p && git branch -vv | grep ": gone]"" | awk "{print $1}"" | xargs -r git branch -D'
