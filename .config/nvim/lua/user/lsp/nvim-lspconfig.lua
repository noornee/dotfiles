local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

local on_attach = function()
	local bufopts = { noremap = true, silent = true, buffer = 0 }
	vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
	vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
	vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
	vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
	vim.keymap.set('n', '<space>df', vim.diagnostic.goto_next, bufopts)
end

local servers = { 'gopls', 'sumneko_lua', 'pyright', 'jsonls', 'emmet_ls' }
for _, lsp in pairs(servers) do
	lspconfig[lsp].setup {
		capabilities = capabilities,
		on_attach = on_attach,
	}
end

--https://github.com/aca/emmet-ls
lspconfig.emmet_ls.setup({
	filetypes = { 'html', 'css', 'template' },
})
