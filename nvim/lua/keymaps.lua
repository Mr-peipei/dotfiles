local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal
keymap("n", "J", "5j", opts)
keymap("n", "K", "5k", opts)
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)

-- Insert
keymap("i", "jj", "<ESC>", opts)
keymap("i", "っj", "<ESC>", opts)
keymap("n", "<C-s>", "<cmd>w<CR>", opts)

-- Visual
keymap("v", "J", "5j", opts)
keymap("v", "K", "5k", opts)
keymap("v", "H", "^", opts)
keymap("v", "L", "$", opts)
keymap("v", "j", "gj", opts)
keymap("v", "k", "gk", opts)

-- Visual Block
keymap("x", "J", "5j", opts)
keymap("x", "K", "5k", opts)

-- Misc
keymap("n", "<esc><esc>", "<cmd>nohlsearch<cr>", opts)
keymap("n", "<leader>sv", "<cmd>source $MYVIMRC<CR>", opts)

if not vim.g.vscode then
	keymap("n", "<C-n>", "<cmd>NvimTreeToggle<cr>", opts)
	keymap("n", "<F4>", "<cmd>Telescope resume<cr>", opts)
	keymap("n", "<F5>", "<cmd>Telescope commands<CR>", opts)
	keymap("n", "<Leader>fa", "<cmd>Telescope<cr>", opts)
	keymap("n", "<Leader>fp", "<cmd>Telescope git_files<cr>", opts)
	keymap("n", "<Leader>fb", "<cmd>Telescope buffers<cr>", opts)
	keymap("n", "<Leader>r", "<cmd>Telescope find_files<cr>", opts)
	keymap("n", "<Leader>fg", "<cmd>Telescope live_grep<cr>", opts)
	keymap("n", "<C-h>", "<cmd>BufferPrevious<cr>", opts)
	keymap("n", "<C-l>", "<cmd>BufferNext<CR>", opts)
	keymap("n", "<C-q>", "<cmd>BufferClose<CR>", opts)
	keymap("n", "<Leader>gg", "<cmd>LazyGit<CR>", opts)
	keymap("n", "<Leader>lu", "<cmd>Lazy<CR>", opts)
	keymap("n", "<Leader>lm", "<cmd>Mason<CR>", opts)
end
