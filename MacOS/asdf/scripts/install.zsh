#!/bin/sh

while read line
do
    asdf plugin add ${line% *}
done < $HOME/.tool-versions

asdf install

while read line
do
    asdf global ${line% *} ${line#* }
done < $HOME/.tool-versions
