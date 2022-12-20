# POWERLEVEL10K INSTANT PROMPT
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export DOTFILES=$HOME/Code/jNaimXIII/.dotfiles
DOTFILES_ZSH_MAC=$DOTFILES/os/mac/zsh

# PATH
source $DOTFILES_ZSH_MAC/config/path/general.zsh
source $DOTFILES_ZSH_MAC/config/path/pnpm.zsh

# ZSH CONFIG
source $DOTFILES_ZSH_MAC/config/apps/zsh.zsh

# BREW CONFIG
source $DOTFILES_ZSH_MAC/config/apps/brew.zsh

# ASDF CONFIG
source $DOTFILES_ZSH_MAC/config/apps/asdf.zsh

# ZOXIDE CONFIG
source $DOTFILES_ZSH_MAC/config/apps/zoxide.zsh

# ABBR CONFIG
source $DOTFILES_ZSH_MAC/config/plugins/abbr/init.zsh

# ZSH VI MODE CONFIG
source $DOTFILES_ZSH_MAC/config/plugins/zsh-vi-mode/zsh-vi-mode.zsh

# ANTIDOTE
source $DOTFILES_ZSH_MAC/config/plugins/antidote/init.zsh

# POWERLEVEL10K
source $DOTFILES_ZSH_MAC/config/plugins/powerlevel10k/.p10k.zsh

# ALIASES
source $DOTFILES_ZSH_MAC/config/aliases/shell.zsh
source $DOTFILES_ZSH_MAC/config/aliases/exa.zsh

# GOOGLE CLOUD CLI
. "/Users/jannatinnaim/.gcloud/google-cloud-sdk/path.zsh.inc"
. "/Users/jannatinnaim/.gcloud/google-cloud-sdk/completion.zsh.inc"

# COMPLETIONS
autoload -Uz compinit
compinit
