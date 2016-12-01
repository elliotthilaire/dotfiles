
# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# rbenv
eval "$(rbenv init -)"

# direnv
eval "$(direnv hook bash)"

# yarn
export PATH="$PATH:$(yarn global bin)"
