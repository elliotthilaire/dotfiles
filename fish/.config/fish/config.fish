set --export EDITOR vim
set --export VISUAL atom

# autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and . /usr/local/share/autojump/autojump.fish

# rbenv
status --is-interactive; and . (rbenv init -|psub)

# direnv
eval (direnv hook fish)

# yarn
set --export PATH $PATH (yarn global bin)
