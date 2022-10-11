
#--------------------------------------------------------------#
#          Neovim                                             ##
#--------------------------------------------------------------#

set -ue

function neovim() {
  echo "Start installing neovim"

  echo $1 | sudo -s apt install neovim -y

  echo "Successfully install vscode"

  echo "Set up a neovim dotfiles"
	mkdir -p ~/.config/nvim/
  cp -r $2/neovim/* ~/.config/nvim/

	#Install Packer
	git clone --depth 1 https://github.com/wbthomason/packer.nvim\
	~/.local/share/nvim/site/pack/packer/start/packer.nvim
}

neovim $1 $2
