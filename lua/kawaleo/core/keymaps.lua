local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.keymap.set
local map = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)

keymap("n", "<leader>p", '"0P', opts)
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

keymap("n", "<leader><Left>", "<C-w>h", opts)
keymap("n", "<leader><Down>", "<C-w>j", opts)
keymap("n", "<leader><Up>", "<C-w>k", opts)
keymap("n", "<leader><Right>", "<C-w>l", opts)

keymap("n", "<leader>sv", "<C-w>v", opts)
keymap("n", "<leader>sh", "<C-w>s", opts)
keymap("n", "<leader>se", "<C-w>=", opts)
keymap("n", "<leader>sx", ":close<CR>", opts)

keymap("n", "<leader>,", "<Cmd>bprev<CR>", opts)
keymap("n", "<leader>.", "<Cmd>bnext<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- Insert --
-- Press jk fast to exit insert mode
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "p", '"_dP', opts)

-- Move text up and down
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)
keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Explore
keymap("n", "<leader>e", "<Cmd>Ex<CR>", opts)

-- Telescope
map("n", "<leader>ff", "<Cmd>Telescope find_files<Cr>", opts)
map("n", "<leader>cc", "<Cmd>Telescope colorscheme<CR>", opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
keymap("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")
