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
HISTSIZE=50000
HISTFILESIZE=50000
# PS0="\e[1 q"
PS1="\[$(tput setaf 6)\]\$(parse_git_branch)\[$(tput setaf 2; tput bold)\]\A \[$(tput setaf 2; tput bold)\]\w: \[$(tput sgr0)\]"

# PROMPT_COMMAND='if [ -n "$OLDPWD" ] && [ "$PWD" != "$OLDPWD" ] && [ "$PWD" != "$(tail -n 1 ~/.bash_historydir 2>/dev/null)" ]; then echo "$PWD" >> ~/.bash_historydir; fi; if [ $? -eq 0 ]; then fc -lnr -1 -1 | sed '\''s/[ \t]*//'\'' >> ~/.bash_history; fi'

# TODO use mktemp to create a session history file basides the global one
# TODO create gofoward and goback funcs to nagivate the session history without alter the history
# TODO bind gofoward and goback funs to keys at .inputrc
# TODO make cdh [-n] func to show the last n unique global dirs of the history
# TODO nagivate through the global history using the alias func

# test
# history_dir="$HOME/.bash_history_dir" # This is the global history of directories

# if [ ! -f "$history_dir" ]; then
#     echo "1 $PWD" > "$history_dir"
# elif [ $(tail -n 1 "$history_dir" | cut -d ' ' -f 2) != $PWD ]; then
#     lastdir_id=$(tail -n 1 "$history_dir" | cut -d ' ' -f 1)
#     newdir_id=$((lastdir_id+1))
#     echo "$newdir_id $PWD" >> "$history_dir"
# fi
  
# if 
#     lastdir=    && [ $PWD != lastdir ] then;
# cd() 
# {
#     builtin cd "$@"
#
#     # if [ $TARGETDIR -gt 1 ]; then
#     #     delete_dir_lines
#     # fi
#
#     # if [ -n "$OLDPWD" ] && [ "$PWD" != "$OLDPWD" ] && [ "$PWD" != "$(tail -n 1 ~/.bash_historydir 2>/dev/null)" ]; then 
#     #     echo "$PWD" >> ~/.bash_historydir
#     # fi
#     # TARGETDIR=1
#     if [ ! -f "$history_dir" ]; then
#         echo "1 $PWD" > "$history_dir"
#     fi
#
#     if [ $(tail -n 1 "$history_dir" | cut -d ' ' -f 2) != $PWD ]; then
#         lastdir_id=$(tail -n 1 "$history_dir" | cut -d ' ' -f 1)
#         newdir_id=$((lastdir_id+1))
#         echo "$newdir_id $PWD" >> "$history_dir"
#     fi
#     # current_dir_id=$(tail -n 1 "$HOME/.bash_historydir" | cut -d ' ' -f 1)
#     # new_dir_entry=$((current_dir_id+1))
#     # echo "$new_dir_entry $PWD" >> $HOME/.bash_historydir
# }

# delete_dir_lines()
# {
#   #!/bin/bash
#
#     file="$HOME/.bash_historydir"
#     lines_to_remove=5
#
#     # Count the total number of lines in the file
#     total_lines=$(wc -l < "$file")
#
#     # Calculate the starting line number to keep
#     start_line=$((total_lines - TARGETDIR + 1))
#
#     # Use sed to remove lines from start_line to the end of the file
#     sed -i "${start_line},\$d" "$file"
#
# }
# goforward()
# {
# }

# goback()
# {
#     TARGETDIR=$((TARGETDIR+1))
#     builtin cd "$(tail -n "$TARGETDIR" ~/.bash_historydir | head -n 1)"
# }


### Options ###

shopt -s checkwinsize
shopt -s globstar

### Aliases ###


# if ls --color -d . >/dev/null 2>&1; then  # GNU ls
#   export COLUMNS  # Remember columns for subprocesses.
#   eval "$(dircolors)"
#   function ls {
#     command ls -F -h --color=always -v --author --time-style=long-iso -C "$@" | less -R -X -F
#   }
#   alias ll='ls -l'
#   alias l='ls -l -a'
#   alias lh='ls -lhFd .[^.]*'
# fi

