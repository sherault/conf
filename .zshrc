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

nvm use --delete-prefix --silent v12.14.1 > /dev/null;

export NODE_BIN=${HOME}/.nvm/versions/node/`nvm current`/bin
export PATH=$NODE_BIN:$PATH
export EDITOR=vim

# Colors
NoColor="\033[0m"
Cyan="\033[0;36m"
Green="\033[0;32m"
Red="\033[0;31m"
Yellow="\033[0;33m"

source $CONF/antigen/antigen.zsh

antigen bundle robbyrussell/oh-my-zsh lib/

# antigen theme denysdovhan/spaceship-prompt

antigen theme romkatv/powerlevel10k

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
antigen bundle gulp
antigen bundle kubernetes
antigen bundle kubectl
antigen bundle history
## Conf for history bundle
# DB file path
export ZSH_HISTORY_FILE="$HOME/.zsh_history.db"
# CLI selector
export ZSH_HISTORY_FILTER="fzy:fzf:peco:percol"

# History per directory
export ZSH_HISTORY_KEYBIND_GET_BY_DIR="^r"
# All histories
export ZSH_HISTORY_KEYBIND_GET_ALL="^r^a"

# Run any SQLs on original selector I/F (with screen)
export ZSH_HISTORY_KEYBIND_SCREEN="^r^r"

# substring
export ZSH_HISTORY_KEYBIND_ARROW_UP="^p"
export ZSH_HISTORY_KEYBIND_ARROW_DOWN="^n"

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

antigen bundle zpm-zsh/autoenv
antigen bundle TamCore/autoupdate-oh-my-zsh-plugins
antigen bundle MichaelAquilina/zsh-you-should-use
antigen bundle zdharma/history-search-multi-word

antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen apply

source $HOME/.aliases
source $HOME/.private_aliases

# GPG TTY
export GPG_TTY=$(tty)

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export KUBECONFIG=$HOME/.kube/kubeconfig

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
