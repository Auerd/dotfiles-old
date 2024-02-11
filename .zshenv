typeset -U path PATH
path=($HOME/.local/bin $path)
export PATH


[[ -a $HOME/.pzshenv ]] && source $HOME/.pzshenv;

export ZSH_CACHE_DIRECTORY=$HOME/.cache/zsh
[[ -n $XDG_CACHE_HOME ]] && export ZSH_CACHE_DIRECTORY=$XDG_CACHE_HOME/zsh;

if ! [[ -d $ZSH_CACHE_DIRECTORY ]]; then
  [[ -a $ZSH_CACHE_DIRECTORY ]] && rm $ZSH_CACHE_DIRECTORY;
  mkdir $ZSH_CACHE_DIRECTORY;
fi

export HISTFILE=$ZSH_CACHE_DIRECTORY/zhistory
export ZDOTDIR=$HOME/.config/zsh
[[ -n $XDG_CONFIG_HOME ]] && export ZDOTDIR=$XDG_CONFIG_HOME/zsh;
export EDITOR=$PREFIX/bin/nvim

[[ -a $ZDOTDIR/.pzshenv ]] && source $ZDOTDIR/.pzshenv;
