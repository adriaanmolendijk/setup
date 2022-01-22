# ~/.bashrc
cp /etc/skel/.bashrc ~/.bashrc
echo "" >> ~/.bashrc
cat home/.bashrc >> ~/.bashrc
echo "" >> ~/.bashrc

cp home/.vimrc ~/.vimrc

cp home/.gitignore_global ~/.gitignore_global

./scripts/setup-git.sh
