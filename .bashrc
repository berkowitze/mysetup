## universal setup
export EDITOR="vim"

## terminal setup, end universal setup

# ssh-add if it doesn't exist
alias ssh='if [ "$(ssh-add -l)" = "The agent has no identities." ]; then ssh-add; fi; /usr/bin/ssh "$@"'
# brewup cleans up homebrew
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
alias diff="colordiff"
alias sl="fortune"

[ -z "$PS1" ] && return
function updateSetup() {
    cp $HOME/.profile      $HOME/mysetup
    cp $HOME/.bashrc       $HOME/mysetup
    cp $HOME/.bash_profile $HOME/mysetup
    cp $HOME/.vimrc        $HOME/mysetup
    cp $HOME/.gitconfig    $HOME/mysetup
    cp -r $HOME/.vim       $HOME/mysetup

}

## gotta press ctrl-d twice to exit shell
export IGNOREEOF="1"


alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

## brown cs
export CS_USER="eberkowi"

# ssh
alias bssh="ssh $CS_USER@ssh.cs.brown.edu"
alias bvssh="ssh -Y $CS_USER@ssh.cs.brown.edu"

# scp
function bscp() {
    scp $1 $CS_USER@ssh.cs.brown.edu:$2;
}

function mscp() {
    scp $2 $CS_USER@ssh.cs.brown.edu:$1;
}

## mount brown cs dept
function bfuse() {
    cd $HOME;
    if [ ! -d $HOME/mcs/gpfs ]; then
        sshfs -o defer_permissions $CS_USER@ssh.cs.brown.edu:/ $HOME/mcs;
    fi
    cd $HOME/mcs/gpfs/main/course/cs0170;
}

# unmount brown cs department
function bstop() {
    if [ -d $HOME/mcs]; then
        cd $HOME;
        umount $HOME/mcs;
    else
        echo "Not connected";
    fi
}

## move up $1 directories
up(){
  local d=""
  limit=$1
  for ((i=1 ; i <= limit ; i++))
    do
      d=$d/..
    done
  d=$(echo $d | sed 's/^\///')
  if [ -z "$d" ]; then
    d=..
  fi
  cd $d
}

## set PS1
RESET="\[\017\]"
NORMAL="\[\033[0m\]"
RED="\[\033[31;1m\]"
YELLOW="\[\033[33;1m\]"
WHITE="\[\033[37;1m\]"
GREEN="\[\033[32;1m\]"
SMILEY="${GREEN}:)${NORMAL}"
FROWNY="${RED}:(${NORMAL}"
SELECT="if [ \$? = 0 ]; then echo \"${SMILEY}\"; else echo \"${FROWNY}\"; fi"

PROMPT_DIRTRIM=2

# Throw it all together 
export PS1="${RESET}${YELLOW}MacAir${NORMAL}$SSH_FLAG \`${SELECT}\` \w/${YELLOW}${NORMAL}$ "

## colorize man pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

## set up history
export HISTFILESIZE=20000
export HISTSIZE=10000

HISTCONTROL=ignoredups
HISTCONTROL=ignoreboth
export HISTIGNORE="&:ls:[bf]g:exit"
export HISTIGNORE="&:??:[ ]*:clear:exit:logout"


## make ls colorful
# ~/.dircolors/themefile
eval $(gdircolors ~/.dircolors/dircolors.256dark)

# Aliases
alias ls='gls --color=auto'
alias ll='ls -al'


## handy unzipping tool for archives
extract () {
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xjf $1        ;;
             *.tar.gz)    tar xzf $1     ;;
             *.bz2)       bunzip2 $1       ;;
             *.rar)       rar x $1     ;;
             *.gz)        gunzip $1     ;;
             *.tar)       tar xf $1        ;;
             *.tbz2)      tar xjf $1      ;;
             *.tgz)       tar xzf $1       ;;
             *.zip)       unzip $1     ;;
             *.Z)         uncompress $1  ;;
             *.7z)        7z x $1    ;;
             *)           echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

# copy and go to dir
cpg (){
  if [ -d "$2" ];then
    cp $1 $2 && cd $2
  else
    cp $1 $2
  fi
}

# move and go to dir
mvg (){
  if [ -d "$2" ];then
    mv $1 $2 && cd $2
  else
    mv $1 $2
  fi
}

# go to previous directory
alias back="cd $OLDPWD"

# list all folders and their sizes
alias folders='find . -maxdepth 1 -type d -print0 | xargs -0 du -sk | sort -rn'

# dynamically update window size
shopt -s checkwinsize

## set ctrl-w to delete last short-word
stty werase undef
bind '\C-w:unix-filename-rubout'

