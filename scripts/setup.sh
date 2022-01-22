# ~/.bashrc
cp /etc/skel/.bashrc ~/.bashrc
echo "" >> ~/.bashrc
cat home-folder/.bashrc >> ~/.bashrc
echo "" >> ~/.bashrc
echo "set up ~/.bashrc"

cp home-folder/.vimrc ~/.vimrc
echo "set up ~/.vimrc"

cp home-folder/.gitignore_global ~/.gitignore_global
echo "set up ~/.gitignore_global"

./scripts/setup-git.sh
echo "set up git configuration"
