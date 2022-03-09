# home folder
cp -r home/. ~

# tools
cp tools/tool-github-url/src/app.py ~/tool_github_url.py

# git setup
git config --global core.editor vim
git config --global core.excludesfile ~/.gitignore_global
