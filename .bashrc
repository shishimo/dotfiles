# Editor
export EDITOR='vi'

# Prompt
PS1='\[\e[1;32m\][\u@\h]\$\[\e[0m\] '

# Color
export LSCOLORS=gxfxcxdxbxegedabagacad
 
# history
export HISTSIZE='10000'
export HISTFILESIZE='10000'
export HISTCONTROL='erasedups'

# less
export LESSCHARSET=utf-8
 
# aliases
alias ls='ls -GCF'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias pd='pushd'
alias tree='tree -NC'
alias gitinfo='git config --list'
