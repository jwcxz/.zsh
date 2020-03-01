HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

if [[ "$LANG" == "" ]]; then
    export LANG="en_US.UTF-8"
fi

if command -v nvim >/dev/null 3>&1; then
    export EDITOR=nvim
else
    export EDITOR=vim
fi

export VIEWER="$EDITOR"

export KEYTIMEOUT=1
export NVIM_TUI_ENABLE_TRUE_COLOR=1

alias grep="grep --color=auto"

if [[ "$(uname)" == "Darwin" ]]; then
    alias ls="ls -G"
else
    alias ls="ls --color=auto"
fi
