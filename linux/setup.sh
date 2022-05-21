# copy dotfiles
CONFIG_DIR=~/.config/adriaan
cp dotfiles/.gitignore_global dotfiles/.zshrc dotfiles/.zshrc_kali $CONFIG_DIR
cp dotfiles/.tmux.conf dotfiles/.vimrc ~

# git config
git config --global core.editor "vim"
git config --global core.excludesfile "~/.config/adriaan/.gitignore_global"
