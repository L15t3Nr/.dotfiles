#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Alias Commands
alias lh='ls -d .?*'
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias today='date && cal'
alias l1='clear && figlet -f Elite "Listenr" | lolcat -S 2 -p 20 -F .5 -a -s 3000'
alias l2='. ~/.bashrc'
alias nano='nano -l'

#Run on Terminal Startup
figlet -f Elite "Listener" | lolcat -S 2 -p 20 -F .5 -a -s 3000 && cat ~/art | lolcat -S 1 -p 20 -F .3 -a -s 3000

PS1='[\u@\h \W]\$ '

#Function to Show System Status
system-status () {
echo "Memory Usage:"
/usr/bin/free -h

echo $'\n'$"Disk Usage:"
/bin/df -h /dev/sd[a-z][1-9] 2>/dev/null

echo $'\n'$"Uptime:"
/usr/bin/uptime
}
