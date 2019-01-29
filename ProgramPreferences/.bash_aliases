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
lsh() {
    echo -e "${COL_Green}ls: ${COL_Blue}Better vanilla list${COL_NC}"
    echo -e "${COL_Green}la: ${COL_Blue}List all - even hidden dot files${COL_NC}"
    echo -e "${COL_Green}ll: ${COL_Blue}Long list - Permissions, owners, and modified stamps${COL_NC}"
    echo -e "${COL_Green}l: ${COL_Blue}List (short) - Inline names only${COL_NC}"
    echo -e "${COL_Green}sl: ${COL_Blue}Size list - Some other stuff, but also sizes${COL_NC}"
}

#can never remember this one
alias reloadBash='. ~/.bashrc'

# cd to a common location
nv() { cd "$1" && l; }
alias cdw='cd /var/www/html/'
alias cdpe='cd /var/www/html/pubbly_engine/'
alias cdpc='cd /var/www/html/pubbly_console/'
alias cdpm='cd /var/www/html/pubbly_market/'
alias cdss='cd ~/Projects/NeverLeaveTerminal/ShellScripts/'

cdh() 
{
    echo -e "${COL_Green}nv: ${COL_Blue}cd, then ls (why wouldn't you want that every time?)${COL_NC}"
    echo -e "${COL_Green}cdw: ${COL_Blue}cd to web root${COL_NC}"
    echo -e "${COL_Green}cdpe: ${COL_Blue}cd to pubbly_engine${COL_NC}"
    echo -e "${COL_Green}cdpc: ${COL_Blue}cd to pubbly_console${COL_NC}"
    echo -e "${COL_Green}cdpm: ${COL_Blue}cd to pubbly_markt${COL_NC}"
    echo -e "${COL_Green}cdss: ${COL_Blue}cd to ShellScripts (all loaded from bashrc${COL_NC}"
}

grep_findText() {
    grep -r --include=*.* "$1" .
}

grep_help() {
    echo -e "${COL_Green}grep_findText: ${COL_Blue}Search ALL files in cwd for (arg1) text${COL_NC}"
    echo -e "${COL_Grey}   -- grep -r --include=*.* "$1" .${COL_NC}"
}

# Start a sass watch in the background
alias startSass='nohup sass --watch scss:css > ~/logs/sassWatch.log 2>&1 &'
alias startScss=startSass

# Can't remember the proper commands
alias reddit=rtv
