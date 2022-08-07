filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'

Plug 'w0rp/ale'
let g:ale_linters = {
\ 'sh': ['shellcheck'] ,
\ }
let g:ale_fixers = {
\   'sh': ['shfmt'],
\}
let g:ale_sh_shfmt_options='-i 2' " Indent with N spaces

call plug#end()
