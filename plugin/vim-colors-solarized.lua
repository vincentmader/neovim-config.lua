-- Color Scheme Definition {{{

vim.cmd([[
    colorscheme solarized
]])

-- }}}
-- Background {{{

-- Reassure transparency of editor background.
vim.cmd([[ highlight Normal ctermbg=None ]])

-- Reassure transparency of line number column.
vim.cmd([[ highlight LineNr ctermbg=None ]])

-- Reassure transparency of sign column.
vim.cmd([[ highlight clear SignColumn ]])

-- }}}
