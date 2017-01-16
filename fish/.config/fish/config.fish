set --export EDITOR vim
set --export VISUAL atom

alias rspec="bundle exec rspec $argv"

# autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and . /usr/local/share/autojump/autojump.fish

# rbenv
status --is-interactive; and . (rbenv init -|psub)

# direnv
eval (direnv hook fish)

# work around to fix executable packages not working
# when installed via yarn
# https://github.com/yarnpkg/yarn/issues/1321
# https://github.com/yarnpkg/yarn/issues/1389
set --export PATH $PATH (yarn global bin)
