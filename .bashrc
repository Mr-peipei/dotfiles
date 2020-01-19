export PATH=$PATH:/usr/sample/something1
export PATH=$PATH:/usr/sample/something2

##fvimでvimを楽に開く
fvim() {
  files=$(git ls-files) &&
  selected_files=$(echo "$files" | fzf -m --preview 'head -100 {}') &&
  vim $selected_files
}

##git addをfaで入力
fzf-add() {
	local selected
	selected="$(git status -s | fzf -m | cut -c3-)"
	if [ -n "$selected" ]; then
		echo $selected
		git add $selected
	fi
}
alias fa="fzf-add"

alias ls='ls -G'
alias gs='git status'
alias gc='git commit'
alias gp='git push'
