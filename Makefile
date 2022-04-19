setup:
	cp -r home/. ~

setup-pentest-server:
	cp home/.tmux.conf ~/.tmux.conf
	cp home/.vimrc ~/.vimrc
	./scripts/pentest_server_install_packages.sh
