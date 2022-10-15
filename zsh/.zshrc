#
# Authors:
#   Shumpei Murakami <murashun982@gmail.com>
#

source ~/z.sh

#--------------------------------------------------------------#
##          Aliases                                           ##
#--------------------------------------------------------------#
source "${ZDOTDIR:-$HOME}/.zsh/alias.zsh"

#--------------------------------------------------------------#
##          Function                                          ##
#--------------------------------------------------------------#
source "${ZDOTDIR:-$HOME}/.zsh/function.zsh"

#--------------------------------------------------------------#
##          Export                                            ##
#--------------------------------------------------------------#
source "${ZDOTDIR:-$HOME}/.zsh/export.zsh"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


source $ZPLUG_HOME/init.zsh
zplug "sorin-ionescu/prezto"
zplug "rupa/z"

if ! zplug check --verbose; then
  printf 'Install? [y/N]: '
  if read -q; then
    echo; zplug install
  fi
fi



