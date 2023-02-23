local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- BarBar mappings
-- Move to previous/next
map("n", "<A-,>", ":BufferPrevious<CR>", opts)
map("n", "<A-.>", ":BufferNext<CR>", opts)
-- Re-order to previous/next
map("n", "<A-<>", ":BufferMovePrevious<CR>", opts)
map("n", "<A->>", " :BufferMoveNext<CR>", opts)
map("n", "<A-c>", ":BufferClose<CR>", opts) -- Close buffer

map("n", "<C-t>", ":NvimTreeToggle<CR>", opts) -- Toggle Nvim Tree
map("n", "<F3>", ":NvimTreeToggle<CR>", opts)

-- Telescope
--map("n", "<leader>f", ":Telescope find_files<CR>", opts)
map(
	"n",
	"<space>ff",
	":lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<CR>",
	opts
)

map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)

--toggle FTerm
map("n", "<F2>", ':lua require("FTerm").toggle()<CR>', opts)
map("t", "<F2>", '<C-\\><C-n>:lua require("FTerm").toggle()<CR>', opts)

-- create an executable
map("n", "<A-x>", ":!chmod +x %<CR>", opts)
