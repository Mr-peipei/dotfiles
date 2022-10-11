
#--------------------------------------------------------------#
#          Neovim                                             ##
#--------------------------------------------------------------#

set -e

function neovim() {
  echo "Start installing neovim"

  curl -L 'https://github.com/neovim/neovim/releases/download/v0.8.0/nvim-linux64.deb' -o neovim.deb
  echo $1 | sudo -S apt install ./neovim.deb
  rm -f ./neovim.deb

  echo "Successfully install neovim"

  echo "Set up a neovim dotfiles"
	mkdir -p ~/.config/nvim/
  cp -r $2/neovim/* ~/.config/nvim/

	#Install Packer
	git clone --depth 1 https://github.com/wbthomason/packer.nvim\
	~/.local/share/nvim/site/pack/packer/start/packer.nvim

  echo "Successfully set up neovim"
}

neovim $1 $2
