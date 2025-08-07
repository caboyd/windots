return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",

    config = function()
      require("ibl").setup {
        indent = { highlight = "IblIndent", char = '│' },
        scope = { enabled = true, char = '▎', highlight = "IblScope" },
      }
    end,
  },
  {
    "lukas-reineke/virt-column.nvim",
    config = function() require("virt-column").setup() end,
  }
}
