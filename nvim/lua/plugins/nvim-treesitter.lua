return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
    require 'nvim-treesitter.install'.compilers = { "zig" }
		configs.setup({

			ensure_installed = {
        "zig",
				"c",
				"lua",
				"luadoc",
				"vim",
				"vimdoc",
				"javascript",
				"typescript",
				"html",
				"markdown",
				"markdown_inline",
			},

			auto_install = true,
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}

