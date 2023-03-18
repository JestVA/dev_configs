# Conversation with Yuki

- `curl`: A tool for transferring data with URL syntax.
- `wget`: A network utility to retrieve files from the web.
- `htop`: An interactive process viewer for Unix systems.
- `git`: A popular version control system.
- `vim` or `nano`: Terminal-based text editors.
- `tmux`: A terminal multiplexer that allows you to manage multiple terminal sessions.
- `gnupg`: A complete implementation of the OpenPGP standard, which helps you manage cryptographic protocols.
- `ack` or `ag` (the_silver_searcher): Tools for fast code searching and navigation.
- `tree`: A utility that displays directory contents in a tree-like format.
- `ncdu`: A disk usage analyzer with an ncurses interface.
- `git`: A popular version control system for tracking changes in source code during software development.
- `fd`: A simple, fast, and user-friendly alternative to the `find` command.
- `fzf`: A general-purpose command-line fuzzy finder that helps you quickly search and navigate through files and directories.
- `tig`: A text-mode interface for Git that allows you to browse and manage your Git repositories more easily.

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
