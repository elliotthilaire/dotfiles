#!/bin/bash

# Install command line tools for Xcode

xcode-select --install

# Install [Homebrew](http://homebrew.io/)

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update

brew bundle

brew cleanup

# Resources
#. https://mattstauffer.co/blog/setting-up-a-new-os-x-development-machine-part-2-global-package-managers
#. https://github.com/Homebrew/homebrew/issues/32952#issuecomment-62545876
