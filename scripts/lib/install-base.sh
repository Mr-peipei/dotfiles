
#--------------------------------------------------------------#
#          wezterm                                             ##
#--------------------------------------------------------------#

set -ue

function base () {
  echo "Start set up a ubuntu"

  echo $1 | sudo -s apt-get install ncdu -y 

  echo "Successfully set up a ubuntu"
}

base $1
