local status_ok, wk = pcall(require, "which-key")
if not status_ok then
	return
end

wk.setup({
	win = {
		border = "rounded",
	},
})

wk.add({
	{ "<leader>f", group = "Find" },
	{ "<leader>g", group = "Git" },
	{ "<leader>l", group = "Lazy/Mason" },
	{ "<leader>x", group = "Trouble" },
	{ "<space>",   group = "LSP" },
})
