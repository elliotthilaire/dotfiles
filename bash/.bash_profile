
# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Enable autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Open sublime in current directory
alias sublime="~/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl ./"

# Load bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Install applications into /Applications instead of ~/Applications
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Enable thefuck. To autocorrect bad commands.
alias fuck='eval $(thefuck $(fc -ln -1)); history -r'
alias oopsies='fuck'


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

# Add android tools to path (adb, etc.)
export PATH=$PATH:~/Library/Android/sdk/platform-tools

# Load in the git branch prompt script.

# Reset
Color_Off="\[\033[0m\]"       # Text Reset

# Regular Colors
Black="\[\033[0;30m\]"        # Black
Red="\[\033[0;31m\]"          # Red
Green="\[\033[0;32m\]"        # Green
Yellow="\[\033[0;33m\]"       # Yellow
Blue="\[\033[0;34m\]"         # Blue
Purple="\[\033[0;35m\]"       # Purple
Cyan="\[\033[0;36m\]"         # Cyan
White="\[\033[0;37m\]"        # White

BBlack="\[\033[1;30m\]"       # Black
BRed="\[\033[1;31m\]"         # Red
BGreen="\[\033[1;32m\]"       # Green
BYellow="\[\033[1;33m\]"      # Yellow
BBlue="\[\033[1;34m\]"        # Blue
BPurple="\[\033[1;35m\]"      # Purple
BCyan="\[\033[1;36m\]"        # Cyan
BWhite="\[\033[1;37m\]"       # White

# Enable colours for terminal
export CLICOLOR=1

# Use custom prompt
#PS1="\[$Blue\]\u\[$Yellow\]\[$Yellow\]\w\[\033[m\]\[$Purple\]\$(__git_ps1)\[$Black\]\$ "
#PS1="\[$Blue\]\u\[$Yellow\]\[$Yellow\]\w\[\033[m\]\[$Purple\]\$(__git_ps1)\[$Black\]\$ "

#PS1="\h:\W \u\$"
#PS1="(__git_ps1)\n\h:\W \u\$ "
#PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

PS1='$(__git_ps1)\n\h:\W \u\$ '

