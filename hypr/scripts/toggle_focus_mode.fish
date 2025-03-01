#!/usr/bin/env fish

# File to store the current mode
set STATE_FILE "$HOME/.config/hypr/focus_mode.state"

# Read current state (default: normal mode)
if test -f "$STATE_FILE"
    set MODE (cat "$STATE_FILE")
else
    set MODE "normal"
end

# Get current active workspace
set ACTIVE_WS (hyprctl activeworkspace -j | jq -r .name)

if test "$MODE" = "normal"
    # Enable Focus Mode
    pkill waybar
    set current_workspace (hyprctl activeworkspace -j | jq -r .name)
    hyprctl keyword workspace  "w[tv1], gapsout:0, gapsin:0"
    hyprctl keyword workspace = "f[1], gapsout:0, gapsin:0"
    hyprctl keyword windowrulev2  "bordersize 0, floating:0, onworkspace:w[tv1]"
    hyprctl keyword windowrulev2  "rounding 0, floating:0, onworkspace:w[tv1]"
    hyprctl keyword windowrulev2  "bordersize 0, floating:0, onworkspace:f[1]"
    hyprctl keyword windowrulev2  "rounding 0, floating:0, onworkspace:f[1]"
    hyprctl keyword general "gap_in 0, gap_out 0"
    hyprctl dispatch workspace 69
    hyprctl dispatch workspace $current_workspace
    echo "focus" > "$STATE_FILE"
else
    # Revert to Normal Mode
    rm -rf ~/.config/hypr/focus_mode.state
    hyprctl reload
    hyprctl keyword workspace  "w[tv1], gapsout:10, gapsin:2"
    hyprctl keyword workspace = "f[1], gapsout:10, gapsin:2"
    hyprctl keyword windowrulev2  "bordersize 2, floating:0, onworkspace:w[tv1]"
    hyprctl keyword windowrulev2  "rounding 10, floating:0, onworkspace:w[tv1]"
    hyprctl keyword windowrulev2  "bordersize 2, floating:0, onworkspace:f[1]"
    hyprctl keyword windowrulev2  "rounding 10, floating:0, onworkspace:f[1]"
    waybar
    touch ~/.config/hypr/focus_mode.state
    echo "normal" > "$STATE_FILE"
end
