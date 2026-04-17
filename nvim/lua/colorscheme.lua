require("tokyonight").setup({
	transparent = true,
	styles = {
		sidebars = "transparent",
		floats   = "transparent",
	},
})

local status_ok, _ = pcall(vim.cmd, "colorscheme tokyonight")
if not status_ok then
	vim.notify("colorscheme tokyonight not found!")
end
