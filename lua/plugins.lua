-- This file can be loaded with `lua require('plugins')` in your init.vim

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Syntax Highlighting                  
    use { 'nvim-treesitter/nvim-treesitter',  run = ':TSUpdate' }                                       

    -- File Explorer
    use { 'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons', },
        tag = 'nightly',
    }

    -- Advanced Status Line                                                
    use 'nvim-lualine/lualine.nvim'                                        

    -- Color Themes
    use 'sainnhe/everforest'
    use 'sainnhe/gruvbox-material'
    use 'mhartington/oceanic-next'
    use 'morhetz/gruvbox'
end)
