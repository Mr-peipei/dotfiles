if not vim.g.vscode then
	require("colorscheme")
	require("plugins")
	require("treesitter")
--	require("lsp")
	require("cmps")
	require("git")
	require("lualines")
	require("nvim-trees")
	require("toggleterms")
	require("alphas")
end

require("options")
require("keymaps")
require("indentline")
