

#--------------------------------------------------------------#
#          lazygit                                            ##
#--------------------------------------------------------------#

set -ue

function lazygit () {
  echo "Start installing lazygit"

  LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep '"tag_name":' |  sed -E 's/.*"v*([^"]+)".*/\1/')
  curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
  echo $1 | sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit

  echo "Successfully install lazygit"
}

wezterm $1
