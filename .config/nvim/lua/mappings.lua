local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- BarBar mappings
-- Move to previous/next
map("n", "<A-,>", ":BufferPrevious<CR>", opts)
map("n", "<A-.>", ":BufferNext<CR>", opts)
-- Re-order to previous/next
map("n", "<A-<>", ":BufferMovePrevious<CR>", opts)
map("n", "<A->>", " :BufferMoveNext<CR>", opts)
-- Close buffer
map("n", "<A-c>", ":BufferClose<CR>", opts)
-- Magic buffer-picking mode
map("n", "<C-p>", ":BufferPick<CR>", opts)

-- Toggle Nvim Tree
map("n", "<C-t>", ":NvimTreeToggle<CR>", opts)

local modes = { "n", "v" }
for i in pairs(modes) do
	map(modes[i], "<C-_>", ':call nerdcommenter#Comment(0, "toggle")<CR>', opts)
end

-- Telescope
--map("n", "<leader>f", ":Telescope find_files<CR>", opts)
map(
	"n",
	"<space>t",
	":lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<CR>",
	opts
)

map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)

--toggle FTerm
map("n", "<F2>", ':lua require("FTerm").toggle()<CR>', opts)
map("t", "<F2>", '<C-\\><C-n>:lua require("FTerm").toggle()<CR>', opts)

--map("n", "<A-x>", ":!chmod +x %<CR>", opts)

--function file_exists(name)
--local f = io.open(name, "r")
--if f ~= nil then
--io.close(f)
--print(f)
--return true
--else
--return false
--end
--end

--map("n", "<A-x>", ":lua file_exists(%)", opts)
