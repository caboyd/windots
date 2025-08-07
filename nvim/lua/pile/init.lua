require("pile.remap")
require("pile.lazy")

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.have_nerd_font = true
vim.o.swapfile = false

-- indenting
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.textwidth = 140

-- guide for linebreaking long bits of code
vim.o.colorcolumn = "140"
vim.o.winborder = "rounded"

vim.o.number = true
vim.o.relativenumber = true
vim.o.mouse = "a"
vim.o.mousef = true

vim.o.wrap = false
vim.o.scrolloff = 12

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.o.clipboard = "unnamedplus"
end)

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 250

vim.o.shell = "powershell.exe"
vim.o.shellcmdflag = "-ExecutionPolicy RemoteSigned"
vim.o.shellxquote = ""

-- optionally enable 24-bit colour
vim.o.termguicolors = true

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
--
--  Notice listchars is set using `vim.o. instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-options-guide`
vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.o.inccommand = "split"

-- Show which line your cursor is on
vim.o.cursorline = true

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

function ClearBG()
 vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
 vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
 -- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
 -- vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
end

vim.cmd.colorscheme("vague")
vim.cmd("NvimTreeOpen")
ClearBG()
