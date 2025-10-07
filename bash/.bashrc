# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Set up fzf key bindings and fuzzy completion
source /usr/share/fzf/shell/key-bindings.bash

eval "$(starship init bash)"

# User specific aliases and functions
alias vim='nvim'
export EDITOR="nvim"
export VISUAL="$EDITOR"


source /home/michiel/vcpkg/scripts/vcpkg_completion.bash
. "$HOME/.cargo/env"

# Alacritty not used currently
# source /home/michiel/src/alacritty/extra/completions/alacritty.bash

alias ll='ls -latrh --color --group-directories-first'
alias la='ls -ah --color --group-directories-first'
alias lt='ls -latrh --color --group-directories-first'
