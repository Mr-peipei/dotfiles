export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export PATH="/usr/local/node/bin:$PATH"


if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}
