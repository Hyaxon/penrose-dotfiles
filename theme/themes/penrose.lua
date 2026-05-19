-- theme/penrose.lua

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
		-- Penrose / terminal-web palette
		-- From reference:
		-- #D3DAD5 #9BAAA0 #67796D #445048 #252C28 #151515

		-- Base
		bg       = "#151515",
		bg_alt   = "#252C28",
		bg_soft  = "#445048",
		bg_float = "#151515",

		-- Text
		fg       = "#D3DAD5",
		fg_alt   = "#9BAAA0",
		muted    = "#67796D",

		-- Accents
		accent     = "#D3DAD5",
		accent_alt = "#9BAAA0",
		secondary  = "#67796D",

		-- UI states
		border    = "#9BAAA0",
		selection = "#D3DAD5",
		disabled  = "#445048",

		-- Terminal palette
		black   = "#151515",
		red     = "#9BAAA0",
		green   = "#9BAAA0",
		yellow  = "#D3DAD5",
		blue    = "#67796D",
		magenta = "#9BAAA0",
		cyan    = "#9BAAA0",
		white   = "#D3DAD5",

		-- Named semantic colors
		urgent  = "#D3DAD5",
		warning = "#9BAAA0",
		success = "#9BAAA0",
		alert   = "#67796D",
	},

	wallpaper = os.getenv("HOME") .. "/Dev/penrose_dotfiles/wallpapers/test.png",

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