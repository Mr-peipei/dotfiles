
#--------------------------------------------------------------#
#          wezterm                                             ##
#--------------------------------------------------------------#

set -ue

function wezterm () {
  echo "Start installing wezterm"

  curl -LO "https://github.com/wez/wezterm/releases/download/20220905-102802-7d4b8249/wezterm-20220905-102802-7d4b8249.Ubuntu20.04.deb"
  echo $1 | sudo -s apt install -y ./wezterm-20220905-102802-7d4b8249.Ubuntu20.04.deb
  rm -f ./wezterm-20220905-102802-7d4b8249.Ubuntu20.04.deb

  echo "Successfully install wezterm"
}

wezterm $1
