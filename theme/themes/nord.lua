-- theme/penrose.lua

return {
  	name = "nord",

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
		bg       = "#2e3440",
		bg_alt   = "#3b4252",
		bg_soft  = "#434c5e",
		bg_float = "#242933",

		-- Text
		fg       = "#eceff4",
		fg_alt   = "#d8dee9",
		muted    = "#4c566a",

		-- Accents
		accent     = "#88c0d0",
		accent_alt = "#81a1c1",
		secondary  = "#81a1c1",

		-- UI states
		border    = "#88c0d0",
		selection = "#434c5e",
		disabled  = "#3b4252",

		-- Terminal palette 
		black   = "#2e3440",
		red     = "#bf616a",
		green   = "#a3be8c",
		yellow  = "#ebcb8b",
		blue    = "#81a1c1",
		magenta = "#b48ead",
		cyan    = "#88c0d0",
		white   = "#eceff4",

		-- Named semantic colors
		urgent  = "#bf616a",
		warning = "#ebcb8b",
		success = "#a3be8c",
		alert   = "#b48ead",
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
