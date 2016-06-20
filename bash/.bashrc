
### Ruby Version Manager
#PATH=$PATH:$HOME/.rvm/bin

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

### Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


### Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
