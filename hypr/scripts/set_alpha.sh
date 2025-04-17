# ~/.config/hypr/scripts/set_alpha.sh
#!/usr/bin/env bash
dir="${1:-inc}" # inc | dec | reset
STEP=0.05       # amount per key‑press
MIN=0.10
MAX=1.00

addr_hex=$(hyprctl activewindow -j | jq -r '.address') || exit 1
addr="address:$addr_hex"

# read the current active alpha (falls back to MAX)
cur=$(hyprctl getprop "$addr" alpha 2>/dev/null | awk '{print $2}')
cur=${cur:-$MAX}

case "$dir" in
inc) new=$(awk -v c=$cur -v s=$STEP -v M=$MAX 'BEGIN{v=c+s; if(v>M) v=M; printf "%.2f",v}') ;;
dec) new=$(awk -v c=$cur -v s=$STEP -v m=$MIN 'BEGIN{v=c-s; if(v<m) v=m; printf "%.2f",v}') ;;
reset) new=$MAX ;;
*)
	echo "Usage: $0 {inc|dec|reset}"
	exit 2
	;;
esac

# keep the active + inactive opacity equal and lock them
hyprctl setprop "$addr" alpha "$new" lock alphainactive "$new" lock
