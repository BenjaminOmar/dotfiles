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
