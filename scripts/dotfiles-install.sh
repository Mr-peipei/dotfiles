
#--------------------------------------------------------------#
#          main                                               ##
#--------------------------------------------------------------#

function main () {
  local CURRENT=$(cd $(dirname $0);pwd)

  # echo $1 | sudo -s apt update
  # echo $1 | sudo -s apt upgrade

  echo "Welcome to Mr-peipei dotfiles"
  # source $CURRENT/lib/install-curl.sh
  # source $CURRENT/lib/install-neovim.sh
  # source $CURRENT/lib/install-zsh.sh
  # source $CURRENT/lib/install-wezterm.sh
  source $CURRENT/scripts/lib/install-vscode.sh $1 $CURRENT
}

main $1
