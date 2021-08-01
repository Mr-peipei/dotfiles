
set -U FZF_LEGACY_KEYBINDINGS 0

set -g theme_display_date no
set -g theme_display_docker_machine no

set -x PATH /home/murakami/Android/Sdk/platform-tools $PATH
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin


function sudo
 if test "$argv" = !!
     eval command sudo $history[1]
 else
     command sudo $argv
 end
end

abbr display "arandr displaysettings.sh"
abbr emf "arandr EmifficeDisplaySettings.sh"
abbr gs "git status"
abbr g "git"
abbr ga "git add"
abbr gitc "git commit"
abbr gcm "git commit -m"
abbr gpom "git push -u origin main"
abbr pbcopy "xsel --clipboard --input"
alias l='ls -l'
alias la='lsd -a'
alias lla='ls -la'
alias lt='ls --tree'
alias ls='lsd'
alias ll='lsd -l'
alias fvim='vim (fzf --height 40% --reverse)'
alias fd='cd (find . -name "*" -type d | fzf --height 40% --reverse)'
