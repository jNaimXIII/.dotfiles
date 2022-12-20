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
brew install asdf zoxide exa tmux iterm2

# ANTIDOTE INSTALLATION
git clone --depth=1 https://github.com/mattmc3/antidote.git $HOME/.local/.antidote

# GCLOUD CLI INSTALLATION
curl https://sdk.cloud.google.com > /tmp/gcloud-install.sh
. /tmp/gcloud-install.sh --install-dir="$HOME/.gcloud"
rm -rf /tmp/gcloud-install.sh

# LINK TMUX CONFIG FILES
ln -sf "$MAC_DOTFILES/tmux/.tmux.conf" "$HOME"

# TMUX PLUGIN MANAGER INSTALLATION
git clone https://github.com/tmux-plugins/tpm ~/.local/tmux/plugins/tpm
