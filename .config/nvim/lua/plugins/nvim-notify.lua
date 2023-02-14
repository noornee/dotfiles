local M = {
	"rcarriga/nvim-notify",
}

M.config = function()
	local notify = require("notify")
	vim.notify = notify
end

return M
