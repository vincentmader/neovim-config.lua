vim.cmd([[
    if empty(glob("$XDG_DATA_HOME/nvim/site/pack"))
        !git clone --depth 1 https://github.com/wbthomason/packer.nvim $XDG_DATA_HOME/nvim/site/pack/packer/start/packer.nvim
    endif
]])

return require("packer").startup(function() 
    use "wbthomason/packer.nvim"

    use "tpope/vim-commentary"

    -- use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use { "nvim-telescope/telescope.nvim", 
        requires = {
            "nvim-lua/plenary.nvim"
        }
    }

    use "christoomey/vim-tmux-navigator"
end)
