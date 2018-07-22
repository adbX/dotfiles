#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar conky

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
while pgrep -u $UID -x conky >/dev/null; do sleep 1; done

polybar main &
conky -d -c $HOME/.config/polybar/conky_wrapper &

echo "Bars launched..."
