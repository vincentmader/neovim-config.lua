-- Quick-Move Lines Up & Down {{{

local expr_opts = { noremap=true, silent=true }

vim.keymap.set('n', "<leader>k", ":m-2<CR>==", expr_opts)
vim.keymap.set('n', "<leader>j", ":m+<CR>==", expr_opts)

-- }}}
