BASE_DIR=$HOME/.config/zsh

for script in $BASE_DIR/install/**/*.zsh; do source $script; done

source $BASE_DIR/prompt/instant.zsh

source $BASE_DIR/brew/brew.zsh
source $BASE_DIR/shell/plugins.zsh

for script in $BASE_DIR/apps/**/*.zsh; do source $script; done
for script in $BASE_DIR/aliases/**/*.zsh; do source $script; done
for script in $BASE_DIR/abbrs/**/*.zsh; do source $script; done

source $BASE_DIR/prompt/prompt.zsh
source $HOME/.p10k.zsh
