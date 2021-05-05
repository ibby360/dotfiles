#------------------------- Vim  ---------------------------
alias vi="vim"

#------------------------- pyhton virtual env  ------------
#------------------------ Django --------------------------
 alias activate-env="source env/bin/activate"
 alias runserver="python manage.py runserver"
 alias makemigrations="python manage.py makemigrations"
 alias py-migrate="python manage.py migrate"
 alias livereload="python manage.py livereload"
#------------------------- dirs ---------------------------

alias ..="cd .."
alias tools="cd /home/ibby/Tools && ls"
alias cls="clear"

#------------------------- system ---------------------------

 alias hibernate="sudo systemctl hibernate"
 alias log-out="gnome-session-quit"

#------------------------- Xampp ---------------------------

alias xampp="cd /opt/lampp/ && sudo ./xampp start"
alias xampp-stop="cd /opt/lampp/ && sudo ./xampp  stop"
alias mysql-local="cd /opt/lampp/bin/ && ./mysql -u localhost -p"

#------------------------- nmcli ---------------------------

alias connect="nmcli dev conn ttyUSB2"
alias disconnect="nmcli dev disco ttyUSB2"
alias status-modem="nmcli dev status"

#------------------------- git-bare ---------------------------

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

#------------------------- git-logs ---------------------------

glog() {
    setterm -linewrap off

    git --no-pager log --all --color=always --graph --abbrev-commit --decorate \
        --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' | \
        sed -E \
            -e 's/\|(\x1b\[[0-9;]*m)+\\(\x1b\[[0-9;]*m)+ /├\1─╮\2/' \
            -e 's/(\x1b\[[0-9;]+m)\|\x1b\[m\1\/\x1b\[m /\1├─╯\x1b\[m/' \
            -e 's/\|(\x1b\[[0-9;]*m)+\\(\x1b\[[0-9;]*m)+/├\1╮\2/' \
            -e 's/(\x1b\[[0-9;]+m)\|\x1b\[m\1\/\x1b\[m/\1├╯\x1b\[m/' \
            -e 's/╮(\x1b\[[0-9;]*m)+\\/╮\1╰╮/' \
            -e 's/╯(\x1b\[[0-9;]*m)+\//╯\1╭╯/' \
            -e 's/(\||\\)\x1b\[m   (\x1b\[[0-9;]*m)/╰╮\2/' \
            -e 's/(\x1b\[[0-9;]*m)\\/\1╮/g' \
            -e 's/(\x1b\[[0-9;]*m)\//\1╯/g' \
            -e 's/^\*|(\x1b\[m )\*/\1⎬/g' \
            -e 's/(\x1b\[[0-9;]*m)\|/\1│/g' \
        | command less -r +'/[^/]HEAD'

    setterm -linewrap on
}

