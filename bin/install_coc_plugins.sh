#/bin/sh

nvim\
    -u ../init.lua\
    -c "\
        CocInstall\
            coc-css\
            coc-flutter\
            coc-html\
            coc-julia\
            coc-json\
            coc-pairs\
            coc-pyright\
            coc-rust-analyzer\
            coc-snippets\
            coc-tsserver\
            coc-vimtex\
        "
          # coc-cl,  # Common Lisp LSP
          # coc-docker\
          # coc-eslint\
          # coc-lua\       -> leads to massive amounts of RAM consumption
          # coc-jedi\
          # coc-prettier\
          # coc-python
          # coc-sourcekit # Swift LSP
