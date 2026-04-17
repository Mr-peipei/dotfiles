local status_ok, flash = pcall(require, "flash")
if not status_ok then
	return
end

flash.setup({
	modes = {
		search = { enabled = false },
		char   = { enabled = false },
	},
})

vim.keymap.set({ "n", "x", "o" }, "s", function() flash.jump() end,              { desc = "Flash jump" })
vim.keymap.set({ "n", "x", "o" }, "S", function() flash.treesitter() end,        { desc = "Flash treesitter" })
vim.keymap.set("o",               "r", function() flash.remote() end,            { desc = "Flash remote" })
vim.keymap.set({ "x", "o" },      "R", function() flash.treesitter_search() end, { desc = "Flash treesitter search" })
