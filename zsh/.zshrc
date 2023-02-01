if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

KEYTIMEOUT=10

source "${HOME}/.iterm2_shell_integration.zsh"

export EDITOR=lvim

FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
FPATH="$HOME/.local/share/zsh/site-functions:${FPATH}"
FPATH="$HOME/.zsh/completions:${FPATH}"

# source ~/.fzf.zsh

source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load

autoload -Uz promptinit && promptinit && prompt powerlevel10k

source ~/.p10k.zsh

. /opt/homebrew/opt/asdf/libexec/asdf.sh

alias reload="exec $SHELL"

alias ls="exa"
alias l="exa --long --classify --icons --all --group-directories-first --git"

alias mux="tmuxinator"

export PATH=$HOME/.scripts:$PATH

export PNPM_HOME="$HOME/.pnpm"
export PATH="$HOME/.pnpm:$PATH"

eval "$(zoxide init zsh --cmd j --hook pwd)"

export PATH="$HOME/Library/Application Support/JetBrains/Toolbox/scripts:$PATH"

export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

export PATH=$HOME/.local/bin:$PATH

export FLUTTER_ROOT="$(asdf where flutter)"

export GOROOT="$(asdf where golang)/go/"
export GOPATH="$(asdf where golang)/packages/"

zstyle ':completion:*' verbose yes
zstyle ':completion:*' menu select
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' complete-options true
zstyle ':completion:*' completer _extensions _complete _approximate
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
setopt globdots

autoload -Uz compinit && compinit
rm -f ~/.zcompdump; compinit
