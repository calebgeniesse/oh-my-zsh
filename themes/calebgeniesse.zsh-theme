# aliases for colors/effects
local PINK="%{$FX[bold]$FG[198]%}"
local WHITE="%{$FX[bold]$FG[015]%}"
local GRAY="%{$FX[bold]$FG[008]%}"
local CYAN="%{$FX[bold]$FG[014]%}"
local GREEN="%{$FX[bold]$FG[010]%}"

# prompt info for ssh clients
#function {
if [[ -n "$SSH_CLIENT" ]]; then
   PROMPT_HOST=" ${GRAY}{${WHITE}$HOST${GRAY}} "
else
   PROMPT_HOST=" "
fi
#}

local ret_status="%(?:${GREEN}»:${GRAY}»)"
PROMPT='${ret_status}${PROMPT_HOST}${PINK}%c $(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="${GRAY}git:(${CYAN}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${GRAY})%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="${GRAY}"
ZSH_THEME_GIT_PROMPT_CLEAN="${GREEN}"

