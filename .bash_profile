alias PATH="$PATH:$HOME/bin"

[[ ! -z "$PS1" ]] && [[ -r $HOME/.bashrc ]] && source $HOME/.bashrc

[[ ! -z "$PS1" ]] && [[ -r $HOME/.profile ]] && source $HOME/.profile
