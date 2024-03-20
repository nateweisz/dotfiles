#!/bin/bash

i3-msg "workspace 10; append_layout /home/nopox/.config/i3/workspaces/workspace-10.json"
sleep 0.25s
i3-msg 'workspace 10; exec alacritty -e sh -c "/home/nopox/.cargo/bin/netscanner"'
sleep 0.25s
i3-msg 'workspace 10; exec alacritty -e sh -c "ctop"'
sleep 0.25s
i3-msg 'workspace 10; exec alacritty -e sh -c "btm"'
sleep 0.25s
i3-msg "workspace 7; append_layout /home/nopox/.config/i3/workspaces/workspace-7.json"
sleep 0.25s
i3-msg 'workspace 7; exec alacritty -e sh -c "/home/nopox/.cargo/bin/russ read -d /home/nopox/.config/russ/feeds.db"'
sleep 0.25s
