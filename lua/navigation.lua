-- Use `jk` To Quick-Exit Insert Mode & Save File {{{

vim.keymap.set("i", "jk", "<esc>:w<cr>", expr_opts)

-- }}}
-- Window Splits {{{

vim.opt.splitbelow = true
vim.opt.splitright = true

-- }}}
-- Buffers {{{

-- Switch between buffers (and use buffers, not tabs).
vim.keymap.set('n', 'gn', ':bn<CR>', expr_opts)
vim.keymap.set('n', 'gp', ':bp<CR>', expr_opts)

-- }}}
