#!/bin/bash

export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx # dark background
alias q='exit'
alias c='clear'
alias h='history'
alias cs='clear;ls'
alias lsa='ls -aG'
alias lsl='ls -lG'
alias ll='ls -althrGF'
alias t='time'
alias k='kill'
alias null='/dev/null'
alias home='cd ~'
alias python=python3

BLUE_BOLD='\[\e[01;34m\]'
RED_BOLD='\[\e[01;31m\]'
WHITE_BOLD='\[\e[01;0m\]'
WHITE='\[\033[37m\]'

#PS1="${RED_BOLD}\t ${BLUE_BOLD}[${RED_BOLD}\W${BLUE_BOLD}] ${WHITE}$ "
#PS1="${RED_BOLD}\t ${BLUE_BOLD}[${RED_BOLD}\W${BLUE_BOLD}]-> ${WHITE_BOLD}"

# Grep
alias grep='grep -n'
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;35;40'

# Git
export PS1="\[\033[38m\]\u\[\033[32m\] \w \[\033[31m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.split(%r{\n}).grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[37m\]$\[\033[00m\] "
# export PS1="\[\033[38m\]\u\[\033[32m\] \w \[\033[31m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.split(%r{\n}).grep(/^\*/).first $"
git config --global color.ui true
git config --global format.pretty oneline
git config --global core.autocrl input
git config --global core.fileMode true
git config core.hooksPath ~/.git/hooks/

# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# Ignore case during tab completion.
bind 'set completion-ignore-case on'

# Get the aliases and functions
# shellcheck source=/dev/null
if [ -f ~/.oxalate_shell_rc ]; then
  . ~/.oxalate_shell_rc
fi

# shellcheck source=/dev/null
[[ -f "$HOME/git-completion.bash" ]] && source "$HOME/git-completion.bash"

# shellcheck source=/dev/null
[ -f ~/.fzf.bash ] && source ~/.fzf.bash



# Put this in your .bash_profile file.
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
