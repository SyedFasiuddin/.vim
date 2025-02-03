vim9script

# Plugin configuration for `vim-ledger`

if !has('win32')
    var vim_ledger_path = "~/.vim/pack/plugins/start/vim-ledger"
    if !isdirectory(glob(vim_ledger_path))
        echom "Installing vim-ledger..."
        system("git clone --depth=1 "
            .. "https://github.com/ledger/vim-ledger "
            .. vim_ledger_path)
    endif
endif

g:ledger_maxwidth = 80
g:ledger_fillstring = "."
g:ledger_detailed_first = 1
g:ledger_fold_blanks = 1
