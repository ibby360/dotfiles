#
# ~/.bashrc
#

# Emoji prompt
# function success_indicator() {
#     if [ $? -eq 0 ] ; then
#         echo "😎"
#     else
#         echo "💩"
#     fi
# }
# export PS1='\[\033[1;31m\]\u@\h:\W\$ \[\033[37m\]$(success_indicator)'

###########################

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences
####################################################

# Enable programmable completion features.
if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi

###################################################
export PATH="/home/ibby/.local/bin:$PATH"

####################################################

if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

# colorize man pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
export LESSHISTFILE=-

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias ls='ls --color=auto'
alias ip='ip --color=auto'
alias pacman='pacman --color=auto'

PS1='\[\033[1;31m\]\u@\h:\W\$ \[\033[37m\]'
#PS1=" \[\033[01;36m\]\w >\[\033[34m\]>\[\033[00m\] "

# enable terminal linewrap
setterm -linewrap on

#############################################
export PATH="/home/ibby/.local/bin:$PATH"

##############################################

export SPOTIPY_CLIENT_ID='4d523c31fee14c5eb7f3fb283ee0d79e'
export SPOTIPY_CLIENT_SECRET='ebeffa3252244131a467f209540d1dde'

alias config='/usr/bin/git --git-dir=/home/ibby/dotfiles/ --work-tree=/home/ibby'

export PATH="$PATH:$HOME/.npm/bin"


# Android
export ANDROID_SDK_ROOT='/opt/android-sdk'
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools/
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin/
export PATH=$PATH:$ANDROID_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/
PATH=$ANDROID_SDK_ROOT/emulator:$PATH


# Java
export JAVA_HOME='/usr/lib/jvm/java-8-openjdk'
export PATH=$JAVA_HOME/bin:$PATH

#export JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions --add-modules java.se.ee'

