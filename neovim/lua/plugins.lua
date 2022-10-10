-- his file can be loaded by calling `lua require('plugins')` from your init.vim

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

return require("packer").startup(function()
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("tpope/vim-fugitive")
	use("tpope/vim-commentary")
	use("tomasiser/vim-code-dark") ---vimのカラースキーマ
	use("folke/tokyonight.nvim")
	-- use 'lambdalisue/fern.vim' ---ファイラー
	-- use 'lambdalisue/fern-git-status.vim' ---ファイルツリーにgit差分表示
	use("lambdalisue/nerdfont.vim") ---ファイラーのアイコン用
	use("leafgarland/typescript-vim") ---Typescriptのカラースキーマ
	-- use {'neoclide/coc.nvim', branch='release'}
	use("jiangmiao/auto-pairs")
	use("nvim-telescope/telescope.nvim")
	use("nvim-lua/plenary.nvim")
	use("kyazdani42/nvim-web-devicons")
	use("romgrk/barbar.nvim")
	use("nvim-lualine/lualine.nvim")
	use("lukas-reineke/indent-blankline.nvim")
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icon
		},
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	})
	use("akinsho/toggleterm.nvim")
	use("goolord/alpha-nvim")
	use("ahmedkhalf/project.nvim")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use({ "p00f/nvim-ts-rainbow" })
	-- use {'christianchiarulli/nvim-ts-rainbow'}
	use("nvim-treesitter/playground")
	use("windwp/nvim-ts-autotag")
	use("romgrk/nvim-treesitter-context")
	use("mizlan/iswap.nvim")

	-- LSP
	use("neovim/nvim-lspconfig") -- enable LSP
	use("williamboman/nvim-lsp-installer") -- simple to use language server installer
	use("jose-elias-alvarez/null-ls.nvim") -- for formatters and linters

	-- cmp
	use("hrsh7th/cmp-nvim-lsp")
	-- use { "hrsh7th/cmp-buffer", requires = { "hrsh7th/nvim-cmp" } }
	-- use { "hrsh7th/cmp-path", requires = { "hrsh7th/nvim-cmp" } }
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/vim-vsnip")

	--git
	use("lewis6991/gitsigns.nvim")
end)
