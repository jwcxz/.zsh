# based on bira from oh-my-zsh

autoload -U colors && colors


local sep="%F{246} ⋮ %{$reset_color%}"
local tl="%F{246}┌ %{$reset_color%}"
local bl="%F{246}└ %{$reset_color%}"


function git_prompt_info() {
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    echo "${sep}%{$fg[yellow]%}⌥ ${ref#refs/heads/}%{$reset_color%}"
}


local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'


PROMPT="${tl}${user_host}${sep}${current_dir}${git_branch}
${bl}%B$%b "

setopt prompt_subst
