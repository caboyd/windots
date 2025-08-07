return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      -- Configuration options for toggleterm
      size = 10,
      open_mapping = [[<C-\>]], -- Keybinding to toggle the terminal
      direction = "float",      -- Make it a floating terminal
      -- ... other options
      float_opts = {
        border = "curved",
        width = math.ceil(vim.o.columns * 0.7),
        height = math.ceil(vim.o.columns * 0.17),
      },
      close_on_exit = false,
      start_in_insert = true,
      shell = "powershell.exe",
      --dir = '~',
    })
  end,
}
