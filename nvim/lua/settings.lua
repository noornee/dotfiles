local set = vim.opt

set.number = true
set.relativenumber = true
set.mouse = "a"


vim.notify = require("notify")
vim.g['go_def_mapping_enabled'] = 0 -- disables vim-go key bindings
