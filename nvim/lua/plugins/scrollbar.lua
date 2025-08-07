return {
	"petertriho/nvim-scrollbar",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"kevinhwang91/nvim-hlslens",
    "catppuccin/nvim",
	},
	opts = {},
  config = function ()
    local C = require("catppuccin.palettes").get_palette()
    require("scrollbar").setup({
        handle = {
            color = C.surface1,
        },
        marks = {
            Search = { color = C.peach },
            Error = { color = C.red },
            Warn = { color = C.yellow },
            Info = { color = C.sky },
            Hint = { color = C.teal },
            Misc = { color = C.subtext0 },
        }
    })
  end,
}
