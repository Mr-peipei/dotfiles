
#--------------------------------------------------------------#
#          main                                               ##
#--------------------------------------------------------------#

function main () {
  echo "Welcome to Mr-peipei dotfiles"

  local CURRENT=$(pwd)
	echo $CURRENT

  # echo $1 | sudo -s apt update
  # echo $1 | sudo -s apt upgrade


  # source $CURRENT/scripts/lib/install-curl.sh $1
  source $CURRENT/scripts/lib/install-neovim.sh $1 $CURRENT
  # source $CURRENT/scripts/lib/install-zsh.sh
  # source $CURRENT/scripts/lib/install-wezterm.sh $1
  # source $CURRENT/scripts/lib/install-lazygit.sh $1
  # source $CURRENT/scripts/lib/install-vscode.sh $1 $CURRENT
}

main $1
