# port
export PATH=$PATH:/opt/local/bin:/opt/local/sbin:$HOME/android-sdks/platform-tools:$HOME/android-sdks/tools
export MANPATH=/opt/local/man:$MANPATH

# Editor
export EDITOR='vi'

# Prompt
PS1='\[\e[1;32m\][\u:\W]\$\[\e[0m\] '

# Color
export LSCOLORS=gxfxcxdxbxegedabagacad
 
# history
export HISTSIZE='10000'
export HISTFILESIZE='10000'
export HISTCONTROL='erasedups'

# less
export LESSCHARSET=utf-8

# grep
# 有効にするとphonegapが動かなくなるので
# コメントアウト
#export GREP_COLOR='01;31'
#export GREP_OPTIONS='--color=always'

# aliases
alias ls='ls -GCF'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias pd='pushd'
alias tree='tree -NC'
alias less='less -R'

# JAVA
if [ $OSTYPE = "darwin13" ];
then
export JAVA_HOME="$(/usr/libexec/java_home)"
fi
