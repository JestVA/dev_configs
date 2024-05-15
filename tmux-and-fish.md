
# fishy stuff
nano ~/.config/fish/config.fish

```
function fish_prompt
    set_color $fish_color_host
    echo -n (whoami)'@'(hostname)
    set_color normal
    echo -n ' '
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color normal
    echo -n ' 🍣>'
end
```

restart fish `source ~/.config/fish/config.fish`


# make fish default shell by starting with bash

1. Add fish to available list of shells
`echo "/usr/bin/fish" | sudo tee -a /etc/shells`

change shell to fish `chsh -s /usr/bin/fish`

`nano ~/.bashrc` then


```
# Launch Fish shell if it's installed
if [ -x /usr/bin/fish ]; then
  exec /usr/bin/fish
fi
```


# Installing fonts
`sudo apt install fonts-firacode`



# tmux config file

First, to make select text copy incantation:
`sudo apt-get install xclip` then
`nano ~/.tmux.conf`

```
# Enable mouse support
set -g mouse on

# Configure mouse dragging for windows
# Switch window by dragging the status bar
bind-key -n MouseDrag1Status swap-window -t=

# For xclip
setw -g mode-keys vi
bind-key -T copy-mode-vi MouseDragEnd1Pane send-keys -X copy-pipe "xclip -i -f -selection clipboard"
```
