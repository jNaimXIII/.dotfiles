#!/bin/sh

if [ ! -d "$HOME/.hushlogin" ]; then touch ~/.hushlogin; fi


if ! type brew &>/dev/null
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi


if ! type asdf &>/dev/null; then brew install asdf; fi
source "$(pwd)/MacOS/asdf/scripts/install.zsh"

if ! type zoxide &>/dev/null; then brew install zoxide; fi


ln -sf "$(pwd)/MacOS/git/.gitconfig" $HOME


ln -sf "$(pwd)/MacOS/zsh/.zprofile" $HOME
ln -sf "$(pwd)/MacOS/zsh/.zshrc" $HOME
ln -sf "$(pwd)/MacOS/zsh/.config/zsh" $HOME/.config
ln -sf "$(pwd)/MacOS/zsh/.config/zsh/prompt/.p10k.zsh" $HOME


ln -sf "$(pwd)/MacOS/asdf/.tool-versions" $HOME

ln -sf "$(pwd)/MacOS/nvim/" $HOME/.config
