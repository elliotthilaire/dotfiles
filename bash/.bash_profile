# Enable colours for terminal
export CLICOLOR=1

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Enable autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Open sublime in current directory
alias sublime="~/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl ./"

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
alias ssh="colorssh"#
##########

# Add android tools to path (adb, etc.)
export PATH=$PATH:~/Library/Android/sdk/platform-tools
