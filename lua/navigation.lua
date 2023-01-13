-- Use `jk` To Quick-Exit Insert Mode & Save File {{{

vim.keymap.set("i", "jk", "<esc>:w<cr>", expr_opts)

-- }}}
-- Window Splits {{{

vim.opt.splitbelow = true
vim.opt.splitright = true

-- }}}
