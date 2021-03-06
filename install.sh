#!/bin/bash

# Current dir
CONF=`pwd`

# List of files to add symbolic link
FILES=(
	.gitconfig
	.git_core_excludesfile
	.gitignore
	.mongorc.js
	.npmrc
	.tmux.conf
	.vimrc
	.wgetrc
	.zshrc
	.aliases
)
# Install submodules
git submodule update --init --recursive

# Install wget
if [[ `which wget` ]]; then
    brew install wget
fi

# install fzy
if [[ `which fzy`]]; then
		brew install fzy
fi

# Loop files, remove link/file if already exists, create symlink
for file in ${FILES[@]}; do
	if [[ -e $HOME/$file ]]; then
		rm $HOME/$file
	fi
	ln -s $CONF/$file $HOME/$file
	echo "Link ${file}"
done

# Make bin directory for user
if [[ ! -d $HOME/bin ]]; then
	mkdir $HOME/bin
fi

export PATH=~/bin:$PATH

# Make zsh cache directory 
if [[ ! -d $HOME/.zsh ]]; then
	mkdir $HOME/.zsh
fi


# Create if it doesn't exists, the private_alias
if [[ ! -f $HOME/.private_aliases ]]; then
    touch $HOME/.private_aliases
fi

# Install composer
if [[ `which php` ]] ; then
	if [[ ! -f $HOME/bin/composer ]]; then
		echo 'Install composer'
		curl -sS https://getcomposer.org/installer | php
		mv composer.phar $HOME/bin/composer
	fi
	# Check composer configuration
	if [[ -e $HOME/.composer/composer.json ]]; then
		rm $HOME/.composer/composer.json
		rm $HOME/.composer/composer.lock
	fi
	ln -s $CONF/.composer/composer.json $HOME/.composer/composer.json
	ln -s $CONF/.composer/composer.lock $HOME/.composer/composer.lock
	~/bin/composer global install
fi

# Install NVM and install latest node version, + diff-so-fancy
if [[ ! -d $HOME/.nvm ]]; then
    wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
    nvm install node
    npm install -g diff-so-fancy
    npm install -g fx
fi

if [[ ! -d $HOME/.tmux/plugins/tpm ]]; then
    git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
fi
