local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require("lazy").setup({
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'},
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
})
