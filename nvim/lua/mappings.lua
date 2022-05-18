local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- BarBar mappings
-- Move to previous/next
map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-.>', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', ' :BufferMoveNext<CR>', opts)
-- Close buffer
map('n', '<A-c>', ':BufferClose<CR>', opts)
-- Magic buffer-picking mode
map('n', '<C-p>', ':BufferPick<CR>', opts)

-- Toggle Nerd Tree
map('n', '<C-t>', ':NERDTreeToggle<CR>', opts)
