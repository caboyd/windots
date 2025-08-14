return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 40,
        --number = true,
        --relativenumber = true,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        enable = true,
        dotfiles = false,
        custom = {
          '.zig-cache',
          '^\\.cache$',
          'zig-out',
          '^\\.git$',
        }
      },
      git = {
        ignore = false
      },
      filesystem_watchers = {
        enable = true,
        debounce_delay = 50,
        ignore_dirs = {
          ".ccls-cache",
          "build",
          "node_modules",
          "target",
          ".zig-cache",
        },
      },

    }
  end,
}
