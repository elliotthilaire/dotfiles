
# enable autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and . /usr/local/share/autojump/autojump.fish

# rbenv
status --is-interactive; and . (rbenv init -|psub)

# used by tmuxinator
set --export EDITOR vim
