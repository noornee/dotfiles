local status_ok, fterm = pcall(require, "FTerm")
if not status_ok then
	return
end

fterm.setup({
	border = "double",
	dimensions = {
		height = 0.9,
		width = 0.9,
	},
})
