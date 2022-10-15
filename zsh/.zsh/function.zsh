
# vim oepn
fvim() {
  files=$(git ls-files) &&
  selected_files=$(echo "$files" | fzf -m --preview 'head -100 {}') &&
  vim $selected_files
}

# Git add
fzf-add() {
	local selected
	selected="$(git status -s | fzf -m | cut -c3-)"
	if [ -n "$selected" ]; then
		echo $selected
		git add $selected
	fi
}
alias fa="fzf-add"

# Git restore
fzf-restore() {
	local selected
	selected="$(git status -s | fzf | cut -c3-)"
	if [ -n "$selected" ]; then
		echo $selected
		git restore $selected
	fi
}
alias frt="fzf-restore"

# Git Checkout
fbr() {
  local branches branch
  branches=$(git --no-pager branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

# Git delete branch
fbrad() {
  local branches branch
  branches=$(git --no-pager branch -vv) &&
  branch=$(echo "$branches" | fzf -m) &&
  git branch -d $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

# Git Stash pop
fst() {
  local stash
  stashes=$(git stash list) &&
  stash=$(echo "$stashes" | fzf -m) &&
  git stash pop $(echo "$stash" | awk '{print $1}' | sed "s/://")
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

# yarn test
ftest() {
  files=$(git ls-files | grep "spec") &&
  selected_files=$(echo "$files" | fzf -m --preview 'head -100 {}') &&
  # print -z yarn test $selected_files
  print -z yarn test $selected_files
}
