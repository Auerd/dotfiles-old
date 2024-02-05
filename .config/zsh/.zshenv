typeset -U path PATH
path=(~/.local/bin $path)
export PATH

ZDOTDIR=$HOME/.config/zsh

if [[ -a "$HOME/.pzshenv" ]]; then
	source .pzshenv;
fi
