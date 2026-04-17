local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = "all",
	sync_install = false,
	ignore_install = { "" },
	highlight = {
		enable = true,
		disable = { "css", "markdown" },
	},
	autopairs = { enable = true },
	indent = { enable = true, disable = { "python", "css" } },
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
	autotag = {
		enable = true,
		disable = { "xml" },
	},
})

-- rainbow-delimiters (HiPhish/rainbow-delimiters.nvim)
local rainbow_ok, rainbow = pcall(require, "rainbow-delimiters")
if rainbow_ok then
	vim.g.rainbow_delimiters = {
		strategy = { [""] = rainbow.strategy["global"] },
		query = { [""] = "rainbow-delimiters" },
		highlight = { "RainbowDelimiterYellow", "RainbowDelimiterViolet", "RainbowDelimiterBlue" },
	}
end
