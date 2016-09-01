#!/bin/bash

BUNDLE_DIR=~/.vim/bundle
AUTOLOAD_DIR=~/.vim/autoload

echo Copying .vimrc to home directory
cp .vimrc ~/.vimrc

#
# INSTALL PATHOGEN
#
echo Installing Pathogen
[ ! -d $AUTOLOAD_DIR ] && mkdir -p $AUTOLOAD_DIR
[ ! -d $BUNDLE_DIR ] && mkdir -p $BUNDLE_DIR
[ ! -f $AUTOLOAD_DIR/pathogen.vim ] && curl -LSso $AUTOLOAD_DIR/pathogen.vim https://tpo.pe/pathogen.vim

#
# INSTALL PLUGINS
#
echo Installing plugins
cd $BUNDLE_DIR

# Sensible.vim
echo Installing sensible.vim
[ ! -d $BUNDLE_DIR/vim-sensible ] && git clone git://github.com/tpope/vim-sensible.git

# Nerdtree
echo Installing nerdtree
[ ! -d $BUNDLE_DIR/nerdtree ] && git clone https://github.com/scrooloose/nerdtree.git

# Ctrlp
echo Installing ctrlp
[ ! -d $BUNDLE_DIR/ctrlp.vim ] && git clone https://github.com/ctrlpvim/ctrlp.vim.git

# Solarized theme
echo Installing solarized theme
[ ! -d $BUNDLE_DIR/vim-colors-solarized ] && git clone https://github.com/altercation/vim-colors-solarized.git

# Complete
echo Vim setup complete
