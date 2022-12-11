set nocompatible              " be iMproved, required 
filetype off                  " required
syntax on 
set number
set cursorline
" Set shift width to 4 spaces.
set shiftwidth=4
" Set tab width to 4 columns.
set tabstop=4
" Use space characters instead of tabs.
set expandtab
" Do not save backup files.
set nobackup
" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap
" While searching though a file incrementally highlight matching characters as you type.
set incsearch
" Ignore capital letters during search.
set ignorecase
" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase
" Show partial command you type in the last line of the screen.
set showcmd
" Show the mode you are on the last line.
set showmode
" Show matching words during a search.
set showmatch
" Use highlighting when doing a search.
set hlsearch
" Set the commands to save in history default number is 20.
set history=1000
" set the runtime path to include Vundle and initialize 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Add your plugins 
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
autocmd vimenter * ++nested colorscheme gruvbox
let g:airline_powerline_fonts = 1
