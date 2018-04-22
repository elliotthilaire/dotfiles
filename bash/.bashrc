
# bash-completion
[ -f /usr/local/etc/bash_completion ] && source /usr/local/etc/bash_completion

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && source /usr/local/etc/profile.d/autojump.sh

# asdf
[ -f /usr/local/opt/asdf/asdf.sh ] && source /usr/local/opt/asdf/asdf.sh

# direnv
eval "$(direnv hook bash)"

# yarn
export PATH="$PATH:$(yarn global bin)"
