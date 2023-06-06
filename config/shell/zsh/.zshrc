# Starship Prompt
eval "$(starship init zsh)"

# Shell Completions
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# ASDF
. $(brew --prefix asdf)/libexec/asdf.sh
. ~/.asdf/plugins/golang/set-env.zsh

# Zoxide
export _ZO_RESOLVE_SYMLINKS=1
eval "$(zoxide init zsh --cmd j --hook pwd)"

# Antidote
source $(brew --prefix antidote)/share/antidote/antidote.zsh
antidote load

# Aliases
alias ls="exa"
alias l="exa --long --icons --all --group-directories-first"
alias codi="code-insiders"

# Android Toolchain
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# PNPM
export PNPM_HOME="/Users/jannatinnaim/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# GPG
export GNUPGHOME="$HOME/.gnupg"
export GPG_TTY=$(tty)

# Neovim
export NVIM_APPNAME=AstroNvim

# Shell Scripts
export PATH="$HOME/.scripts/:$PATH"

# Reload Shell
alias reload="exec $SHELL -l"
