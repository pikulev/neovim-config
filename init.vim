" ~~~~~~~~
" Plugins
" ~~~~~~~~
call plug#begin('~/.local/share/nvim/plugged')

Plug 'crusoexia/vim-monokai'
Plug 'pangloss/vim-javascript'
call plug#end()

" ~~~~~~~
" Colors
" ~~~~~~~
syntax on
colorscheme monokai
set termguicolors
let g:monokai_term_italic = 1

" ~~~~~~~~
" Keymaps
" ~~~~~~~~
" <leader> key
let mapleader=" "

" quick open $MYVIMRC file
nnoremap <leader>ve :split $MYVIMRC <bar> winc J <cr>
" quick source $MYVIMRC file
nnoremap <leader>vs :source $MYVIMRC<cr>

" -- INSERT -- exit 
inoremap jj <esc>
inoremap <esc> <nop>


