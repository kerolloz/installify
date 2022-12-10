set nocompatible              " be iMproved, required 
filetype off                  " required

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
