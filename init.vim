" Enable absolute line numbers
set number

" Set a vertical line to indicate 120 characters
set colorcolumn=120

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
Plug 'navarasu/onedark.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'mileszs/ack.vim'
call plug#end()

" Indentation-based folding
set foldmethod=indent
set foldlevel=99

command! -nargs=* -complete=file Rspec !bundle exec rspec <args> 
command! -nargs=* -complete=file Rubocop !bundle exec rubocop <args>

lua << EOF
require('gitsigns').setup()
EOF

set termguicolors
let g:onedark_config = {
    \ 'style': 'warmer',
    \ 'transparent': 'false',
\}
colorscheme onedark
