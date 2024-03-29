-- Leader Keys {{{

vim.g.mapleader = ' '
vim.cmd([[
    let maplocalleader ="\<tab>"
]])

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
-- Cursor {{{

-- Restore last cursor position & marks on open.
vim.cmd([[
    au BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit'
      \ |   exe "normal! g`\""
      \ | endif
]])

-- }}}
-- NeoVim Command History {{{

vim.opt.history = 1000

-- }}}
-- Undo History {{{

vim.cmd([[set undodir=$XDG_DATA_HOME/nvim/backups]])
vim.opt.undolevels = 1000
vim.opt.undoreload = 1000
vim.opt.undofile = true

-- }}}
-- Intra-File Search {{{

-- Make search case-insensitive, ...
vim.opt.ignorecase = true

-- ...except if capital letters are entered explicitly.
vim.opt.smartcase = true

-- Define colors for search highlighting.
vim.cmd([[
    function SetupSearchColors() 
        hi Search ctermbg=white ctermfg=2
    endfunction

    augroup search_colors
        autocmd!
        autocmd ColorScheme solarized call SetupSearchColors()
    augroup END
]])

-- Define mapping for `<leader>/` to deactivate search highlighting.
vim.cmd([[ nnoremap <leader>/ :nohlsearch<CR> ]])

-- }}}
-- Backup {{{

vim.opt.backup = false
vim.opt.writebackup = false

-- }}}
-- Update Time {{{

vim.opt.updatetime = 300

-- }}}
-- Define keymap for executing currently opened file. {{{

vim.keymap.set('n', "<leader>o", ":wa | !([ -x % ] || chmod +x %) & ./%<CR>", {desc = "Execute file"})

-- }}}

vim.cmd([[
    autocmd BufEnter *.tera :set filetype=html
]])
