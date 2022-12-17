ANTIDOTE_DIR=$HOME/.local/.antidote
STATIC_FILE=$HOME/.local/.zsh_plugins.zsh
PLUGINS_FILE=$DOTFILES/os/mac/zsh/config/plugins/antidote/plugins.zsh

source $ANTIDOTE_DIR/antidote.zsh

antidote bundle <$PLUGINS_FILE >$STATIC_FILE
autoload -Uz $ANTIDOTE_DIR/functions/antidote

source $STATIC_FILE
