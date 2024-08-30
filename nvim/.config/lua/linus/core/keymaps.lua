-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window


keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Resize splits with arrow keys
keymap.set("n", "<C-Left>", "<C-w><", { desc = "Resize split left" })
keymap.set("n", "<C-Right>", "<C-w>>", { desc = "Resize split right" })
keymap.set("n", "<C-Up>", "<C-w>+", { desc = "Resize split up" })
keymap.set("n", "<C-Down>", "<C-w>-", { desc = "Resize split down" })

-- Key mappings for buffers
keymap.set("n", "<leader>bo", "<cmd>enew<CR>", { desc = "Open new buffer" }) -- open a new empty buffer
keymap.set("n", "<leader>bx", "<cmd>bdelete<CR>", { desc = "Close current buffer" }) -- close current buffer
keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Go to next buffer" }) -- go to next buffer
keymap.set("n", "<leader>bp", "<cmd>bprevious<CR>", { desc = "Go to previous buffer" }) -- go to previous buffer
keymap.set("n", "<leader>bf", "<cmd>enew<bar>bdelete #<CR>", { desc = "Move current buffer to new buffer" }) -- open current buffer in a new buffer and close the old one
