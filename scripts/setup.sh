# fuzzyfinder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

# copy dotfiles
cp -r home/. ~

# git config
git config --global core.editor "vim"
git config --global core.excludesfile "~/.gitignore_global"
