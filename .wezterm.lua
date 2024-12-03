-- Pull in the wezterm API
local wezterm = require("wezterm")

local config
if wezterm.config_builder then
	config = wezterm.config_builder()
end

--config.color_scheme = 'Dark+'
-- config.color_scheme = 'Gruvbox dark, hard (base16)'

config.background = {
	{
		source = { Color = "Black" },
		width = 1920,
		height = 1080,
		opacity = 0.97,
		hsb = { hue = 1.0, saturation = 1.0, brightness = 0.4 },
	},
}

config.hide_tab_bar_if_only_one_tab = true

config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.font = wezterm.font("JetBrains Mono", { weight = "Medium" })

config.font_size = 11.5

config.window_close_confirmation = "NeverPrompt"

config.front_end = "WebGpu"

wezterm.on("user-var-changed", function(window, pane, name, value)
	local overrides = window:get_config_overrides() or {}
	if name == "ZEN_MODE" then
		local incremental = value:find("+")
		local number_value = tonumber(value)
		if incremental ~= nil then
			while number_value > 0 do
				window:perform_action(wezterm.action.IncreaseFontSize, pane)
				number_value = number_value - 1
			end
			overrides.enable_tab_bar = false
		elseif number_value < 0 then
			window:perform_action(wezterm.action.ResetFontSize, pane)
			overrides.font_size = nil
			overrides.enable_tab_bar = true
		else
			overrides.font_size = number_value
			overrides.enable_tab_bar = false
		end
	end
	window:set_config_overrides(overrides)
end)

return config
