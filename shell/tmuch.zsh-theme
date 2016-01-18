if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

GREEN="119"
DARK_GRAY="240"
LIGHT_GRAY="248"

PROMPT='%{$FG[$DARK_GRAY]%}[%n@%m]\
 %{$FG[$GREEN]%}%~\
 $(git_prompt_info)
%{$FG[$GREEN]%}%(!.#.»)%{$reset_color%} '

PROMPT2='%{$FG[119]%}\ %{$reset_color%}'
RPS1='${return_code}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[$LIGHT_GRAY]%}("
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[$LIGHT_GRAY]%} ○%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[$LIGHT_GRAY]%} ⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$FG[$LIGHT_GRAY]%})%{$reset_color%}"

#export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export LSCOLORS="axfxcxdxbxegedabagacad"
