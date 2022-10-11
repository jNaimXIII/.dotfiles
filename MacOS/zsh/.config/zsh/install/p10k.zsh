P10K_PATH="${HOME}/.config/zsh.plugins/powerlevel10k"

if [ ! -d $P10K_PATH ]
then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/zsh.plugins/powerlevel10k
fi
