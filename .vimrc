"" A minimal vimrc for new vim users to start with.


"" General ""
"""""""""""""

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Sets how many lines of history VIM has to remember
set history=1000

" Set to auto read when a file is changed from the outside
set autoread

" Turn backup off, since most stuff is in git etc. anyway...
set nobackup
set nowb
set noswapfile


"" Tabs & Indent ""
"""""""""""""""""""

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Enable auto indenting
set autoindent

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4


"" Looks ""
"""""""""""

" Enable line numbers
set number

" Set line numbers as grey
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Always show current position
set ruler

" Switch syntax highlighting on
syntax on

" show location of cursor using a horizontal line.
set cursorline

" Height of the command bar
"set cmdheight=2

" Show status line always
set laststatus=2

" Enable 256 colors
set t_Co=256

" Tomorrow Night color theme if available
if filereadable(expand("$HOME/.vim/colors/tomorrow-night.vim"))
	colorscheme tomorrow-night
endif


"" Searching ""
"""""""""""""""

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Show matching brackets when text indicator is over them
set showmatch


"" Plugins ""
""""""""""""""
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'

" Initialize plugin system
call plug#end()

