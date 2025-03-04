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

