# copy dotfiles
CONFIG_DIR=~/.config/adriaan
cp home/.gitignore_global $CONFIG_DIR/.gitignore_global
cp home/.zshrc $CONFIG_DIR/.zshrc
cp home/.zshrc_kali $CONFIG_DIR/.zshrc_kali

cp home/.tmux.conf home/.vimrc ~

# git config
git config --global core.editor "vim"
git config --global core.excludesfile "~/.config/adriaan/.gitignore_global"
git config --global alias.delete-remote-branches '!git fetch -p && git branch -vv | grep ": gone]" | awk "{print $1}" | xargs -r git branch -D'
