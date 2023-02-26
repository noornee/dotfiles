local plugins = { "nvim-lspconfig", "lsp_signature", "lsp_lines" }

local M = {}

for _, v in ipairs(plugins) do
	local status_ok, plug = pcall(require, "plugins.lsp." .. v)
	if not status_ok then
		local pattern = "plugins.lsp.%a+"
		local module = string.match(plug, pattern) -- match the module name
		vim.notify(
			"failed to load "
				.. module
				.. "\n\nmodule does not exist\n\ncheck if it exists in the `nvim/lua/plugins/lsp` directory\n",
			"error",
			{
				title = "CUSTOM LSP ERROR",
				timeout = 5000,
			}
		)
		return
	end
	table.insert(M, plug)
end

return M
