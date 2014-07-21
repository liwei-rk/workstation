# .bash_profile

# Get the aliases and functions
#if [ -f ~/.bashrc ]; then
#	. ~/.bashrc
#fi

alias git-push='git push -u origin master'
alias ls='ls -F -N --color=auto'
alias ll='ls -l'
alias grep='grep --color=auto'


# User specific environment and startup programs

PATH=~/git-master:$PATH:$HOME/bin

export PATH
export TBLIB_ROOT=/home/wj.lw/tb-common-utils
export TAIR_ROOT=/home/wj.lw/tair_bin 
export LD_LIBRARY_PATH=~/lib:$TAIR_ROOT/lib
