#!/bin/bash

if pgrep -x "rofi" > /dev/null; then
    pkill -x "rofi"
else
    rofi -show drun -theme ~/.config/rofi/launchers/type-7/style-8.rasi
fi

