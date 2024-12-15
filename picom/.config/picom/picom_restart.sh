# #!/bin/bash
#
# if on_ac_power; then
#     # If Picom is not already running, start it
#     if ! pgrep -x "picom" > /dev/null; then
#         /usr/local/bin/picom --config /home/xhunt/dotfiles/picom/.config/picom/picom.conf &
#     fi
# else
#     # If Picom is running, kill it
#     if pgrep -x "picom" > /dev/null; then
#         pkill picom
#     fi
# fi
#
