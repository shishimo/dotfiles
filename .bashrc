# port
export PATH=$PATH:/opt/local/bin:/opt/local/sbin:$HOME/android-sdks/platform-tools:$HOME/android-sdks/tools
export MANPATH=/opt/local/man:$MANPATH
export GOPATH=$HOME/Development/go
export PATH=$PATH:$HOME/bin:$HOME/bin/dex2jar

# Editor
export EDITOR='vim'

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
export GREP_COLOR='01;31'
export GREP_OPTIONS='--color=always'

# aliases
alias ls='ls -GCF'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias pd='pushd'
alias tree='tree -NC'
alias less='less -R'

# OS別設定
OS=`uname`
if [ $OS = "Darwin" ];
then

# JAVA
export JAVA_HOME="$(/usr/libexec/java_home)"

fi

# ctrl+fで次の単語に移動
bind '"\C-f": forward-word'

# ctrl+bで前の単語に移動
bind '"\C-b": backward-word'
