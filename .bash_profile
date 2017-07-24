JAVA_VERSION=1.8
export JAVA_HOME=`/usr/libexec/java_home -v $JAVA_VERSION`
export JRE_HOME=‘$JAVA_HOME/bin’
export M2_HOME=/usr/local/apache-maven/apache-maven-3.3.3
export M2=$M2_HOME/bin
export PATH=$PATH:$M2

alias git-sync="git checkout develop && git pull --rebase && git rebase develop "
parse_git_branch() {

   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\[\033[0;31m\]\D{%F %T}\[\033[0;37m\] \u@\h \[\033[0m\]\W\[\033[36m\]\$(parse_git_branch)\[\033[00m\]\n$ "
source ~/git-completion.bash

	
export NVM_DIR="/Users/ybenjami/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
