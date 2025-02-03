vim9script

# Plugin configuration for `gruvbox`

if !has('win32')
    var gruvbox_path = "~/.vim/pack/plugins/start/gruvbox"
    if !isdirectory(glob(gruvbox_path))
        echom "Installing gruvbox..."
        system("git clone --depth=1 "
            .. "https://github.com/morhetz/gruvbox "
            .. gruvbox_path)
    endif
endif

g:gruvbox_contrast_dark = "hard"
g:gruvbox_italic = "1"

set termguicolors
set background=dark
colorscheme gruvbox

# Setting g:gruvbox_transparent_bg = "1"  doesn't work for some reason
hi Normal ctermbg=NONE guibg=NONE
