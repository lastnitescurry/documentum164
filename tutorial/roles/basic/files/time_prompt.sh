#https://linoxide.com/how-tos/change-linux-shell-prompt-with-different-colors/

#export PS1="[\\d \\t] \\u@\\h: \\w \\$ "
export PS1="[\e[0;32m\d \t\e[m] \e[0;33m\u@\h\e[m: \w \$ "
