-- Imports & Definitions {{{

local telescope = require('telescope')
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

local expr_opts = { noremap = true, silent = true }

-- }}}
-- Telescope Setup {{{

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ['<C-J>'] = actions.move_selection_next,
                ['<C-K>'] = actions.move_selection_previous,
                ['<C-H>'] = actions.select_horizontal,
                ['<C-V>'] = actions.select_vertical,
                ['<C-T>'] = actions.select_tab,
            }
        },
    },
})

-- }}}
-- Key Mappings {{{

-- List all built-in pickers, and run them on `<cr>`.
vim.keymap.set('n', '<leader>fa', builtin.builtin, expr_opts)

-- List open buffers in current neovim instance.
vim.keymap.set('n', '<leader>fb', builtin.buffers, expr_opts)

-- List recently opened files.
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, expr_opts)

-- List files in present working directory.
vim.keymap.set('n', '<leader>ff', builtin.find_files, expr_opts)

-- List output of `git ls-files` command.
vim.keymap.set('n', '<leader>fg', builtin.git_files, expr_opts)

-- Search for a string in `$(pwd)` and get results live as you type.
vim.keymap.set('n', '<leader>fs', builtin.live_grep, expr_opts)

-- List git commits with diff preview:
-- 1. Checkout action with `<cr>`.
-- 2. Reset mixed with `<C-r>m`.
-- 3. Reset soft with `<C-r>s`.
-- 4. Reset hard with `<C-r>h`.
vim.keymap.set('n', '<leader>fc', builtin.git_commits, expr_opts)

-- List manpage entries, opens them in a help window on <cr>.
vim.keymap.set('n', '<leader>fm', builtin.man_pages, expr_opts)

-- }}}
