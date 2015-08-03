bindkey -v

bindkey '^i' expand-or-complete-prefix
bindkey "\e[Z" reverse-menu-complete # Shift+Tab

bindkey '' history-incremental-pattern-search-backward

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
