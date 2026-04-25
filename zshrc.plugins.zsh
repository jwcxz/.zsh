CFG_ZSHPLUGIN_DIR=$CFG_ZSHCFG_DIR/plugins
CFG_ANTIDOTE_DIR=$CFG_ZSHCFG_DIR/.antidote

# install and source antidote
[[ -e $CFG_ANTIDOTE_DIR ]] || git clone https://github.com/mattmc3/antidote.git $CFG_ANTIDOTE_DIR
. $CFG_ANTIDOTE_DIR/antidote.zsh

# load plugins
bundlefile=$CFG_ZSHCFG_DIR/antidote-plugins.txt
zstyle ':antidote:bundle' file $bundlefile

if [[ ! -d "$(antidote home)" ]]; then
    rm -f "$CFG_ZSHCFG_DIR/antidote-plugins.zsh"
fi

antidote load
