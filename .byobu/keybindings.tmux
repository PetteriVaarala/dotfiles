unbind-key -n C-a
set -g prefix ^A
set -g prefix2 F12
bind a send-prefix

# Swap windows to left/right
bind-key -n M-S-Left swap-window -t -1
bind-key -n M-S-Right swap-window -t +1
bind-key -n S-F3 swap-window -t -1
bind-key -n S-F4 swap-window -t +1
