scripte utf-8
" vim: set fenc=utf-8 tw=0:

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Revert all command settings before proceeding with other settings below
set all&

" Work in Vim compatible not Vi compatible
set nocompatible

" Keep 50 commands and 50 search patterns in the history.
"  50 is undo limit.
set history=100

" Better not try to understand this. Leave this when using Vim.
set magic

" No swap file. It's messy.
set noswapfile

" No backup file. You take your risk on your own.
set nobackup

" Turn on plugin and indent, depending on file type
filetype plugin indent on

" Wait for a key code forever.
" Wait for a mapped key sequence to complete within ttimeoutlen.
set notimeout ttimeout

" In Milliseconds
set timeoutlen=3000 ttimeoutlen=100

" Not redraw while executing macros, and commands.
set lazyredraw


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tell Vim to delete the white space at the start of the line, a line break
"  and the character before where Insert mode started.
set backspace=indent,eol,start

" Display the current cursor position in the lower right corner of the
"  Vim window
set ruler

" Display an incomplete vim command in the lower right corner of the Vim window
set showcmd

" Display line numbers
set nu

" Set line number width
set numberwidth=5

" Do not wrap lines
set nowrap

" Move the cursor to the first non-blank of the line when Vim
"  move commands are used.
set startofline

" Turn on syntax highlighting
syntax on

" Whatever floats in your boat
set background=dark
"set background=light

" Delete trailing spaces at eol when a file is saved.
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()

" Locate the cursor in the last position when Vim is closed
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "norm g`\"" |
\ endif

" Set 100 column guideline
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%100v.\+/


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab & Indent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set tab size
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Use spaces instead of tabs
set expandtab

" Work for C-like programs, but can also be used for other languages
set smartindent

" Copy indent from current line when starting a new line. This should be
"  on when smartindent is used.
set autoindent

" Set indent for switch statement in C. Just my cup of tea.
set cinoptions=:0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Encoding and Format
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Determine the 'fileencoding' of a file being opened.
set fileencodings=utf-8,cp949,cp932,euc-kr,shift-jis,big5,ucs-2le,latin1

" Represent data in memory
set encoding=utf-8

" Use only unix fileformat. "dos" can be added like "unix, dos"
"  if you are a coward.
set fileformats=unix


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight all matches
set hlsearch

" Not search wrap around the end of a file
set nowrapscan

" Ignore case in search patterns
set ignorecase

" Override ignorecase option if the search pattern contains an uppercase
"  character.
set smartcase

" Show where the pattern matches as it was typed so far.
set incsearch

" Jump to one to the other using %. Various character can be added.
set matchpairs+=<:>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show the man page when you press F1
func! Man()
    let sm = expand("<cword>")
    exe "!man -S 2:3:4:5:6:7:8:9:tcl:n:1:p:o ".sm
endfunc
map <F1> :call Man()<cr><cr>

" Save
map <F2> :w!<cr>

" Show a sidebar listing defines, variables, and functions
map <F3> :TagbarToggle<cr>

" Show a sidebar listing file system in tree view
map <F4> :NERDTreeToggle<cr>

" Show MiniBufExpl at the bottom. You can navigate each buffer by pressing
" ctrl+h or ctrl+l and close by ctrl+w
"map <F6> :MBEToggleAll<cr>
map <C-h> :MBEbp<cr>
map <C-l> :MBEbn<cr>
map ,w :w<cr> :MBEbd<cr>

" No longer use this ever since using MiniBufExpl; however, leave here
"  just in case.
map <C-n> :tabnew<cr>
"map <C-h> gT
"map <C-l> gt

" Fold a function body from brace to brace.
map <F7> v]}zf
"map <F7> zo

" Clear all markers
map <F8> :MarkClear<cr> :noh<cr>
"map <F8> [i
"Map <F9> gd

" Step into the function.
func! Tj()
    let st = expand("<cword>")
    exe "tj ".st
endfunc
map <F11> :call Tj()<cr>

" Step out of the function.
map <F12> <c-T>

" Format source codes by clang-format. To use this clang-format must be
"  installed.
map <C-K> :py3f ~/.vim/clang-format.py<cr>
imap <C-K> <c-o>:py3f ~/.vim/clang-format.py<cr>

" Move source codes by tab size. Tab is right move and Shift+tab is left.
vmap <Tab> >gv
vmap <S-Tab> <gv


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Convenience Features
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggle line number display
fu! ToggleNu()
    let &nu = 1 - &nu
endf
map \d :call ToggleNu()<CR>

" Toggle paste option
"  This is useful if you want to cut or copy some text from one window
"  and paste it in Vim. Don't forget to toggle pate again once you're done
"  with pasting.
fu! TogglePaste()
    let &paste = 1 - &paste
endf
map \p :call TogglePaste()<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Plugin Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Load plugins when starting up
set loadplugins

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'inkarkat/vim-mark'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'cscope_macros.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Ease my eyes
colorscheme solarized

" Set tab position and width
let g:tagbar_left = 1
let g:tagbar_width = 30

" Set NERDTree position
let g:NERDTreeWinPos='right'

" Set airline
let g:airline_theme='dark'
"let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tagbar#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_section_error  = ''
let g:airline_section_warning = ''

" Set MiniBufExpl
let g:miniBufExplAutoStart = 0
let g:miniBufExplHideWhenDiff = 1
let g:miniBufExplBuffersNeeded = 1
let g:miniBufExplBRSplit = 1
let g:miniBufExplShowBufNumbers = 0
let g:miniBufExplCycleArround = 1
