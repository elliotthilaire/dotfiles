set --export EDITOR vim
set --export VISUAL atom

alias rspec="bundle exec rspec $argv"

# autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and . /usr/local/share/autojump/autojump.fish

# rbenv
status --is-interactive; and source (rbenv init -|psub)

# direnv
eval (direnv hook fish)

# To have access to Yarn’s executables globally
# https://yarnpkg.com/en/docs/install
set --export PATH $PATH (yarn global bin)

# Enable history in IEX through #erlang (OTP 20)
# https://til.hashrocket.com/posts/is9yfvhdnp-enable-history-in-iex
set --export ERL_AFLAGS "-kernel shell_history enabled"
