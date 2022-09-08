vim.api.nvim_create_autocmd("BufNewFile", {
	pattern = "*.js",
	command = "silent! 1s:.*:#!/usr/bin/node"
})
