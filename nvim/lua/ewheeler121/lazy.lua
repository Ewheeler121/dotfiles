-- This file can be loaded by calling `lua require('plugins')` from your init.vim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },
    {
        'folke/tokyonight.nvim',
        name = 'tokyonight.nvim',
        config = function()
            vim.cmd('colorscheme tokyonight-night')
        end
    },
    { 'Shadorain/shadotheme',
    name = 'shadotheme.nvim',
    config = function()
        vim.cmd('colorscheme shado')
    end
    },
    'nvim-treesitter/nvim-treesitter', build = ':TSUpdate',
    'nvim-treesitter/playground',
    'theprimeagen/harpoon',
    'mbbill/undotree',
    'tpope/vim-fugitive',
    'theprimeagen/vim-be-good',
    "LunarVim/bigfile.nvim",
    {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
        'williamboman/mason.nvim',
        build = function()
            pcall(vim.cmd, 'MasonUpdate')
        end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lua'},
    {'rafamadriz/friendly-snippets'}
}
},
{ 'alexghergh/nvim-tmux-navigation', config = function()
    local nvim_tmux_nav = require('nvim-tmux-navigation')

    nvim_tmux_nav.setup {
        disable_when_zoomed = true -- defaults to false
    }
end
},
'tpope/vim-dadbod',
'kristijanhusak/vim-dadbod-ui',
'kristijanhusak/vim-dadbod-completion'
}

require("lazy").setup(plugins, {})


