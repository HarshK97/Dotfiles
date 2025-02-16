#!/bin/bash

# Check if wofi is already running
if pgrep -x "wofi" > /dev/null
then
    # Close wofi if it is running
    pkill wofi
else
    # Open wofi if it is not running
    wofi --show drun &
fi

