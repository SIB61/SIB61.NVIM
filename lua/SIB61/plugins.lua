vim.cmd([[packadd packer.nvim]])
require("packer").startup(function()
	use({
    "windwp/nvim-ts-autotag",
		"wbthomason/packer.nvim", --plugin manager
		"nvim-lualine/lualine.nvim", --status bar
    "simrat39/rust-tools.nvim",
		"kyazdani42/nvim-web-devicons", --icons
		"neovim/nvim-lspconfig", --lsp config
    "williamboman/mason-lspconfig.nvim",
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
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
   	"L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "navarasu/onedark.nvim",
		{
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate",
		},
	{"tzachar/cmp-tabnine", run='./install.sh', requires = 'hrsh7th/nvim-cmp'},
 "folke/lsp-colors.nvim",
	})
end)
require("Comment").setup()
require("lualine").setup()
require("telescope").setup({})
require("nvim-autopairs").setup()
require("gitsigns").setup()
require("toggleterm").setup({})
require('nvim-ts-autotag').setup()
-- require("bufferline").setup{}
--require("luasnip.loaders.from_vscode").lazy_load()
-- require("cmp_nvim_ultisnips").setup({})
-- require("nvim-lsp-installer").setup({})
local tabnine = require('cmp_tabnine.config')
tabnine.setup({
	max_lines = 1000,
	max_num_results = 20,
	sort = true,
	run_on_every_keystroke = true,
	snippet_placeholder = '..',
	ignored_file_types = { 
		-- default is not to ignore
		-- uncomment to ignore in lua:
		-- lua = true
	},
	show_prediction_strength = false
})
