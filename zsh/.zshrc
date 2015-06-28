
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

