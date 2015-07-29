# A rewrite of https://gist.github.com/elliotthilaire/a9fb215bd3521b1541ee for fish
# Assumes you are running a OSX, using the default Terminal.app, and have Homebrew (for its custom theme) installed.
# Inspiration from: https://gist.github.com/porras/5856906

function colorssh
  # Change the theme of Terminal.app
  osascript -e "tell application \"Terminal\" to set current settings of front window to settings set \"Homebrew\"";
  # Run the `ssh` command
  /usr/bin/ssh $argv
  # Change the theme back when the `ssh` is exited
  osascript -e "tell application \"Terminal\" to set current settings of front window to settings set \"Basic\"";
end

function ssh
  colorssh $argv
end

