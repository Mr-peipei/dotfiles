-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git", "clone", "--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- Theme
	{ "folke/tokyonight.nvim", lazy = false, priority = 1000 },
	{ "tomasiser/vim-code-dark" },

	-- UI
	{ "nvim-lualine/lualine.nvim",           dependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "romgrk/barbar.nvim",                  dependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl" },
	{ "goolord/alpha-nvim",                  dependencies = { "nvim-tree/nvim-web-devicons" } },

	-- File tree
	{ "nvim-tree/nvim-tree.lua",             dependencies = { "nvim-tree/nvim-web-devicons" } },

	-- Fuzzy finder
	{ "nvim-telescope/telescope.nvim",       dependencies = { "nvim-lua/plenary.nvim" } },

	-- Terminal
	{ "akinsho/toggleterm.nvim" },

	-- Project
	{ "ahmedkhalf/project.nvim" },

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		dependencies = {
			"JoosepAlviste/nvim-ts-context-commentstring",
			"HiPhish/rainbow-delimiters.nvim",
				"windwp/nvim-ts-autotag",
			"nvim-treesitter/nvim-treesitter-context",
			"mizlan/iswap.nvim",
		},
	},

	-- LSP
	{ "neovim/nvim-lspconfig" },
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },

	-- Formatting
	{ "stevearc/conform.nvim" },

	-- Completion
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-nvim-lua",
			"hrsh7th/vim-vsnip",
			"hrsh7th/cmp-vsnip",
		},
	},

	-- Git
	{ "lewis6991/gitsigns.nvim" },
	{ "kdheepak/lazygit.nvim",   dependencies = { "nvim-lua/plenary.nvim" } },
	{ "tpope/vim-fugitive" },

	-- Editing
	{ "tpope/vim-commentary" },
	{ "jiangmiao/auto-pairs" },
	{ "leafgarland/typescript-vim" },
	{ "lambdalisue/nerdfont.vim" },

	-- UI強化
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
	},
	{
		"folke/flash.nvim",
		lazy = false,
	},
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"j-hui/fidget.nvim",
		tag = "legacy",
	},
	{
		"folke/noice.nvim",
		dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
	},
}, {
	ui = { border = "rounded" },
})
