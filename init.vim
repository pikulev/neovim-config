" ~~~~~~~~
" Plugins
" ~~~~~~~~
call plug#begin('~/.local/share/nvim/plugged')

Plug 'crusoexia/vim-monokai'

Plug 'pangloss/vim-javascript'

Plug 'sbdchd/neoformat'

Plug 'w0rp/ale'

Plug 'tpope/vim-surround'

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

" ~~~~~~~~
" Formatters
" ~~~~~~~~
let g:neoformat_enabled_javascript = ['jsbeautify']
let g:neoformat_enabled_json = ['jsbeautify']

let g:neoformat_basic_format_trim = 1
let g:neoformat_basic_format_align = 1
" let g:neoformat_run_all_formatters = 1

" ~~~~~~~~
" Linters
" ~~~~~~~~
let g:ale_linters_explicit = 1
let g:ale_sign_error='~>'
let g:ale_sign_warning='-'

let g:ale_linters = {
\   'javascript': ['eslint'],
\}

