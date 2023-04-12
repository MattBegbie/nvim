-- lua plugin file
-- plugin bootstrapper

local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

use 'wbthomason/packer.nvim'
    -----------------------------------------------------------------------------
    -- my plugins
    -----------------------------------------------------------------------------

    -- from old config
    use 'preservim/nerdtree'
    use 'dracula/vim'
    use 'navarasu/onedark.nvim'
    use 'ryanoasis/vim-devicons'
    --use 'SirVer/ultisnips'
    use 'honza/vim-snippets'
    -- use 'scrooloose/nerdtree'
    use 'preservim/nerdcommenter'
    use 'mhinz/vim-startify'
    --use 'nvim-tree/nvim-tree.lua'
    --use 'nvim-tree/nvim-web-devicons'
    use {'neoclide/coc.nvim', branch= 'release'} -- completion
    -- use 'Shougo/deoplete.nvim' 
    --from youtube video
    use 'ellisonleao/gruvbox.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'terrortylor/nvim-comment'

    -- personal finds
    use 'lukas-reineke/indent-blankline.nvim'
    

    -- from ThePrimegeon nvim 0-lsp

    -- TELESCOPE
    use {'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
}
-- TREESITTER 
use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
-- use('nvim-treesitter/playground')
use('theprimeagen/harpoon')
use('theprimeagen/refactoring.nvim')
use('mbbill/undotree')
use('tpope/vim-fugitive')
use('nvim-lua/plenary.nvim')
use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
        'williamboman/mason.nvim',
        run = function()
            pcall(vim.cmd, 'MasonUpdate')
        end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
}
    }

    -- use ''
    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

