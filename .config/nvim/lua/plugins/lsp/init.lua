local M = {
	"neovim/nvim-lspconfig",

	dependencies = {

		{ "hrsh7th/nvim-cmp" },
		{ "williamboman/mason.nvim", config = true },
		{ "hrsh7th/cmp-nvim-lsp" },

		--
		-- lsp signature
		{
			"ray-x/lsp_signature.nvim",
			config = function()
				local lsp_signature = require("lsp_signature")
				lsp_signature.setup({
					hint_enable = false, -- virtual hint enable
					hint_prefix = "💡", -- Bulb for parameter, NOTE: for the terminal not support emoji, might crash
					handler_opts = {
						border = "none", -- double, rounded, single, shadow, none, or a table of borders
					},
				})
			end,
		},
		--
		--
	},
}

M.config = function()
	local lspconfig = require("lspconfig")
	local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
	capabilities.textDocument.completion.completionItem.snippetSupport = true

	local on_attach = function()
		local bufopts = { noremap = true, silent = true, buffer = 0 }
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
		vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
		vim.keymap.set("n", "<space>f", function()
			vim.lsp.buf.format({ async = true })
		end, bufopts)
		vim.keymap.set("n", "<space>df", vim.diagnostic.goto_next, bufopts)
	end

	local servers = { "gopls", "lua_ls", "pyright", "html", "tsserver" }
	for _, lsp in pairs(servers) do
		lspconfig[lsp].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})
	end

	--https://github.com/aca/emmet-ls
	lspconfig.emmet_ls.setup({
		filetypes = { "html", "css", "template", "javascript" },
	})
end

return M
