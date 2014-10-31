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
export CC=gcc
export JAVA_HOME=~/sdk/jdk7
export PATH=~/git-master:$PATH:$HOME/bin:$HOME/bin/nginx_stable/sbin:$JAVA_HOME/bin
export TBLIB_ROOT=~/tb-common-utils
export TAIR_ROOT=~/tair_bin 
export LD_LIBRARY_PATH=~/lib:$TAIR_ROOT/lib:/usr/local/lib
export CURL='curl localhost:8290/v2/tfscom/appid'
#export LUAJIT_LIB=/usr/local/lib
#export LUAJIT_INC=/usr/local/include/luajit-2.0
#export LUAJIT=/usr/local/bin/luajit
