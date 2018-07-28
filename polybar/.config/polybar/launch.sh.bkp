#!/bin/bash
exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>log.out 2>&1
# Terminate already running bar instances
killall -q polybar conky

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
while pgrep -u $UID -x conky >/dev/null; do sleep 1; done

polybar main &
conky -d -c $HOME/.config/polybar/conky_wrapper &

echo "Bars launched..."
