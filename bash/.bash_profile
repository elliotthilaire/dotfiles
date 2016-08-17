
# colours for terminal
export CLICOLOR=1


# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh


# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi



##########
# Change colour theme when sshing
# Inspiration from: https://gist.github.com/porras/5856906
function colorssh() {
  # Change the theme of Terminal.app
  osascript -e "tell application \"Terminal\" to set current settings of front window to settings set \"Homebrew\"";
  # Run the `ssh` command
  ssh $*
  # Change the theme back when the `ssh` is exited
  osascript -e "tell application \"Terminal\" to set current settings of front window to settings set \"Basic\"";
}
alias ssh="colorssh"
##########



source ~/.bashrc
