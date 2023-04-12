
silent! source $VIMRUNTIME/defaults.vim

filetype on
filetype plugin on
" filetype indent on  " filetype based indentation

syntax on
set nowrap
set number
"set tabstop=4

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

set autoindent

set clipboard=unnamed

nnoremap <Leader>y "+y
xnoremap <Leader>y "+y
nnoremap <Leader>d "+d
xnoremap <Leader>d "+d


nnoremap <esc> :noh<return><esc>

