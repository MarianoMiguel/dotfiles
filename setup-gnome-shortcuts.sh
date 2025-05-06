#!/usr/bin/env bash
set -e

# Prepare the center-active-win script
BIN_DIR="$HOME/.local/bin"
SCRIPT_PATH="$BIN_DIR/center-active-win"

mkdir -p "$BIN_DIR"

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

# Get current keybinding list
BASE_KEY="/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings"
EXISTING=$(gsettings get org.gnome.settings-daemon.plugins.media-keys custom-keybindings | sed "s/\]$/,/")

# Clean base key format
function make_entry() {
    echo "'${BASE_KEY}/custom$1/'"
}

# Reset and construct all entries
KEYS=()

# Helper to write individual custom binding
function write_binding() {
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
write_binding $((i++)) "Ulauncher" "ulauncher-toggle" "<Alt>space"

# Super+1 to Super+0
for ws in {0..9}; do
    key=$(( (ws + 1) % 10 ))
    write_binding $((i++)) "Go to workspace ${ws}" "wmctrl -s ${ws}" "<Super>${key}"
done

# Super+Shift+1 to Super+Shift+0
for ws in {0..9}; do
    key=$(( (ws + 1) % 10 ))
    write_binding $((i++)) "Move to workspace ${ws}" "wmctrl -r :ACTIVE: -t ${ws}" "<Super><Shift>${key}"
done

# Super+C (center)
write_binding $((i++)) "Center Active Window" "$SCRIPT_PATH" "<Super>c"

# Write the final full list to gsettings
joined=$(IFS=,; echo "[${KEYS[*]}]")
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "$joined"

echo "✅ GNOME keyboard shortcuts successfully created."

