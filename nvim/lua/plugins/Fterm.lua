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
  end,

}
