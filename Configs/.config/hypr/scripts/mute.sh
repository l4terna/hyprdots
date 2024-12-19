#!/bin/bash

scrDir=$HOME/.local/share/bin

if pamixer --default-source --get-mute | grep -q "true"; then
    play ~/.config/hypr/sounds/unmute.wav &>/dev/null &
else
    play ~/.config/hypr/sounds/mute.wav &>/dev/null &
fi

"$scrDir/volumecontrol.sh" -i m


