
#--------------------------------------------------------------#
#          main                                               ##
#--------------------------------------------------------------#

function main () {
  echo "Welcome to Mr-peipei dotfiles"

  local CURRENT=$(cd $(dirname $0);pwd)

  # echo $1 | sudo -s apt update
  # echo $1 | sudo -s apt upgrade


  # source $CURRENT/lib/install-curl.sh
  source $CURRENT/lib/install-neovim.sh $1 $CURRENT
  # source $CURRENT/lib/install-zsh.sh
  # source $CURRENT/lib/install-wezterm.sh $1
  # source $CURRENT/lib/install-vscode.sh $1 $CURRENT
}

main $1
