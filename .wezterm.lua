-- local wezterm = require 'wezterm'
--
-- local config = wezterm.config_builder()
-- local act = wezterm.action
--
-- config.keys = {
--   -- paste from the clipboard
--   { key = 'v', mods = 'CMD', action = act.PasteFrom 'Clipboard' },
--
--   -- paste from the primary selection
--   { key = 'v', mods = 'CMD', action = act.PasteFrom 'PrimarySelection' },
--   { key = 'c', mods = 'CMD', action = wezterm.action.CopyTo 'ClipboardAndPrimarySelection', },
-- }
--
-- config.color_scheme = 'Catppuccin Mocha'
--
-- config.font_size = 16
-- config.line_height = 1.1
-- config.win32_system_backdrop = "Acrylic"
-- config.window_padding = { left = "20px"}
-- config.disable_default_key_bindings = true
-- config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
-- config.use_fancy_tab_bar = false
-- config.hide_tab_bar_if_only_one_tab = false
-- config.launch_menu = {}
-- config.min_scroll_bar_height = "0.5cell"
-- config.scrollback_lines = 50000
--
--
-- return config
--
--
-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 19

config.enable_tab_bar = true

config.window_decorations = "RESIZE"

config.window_background_opacity = 0.8
config.macos_window_background_blur = 10

config.line_height = 1.1
config.win32_system_backdrop = "Acrylic"
config.window_padding = { left = "20px" }
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = false
config.launch_menu = {}
config.min_scroll_bar_height = "0.5cell"
config.scrollback_lines = 50000

return config
