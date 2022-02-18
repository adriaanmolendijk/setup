setup: setup-main setup-git setup-clients

setup-main:
	bash scripts/setup.sh

setup-git:
	bash scripts/setup-git.sh

setup-clients:
	bash clients/client-github-url/scripts/setup.sh
