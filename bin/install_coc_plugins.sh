#/bin/sh

nvim\
    -u ../init.lua\
    -c "CocInstall\
        coc-css\
        coc-flutter\
        coc-html\
        coc-julia\
        coc-json\
        coc-lua\
        coc-pairs\
        coc-pyright\
        coc-rust-analyzer\
        coc-snippets\
        coc-vimtex\
    "
        # coc-jedi\
        # coc-prettier\
