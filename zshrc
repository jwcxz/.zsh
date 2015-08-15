# zshrc
# jwc <http://jwcxz.com>

CFG_ZSHCFG_DIR=$HOME/.zsh

source ${CFG_ZSHCFG_DIR}/zshrc.plugins.zsh
source ${CFG_ZSHCFG_DIR}/zshrc.behavior.zsh
source ${CFG_ZSHCFG_DIR}/zshrc.aesthetics.zsh
source ${CFG_ZSHCFG_DIR}/zshrc.completion.zsh
source ${CFG_ZSHCFG_DIR}/zshrc.keymap.zsh
source ${CFG_ZSHCFG_DIR}/zshrc.environment.zsh

if [ -d "$CFG_ZSHCFG_DIR/local" ]; then
    for lf in `find "$CFG_ZSHCFG_DIR/local"`; do
        if [ -x "$lf" ]; then
            source $lf
        fi
    done
fi
