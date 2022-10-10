
#--------------------------------------------------------------#
#          VSCode                                         ##
#--------------------------------------------------------------#

set -ue

function vscode() {
  echo $1
  echo "Start installing vscode"

  curl -L 'https://go.microsoft.com/fwlink/?LinkID=760868' -o vscode.deb
  sudo apt install ./vscode.deb
  rm -f ./vscode.deb

  echo "Successfully download vscode"

  echo "Set up a vscode dotfiles"

  mkdir -p ~/.config/Code/User/
  cp $1/vscode/settings.json ~/.config/Code/User/
  cp $1/vscode/keybindings.json ~/.config/Code/User/
  cp -r $1/vscode/snippets ~/.config/Code/User/
  cp -r $1/vscode/.vscode ~/.

  echo "Successfully set up a vscode dotfiles"
}


vscode $1
