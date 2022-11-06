vim.api.nvim_create_autocmd("BufWinEnter", {
	pattern = "bookmarks.txt",
	command = "set filetype=conf"
})
