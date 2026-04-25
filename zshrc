# zshrc
# jwc <http://jwcxz.com>

CFG_ZSHCFG_DIR=$HOME/.zsh
CFG_ZSHCFG_LOCAL_DIR=$HOME/.zsh.local

[[ -f "$CFG_ZSHCFG_LOCAL_DIR/zshrc.local.early.zsh" ]] && source "$CFG_ZSHCFG_LOCAL_DIR/zshrc.local.early.zsh"

source ${CFG_ZSHCFG_DIR}/zshrc.aesthetic.zsh
source ${CFG_ZSHCFG_DIR}/zshrc.completion.zsh
source ${CFG_ZSHCFG_DIR}/zshrc.keymap.zsh
source ${CFG_ZSHCFG_DIR}/zshrc.environment.zsh

[[ -f "$CFG_ZSHCFG_LOCAL_DIR/zshrc.local.late.zsh" ]] && source "$CFG_ZSHCFG_LOCAL_DIR/zshrc.local.late.zsh"

source ${CFG_ZSHCFG_DIR}/zshrc.plugins.zsh
