#/bin/sh

nvim\
    -u ../init.lua\
    -c "CocInstall\
        coc-css\
        coc-flutter\
        coc-html\
        coc-julia\
        coc-json\
        coc-pairs\
        coc-pyright\
        coc-rust-analyzer\
        coc-snippets\
        coc-vimtex\
    "
        # coc-lua\       -> leads to massive amounts of RAM consumption
        # coc-jedi\
        # coc-prettier\
