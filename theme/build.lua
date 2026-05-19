-- theme/build.lua

package.path = package.path .. ";./?.lua;./?/init.lua"

local theme = require("themes.nord") -- Change Theme
local repo = os.getenv("HOME") .. "/Dev/penrose-dotfiles" -- Change directory path

local render_template = require("render")

local files = {
	{
		template = "../config/i3/config.template",
		output = "../generated/i3/config",
		comment_style = "hash",
	},
	{
		template = "../config/polybar/config.ini.template",
		output = "../generated/polybar/config.ini",
		comment_style = "semicolon",
	},
	{
		template = "../config/rofi/config.rasi.template",
		output = "../generated/rofi/config.rasi",
		comment_style = "css", 
	},
	{
		template = "../config/desktop/wallpaper.sh.template",
		output = "../generated/desktop/wallpaper.sh",
		comment_style = "hash", 
	},
}

--[[local generators = {
  {
    name = "i3",
    module = "generators.i3",
    output = repo .. "/generated/i3/config",
  },
  {
    name = "rofi",
    module = "generators.rofi",
    output = repo .. "/generated/rofi/config.rasi",
  },
  {
	  name = "feh", 
	  module = "generators.feh",
	  output = repo .. "/generated/desktop/wallpaper.sh",
  },
  {
	  name = "polybar",
	  module = "generators.polybar",
	  output = repo .. "/generated/polybar/config.ini",
  }, 
}]] 

local function mkdir_p(path)
  os.execute(string.format("mkdir -p %q", path))
end

local function dirname(path)
  return path:match("(.+)/[^/]+$")
end

local function read_file(path)
	local file = assert(io.open(path, "r"))
	local content = file:read("*a")
	file:close()
	return content 
end 

local function write_file(path, content)
  mkdir_p(dirname(path))

  local file = assert(io.open(path, "w"))
  file:write(content)
  file:close()
end

for _, file in ipairs(files) do 
	local template = read_file(file.template)
	local output = render_template(template, theme, file.comment_style)

	write_file(file.output, output)
	print("generated " .. file.template .. " -> " .. file.output)
end 

--[[for _, gen in ipairs(generators) do
  local generate = require(gen.module)
  local content = generate(theme)

  write_file(gen.output, content)
  print("generated " .. gen.name .. " -> " .. gen.output)
end]]
