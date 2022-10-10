
#--------------------------------------------------------------#
#          VSCode                                         ##
#--------------------------------------------------------------#

local CURRENT=$(cd $(dirname $0);pwd)
echo $CURRENT

function vscode() {
  echo "start installing vscode"

  curl -L https://go.microsoft.com/fwlink/?LinkID=760868 -o vscode.deb
  sudo apt install ./vscode.deb

  echo "Successfully download vscode"

  echo "Set up a vscode dotfiles"
  cp $CURRENT/vscode/settings.json ~/.config/Code/User/
  cp $CURRENT/vscode/keybindings.json ~/.config/Code/User/
  cp $CURRENT/vscode/snippets ~/.config/Code/User/
  cp -r $CURRENT/vscode/.vscode ~/.
}


vsocde
