# VIM Studio

![overview](./.imgs/overview.png)

## Features

* File system explorer, browsing directory hierarchies, and performing file system operations

* Source code browser, providing an overview of the structure of the source code

* Statusbar at the bottom, displaying useful information

* Source tab, displaying all opened source via tab interface

  ![tab](./.imgs/tab.gif)

* Git wrapper, working with Git without leaving Vim studio.

* Marker, highlighting several words in different colors simultaneously

  ![maker](./.imgs/mark.png)

* Auto completion, opening popup menu for completion

  ![auto completion](./.imgs/autocomp.gif)

* For more features, see [.vimrc](./.vimrc)

## Environments

Vim studio is tested on the following conditions. For other conditions, the operations are not defined.

* Ubuntu 18.04 or Fedora 27
* Vim 8.0
* [MobaXterm](https://mobaxterm.mobatek.net/) (I prefer using a ssh client on Windows to a terminal on Linux due to function key mappings)
* clang-format 6.0 (Optional)

## Installation

1. Setting terminal

   Set `export TERM=xterm-256color` in .bashrc

2. Setting Vim config

   ```bash
   git clone --depth 1 https://github.com/guru245/vim-studio.git [vim-studio where you want]
   ln -s [vim-studio]/.vim ~/.vim
   ln -s [vim-studio]/.vimrc ~/.vimrc
   git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
   vim +PluginInstall +qall
   ```

   Although you encounter the following error message, continue without any bother. The error won't happen once Vim is set correctly.

   ```bash
   Error detected while processing /home/guru245/.vimrc: line  275:
   E185: Cannot find color scheme 'solarized'
   Press ENTER or type command to continue
   ```

## Usage


