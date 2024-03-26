vim9script

# Plugin configuration for `vim-markdown`

var vim_markdown_path = "~/.vim/pack/plugins/start/vim-markdown"
if !isdirectory(glob(vim_markdown_path))
    echom "Installing vim-markdown..."
    system("git clone --depth=1 "
        .. "https://github.com/preservim/vim-markdown "
        .. vim_markdown_path)
endif

g:vim_markdown_frontmatter = 1
g:vim_markdown_folding_disabled = 1
g:vim_markdown_new_list_item_indent = 2

# Built in markdown

g:markdown_folding = 1
