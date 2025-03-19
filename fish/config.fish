# If not running interactively, don't do anything
if not status --is-interactive
    return
end

# Aliases
alias ls="ls --color=auto"
alias grep="grep --color=auto"

# Prompt (Fish does not support Bash PS1 syntax)
function fish_prompt
    set_color green
    echo -n (whoami)'@'(hostnamectl hostname)' '
    set_color blue
    echo -n (prompt_pwd)
    set_color normal
    echo -n ' $ '
end

# Export PATH
set -gx PATH /usr/lib/ruby/gems/3.3.0/bin $PATH
set -gx PATH $HOME/.local/share/gem/ruby/3.3.0/bin $PATH

# Import colorscheme from 'wal' asynchronously
# function load_colors
# cat ~/.cache/wal/sequences &
# end
# load_colors
#
# # Load Pywal colors for Fish
# if test -f ~/.cache/wal/colors-fish.conf
#     source ~/.cache/wal/colors-fish.conf
# end
# In your ~/.config/fish/config.fish file
if test -x (which starship)
    starship init fish | source
end
set -g fish_greeting ''
eval (zoxide init fish | source)

alias n='nvim'
function bee
    if test (count $argv) -gt 0
        gh copilot $argv
    else
        yay -S
    end
end

set -x XCURSOR_THEME rose-pine-hyprcursor
set -x XCURSOR_SIZE 24

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

set -Ux NPM_CONFIG_PREFIX ~/.npm-global
fish_add_path ~/.npm-global/bin

# Set an ad-hoc GUI timer
function timer
    if test (count $argv) -lt 1
        echo "Usage: timer <time><m|s> [message]"
        return 1
    end

    set -l time_input $argv[1]

    # Extract number and unit
    set -l time_val (string match -r '^[0-9]+' -- $time_input)
    set -l unit (string match -r '[ms]$' -- $time_input)

    # Ensure time_val is a number
    if test -z "$time_val"
        echo "Invalid time format. Use <number>s for seconds or <number>m for minutes."
        return 1
    end

    # Convert time to seconds
    set -l N
    switch $unit
        case m
            set N (math "$time_val * 60")
        case s
            set N $time_val
        case ''
            echo "Specify 'm' for minutes or 's' for seconds."
            return 1
    end

    # Remove the first argument (time) from argv
    set -e argv[1]

    # Set default message if none is provided
    set -l message (string join " " $argv)
    if test -z "$message"
        set message "BING!"
    end

    # Run the timer in the background
    sleep $N
    zenity --info --title="Time's Up" --text="$message" &

    echo "Timer set for $time_val$unit"
end
