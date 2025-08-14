vim.g.mapleader = " "

vim.keymap.set("n", "<C-c>", "<Esc>")

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Map Shift+Tab in Normal mode to decrease indentation
vim.keymap.set("n", "<S-Tab>", "<<", opts)
vim.keymap.set("n", "<Tab>", ">>", opts)

-- Map Shift+Tab in Visual mode to decrease indentation for selected lines
vim.keymap.set("v", "<S-Tab>", "<gv", opts)
vim.keymap.set("v", "<Tab>", ">gv", opts)

-- Map Shift+Tab in Insert mode to decrease indentation (using Ctrl+D)
vim.keymap.set("i", "<S-Tab>", "<C-d>", opts)

vim.keymap.set({ "n", "v", "x" }, "<leader>`", ":e #<CR>", { desc = "Open last buffer" })
vim.keymap.set({ "n", "v", "x" }, "<leader>2", ":bprevious<CR>", { desc = "Open prev buffer" })
vim.keymap.set({ "n", "v", "x" }, "<leader>1", ":bnext<CR>", { desc = "Open next buffer" })

vim.keymap.set("n", "<leader>w", ":write<CR>", { desc = "Write file" })

-- Scroll up with left hand only
vim.keymap.set("n", "<C-e>", "<C-u>")

-- Move selected lines up
vim.keymap.set('v', '<C-Up>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
-- Move selected lines down
vim.keymap.set('v', '<C-Down>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<ScrollWheelUp>', '6k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<ScrollWheelDown>', '6j', { noremap = true, silent = true })
