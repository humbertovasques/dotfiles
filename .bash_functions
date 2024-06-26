#!/bin/bash

echo() {
    if [ $# -eq 1 ] && [ $1 = "$PATH" ]; then
        builtin echo "$PATH" | sed 's/:/\n/g'
    else
        builtin echo "$@"
    fi
}

# Volume control
vol()
{
    if [ $# -eq 0   ]; then
        pactl get-sink-volume @DEFAULT_SINK@
    elif [ $1 = "mute" ]; then
        pactl set-sink-mute @DEFAULT_SINK@ toggle
    else
        pactl set-sink-volume @DEFAULT_SINK@ "$1%"
    fi
}

# https://unix.stackexchange.com/questions/84445/is-there-a-way-to-cd-back-multiple-times-in-bash
a() { alias $1="cd $PWD"; }
