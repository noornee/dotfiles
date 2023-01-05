local status_ok, lsp_signature = pcall(require, "lsp_signature")
if not status_ok then
	return
end

local config = {
	hint_enable = false, -- virtual hint enable
	hint_prefix = "💡", -- Bulb for parameter, NOTE: for the terminal not support emoji, might crash
	handler_opts = {
		border = "none", -- double, rounded, single, shadow, none, or a table of borders
	},
}

lsp_signature.setup(config) -- no need to specify bufnr if you don't use toggle_key
