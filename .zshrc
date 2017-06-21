CONF=$HOME/conf

export LC_CTYPE=en_US.UTF-8

export CONF=$CONF

export ZSH_CACHE_DIR=$HOME/.zsh

# User configuration
export PATH="$HOME/bin:$HOME/.composer/vendor/bin/:/opt/local/bin:/opt/local/sbin:$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/local/bin/"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

nvm use node > /dev/null;

export NODE_BIN=$HOME/.nvm/versions/node/`nvm current`/bin
export PATH=$NODE_BIN:$PATH
export EDITOR=emacs

# Colors
NoColor="\033[0m"
Cyan="\033[0;36m"
Green="\033[0;32m"
Red="\033[0;31m"
Yellow="\033[0;33m"

source $CONF/antigen/antigen.zsh

antigen bundle robbyrussell/oh-my-zsh lib/

antigen theme bira

antigen use oh-my-zsh

antigen bundle git
antigen bundle docker
antigen bundle github
antigen bundle go
antigen bundle symfony2
antigen bundle redis-cli
antigen bundle tmux
antigen bundle nvm
antigen bundle npm
antigen bundle grunt
antigen bundle brunch
antigen bundle history
antigen bundle z
antigen bundle behat
antigen bundle colored-man-pages
antigen bundle composer
antigen bundle colorize
antigen bundle cp

antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen apply

source $HOME/.aliases
source $HOME/.private_aliases

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
