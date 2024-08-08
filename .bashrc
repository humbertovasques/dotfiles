# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Sources
. ~/dotfiles/.bash_functions
. ~/dotfiles/.bash_alias

### Variables ###
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export EDITOR=nvim
export MANPAGER='nvim +Man!'
export GRIM_DEFAULT_DIR="$HOME/Images/Screenshots/"
export XDG_PICTURES_DIR="$HOME/Images/"
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none
  --color=bg+:#283457 \
  --color=bg:#16161e \
  --color=border:#27a1b9 \
  --color=fg:#c0caf5 \
  --color=gutter:#16161e \
  --color=header:#ff9e64 \
  --color=hl+:#2ac3de \
  --color=hl:#2ac3de \
  --color=info:#545c7e \
  --color=marker:#ff007c \
  --color=pointer:#ff007c \
  --color=prompt:#2ac3de \
  --color=query:#c0caf5:regular \
  --color=scrollbar:#27a1b9 \
  --color=separator:#ff9e64 \
  --color=spinner:#ff007c \
"
HISTSIZE=50000
HISTFILESIZE=50000

PS1="\[$(tput setaf 6)\]\$(parse_git_branch)\[$(tput setaf 2; tput bold)\]\A@\u \[$(tput setaf 2; tput bold)\]\w: \[$(tput sgr0)\]\n> "

# PROMPT_COMMAND='if [ -n "$OLDPWD" ] && [ "$PWD" != "$OLDPWD" ] && [ "$PWD" != "$(tail -n 1 ~/.bash_historydir 2>/dev/null)" ]; then echo "$PWD" >> ~/.bash_historydir; fi; if [ $? -eq 0 ]; then fc -lnr -1 -1 | sed '\''s/[ \t]*//'\'' >> ~/.bash_history; fi'

### Options ###

shopt -s checkwinsize
shopt -s globstar

### Aliases ###

eval "$(zoxide init bash)"

