#
# ~/.bash_profile
#

if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.cargo/bin" ]; then
    PATH="$HOME/.cargo/bin:$PATH"
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc

export JAVA_HOME="/usr/lib/jvm/`archlinux-java get`"

exec Hyprland
# startx
