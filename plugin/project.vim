" Maintainer:   Syed Fasiuddin <syed.fasiuddin@icloud.com>
" License:      Vim License

" If a file represents a project then detect it and set common configuration
" options for that project type. This script is written in vim8 so that it can
" be used in both vim and neovim.

" Cargo project
if filereadable("Cargo.toml")
    set wildignore+=*/target/*
    set wildignore+=*.lock

    let g:cargo_makeprg_params = "check"
    compiler! cargo

    finish
endif

" Tectonic project
" Needs the `tectonic` compiler script which doesn't come with vim/nvim
" See:  <https://github.com/SyedFasiuddin/.dotfiles.git>
if filereadable("Tectonic.toml")
    set wildignore+=*/build/*

    let g:tectonic_v2_interface = 1
    compiler! tectonic

    finish
endif

" Maven project
if filereadable("pom.xml")
    set wildignore+=*/target/*
    set wildignore+=*/.settings/*
    set wildignore+=*/.idea/*
    set wildignore+=.classpath
    set wildignore+=.project

    finish
endif

" NodeJS project
if filereadable("package.json")
    set wildignore+=*/node_modules/*
    set wildignore+=*/out/*
    set wildignore+=*/dist/*
    set wildignore+=*.lock

    finish
endif
