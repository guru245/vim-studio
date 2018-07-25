# VIM Studio

Can we turn Vim into an IDE? Yes, we can. It works even better and faster than any traditional IDE. Let's see.

![overview](./.imgs/overview.png)

## Features

* File system explorer, browsing directory hierarchies, and performing file system operations

* Source code browser, providing an overview of the structure of the source code

* Statusbar at the bottom, displaying useful information

* Source tab at the top, displaying all opened source via tab interface

  ![tab](./.imgs/tab.gif)

* Git wrapper, working with Git without leaving Vim studio.

* Marker, highlighting several words in different colors simultaneously

  ![maker](./.imgs/mark.png)

* Auto completion, opening a popup menu to complete, using tab

  ![auto completion](./.imgs/autocomp.gif)

* Automatic indexing to search and browse source codes thanks to Gutentags. Without Gutentags, whenever you modify codes, tags must be up-to-date MANUALLY. Yuck!

* [Clang-format](https://clang.llvm.org/docs/ClangFormat.html) integration to format codes with the desired style.

* [Solarized](https://github.com/altercation/solarized) color scheme, improving readability

* For more features, see [.vimrc](./.vimrc)

## Environment

Vim studio is tested on the following conditions. In other conditions, the operations are not defined.

* Ubuntu 18.04 or Fedora 24
* Vim 8.0
* [MobaXterm](https://mobaxterm.mobatek.net/) (I prefer using a ssh client on Windows to a terminal on Linux due to function key mappings)

## Installation

1. Setting terminal

   Set `export TERM=xterm-256color` in .bashrc

2. Install exuberant-ctags and global, e.g `apt install exuberant-ctags global` in Ubuntu

   * Install clang-format if you want. `apt install clang-format-6.0`
   * If you are used to building things from source, [universal-ctags](https://github.com/universal-ctags/ctags) is recommended.

3. Setting Vim config

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

This section describes mapping keys for Vim studio. Note that normal Vim commands and other detailed configurations of [.vimrc](.vimrc) are not explained. If you are not used to the Vim commands or [.vimrc](.vimrc), check out [Vim help](http://vimdoc.sourceforge.net/htmldoc/help.html) or [Vim options](http://vimdoc.sourceforge.net/htmldoc/options.html).

* F1: Show a man page for the keyword under the cursor.
* F2: Save the current file
* F3: Toggle tagbar, source code browser on the left side
* F4: Toggle NERDTree, file system explorer on the right side
* F5: Fold a function body
* F6: Unfold a function body
* F7: Empty
* F8: Clear all marks
* F9: Empty
* F10: Empty
* F11: Step into the function.
* F12: Step out of the function.
* Ctrl+h: Go to a tab on left
* Ctrl+l: Go to a tab on right
* Shift+h, Shift+l, Shift+k, Shift+j:  Move between split windows
* ,w: Save and close the current file. *Well~ we call it buffer in Vim*
* Ctrl+k: Format code style as per clang-format style options
* \<leader>d: Toggle line number
* \<leader>p: Toggle paste option. This is useful if you want to cut or copy some text from one window and paste it in Vim. Don't forget to toggle paste again once you finish pasting.
* \<leader>m: Mark the keyword under the cursor

## Powered by:

* [Vundle.vim](https://github.com/VundleVim/Vundle.vim)
* [Vim-fugitive](https://github.com/tpope/vim-fugitive)
* [Vim-unimpaired](https://github.com/tpope/vim-unimpaired)
* [NERDtree](https://github.com/scrooloose/nerdtree)
* [Tagbar](https://github.com/majutsushi/tagbar)
* [Vim-colors-solarized](https://github.com/altercation/solarized)
* [Vim-airline](https://github.com/vim-airline/vim-airline)
* [Vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
* [Vim-ingo-library](https://github.com/inkarkat/vim-ingo-library)
* [Vim-mark](https://github.com/inkarkat/vim-mark)
* [Clang-format](https://clang.llvm.org/docs/ClangFormat.html)
* [Supertab](https://github.com/ervandew/supertab)
* [vim-gutentags](https://github.com/ludovicchabant/vim-gutentags)
* [gutentags_plus](https://github.com/skywind3000/gutentags_plus)

