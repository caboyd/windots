return {
  {
    "rcarriga/nvim-notify",
    config = function () 
      vim.notify = require("notify")
      require("notify").setup {
         background_colour = "#000000",
      }
    end,
  },
  {
    "m4xshen/hardtime.nvim",
    lazy = false,
    dependencies = { "MunifTanjim/nui.nvim", },
    opts = {
      hint = true,
      notifaction = true,
      disable_mouse = false,
      disabled_keys = {
        ["<Up>"] = false,
        ["<Down>"] = false,
        ["<Left>"] = false,
        ["<Right>"] = false,
      },
    },
  }
}
