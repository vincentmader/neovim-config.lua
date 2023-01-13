-- Line Numbers {{{

    vim.wo.number = true
    vim.wo.relativenumber = true

-- }}}
-- Sign Column {{{

-- Deactivate display of tilde signs ('~') in SignColumn.
vim.cmd([[
    let &fillchars="eob: "
]])

-- }}}
