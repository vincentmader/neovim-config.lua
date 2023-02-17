vim.cmd([[
    if empty(glob("$XDG_DATA_HOME/nvim/site/pack"))
        !git clone --depth 1 https://github.com/wbthomason/packer.nvim $XDG_DATA_HOME/nvim/site/pack/packer/start/packer.nvim
    endif
]])

return require("packer").startup(function() 
    use "wbthomason/packer.nvim"

    use "tpope/vim-commentary"
    use "tpope/vim-repeat"
    use "tpope/vim-surround"
    use "tpope/vim-fugitive"

    use "lewis6991/gitsigns.nvim"

    use {'neoclide/coc.nvim', branch='release'}

    use { "nvim-telescope/telescope.nvim", 
        requires = {
            "nvim-lua/plenary.nvim"
        }
    }

    use 'lervag/vimtex'

    use 'altercation/vim-colors-solarized'

    use "christoomey/vim-tmux-navigator"

    use 'pocco81/true-zen.nvim'
    use 'folke/twilight.nvim'
end)
