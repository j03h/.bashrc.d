#!/bin/bash

# Colors
alias dir='dir --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias lla='ls -lah --color=auto --group-directories-first' # -lah: long list, all files, human-readable sizes
alias sudo='sudo '
alias miip='wget -O - -q https://secure.informaction.com/ipecho/' 
alias scanfull='sudo nmap -sS -p- -sV -O -T5 -vv --open -PN'
alias upgrade='sudo aptitude update && sudo aptitude safe-upgrade -y'
alias toron='sudo /etc/init.d/tor start && sudo /etc/init.d/polipo start'
alias toroff='sudo /etc/init.d/tor stop && sudo /etc/init.d/polipo stop'

extract () {
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xvjf $1        ;;
             *.tar.gz)    tar xvzf $1     ;;
             *.bz2)       bunzip2 $1       ;;
             *.rar)       unrar x $1     ;;
             *.gz)        gunzip $1     ;;
             *.tar)       tar xvf $1        ;;
             *.tbz2)      tar xvjf $1      ;;
             *.tgz)       tar xvzf $1       ;;
             *.zip)       unzip $1     ;;
             *.Z)         uncompress $1  ;;
             *.7z)        7z x $1    ;;
             *)           echo "'$1' cannot be extracted via >extract<" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}
