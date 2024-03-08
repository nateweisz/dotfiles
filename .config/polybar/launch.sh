#!/bin/bash

# Terminate already running bar instances
killall -q polybar
killall -q i3bar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar main &
polybar second &

echo "Polybar launched..."
