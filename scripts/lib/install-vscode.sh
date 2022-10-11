
#--------------------------------------------------------------#
#          VSCode                                             ##
#--------------------------------------------------------------#

set -ue

function vscode() {
  echo "Start installing vscode"

  curl -L 'https://go.microsoft.com/fwlink/?LinkID=760868' -o vscode.deb
  echo $1 | sudo -S apt install ./vscode.deb
  rm -f ./vscode.deb

  echo "Successfully install vscode"

  echo "Set up a vscode dotfiles"

  mkdir -p ~/.config/Code/User/
  cp $2/vscode/settings.json ~/.config/Code/User/
  cp $2/vscode/keybindings.json ~/.config/Code/User/
  cp -r $2/vscode/snippets ~/.config/Code/User/

  echo "Set up a vscode extensions"

  cat $2/vscode/extensions | while read line
  do
   code --install-extension $line
  done

  echo "Successfully set up a vscode dotfiles"
}


vscode $1 $2
