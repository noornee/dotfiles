local wezterm = require("wezterm")

local config = {
	-- colorscheme
	colors = require("colors.gruvbox"),

	-- font settings
	font_size = 14.0,
	cell_width = 0.9,
	font = wezterm.font({
		family = "Iosevka Nerd Font",
		weight = "Regular",
	}),

	-- other
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	force_reverse_video_cursor = true, -- https://github.com/wez/wezterm/issues/706
}

return config
