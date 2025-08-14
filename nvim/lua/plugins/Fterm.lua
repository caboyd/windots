return {
  "numToStr/FTerm.nvim",
  version = "*",
  config = function()
    require("FTerm").setup({
      cmd = 'powershell.exe',
      auto_close = false,
      dimensions = {
        height = 0.7, -- Height of the terminal window
        width = 0.8,  -- Width of the terminal window
      },
    })

    -- keybindings
    vim.keymap.set('n', '<C-\\>', '<CMD>lua require("FTerm").toggle()<CR>')
    vim.keymap.set('t', '<M-\\>', '<C-\\><C-n><CMD>lua require("FTerm").exit()<CR>')
    vim.keymap.set('t', '<C-\\>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
  end,

}
