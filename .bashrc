#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Append Anaconda, as not to override system python
export PATH="$PATH:/home/zack/anaconda3/bin"

#export VISUAL='vim'
