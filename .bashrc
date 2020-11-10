# Default profile
if [ -f /usr/share/defaults/etc/profile ]; then
    source /usr/share/defaults/etc/profile
fi

# Alias definitions.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Add ~/bin to PATH
#export PATH=$HOME/bin:$PATH

# Go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN:/usr/local/go/bin

# Custom prompt
# Based on default Solus prompt at /usr/share/defaults/etc/profile.d/50-prompt.sh
FG="\[\033[38;5;111m\]"
BG="\[\033[38;5;168m\]"
AT="\[\033[38;5;69m\]"
HCOLOR="\[\033[38;5;61m\]"
PS1="${FG}\u${AT}@${HCOLOR}\H ${BG}\w ${FG}$endchar \[\e[0m\]"
unset FG
unset BG
unset AT
unset HCOLOR
shopt -s checkwinsize

# virtualenvwrapper
if [ -f /usr/bin/virtualenvwrapper.sh ]; then
  source /usr/bin/virtualenvwrapper.sh
fi

# complete -C /home/maroach/bin/nomad nomad

# source /home/maroach/.config/broot/launcher/bash/br
