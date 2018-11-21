alias l='ls -CF'
alias ll="ls -l --group-directories-first"
alias la='ls -A'
alias lla='ls -lA --group-directories-first'

alias df='df -h'

alias ..='cd ..'
alias ...='cd ../..'
alias cd..='cd ..'

alias psx='ps auxw | grep -v grep | grep $1'
alias p='ps auxww|grep -v grep|grep '

alias s='sudo'
alias sudo='sudo ';
alias c='clear'
alias h='history|grep'
 #alias less='less -SMN'
alias less='less -SM'

if [[ $(lsb_release -d) == *"Solus"* ]];then
    alias up='sudo eopkg upgrade && echo "Checking for broken packages.." && sudo eopkg check|grep -i broken'
elif [[ $(lsb_release -d) == *"Ubuntu"* ]];then
    alias up='sudo apt update && sudo apt full-upgrade'
    alias ppa='sudo add-apt-repository'
elif [[ $(uname -n) == *"element"* ]];then
    alias up='sudo aptitude update && sudo aptitude full-upgrade'
    alias ppa='sudo add-apt-repository'
fi

 #alias irc='ssh zone-c.org -t screen -rd'
 #alias irc='ssh zone-c.org -p 222'
alias irc='ssh irssi'
alias irc-terminal='gnome-terminal --window --profile=IRC --hide-menubar'
#alias irc='ssh zone-c.org'
 #alias bigfiles='/home/maroach/Scripts/bigfiles.sh'
 #alias screen='screen-launcher'
alias e='/opt/Sublime\ Text\ 2/sublime_text'
#alias rmbackups='find . -name '*~' -exec rm {} \;'
alias copy='rsync -avh --progress'
alias kp='kp_comma-dot.sh'
alias by='byobu'
alias umountforce='umount -lf'
#alias diff=colordiff

# reload bash aliases
alias aliasreload="source ~/.bashrc"
alias bashrc="source ~/.bashrc"

# virtualenv
alias venva='. venv/bin/activate'
alias venvd='deactivate'

# Nano to Vim
alias nano='vim'

# DOOOM
# alias doom1="chocolate-doom -iwad \"/media/Samsung2TB-2/Games/Retro PC games/Doom.REPACK-TOL/WAD/DOOM.WAD\""
# alias doom2="chocolate-doom -iwad \"/media/Samsung2TB-2/Games/Retro PC games/Doom.REPACK-TOL/WAD/Doom2.wad\""

alias smbstatus='watch smbstatus'

alias myip='curl https://wtfismyip.com/text'

alias menufix='killall slingshot-launcher'
alias sfv='cksfv -f'
#alias ace='acestreamengine --lib-path /opt/acestream_3.0.2_ubuntu_14.04_x86_64/ --client-console'
alias ace='/usr/share/acestream/acestreamengine --client-console'
alias ace_paste='sleep 5 && xdotool type'

alias sol_fetchYml='~/Projects/Solus-packages/common/Scripts/yauto.py'
alias sol_updatePackage='/usr/share/ypkg/yupdate.py'

alias subl-vault='EDITOR="subl --wait --new-window" ansible-vault edit'

alias open='nautilus'
