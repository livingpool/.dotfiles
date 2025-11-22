# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export TERM=xterm-256color

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias vim='vim -c "syntax on"'

# Define colors
USER_COLOR='\[\033[38;2;34;139;34m\]'
HOST_COLOR='\[\033[38;2;34;139;34m\]'
DIR_COLOR='\[\033[38;2;70;130;180m\]'
RESET_COLOR='\[\033[0m\]'     # Reset to default terminal color

# Bash Prompt Configuration
PS1="${USER_COLOR}\u@${HOST_COLOR}\h${RESET_COLOR}: ${DIR_COLOR}\w ${RESET_COLOR}\$ "

# Customize prompt with rosy colors
# PS1="${SOFT_ORANGE}\u@${LIGHT_ORANGE}\h${ROSE}: ${CYAN}\w${RESET} ${LIGHTPINK}$(curl -s ifconfig.me) ${RESET}$ "
