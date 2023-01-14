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
-- CommandLine {{{

-- Define function to toggle display of command line.
vim.cmd([[
    let s:hidden_all = 0
    function! ToggleDisplayCommandLine()
        if s:hidden_all  == 0
            let s:hidden_all = 1
            set noshowmode
            set noruler
            set laststatus=0
            set noshowcmd
        else
            let s:hidden_all = 0
            set showmode
            set ruler
            set laststatus=2
            set showcmd
        endif
    endfunction
    
    call ToggleDisplayCommandLine()

    nnoremap <S-h> :call ToggleDisplayCommandLine()<CR>
]])

-- }}}
-- Floating Windows {{{

vim.cmd([[ highlight! link NormalFloat Normal ]])

vim.cmd([[
    function SetupFloatingWindowColors() 
        hi Pmenu ctermfg=0 ctermbg=4

        " Turn all floating windows (with `NormalFloat` highlight group) transparent.
        hi! link NormalFloat Normal
    endfunction

    augroup floating_window_colors
        autocmd!
        autocmd ColorScheme solarized call SetupFloatingWindowColors()
    augroup END
]])

-- }}}
