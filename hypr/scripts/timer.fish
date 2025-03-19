#!/usr/bin/fish

function timer
    if test (count $argv) -lt 1
        notify-send "Timer Error" "Usage: <time><m|s> [message]"
        exit 1
    end

    set time_input $argv[1]
    set message (string join " " $argv[2..-1])

    # Extract time and unit
    set time_val (string match -r '^[0-9]+' -- $time_input)
    set unit (string match -r '[ms]$' -- $time_input)

    if test -z "$time_val"
        notify-send "Timer Error" "Invalid time format. Use e.g., '10s' or '5m'."
        exit 1
    end

    # Convert to seconds
    set -l N
    switch "$unit"
        case m
            set N (math "$time_val * 60")
        case s
            set N $time_val
        case '*'
            notify-send "Timer Error" "Specify 'm' for minutes or 's' for seconds."
            exit 1
    end

    notify-send "Timer Started" "Timer set for $time_val$unit: $message"
    # Background process to run the timer
    sleep $N && zenity --info --title="Time's Up" --text="$message" &

end

# Get input via GUI dialog
set input (zenity --entry --title="Set Timer" --text="Enter duration and message (e.g., '10s Cook pasta')")

if test -z "$input"
    exit 0
end

# Split input into time and message
set parts (string split -m1 " " -- "$input")
set time_input $parts[1]
set message $parts[2..-1]

# Start the timer
timer $time_input $message
