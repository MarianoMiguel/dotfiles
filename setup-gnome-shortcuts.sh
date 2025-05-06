#!/usr/bin/env bash
set -e

# Location for custom script
BIN_DIR="$HOME/.local/bin"
SCRIPT_PATH="$BIN_DIR/center-active-win"
mkdir -p "$BIN_DIR"

# Write the center-active-win script
cat << 'EOF' > "$SCRIPT_PATH"
#!/usr/bin/env bash
read scrW scrH <<<"$(xrandr | awk '/\*/{split($1,a,"x");print a[1],a[2]; exit}')"
newW=$(( scrW * 80 / 100 ))
newH=$(( scrH * 80 / 100 ))
posX=$(( (scrW - newW) / 2 ))
posY=$(( (scrH - newH) / 2 ))
wmctrl -r :ACTIVE: -e 0,"$posX","$posY","$newW","$newH"
EOF

chmod +x "$SCRIPT_PATH"

BASE_KEY="/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings"
KEYS=()

make_entry() {
    echo "'${BASE_KEY}/custom$1/'"
}

write_binding() {
    local index=$1
    local name=$2
    local command=$3
    local binding=$4
    local path="${BASE_KEY}/custom${index}/"

    dconf write "${path}name" "'${name}'"
    dconf write "${path}command" "'${command}'"
    dconf write "${path}binding" "'${binding}'"
    KEYS+=("$(make_entry $index)")
}

i=0
# Ulauncher toggle
write_binding $((i++)) "Ulauncher" "ulauncher-toggle" "<Alt>space"

# Alt+1 to Alt+0: Switch to workspace 0–9
for n in {1..9}; do
    ws=$((n - 1))
    write_binding $((i++)) "Go to workspace $ws" "wmctrl -s $ws" "<Alt>${n}"
done
write_binding $((i++)) "Go to workspace 9" "wmctrl -s 9" "<Alt>0"

# Alt+Shift+1 to Alt+Shift+0: Move to workspace 0–9
for n in {1..9}; do
    ws=$((n - 1))
    write_binding $((i++)) "Move to workspace $ws" "wmctrl -r :ACTIVE: -t $ws" "<Alt><Shift>${n}"
done
write_binding $((i++)) "Move to workspace 9" "wmctrl -r :ACTIVE: -t 9" "<Alt><Shift>0"

# Center active window
write_binding $((i++)) "Center Active Window" "$SCRIPT_PATH" "<Alt>c"

# Apply all at once
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "[${KEYS[*]}]"

echo "✅ All GNOME keyboard shortcuts installed with Alt modifier and correct workspace mapping."

