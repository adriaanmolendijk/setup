setup:
	cp -r home/. ~

setup-pentest-server:
	cp home/.tmux.conf ~/.tmux.conf
	cp home/.vimrc ~/.vimrc
	./setup_pentest_server.sh
