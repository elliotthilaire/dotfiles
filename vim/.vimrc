
" --------------------------------------------------------------------------
" Use Vundle for Vim Plugins
" --------------------------------------------------------------------------

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Required, let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" My favourite plugins
Plugin 'tpope/vim-rails'


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

" --------------------------------------------------------------------------
" Vim Config
" --------------------------------------------------------------------------

filetype on
syntax on

set number
set relativenumber


" bits pinched from:
" https://github.com/rtomayko/dotfiles/blob/rtomayko/.vimrc

" --------------------------------------------------------------------------
"   Highlight Trailing Whitespace
" --------------------------------------------------------------------------

set list listchars=trail:.,tab:>.
highlight SpecialKey ctermfg=DarkGray ctermbg=Black

" --------------------------------------------------------------------------
" Visual Cues
" --------------------------------------------------------------------------

set showmatch              " brackets/braces that is
set mat=5                  " duration to show matching brace (1/10 sec)
set incsearch              " do incremental searching
set laststatus=2           " always show the status line
set ignorecase             " ignore case when searching
set nohlsearch             " don't highlight searches
set visualbell             " shut the fuck up

" --------------------------------------------------------------------------
" Disable Arrow Keys
" --------------------------------------------------------------------------

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

