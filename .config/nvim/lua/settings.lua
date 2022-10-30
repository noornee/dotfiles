local set = vim.opt

set.number = true
set.relativenumber = true
set.mouse = "a"
set.tabstop = 4
set.shiftwidth = 4

--vim.notify = require("notify")
--vim.g['go_def_mapping_enabled'] = 0 -- disables vim-go key bindings
--
--
--

-- Example config in Lua
vim.g.gruvbox_baby_function_style = "NONE"
vim.g.gruvbox_baby_keyword_style = "italic"

-- Each highlight group must follow the structure:
-- ColorGroup = {fg = "foreground color", bg = "background_color", style = "some_style(:h attr-list)"}
-- See also :h highlight-guifg
-- Example:

-- Enable transparent mode
vim.g.gruvbox_baby_transparent_mode = 0

-- Load the colorscheme
vim.cmd[[colorscheme gruvbox-baby]]
