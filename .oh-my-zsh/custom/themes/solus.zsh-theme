# Colors
local color_user="$FG[111]"
local color_at="$FG[069]"
local color_host="$FG[061]"
local color_pwd="$FG[168]"
local color_ok="$FX[bold]$FG[121]"
local color_fail="$FX[bold]$FG[161]"
local color_git="$FX[bold]$FG[111]"
local color_git_branch="$FX[bold]$FG[168]"
local color_git_dirty="$FX[bold]$FG[011]"


local ret_status="%(?:%{$color_ok%}➜ :%{$color_fail%}➜ )%{$reset_color%}"

# user part, color coded by privileges
local user="%(!.%{$color_user%}.%{$color_user%})%n%{$reset_color%}"
# Hostname, compressed and colorcoded per host_repr array
# if not found, regular hostname in default color
local host="%{$color_at%}@%{$color_host%}${host_repr[$HOST]:-$HOST}%{$reset_color%}"
# Path
local short_pwd="%{$color_pwd%}%c%{$reset_color%}"
local  long_pwd="%{$color_pwd%}%~%{$reset_color%}"


PROMPT='${ret_status}${user}${host} ${long_pwd} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$color_git%}git:(%{$color_git_branch%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$color_git%}) %{$color_git_dirty%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$color_git%})"
