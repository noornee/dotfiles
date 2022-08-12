--vim.cmd[[autocmd BufNewFile *.py execute 'silent! 1s:.*:#!/usr/bin/python3']]

vim.api.nvim_create_autocmd("BufNewFile", {
	pattern = "*.py",
	command = "silent! 1s:.*:#!/usr/bin/python3"
})
