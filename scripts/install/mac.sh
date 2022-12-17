#!/bin/sh

# DIRECTORIES
DOTFILES=$(dirname $(dirname $(pwd)))
MAC_DOTFILES=$DOTFILES/os/mac

# LINK ZSH CONFIG FILES
ln -sf "$MAC_DOTFILES/zsh/.zshrc" "$HOME"
ln -sf "$MAC_DOTFILES/zsh/.zprofile" "$HOME"

# HOMEBREW INSTALLATION
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && eval "$(/opt/homebrew/bin/brew shellenv)"

# BREW PACKAGES
brew install asdf zoxide exa

# ANTIDOTE INSTALLATION
git clone --depth=1 https://github.com/mattmc3/antidote.git $HOME/.local/.antidote
