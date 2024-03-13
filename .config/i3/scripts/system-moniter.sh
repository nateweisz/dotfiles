#!/bin/bash

i3-msg "workspace 10; append_layout /home/nopox/dotfiles/.config/i3/workspaces/workspace-10.json"
sleep 1s
i3-msg 'workspace 10; exec alacritty -e sh -c "/home/nopox/.cargo/bin/netscanner"'
sleep 1s
i3-msg 'workspace 10; exec alacritty -e sh -c "ctop"'
sleep 1s
i3-msg 'workspace 10; exec alacritty -e sh -c "btm"'
