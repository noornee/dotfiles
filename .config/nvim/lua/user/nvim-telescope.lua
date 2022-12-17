require("telescope").setup({
	defaults = {
		mappings = {
			i = {
				["q"] = require("telescope.actions").close,
			},
		},
	},
})
