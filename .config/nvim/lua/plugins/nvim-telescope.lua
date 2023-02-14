local M = {
	"nvim-telescope/telescope.nvim",
	lazy = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
}

M.config = function()
	local telescope = require("telescope")

	telescope.setup({
		defaults = {
			mappings = {
				i = {
					--["q"] = require("telescope.actions").close,
				},
			},
		},
	})
end

return M
