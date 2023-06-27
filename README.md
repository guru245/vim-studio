# VIM Studio

Can we turn Vim into an IDE? Yes, we can. It works even better and faster than
any traditional IDE. Let's dive right in.

![overview](./.imgs/overview.png)

## Features

* File system explorer browses directory hierarchies, and performs file system
  operations

* Source code browser provides an overview of the structure of the source code

* Statusbar at the bottom displays useful information

* Source tab at the top displays all opened source via tab interface

  ![tab](./.imgs/tab.gif)

* Git wrapper works with Git without leaving Vim studio.

* Marker highlights several words in different colors.

  ![maker](./.imgs/mark.png)

* Auto completion opens a popup menu to complete using tab

  ![auto completion](./.imgs/autocomp.gif)

* Automatic index searches and browses source code thanks to Gutentags.
  Without Gutentags, whenever you modify code, tags must be up-to-date
  MANUALLY. Yuck!

* [Clang-format](https://clang.llvm.org/docs/ClangFormat.html) integration
  formats code with the desired style.

* Vim-airline shows you nice glyphs.

  ![auto completion](./.imgs/airline_demo.gif)

* For more features, see [.vimrc](./.vimrc)

## Environment

Vim studio has been tested on the following environments:

* Ubuntu 18.04 or above, Fedora 24, and WSL2
* Vim 8.0+
* [Windows Terminal](https://docs.microsoft.com/en-us/windows/terminal/get-started)

## Installation

1. Set up the terminal

   Set `export TERM=xterm-256color` in .bashrc

2. Install exuberant-ctags and global.

   * `apt install exuberant-ctags global`
   * If you are used to building things from source,
     [universal-ctags](https://github.com/universal-ctags/ctags) is recommended
     instead of exuberant-ctags because exuberant-ctags is very old and is not
     maintained.

3. Install clang-format if you want. `apt install clang-format`

4. Install [Cascadia Code](https://docs.microsoft.com/en-us/windows/terminal/cascadia-code)
fonts for glyphs.

   * Set the font by default to your terminal. For your reference, see
   [Windows Terminal Powerline Setup | Microsoft Docs](https://docs.microsoft.com/en-us/windows/terminal/tutorials/powerline-setup)

5. Set up Vim config

   ```bash
   git clone --depth 1 --recurse-submodules https://github.com/guru245/vim-studio.git [vim-studio where you want]
   ln -s [vim-studio]/.vim ~/.vim
   ln -s [vim-studio]/.vimrc ~/.vimrc
   vim +PluginInstall +qall
   ```

## Usage

This section describes mapping keys for Vim studio. Note that normal Vim
commands and other detailed configurations of [.vimrc](.vimrc) are not
explained. If you are not familiar with the Vim commands or [.vimrc](.vimrc),
check out [Vim help](http://vimdoc.sourceforge.net/htmldoc/help.html) or
[Vim options](http://vimdoc.sourceforge.net/htmldoc/options.html).

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
* `ctrl+h`, `ctrl+l`: Go to the tab on the left/right
* `shift+h`, `shift+l`, `shift+k`, `shift+j`:  Move between split windows
* `,w`: Save and close the current file. *Well~ we call it buffer in Vim*
* `ctrl+k`: Format code style as per clang-format style options
* `<leader>d`: Toggle line number
* `<leader>p`: Toggle paste option. This is useful if you want to cut or copy
  some text from one window and paste it in Vim. Don't forget to toggle paste
  again once you finish pasting.
* `<leader>m`: Mark the keyword under the cursor

To perform cscope searching, use `:GscopeFind {querytype} {name}`. Where
`{querytype}` corresponds to the actual cscope line interface numbers as
well as default nvi commands:

```
0 or s: Find this symbol
1 or g: Find this definition
2 or d: Find functions called by this function
3 or c: Find functions calling this function
4 or t: Find this text string
6 or e: Find this egrep pattern
7 or f: Find this file
8 or i: Find files #including this file
9 or a: Find places where this symbol is assigned a value
```

Or you can use the following keymaps:

| keymap | desc |
|--------|------|
| `<leader>cs` | Find symbol (reference) under cursor |
| `<leader>cg` | Find symbol definition under cursor |
| `<leader>cd` | Functions called by this function |
| `<leader>cc` | Functions calling this function |
| `<leader>ct` | Find text string under cursor |
| `<leader>ce` | Find egrep pattern under cursor |
| `<leader>cf` | Find file name under cursor |
| `<leader>ci` | Find files #including the file name under cursor |
| `<leader>ca` | Find places where current symbol is assigned |
| `<leader>cz` | Find current word in ctags database |


## Powered by:

* [Vundle.vim](https://github.com/VundleVim/Vundle.vim)
* [Vim-fugitive](https://github.com/tpope/vim-fugitive)
* [Vim-unimpaired](https://github.com/tpope/vim-unimpaired)
* [NERDtree](https://github.com/scrooloose/nerdtree)
* [Tagbar](https://github.com/majutsushi/tagbar)
* [Vim-airline](https://github.com/vim-airline/vim-airline)
* [Vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
* [Vim-ingo-library](https://github.com/inkarkat/vim-ingo-library)
* [Vim-mark](https://github.com/inkarkat/vim-mark)
* [Clang-format](https://clang.llvm.org/docs/ClangFormat.html)
* [Supertab](https://github.com/ervandew/supertab)
* [Vim-gutentags](https://github.com/ludovicchabant/vim-gutentags)
* [Gutentags_plus](https://github.com/skywind3000/gutentags_plus)

