HOME=$(echo $HOME | sed 's:/*$::')
CONF=${HOME}/conf

export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

export CONF=$CONF

export ZSH_CACHE_DIR=${HOME}/.zsh

# User configuration
export PATH="$HOME/bin:$HOME/bin/sonar-scanner/bin:$HOME/.composer/vendor/bin/:/opt/local/bin:/opt/local/sbin:$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/local/bin/"

export NVM_DIR=${HOME}/.nvm
[ -s "${NVM_DIR}/nvm.sh" ] && . "${NVM_DIR}/nvm.sh"  # This loads nvm

nvm use --delete-prefix --silent node > /dev/null;

export NODE_BIN=${HOME}/.nvm/versions/node/`nvm current`/bin
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

antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

antigen use oh-my-zsh

antigen bundle git
antigen bundle github
antigen bundle gitignore
antigen bundle docker
antigen bundle docker-compose
antigen bundle go
antigen bundle golang
antigen bundle symfony2
antigen bundle composer
antigen bundle redis-cli
antigen bundle tmux
antigen bundle nvm
antigen bundle node
antigen bundle npm
antigen bundle grunt
antigen bundle brunch
antigen bundle history
antigen bundle z
antigen bundle behat
antigen bundle colored-man-pages
antigen bundle colorize
antigen bundle cp
antigen bundle helm
antigen bundle kubectl
antigen bundle minikube
antigen bundle terraform
antigen bundle brew
antigen bundle iterm2
antigen bundle zsh_reload
antigen bundle gpg-agent

antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen apply

source $HOME/.aliases
source $HOME/.private_aliases

# GPG TTY
GPG_TTY=$(tty)
export GPG_TTY

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
