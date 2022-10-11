ZPLUGINDIR="$HOME/.config/zsh.plugins/"

function plugin-load {
  local repo plugdir initfile
  ZPLUGINDIR=${ZPLUGINDIR:-${ZDOTDIR:-$HOME/.config/zsh}/plugins}
  for repo in $@; do
    plugdir=$ZPLUGINDIR/${repo:t}
    initfile=$plugdir/${repo:t}.plugin.zsh
    if [[ ! -d $plugdir ]]; then
      echo "Cloning $repo..."
      git clone -q --depth 1 --recursive --shallow-submodules https://github.com/$repo $plugdir
    fi
    if [[ ! -e $initfile ]]; then
      local -a initfiles=($plugdir/*.plugin.{z,}sh(N) $plugdir/*.{z,}sh{-theme,}(N))
      (( $#initfiles )) || { echo >&2 "No init file found '$repo'." && continue }
      ln -sf "${initfiles[1]}" "$initfile"
    fi
    fpath+=$plugdir
    (( $+functions[zsh-defer] )) && zsh-defer . $initfile || . $initfile
  done
}

plugins=(
	olets/zsh-abbr

	romkatv/zsh-defer
  jeffreytse/zsh-vi-mode
	Aloxaf/gencomp
	peterhurford/up.zsh
	zsh-users/zsh-history-substring-search
	rummik/zsh-tailf
	zsh-users/zsh-autosuggestions
	zdharma-continuum/fast-syntax-highlighting
	olets/zsh-abbr
)

plugin-load $plugins
