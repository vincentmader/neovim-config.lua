vim.cmd([[
    if empty(glob("$XDG_DATA_HOME/nvim/site/pack"))
        !git clone --depth 1 https://github.com/wbthomason/packer.nvim $XDG_DATA_HOME/nvim/site/pack/packer/start/packer.nvim
    endif
]])

return require("packer").startup(function() 
    -- Add `packer` package manager.
    use "wbthomason/packer.nvim"

    -- Add `coc.nvim` completion engine plugin.
    use {'neoclide/coc.nvim', branch='release'}

    -- Add `telescope.nvim` fuzzy finder plugin.
    use { "nvim-telescope/telescope.nvim", 
        requires = {
            "nvim-lua/plenary.nvim"
        }
    }

    -- Add `vimtex` plugin for faster writing of LaTeX markup code.
    use 'lervag/vimtex'

    -- Add `solarized` colorscheme.
    use 'altercation/vim-colors-solarized'

    -- Add plugin relatex to `tmux` terminal multiplexer.
    use "christoomey/vim-tmux-navigator"
    use 'wellle/tmux-complete.vim'

    -- Add plugins needed for minimal editor.
    use 'pocco81/true-zen.nvim'
    use 'folke/twilight.nvim'

    -- Add `undotree` plugin to visualize undo-history in navigable tree.
    use 'mbbill/undotree'

    use "tpope/vim-commentary"
    use "tpope/vim-repeat"
    use "tpope/vim-surround"
    use "tpope/vim-fugitive"

    use "lewis6991/gitsigns.nvim"

end)
