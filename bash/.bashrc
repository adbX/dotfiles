#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
[ -r /home/adb/.config/byobu/prompt ] && . /home/adb/.config/byobu/prompt   #byobu-prompt#
