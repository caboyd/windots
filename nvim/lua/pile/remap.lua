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
vim.keymap.set("n", "<S-Tab>", "<<")
vim.keymap.set("n", "<Tab>", ">>")

-- Map Shift+Tab in Visual mode to decrease indentation for selected lines
vim.keymap.set("v", "<S-Tab>", "<gv")
vim.keymap.set("v", "<Tab>", ">gv")

-- Map Shift+Tab in Insert mode to decrease indentation (using Ctrl+D)
vim.keymap.set("i", "<S-Tab>", "<C-d>")

vim.keymap.set({ "n", "v", "x" }, "<leader>`", ":e #<CR>", { noremap = true, silent = true, desc = "Open last buffer" })
vim.keymap.set({ "n", "v", "x" }, "<leader>2", ":bprevious<CR>",
  { noremap = true, silent = true, desc = "Open prev buffer" })
vim.keymap.set({ "n", "v", "x" }, "<leader>1", ":bnext<CR>", { noremap = true, silent = true, desc = "Open next buffer" })

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

-- Visual mode paste without overwriting yank register
vim.keymap.set('v', 'p', '"_dP', { noremap = true, silent = true })
-- Delete selection and throw into void
vim.keymap.set({ "n", "v" }, "D", [["_d]])

vim.api.nvim_set_keymap('n', '<C-i>', '<C-i>', { noremap = true, silent = true })


-- terminal
-- vim.keymap.set('n', '<C-\\>', ':write<CR>', { silent = true })
vim.keymap.set('n', '<C-\\>', ':write<CR><CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<M-\\>', '<C-\\><C-n><CMD>lua require("FTerm").exit()<CR>')
vim.keymap.set('t', '<C-\\>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
