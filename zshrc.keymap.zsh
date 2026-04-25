bindkey -v

bindkey '^i' complete-word
bindkey "\e[Z" reverse-menu-complete # Shift+Tab

bindkey '' history-incremental-pattern-search-backward

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

bindkey -a "(" vi-rev-repeat-find
bindkey -a ")" vi-repeat-find

bindkey '^K' push-line-or-edit
bindkey -M viins '^K' push-line-or-edit
bindkey -M vicmd '^K' push-line-or-edit

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M viins '^O' edit-command-line
bindkey -M vicmd 'z' edit-command-line

if command -v fzf >/dev/null 3>&1; then
    source <(fzf --zsh)
fi
