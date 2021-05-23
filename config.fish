
set -U FZF_LEGACY_KEYBINDINGS 0

set -g theme_display_date no
set -g theme_display_docker_machine no

set -x PATH /home/murakami/Android/Sdk/platform-tools $PATH


function sudo
 if test "$argv" = !!
     eval command sudo $history[1]
 else
     command sudo $argv
 end
end

abbr display "arandr displaysettings.sh"
abbr gs "git status"
abbr g "git"
abbr ga "git add"
abbr gc "git commit"
abbr gcm "git commit -m"
abbr gpom "git push -u origin main"
