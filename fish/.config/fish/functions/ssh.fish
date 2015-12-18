# A rewrite of https://gist.github.com/elliotthilaire/a9fb215bd3521b1541ee for fish
# Assumes you are running a OSX, using the default Terminal.app, and have Homebrew (for its custom theme) installed.
# Inspiration from: https://gist.github.com/porras/5856906
# and https://gist.github.com/bjeavons/6bb767c3619d8c6fa38e

function colorssh
  # Change the theme of Terminal.app

  switch (echo $TERM_PROGRAM)
  case Apple_Terminal
    osascript -e "tell application \"Terminal\" to set current settings of front window to settings set \"Homebrew\"";
  case iTerm.app
    osascript ~/.config/fish/functions/on-ssh-bgcolor
  end

  # Run the `ssh` command
  /usr/bin/ssh $argv
  # Change the theme back when the `ssh` is exited

  switch (echo $TERM_PROGRAM)
  case Apple_Terminal
    osascript -e "tell application \"Terminal\" to set current settings of front window to settings set \"Basic\"";
  case iTerm.app
    osascript ~/.config/fish/functions/original-bgcolor
  end
end

function ssh
  colorssh $argv
end

