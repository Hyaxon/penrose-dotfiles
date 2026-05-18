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
    ui = "JetBrainsMono Nerd Font",
    mono = "JetBrainsMono Nerd Font Mono",
    size = 10,
    bar_size = 10,
    terminal_size = 11,
  },

  colors = {
    bg       = "#202833",
    bg_alt   = "#28313d",
    bg_soft  = "#323c49",
    bg_float = "#242c36",

    fg       = "#d8dee9",
    fg_alt   = "#c6d0dc",
    muted    = "#7f8b99",

    accent     = "#8fbac8",
    accent_alt = "#a7c7d3",

    border    = "#8fbac8",
    selection = "#394653",

    black   = "#202833",
    red     = "#bf616a",
    green   = "#a3be8c",
    yellow  = "#ebcb8b",
    blue    = "#81a1c1",
    magenta = "#b48ead",
    cyan    = "#8fbcbb",
    white   = "#eceff4",

    urgent  = "#bf616a",
    warning = "#ebcb8b",
    success = "#a3be8c",
  },

  wallpaper = os.getenv("HOME") .. "/dev/dotfiles/wallpapers/test.png",

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
