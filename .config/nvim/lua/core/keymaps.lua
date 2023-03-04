local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- BarBar
map("n", "<A-,>", ":BufferPrevious<CR>", opts)
map("n", "<A-.>", ":BufferNext<CR>", opts)
map("n", "<A-<>", ":BufferMovePrevious<CR>", opts)
map("n", "<A->>", " :BufferMoveNext<CR>", opts)
map("n", "<A-c>", ":BufferClose<CR>", opts)

-- Nvim Tree
map("n", "<C-t>", ":NvimTreeToggle<CR>", opts)
map("n", "<F3>", ":NvimTreeToggle<CR>", opts)

-- Telescope
map(
	"n",
	"<space>ff",
	":lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<CR>",
	opts
)

--
map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Toggle FTerm
map("n", "<F2>", ':lua require("FTerm").toggle()<CR>', opts)
map("t", "<F2>", '<C-\\><C-n>:lua require("FTerm").toggle()<CR>', opts)

-- create an executable
map("n", "<A-x>", ":!chmod +x %<CR>", opts)
