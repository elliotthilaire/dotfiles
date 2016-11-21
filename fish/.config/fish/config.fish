
# enable autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and . /usr/local/share/autojump/autojump.fish

# rbenv
status --is-interactive; and . (rbenv init -|psub)

# used by tmuxinator
set --export EDITOR vim

# work around to fix executable packages not working
# when installed via yarn
# https://github.com/yarnpkg/yarn/issues/1321
# https://github.com/yarnpkg/yarn/issues/1389
set --export PATH $PATH (yarn global bin)
