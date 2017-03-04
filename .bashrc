#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls --color=auto -al'
alias cal3='cal -n 3'
alias xcp='xclip -selection clipboard'
alias libido='luit -encoding big5 telnet libido.cx'
# PS1='[\u@\h \W]\n\$ '
PS1='[\u@\h \W]\$ '

export VISUAL="vim"
export EDITOR="vim"

if [ -d $HOME/bin ]; then
  export PATH=$PATH:$HOME/bin
fi

rg() {
    if [ -z "$RANGER_LEVEL" ]
    then
        ranger
    else
        exit
    fi
}

eval $(thefuck --alias)
fortune | cowthink

# vte fix for terminix
if [ $TERMINIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  POWERLINE_REPO=$(pip show powerline-status | egrep Location | awk '{print $2}')/powerline
  . $POWERLINE_REPO/bindings/bash/powerline.sh
fi
