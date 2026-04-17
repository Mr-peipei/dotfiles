local status_ok, conform = pcall(require, "conform")
if not status_ok then
	return
end

conform.setup({
	formatters_by_ft = {
		javascript      = { "prettier" },
		typescript      = { "prettier" },
		javascriptreact = { "prettier" },
		typescriptreact = { "prettier" },
		json            = { "prettier" },
		html            = { "prettier" },
		css             = { "prettier" },
		markdown        = { "prettier" },
		yaml            = { "prettier" },
		toml            = { "prettier" },
		lua             = { "stylua" },
		go              = { "gofmt" },
		python          = { "black" },
		elixir          = { "mix" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
})
