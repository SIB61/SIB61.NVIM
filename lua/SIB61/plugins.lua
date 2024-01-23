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
  "windwp/nvim-ts-autotag",
  "nvim-lualine/lualine.nvim",    --status bar
  "simrat39/rust-tools.nvim",
  "kyazdani42/nvim-web-devicons", --icons
  "neovim/nvim-lspconfig",        --lsp config
  "williamboman/mason-lspconfig.nvim",
  "williamboman/mason.nvim",
  "neovim/nvim-lspconfig",
  "nvim-telescope/telescope.nvim", --finder
  "kyazdani42/nvim-tree.lua",      --Tree
  "nvim-lua/plenary.nvim",
  "EdenEast/nightfox.nvim",        --theme
  "hrsh7th/cmp-nvim-lsp",          --autocompletion
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "windwp/nvim-autopairs",           --auto brackets
  "jose-elias-alvarez/null-ls.nvim", --formating
  "akinsho/toggleterm.nvim",         --terminal
  "goolord/alpha-nvim",              --dashboard
  "lewis6991/gitsigns.nvim",         --git
  "numToStr/Comment.nvim",           --comment
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "navarasu/onedark.nvim",
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  { "tzachar/cmp-tabnine", build = './install.sh', dependencies = 'hrsh7th/nvim-cmp' },
  "folke/lsp-colors.nvim",
}

require("lazy").setup(plugins, {})
require("Comment").setup()
require("lualine").setup()
require("telescope").setup()
require("nvim-autopairs").setup()
require("gitsigns").setup()
require("toggleterm").setup({})
require('nvim-ts-autotag').setup()
