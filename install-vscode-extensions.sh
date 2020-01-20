extensions=$(cat vscode-extensions.txt)
for ext in $extensions; do
  code --install-extension $ext --force 
done