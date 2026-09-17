#!/usr/bin/env bash

# Stop existing Polybar instances
polybar-msg cmd quit >/dev/null 2>&1

# Wait until they are gone
while pgrep -u "$UID" -x polybar >/dev/null; do
    sleep 1
done

# Launch YOUR config
echo "---" | tee -a /tmp/polybar.log
polybar -c "$HOME/.config/polybar/config.ini" bar 2>&1 | tee -a /tmp/polybar.log &

echo "Polybar launched using: $HOME/.config/polybar/config.ini"
