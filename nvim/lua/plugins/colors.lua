return {
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  {
    "vague2k/vague.nvim",
    name = "vague",
    priority = 1000,
  },
  {
    "folke/tokyonight.nvim",
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      require("tokyonight").setup({
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      })
    end,
  },
  {
    "shaunsingh/nord.nvim",
    priority = 1000,
    config = function()
      vim.cmd 'highlight Normal guibg=#000000'
    end
  },
}

