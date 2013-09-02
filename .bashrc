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
export GREP_COLOR='01;31'
export GREP_OPTIONS='--color=always'

# port
export PATH=/opt/local/bin:/opt/local/sbin:$PATH:$HOME/android-sdks/platform-tools
export MANPATH=/opt/local/man:$MANPATH
 
# aliases
alias ls='ls -GCF'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias pd='pushd'
alias tree='tree -NC'
alias less='less -R'
