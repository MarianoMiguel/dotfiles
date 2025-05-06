#!/usr/bin/env bash

set -e

# Location for center-active-win
SCRIPT_PATH="$HOME/.local/bin/center-active-win"
mkdir -p "$(dirname "$SCRIPT_PATH")"

# Write the center-active-win script
cat << 'EOF' > "$SCRIPT_PATH"
#!/usr/bin/env bash
# centre-active-win – resize and center active window to 80% screen

read scrW scrH <<<"$(xrandr | awk '/\*/{split($1,a,"x");print a[1],a[2]; exit}')"

newW=$(( scrW * 80 / 100 ))
newH=$(( scrH * 80 / 100 ))

posX=$(( (scrW - newW) / 2 ))
posY=$(( (scrH - newH) / 2 ))

wmctrl -r :ACTIVE: -e 0,"$posX","$posY","$newW","$newH"
EOF

chmod +x "$SCRIPT_PATH"

# Base key path
BASE_PATH="/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings"
KEYS=()

# Function to add a single custom shortcut
add_shortcut() {
    local name="$1"
    local command="$2"
    local binding="$3"
    local index="$4"
    local path="${BASE_PATH}/custom${index}/"

    gsettings set "${path%/}" name "$name"
    gsettings set "${path%/}" command "$command"
    gsettings set "${path%/}" binding "$binding"

    KEYS+=("'$path'")
}

# 1. Ulauncher
add_shortcut "Ulauncher" "ulauncher-toggle" "<Alt>space" 0

# 2. Super+1 to Super+0 (workspace switching)
for i in {0..9}; do
    key=$(( (i + 1) % 10 ))
    add_shortcut "Go to workspace $i" "wmctrl -s $i" "<Super>${key}" $((i + 1))
done

# 3. Super+Shift+1 to Super+Shift+0 (move window to workspace)
for i in {0..9}; do
    key=$(( (i + 1) % 10 ))
    add_shortcut "Move window to workspace $i" "wmctrl -r :ACTIVE: -t $i" "<Super><Shift>${key}" $((i + 11))
done

# 4. Super+C (center active window)
add_shortcut "Center Active Window" "$SCRIPT_PATH" "<Super>c" 21

# Apply all custom keys to gsettings
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybindings "[${KEYS[*]}]"

echo "✅ GNOME custom shortcuts installed successfully."

