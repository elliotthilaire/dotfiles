
# enable autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and . /usr/local/share/autojump/autojump.fish

# https://gist.github.com/eggegg/6077153
# Load the default rubies
if test -z $rvm_bin_path
  exec bash --login -c "exec fish" ^&1
end

# used by tmuxinator
set --export EDITOR vim
