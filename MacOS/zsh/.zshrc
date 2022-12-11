# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

BASE_DIR=$HOME/.config/zsh

source $BASE_DIR/shell/path.zsh

for script in $BASE_DIR/install/**/*.zsh; do source $script; done

source $BASE_DIR/prompt/instant.zsh

source $BASE_DIR/brew/brew.zsh

for script in $BASE_DIR/apps/**/*.zsh; do source $script; done
source $BASE_DIR/shell/plugins.zsh

for script in $BASE_DIR/aliases/**/*.zsh; do source $script; done
for script in $BASE_DIR/abbrs/**/*.zsh; do source $script; done

source $BASE_DIR/prompt/prompt.zsh
source $HOME/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# pnpm
export PNPM_HOME="/Users/jannatinnaim/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
#
export PATH=/Library/PostgreSQL/15/bin:$PATH
