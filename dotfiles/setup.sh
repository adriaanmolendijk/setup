# copy dotfiles
CONFIG_DIR=~/.config/adriaan
cp .gitignore_global .zshrc .zshrc_kali $CONFIG_DIR
cp .tmux.conf .vimrc ~

# git config
git config --global core.editor "vim"
git config --global core.excludesfile "~/.config/adriaan/.gitignore_global"
