-- Initialize Configuration
local wezterm = require("wezterm")
local config = wezterm.config_builder()

local opacity = 0.13
local transparent_bg = "rgba(22, 24, 26, " .. opacity .. ")"

-- Window Configuration
config.initial_rows = 35
config.initial_cols = 140
config.window_decorations = "RESIZE"
config.window_background_image = (os.getenv("WEZTERM_CONFIG_FILE") or ""):gsub("wezterm.lua", "bg-op.png")
config.window_close_confirmation = "NeverPrompt"

config.front_end = "OpenGL"
config.webgpu_power_preference = 'HighPerformance'
config.win32_system_backdrop = "Auto"
config.window_background_opacity = opacity


-- Performance Settings
config.max_fps = 240
config.animation_fps = 60
config.cursor_blink_rate = 250


config.colors = {
	background = '#000000', 
	--foreground = 'silver',
	-- Add other color definitions as needed
}
		
-- Tab Bar Configuration
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.show_tab_index_in_tab_bar = false
--config.use_fancy_tab_bar = false

config.default_prog = { 'powershell' }

config.color_scheme =  "Catppuccin Mocha"

local emoji_font = "Segoe UI Emoji"
config.font = wezterm.font_with_fallback({
  {
    family = "JetBrains Mono NL",
    weight = "Regular",
    --Disable ligatures, change zero to have line instead of dot
    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0', 'zero' }
  },
  { 
    family = "Consolas", 
    weight = "Bold", 
  },
  emoji_font
})

config.font_size = 16

config.window_padding = {
  left = 20,
  right = 20,
  top = 20,
  bottom = 20,
}

-- Fix ctrl space not working
config.keys = {
  { 
    key = ' ',
    mods = 'CTRL',
    action = wezterm.action.SendKey {
      key = ' ',
      mods = 'CTRL',
    },
  },
}

return config
