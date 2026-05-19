-- theme/penrose.lua

-- TODO: Add cursor changes, file manager, system ui, terminal configuration. fastfetch, piccom

return {
	name = "penrose",

	apps = {
		terminal = "ghostty",
		browser = "firefox",
		launcher = "rofi -show drun",
		editor = "nvim",
		file_manager = "thunar",
	},

	fonts = {
		ui = "Inconsolata Nerd Font Mono",
		mono = "Inconsolata Nerd Font Mono",
		size = 10,
		bar_size = 10,
		terminal_size = 11,
	},

	colors = {
		-- Base
		bg       = "#0B111C",
		bg_alt   = "#111B2A",
		bg_soft  = "#1B2B42",
		bg_float = "#080D15",

		-- Text
		fg       = "#D8E3F0",
		fg_alt   = "#AFC0D4",
		muted    = "#61748D",

		-- Accents
		accent     = "#D7193F",
		accent_alt = "#8E102A",
		secondary  = "#5F7FA8",

		-- UI states
		border    = "#88c0d0",
		selection = "#D7193F",
		disabled  = "#61748D",

		-- Terminal palette
		black   = "#0B111C",
		red     = "#D7193F",
		green   = "#7D8F86",
		yellow  = "#C8A06A",
		blue    = "#5F7FA8",
		magenta = "#A84B65",
		cyan    = "#8FB6D8",
		white   = "#D8E3F0",

		-- Named semantic colors
		urgent  = "#D7193F",
		warning = "#C8A06A",
		success = "#7D8F86",
		alert   = "#A84B65",
	},

	wallpaper = os.getenv("HOME") .. "/Dev/penrose-dotfiles/wallpapers/eighty_six_red.png",

	i3 = {
		mod = "Mod4",
		gaps_inner = 8,
		gaps_outer = 4,
		border_width = 1,
	},

	rofi = {
		width = "42%",
		border_radius = 0,
		border_width = 1,
	},

	polybar = {
		height = 25,
		offset_x = 5,
		offset_y = 5,
		width = "99.3%",
		radius = 0,
	},

	workspaces = {
		{ key = "1", name = "1:web" },
		{ key = "2", name = "2:code" },
		{ key = "3", name = "3:term" },
		{ key = "4", name = "4" },
		{ key = "5", name = "5" },
		{ key = "6", name = "6:files" },
		{ key = "7", name = "7:music" },
		{ key = "8", name = "8:discord" },
		{ key = "9", name = "9:email" },
	},
}