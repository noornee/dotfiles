local M = {
	"rcarriga/nvim-notify",
}

M.config = function()
	local notify = require("notify")
	notify.setup({
		timeout = 1000,
		top_down = false,
	})
	vim.notify = notify
end

return M
