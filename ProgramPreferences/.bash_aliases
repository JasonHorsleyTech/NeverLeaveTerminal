#!/bin/sh

# Beep from speakers (not motherboard)
alias beep='( speaker-test -t sine -f 1000 )& pid=$! ; sleep 0.1s ; kill -9 $pid'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='beep && notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Better default ls
# -- Regular list, now with better
alias ls='ls -F -h --color=always -v --author --time-style=long-iso'
# List all, even the dots
alias la='ls -A'
# Long list, permissions, owners, stamps
alias ll='ls -alF'
# Short list, just the names
alias l="ls -1 | tr '\n' '\0' | xargs -0 -n 1 basename"
# Size list
alias sl='ls -lt | cut -d" " -f6-'

#can never remember this one
alias reloadBash='. ~/.bashrc'

# cd to a common location
nv() { cd "$1" && l; }
alias cdw='cd /var/www/html/'
alias cdpe='cd /var/www/html/pubbly_engine/'
alias cdpc='cd /var/www/html/pubbly_console/'
alias cdpm='cd /var/www/html/pubbly_market/'
alias cdss='cd ~/Projects/NeverLeaveTerminal/ShellScripts/'


grepFindText() {
    grep -r --include=*.* "$1" .
}

# Start a sass watch in the background
alias startSass='nohup sass --watch scss:css > ~/logs/sassWatch.log 2>&1 &'
alias startScss=startSass

# Can't remember the proper commands
alias reddit=rtv
