# set up tool
PATH_TO_TOOL=tools/tool-github-url
cp $PATH_TO_TOOL/src/app.py ~/tool_github_url.py

# set up ~/.zshrc
cat $PATH_TO_TOOL/.zshrc >> ~/.zshrc
echo "" >> ~/.zshrc
