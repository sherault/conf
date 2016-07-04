# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="bira"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(git github redis-cli tmux nvm npm grunt brunch colored-man-pages history composer symfony2 behat)

# User configuration

export PATH="$HOME/.composer/vendor/bin/:/opt/local/bin:/opt/local/sbin:$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/opt/local/bin/:/opt/local/lib/mysql55/bin/"

source $ZSH/oh-my-zsh.sh


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

NODE_VERSION=v4.2.2
export PATH="$PATH:$NVM_DIR/$NODE_VERSION/bin"
nvm use 4.2.2 > /dev/null;

alias xdcli='export XDEBUG_CONFIG="idekey=dev remote_host=172.20.11.44 remote_autostart=On remote_connect_back=On" && export PHP_IDE_CONFIG="serverName=Console"'
alias xdclioff='unset XDEBUG_CONFIG'

export EDITOR=emacs

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -la'
alias la='ls -A'
alias l='ls -CF'
alias ag='ack-grep'
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"


# Colors
NoColor="\033[0m"
Cyan="\033[0;36m"
Green="\033[0;32m"
Red="\033[0;31m"
Yellow="\033[0;33m"

