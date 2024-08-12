" Enable absolute line numbers
set number

call plug#begin('~/.config/nvim/plugged')
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

