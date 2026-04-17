local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
	return
end

local function on_attach(bufnr)
	local api = require("nvim-tree.api")
	local opts = function(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- デフォルトのキーマップを維持しつつカスタマイズ
	api.config.mappings.default_on_attach(bufnr)

	vim.keymap.set("n", "l", api.node.open.edit,              opts("Open"))
	vim.keymap.set("n", "h", api.node.navigate.parent_close,  opts("Close Directory"))
	vim.keymap.set("n", "v", api.node.open.vertical,          opts("Open: Vertical Split"))
end

nvim_tree.setup({
	on_attach = on_attach,
	auto_reload_on_write = true,
	disable_netrw = false,
	hijack_netrw = true,
	hijack_cursor = false,
	sort_by = "name",
	view = {
		width = 30,
		side = "left",
		signcolumn = "yes",
	},
	renderer = {
		indent_markers = { enable = true },
		icons = {
			webdev_colors = true,
			git_placement = "before",
		},
	},
	hijack_directories = {
		enable = true,
		auto_open = true,
	},
	update_focused_file = {
		enable = false,
		update_cwd = false,
	},
	diagnostics = {
		enable = true,
		show_on_dirs = false,
		icons = { hint = "", info = "", warning = "", error = "" },
	},
	filters = { dotfiles = false },
	git = { enable = true, ignore = true, timeout = 400 },
	actions = {
		use_system_clipboard = true,
		change_dir = { enable = true, global = false },
		open_file = {
			quit_on_open = false,
			resize_window = true,
		},
	},
	trash = { cmd = "trash", require_confirm = true },
})
