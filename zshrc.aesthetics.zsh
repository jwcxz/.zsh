# based on bira from oh-my-zsh

autoload -U colors && colors


local sep="%F{246} ⋮ %{$reset_color%}"
local tl="%F{246}┌ %{$reset_color%}"
local bl="%F{246}└ %{$reset_color%}"


function prompt_git_branch() {
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    echo "${sep}%{$fg[yellow]%}⌥ ${ref#refs/heads/}%{$reset_color%}"
}

function prompt_date_time() {
    echo "${sep}%{$fg[magenta]%}%D{%Y-%m-%d} %{$terminfo[bold]$fg[magenta]%}%D{%H:%M:%S}%{$reset_color%}"
}


local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[cyan]%}%~%{$reset_color%}'
local current_git_branch='$(prompt_git_branch)%{$reset_color%}'
local current_date_time='$(prompt_date_time)%{$reset_color%}'


PROMPT="${tl}${user_host}${sep}${current_dir}${current_date_time}${current_git_branch}
${bl}%B$%b "

setopt prompt_subst
