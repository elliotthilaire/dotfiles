# https://github.com/edc/bass/issues/9

# This may cause a slow down in shell start time.
# https://github.com/fish-shell/fish-shell/issues/2411
# https://github.com/creationix/nvm/issues/703

function nvm
  bass source ~/.nvm/nvm.sh ';' nvm $argv
end
