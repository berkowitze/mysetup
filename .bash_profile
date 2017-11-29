[[ ! -z "$PS1" ]] && [[ -r $HOME/.bashrc ]] && source $HOME/.bashrc

[[ ! -z "$PS1" ]] && [[ -r $HOME/.profile ]] && source $HOME/.profile

alias PATH="/usr/local/bin:$PATH:$HOME/bin"
alias python="python2"
alias pip="pip2"
