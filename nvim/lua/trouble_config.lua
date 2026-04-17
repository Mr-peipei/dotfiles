local status_ok, trouble = pcall(require, "trouble")
if not status_ok then
	return
end

trouble.setup({
	position = "bottom",
	height = 10,
	icons = true,
	fold_open = "",
	fold_closed = "",
	signs = {
		error   = "",
		warning = "",
		hint    = "",
		information = "",
	},
	use_diagnostic_signs = false,
})

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",                       opts)
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",  opts)
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",               opts)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",              opts)
