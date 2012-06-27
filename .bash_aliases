#!/bin/bash

# Colors
alias dir='dir --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias lla='ls -lah --color=auto --group-directories-first' # -lah: long list, all files, human-readable sizes

alias miip='wget -O - -q https://secure.informaction.com/ipecho/' 
alias scanfull='sudo nmap -sS -p- -sV -O -T5 -vv --open -PN'
alias upgrade='sudo aptitude update && sudo aptitude safe-upgrade -y'
