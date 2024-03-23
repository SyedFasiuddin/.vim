if !has("vim9script")
    echoe "ERROR: This config is for vim9+ only"
    finish
endif
vim9script

syntax on
filetype plugin indent on

set noswapfile
set hidden
set backspace=0

set list
set listchars=tab:>-,trail:-

set shiftwidth=4 tabstop=4 softtabstop=4 expandtab
set autoindent smartindent
set colorcolumn=80
