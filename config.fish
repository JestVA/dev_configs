# Utility env variables
set -gx PATH $PATH /home/devfrend/scripts
set -gx DORI $HOME

# General aliases
alias vi="nvim"
alias vim="nvim"
alias ls="ls -1a --color=always"
alias c="clear"
alias ..="cd .."
alias down="cd ~/Downloads"
alias desk="cd ~/Desktop"
alias vsh="nvim ~/.config/fish/config.fish && source ~/.config/fish/config.fish"
# Git aliases
alias gs="git status"
alias gd="git diff"
alias glog="git log --oneline --graph --all --decorate"
# Utility aliases
alias top="htop"
alias syslog="tail -f /var/log/syslog"
alias kernlog="tail -f /var/log/kern.log"
alias untar="tar -xvf"
alias untargz="tar -xzvf"
alias unzip="unzip"
# Docker aliases
alias dps="docker ps"

function fish_prompt
    echo -n '~🌯🍣$ '
end
