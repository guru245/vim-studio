# VIM Studio

What if we can turn Vim into an IDE? Yes, we can. It works even better and faster than any traditional IDE. Tada!

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

* [Clang-format](https://clang.llvm.org/docs/ClangFormat.html) integration

* [Solarized](https://github.com/altercation/solarized) color scheme, improving readability

* For more features, see [.vimrc](./.vimrc)

## Environment

Vim studio is tested on the following conditions. In other conditions, the operations are not defined.

* Ubuntu 18.04 or Fedora 27
* Vim 8.0
* [MobaXterm](https://mobaxterm.mobatek.net/) (I prefer using a ssh client on Windows to a terminal on Linux due to function key mappings)
* Exuberant ctags and cscope
* [clang-format](https://clang.llvm.org/docs/ClangFormat.html) 6.0 (Optional)

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

This section describes mapping keys for Vim studio. Note that normal Vim commands and other detailed configurations are not explained. If you are not used to the commands or [.vimrc](.vimrc), you may as well do your homework.

* \<F1>: Show a man page for the keyword under the cursor.
* \<F2>: Save the current file
* \<F3>: Toggle tagbar, source code browser on the left side
* \<F4>: Toggle NERDTree, file system explorer
* \<F5>: Empty
* \<F6>: Empty
* \<F7>: Fold a function body
* \<F8>: Clear all marks
* \<F9>: Empty
* \<F10>: Empty 
* \<F11>: Step into the function. (Codes must be indexed by ctags and cscope)
* \<F12>: Step out of the function. (Codes must be indexed by ctags and cscope)
* <Ctrl+h>: Go to a tab on left
* <Ctrl+l>: Go to a tab on right
* <,w>: Close the current file. (Well~ we call it buffer in Vim)
* <Ctrl+k>: Format code style as per clang-format style options
* <\d>: Toggle line number
* <\p>: Toggle paste option. This is useful if you want to cut or copy some text from one window and paste it in Vim. Don't forget to toggle paste again once you finish pasting.

## Powered by:

* [Vundle.vim](https://github.com/VundleVim/Vundle.vim)
* [Vim-fugitive](https://github.com/tpope/vim-fugitive)
* [NERDtree](https://github.com/scrooloose/nerdtree)
* [Tagbar](https://github.com/majutsushi/tagbar)
* [Minibufexpl](https://github.com/fholgado/minibufexpl.vim)
* [Vim-colors-solarized](https://github.com/altercation/solarized)
* [Vim-airline](https://github.com/vim-airline/vim-airline)
* [Vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
* [Vim-ingo-library](https://github.com/inkarkat/vim-ingo-library)
* [Vim-mark](https://github.com/inkarkat/vim-mark)
* [AutoComplPop](https://github.com/vim-scripts/AutoComplPop)
* [Cscope_macros](https://github.com/vim-scripts/cscope_macros.vim/blob/master/plugin/cscope_macros.vim)

