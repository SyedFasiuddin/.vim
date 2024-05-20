vim9script

# Cargo project
if filereadable("Cargo.toml")
    set wildignore+=*/target/*
    set wildignore+=*.lock

    g:cargo_makeprg_params = "check"
    compiler cargo

    finish
endif

# Tectonic project
if filereadable("Tectonic.toml")
    set wildignore+=*/build/*

    g:tectonic_v2_interface = 1
    compiler tectonic

    finish
endif
