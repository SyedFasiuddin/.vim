if !has("vim9script")
    echoe "ERROR: This config is for vim9+ only"
    finish
endif
vim9script

filetype plugin indent on
syntax on

set noswapfile
set hidden
set backspace=0

set list
set listchars=tab:>-,trail:-

set shiftwidth=4 tabstop=4 softtabstop=4 expandtab
set autoindent smartindent

set wildmenu
set wildoptions=pum
set pumheight=8

set viminfofile=~/.vim/main.viminfo
set path=.,,**,
set modelines=5         # reset to default (set to 0 by system vimrc)
