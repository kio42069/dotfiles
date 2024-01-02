# terminal coloring
export CLICOLOR=1
export LSCOLORS=dxFxCxDxBxegedabagacad

local git_branch='$(git_prompt_info)%{$reset_color%}$(git_remote_status)'

PROMPT="%{$fg[red]%}╭─playing%{$reset_color%}%{$fg[blue]%} with %~ %{$reset_color%}${git_branch}
%{$fg[red]%}╰\$ %{$reset_color%}"

# PROMPT="%{$fg[red]%}╭─balls deep %{$reset_color%}%{$fg[blue]%}in %~ %{$reset_color%}${git_branch}
# %{$fg[red]%}╰\$ %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}on "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg[red]%} ✘ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔ %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED=true
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_PREFIX="%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_SUFFIX="%{$fg[yellow]%})%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=" +"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE_COLOR=%{$fg[green]%}

ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE=" -"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE_COLOR=%{$fg[red]%}

