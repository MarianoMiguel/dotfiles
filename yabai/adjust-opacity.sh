#!/bin/bash

direction="$1" # "up" or "down"

# Get the focused window's ID and opacity
window_id=$(yabai -m query --windows --window | jq -r '.id')
current_opacity=$(yabai -m query --windows --window | jq -r '.opacity')

# Default to 1.0 if somehow opacity is null
if [[ "$current_opacity" == "null" ]]; then
	current_opacity=1.0
fi

# Calculate new opacity
if [[ "$direction" == "up" ]]; then
	new_opacity=$(echo "$current_opacity + 0.05" | bc)
elif [[ "$direction" == "down" ]]; then
	new_opacity=$(echo "$current_opacity - 0.05" | bc)
fi

# Clamp the value between 0.0 and 1.0
new_opacity=$(echo "$new_opacity" | awk '{ if ($1 > 1.0) print 1.0; else if ($1 < 0.0) print 0.0; else print $1 }')

# Apply the new opacity
yabai -m window --opacity "$new_opacity"
