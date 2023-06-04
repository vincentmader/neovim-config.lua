-- Users of packer.nvim have reported that when using treesitter 
-- for folds, they sometimes receive an error "No folds found", 
-- or that treesitter highlighting does not apply. 
-- A workaround for this is to set the folding options in an autocmd:
vim.cmd([[
    function FoldConfig()
    	set foldmethod=expr
    	set foldexpr=nvim_treesitter#foldexpr()
    endfunction
    
    autocmd BufAdd,BufEnter,BufNew,BufNewFile,BufWinEnter * :call FoldConfig()
]])
