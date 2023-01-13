vim.cmd([[
    if empty(glob("$XDG_DATA_HOME/nvim/site/pack"))
        !git clone --depth 1 https://github.com/wbthomason/packer.nvim $XDG_DATA_HOME/nvim/site/pack/packer/start/packer.nvim
    endif
]])

return require("packer").startup(function() 
    use "wbthomason/packer.nvim"

    use "tpope/vim-commentary"
end)
