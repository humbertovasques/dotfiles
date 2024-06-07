# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Sources
. ~/.profile

### Variables ###
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export EDITOR=vim
HISTSIZE=5000
HISTFILESIZE=50000
PS1="\[$(tput setaf 6)\]\$(parse_git_branch)\[$(tput setaf 2; tput bold)\]\A \[$(tput setaf 2; tput bold)\]\w: \[$(tput sgr0)\]"
#export MANPAGER="sh -c 'col -bx | bat -l man -p'"
#export MANROFFOPT="-c"
PROMPT_COMMAND='if [ $? -eq 0 ]; then fc -lnr -1 -1 | sed '\''s/[ \t]*//'\'' >> ~/.bash_history;  fi'

#set vi-cmd-mode-string "\1\e[1 q\2"
#set vi-ins-mode-string "\1\e[5 q\2"

### Options ###
shopt -s checkwinsize
shopt -s globstar

### Aliases ###
alias ls='ls --color=auto'
alias l='ls -alhF'
alias fls='la | fzf'
alias lh='ls -lhFd .[^.]*'

#alias cat='bat'
alias df='df -h'
alias du='du -h'
# alias vim='nvim'
alias grep='grep --color=auto'
#alias rm='trash'

alias bctl='bluetoothctl'
alias c-q20='bctl power on && bctl connect C0:EA:C3:19:86:C0'
alias d-q20='bctl disconnect C0:EA:C3:19:86:C0'
alias vol='pactl set-sink-volume @DEFAULT_SINK@'
alias btc='bctl power on && bctl agent on && bctl default-agent && bctl connect $(bctl devices | awk '\''{print $3, $2}'\'' | fzf | awk '\''{print $2}'\'')'

alias ips="ip a | grep 'inet ' | awk '{print \$2}' | fzf | tr -d '\n' | xclip -sel clip"
alias fpac='pacman -Sl | fzf -m --preview "echo {} | awk '\''{print \$2}'\'' | xargs pacman -Si" --preview-window=wrap'
alias fpacl='pacman -Q | fzf -m --preview "echo {} | awk '\''{print \$1}'\'' | xargs pacman -Qi" --preview-window=wrap'

alias fyay='yay -Sl | fzf -m --preview "echo {} | awk '\''{print \$2}'\'' | xargs yay -Si" --preview-window=wrap'
alias fyayl='pacman -Qm | fzf -m --preview "echo {} | awk '\''{print \$1}'\'' | xargs yay -Qi" --preview-window=wrap'

alias nvim-kickstart='NVIM_APPNAME="nvim-kickstart" nvim'
alias nvim-tutorial='NVIM_APPNAME="nvim-tutorial" nvim'

alias frm='rm -iv "$(find . -maxdepth 1 -mindepth 1 | fzf)"'
alias fh='history | fzf | column -tdN number,command -l 2 -H number | wl-copy -n'
alias mime='xdg-mime query filetype .viminfo'

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#neofetch
