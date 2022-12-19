local set = vim.opt

set.number = true
set.relativenumber = true
set.mouse = "a"
set.tabstop = 4
set.shiftwidth = 4
set.scrolloff = 8
set.clipboard = "unnamedplus"
set.swapfile = false
set.hlsearch = false
set.incsearch = true
set.cursorline = true

-- to remember folds
vim.cmd([[
augroup remember_folds
  autocmd!
  autocmd BufWinLeave *.* mkview
  autocmd BufWinEnter *.* silent! loadview
augroup END
]])
