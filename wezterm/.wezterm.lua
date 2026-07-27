local wezterm = require("wezterm")

local config = wezterm.config_builder()

local is_windows = os.getenv("OS") and os.getenv("OS"):lower():find("windows")
local is_macos = wezterm.target_triple:lower():find("darwin") ~= nil

config.color_scheme = "rose-pine-moon"
config.max_fps = 120
config.font = wezterm.font("Hack Nerd Font", { weight = "DemiBold" })

-- Keep tab bar functional but visually hidden when only one tab
config.hide_tab_bar_if_only_one_tab = true

-- Keep RESIZE so the window remains resizable/draggable
config.window_decorations = "RESIZE"

config.window_frame = {
  font = wezterm.font("Hack Nerd Font", { weight = "Bold" }),
  -- Make the titlebar/tab bar background transparent so it blends in
  active_titlebar_bg = "none",
  inactive_titlebar_bg = "none",
}

config.inactive_pane_hsb = {
  saturation = 0.0,
  brightness = 0.5,
}

-- Map Shift+Arrow to xterm escape sequences that micro understands
-- for text selection (SelectUp/SelectDown/SelectRight/SelectLeft)
local act = wezterm.action
config.key_map_preference = "Physical"
config.keys = {
  { key = "Up", mods = "SHIFT", action = act.SendString("\x1b[1;2A") },
  { key = "Down", mods = "SHIFT", action = act.SendString("\x1b[1;2B") },
  { key = "Right", mods = "SHIFT", action = act.SendString("\x1b[1;2C") },
  { key = "Left", mods = "SHIFT", action = act.SendString("\x1b[1;2D") },
}

if is_windows then
  config.win32_system_backdrop = "Acrylic"
  config.window_background_opacity = 0.7
  config.window_frame.font_size = 10.0
end

if is_macos then
  config.window_background_opacity = 0.8
  config.macos_window_background_blur = 50
  config.font_size = 15.0
  config.window_frame.font_size = 10.0
end

return config
