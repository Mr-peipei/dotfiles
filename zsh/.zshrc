#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...


# Customize to your needs...
# linuxbrew
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

# zplug
export ZPLUG_HOME=$HOME/.zplug
source $ZPLUG_HOME/init.zsh
zplug "sorin-ionescu/prezto"

if ! zplug check --verbose; then
  printf 'Install? [y/N]: '
  if read -q; then
    echo; zplug install
  fi
fi

# theme
autoload -Uz promptinit
promptinit
prompt peepcode ">"

# vim oepn
fvim() {
  files=$(git ls-files) &&
  selected_files=$(echo "$files" | fzf -m --preview 'head -100 {}') &&
  vim $selected_files
}

# git settings
alias ga="git add"
alias gs="git status"
alias gc="git commit"
alias gcm="git commit -m"
alias gpo="git push origin"
alias gcb="git checkout -b"

fzf-add() {
	local selected
	selected="$(git status -s | fzf -m | cut -c3-)"
	if [ -n "$selected" ]; then
		echo $selected
		git add $selected
	fi
}
alias fa="fzf-add"

fzf-restore() {
	local selected
	selected="$(git status -s | fzf | cut -c3-)"
	if [ -n "$selected" ]; then
		echo $selected
		git restore $selected
	fi
}
alias frt="fzf-restore"

fbr() {
  local branches branch
  branches=$(git --no-pager branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

fshow() {
  git log --graph --color=always \
      --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"
}

fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# fh - repeat history
fh() {
  eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')
}


# npm settings
fns() {
  local script
  script=$(cat package.json | jq -r '.scripts | keys[] ' | sort | fzf) && npm run $(echo "$script")
}

