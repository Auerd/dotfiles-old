typeset -U path PATH
path=(~/.local/bin $path)
export PATH

export ZSH_CACHE_DIRECTORY=$HOME/.cache/zsh
if ! [[ -d $ZSH_CACHE_DIRECTORY ]]; then
  [[ -a $ZSH_CACHE_DIRECTORY ]] && rm $ZSH_CACHE_DIRECTORY;
  mkdir $ZSH_CACHE_DIRECTORY;
fi

export HISTFILE=$ZSH_CACHE_DIRECTORY/zhistory
export ZDOTDIR=$HOME/.config/zsh
export EDITOR=$PREFIX/bin/nvim

[[ -a $ZDOTDIR/.pzshenv ]] && source $ZDOTDIR/.pzshenv;
[[ -a $HOME/.pzshenv ]] && source $HOME/.pzshenv;
