ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[133]%}(%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$FG[133]%})%{$reset_color%} "

TMOUT=1
local counter=0

local poo='%n%{$FG[133]%}♥%{$reset_color%}%M %{$FG[109]%}%c %{$reset_color%}$(git_prompt_info)%{$FG[133]%}❥%{$reset_color%} '
local nob="8m==D"

TRAPALRM () {
    if (( $counter == 0 )); then
        counter=1
        nob="8=m=D"
    elif (( $counter == 1 )) ; then
        counter=2
        nob="8==mD"
    elif (( $counter == 2 )) ; then
        counter=3
        nob="8=m=D"
    elif (( $counter == 3 )) ; then
        counter=0
        nob="8m==D"
    fi
    PROMPT="$nob $poo"
    zle reset-prompt
}

PROMPT="$nob $poo"
