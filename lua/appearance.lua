-- Line Numbers {{{

    vim.wo.number = true
    vim.wo.relativenumber = true

-- }}}
-- Sign Column {{{

-- Always display sign-column.
vim.cmd([[
    set signcolumn=yes
    highlight clear SignColumn
]])

-- Deactivate display of tilde signs ('~') in sign-column.
vim.cmd([[
    let &fillchars="eob: "
]])

-- }}}
-- Welcome Screen {{{

-- Deactivate display of welcome message.            
vim.cmd([[
    set shortmess+=I
]])

-- }}}
