local expr_opts = { noremap=true, silent=true }

vim.keymap.set("n", "<leader>va", ":Git add %<CR>", expr_opts)
vim.keymap.set("n", "<leader>vc", ":Git commit<CR>", expr_opts)
vim.keymap.set("n", "<leader>vp", ":Git push<CR>", expr_opts)
