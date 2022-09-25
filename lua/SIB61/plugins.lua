vim.cmd([[packadd packer.nvim]])
require("packer").startup(function()
	use({
		"wbthomason/packer.nvim", --plugin manager
		"nvim-lualine/lualine.nvim", --status bar
		"kyazdani42/nvim-web-devicons", --icons
		"neovim/nvim-lspconfig", --lsp config
		"nvim-telescope/telescope.nvim", --finder
		"kyazdani42/nvim-tree.lua", --Tree
		"nvim-lua/plenary.nvim",
		"EdenEast/nightfox.nvim", --theme
		"hrsh7th/cmp-nvim-lsp", --autocompletion
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"windwp/nvim-autopairs", --auto brackets
		"jose-elias-alvarez/null-ls.nvim", --formating
		"akinsho/toggleterm.nvim", --terminal
		"goolord/alpha-nvim", --dashboard
		"lewis6991/gitsigns.nvim", --git
		"numToStr/Comment.nvim", --comment
		"SirVer/ultisnips", --snippets
		"quangnguyen30192/cmp-nvim-ultisnips", --snippets engine
		"honza/vim-snippets", --snippets
		"williamboman/nvim-lsp-installer", --lsp installer
   	"L3MON4D3/LuaSnip",
   "navarasu/onedark.nvim",
		"morhetz/gruvbox",
		{
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate",
		},
		"folke/lsp-colors.nvim",
	})
end)
require("Comment").setup()
require("lualine").setup()
require("telescope").setup({})
require("nvim-autopairs").setup()
require("gitsigns").setup()
require("toggleterm").setup({})
--require("luasnip.loaders.from_vscode").lazy_load()
require("cmp_nvim_ultisnips").setup({})
require("nvim-lsp-installer").setup({})
