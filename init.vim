" ~~~~~~~~
" Plugins
" ~~~~~~~~
call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'sbdchd/neoformat'
Plug 'w0rp/ale'
Plug 'lilydjwg/colorizer' |", { 'do': 'make install' }
Plug 'othree/yajs.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'paretje/nvim-man'
call plug#end()


" ~~~~~~~
" Colors
" ~~~~~~~
syntax on
set termguicolors
colorscheme new_monokai

" ~~~~~~~~
" Keymaps
" ~~~~~~~~
" <leader> key
let mapleader=" "
" quick open $MYVIMRC file
nnoremap <leader><leader>v :vsplit $MYVIMRC <bar> winc L <cr>
" quick source $MYVIMRC file
nnoremap <leader><leader>s :source $MYVIMRC<cr>
" -- INSERT -- exit
inoremap jj <esc>
inoremap <esc> <nop>


" ~~~~~~~~
" Layout & Formatting
" ~~~~~~~~
set number
set list
set lcs=space:·,tab:>-
highlight ExtraWhitespace ctermbg=red guibg=#ee2211 guifg=#eeeeee
match ExtraWhitespace /\s\+$/

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

" Make it depends on the project you are working with via autocmd.
" https://github.com/othree/javascript-libraries-syntax.vim
let g:used_javascript_libs = 'underscore,angularjs,react,vue,jquery'

