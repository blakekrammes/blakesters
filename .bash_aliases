# edit multiple files in vim w/ vert split using just vim
alias vim='vim -O'
# always show color highlights and line numbers, disregard case and whether or not the argument string is a regex for grep commands
alias grep='grep --color=always -niE'
# opening applications
function o {
osascript <<EOF
    tell application "$*" to activate
EOF
}
# quit any named application
function q {
osascript <<EOF
    tell application "$*" to quit
EOF
}
# shutdown and quit iterm
alias down='sudo shutdown -h now; q iterm'
# reboot and quit iterm
alias reboot='sudo shutdown -r now; q iterm'
