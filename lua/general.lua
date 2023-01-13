-- Leader Keys {{{

vim.g.mapleader = ' '

-- }}}
-- Clipboard for Copy & Paste {{{

vim.cmd([[
    if has("clipboard")
        set clipboard=unnamed
        if has("unnamedplus")  " -> X11 support
            set clipboard+=unnamedplus
        endif
    endif
]])

-- }}}
-- Shared Data & Swap Files {{{

vim.cmd([[set viminfo+=n~/.local/share/nvim/shada/main.shada]])                                            
vim.opt.swapfile = false

-- }}}
-- Tabs {{{

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- }}}
