-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually specify your configuration options
config.enable_scroll_bar = false
config.enable_tab_bar = false
config.enable_wayland = false
config.window_background_opacity = 0.75
-- and finally, return the configuration to wezterm
return config
