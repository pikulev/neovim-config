" ~~~~~~~~
" Plugins
" ~~~~~~~~
call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-surround'

Plug 'sbdchd/neoformat'

Plug 'w0rp/ale'

Plug 'lilydjwg/colorizer' |", { 'do': 'make install' }

Plug 'pangloss/vim-javascript'

Plug 'cakebaker/scss-syntax.vim'

call plug#end()

" ~~~~~~~
" Colors
" ~~~~~~~
syntax on
set termguicolors
" based on https://github.com/crusoexia/vim-monokai
colorscheme monokai
let g:monokai_term_italic = 1

" ~~~~~~~~
" Keymaps
" ~~~~~~~~
" <leader> key
let mapleader=" "

" quick open $MYVIMRC file
nnoremap <leader><leader>v :split $MYVIMRC <bar> winc J <cr>
" quick source $MYVIMRC file
nnoremap <leader><leader>s :source $MYVIMRC<cr>

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
let g:ale_sign_error='E'
let g:ale_sign_warning='W'

let g:ale_linters = {
\   'javascript': ['eslint'],
\}

