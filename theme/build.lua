-- theme/build.lua

package.path = package.path .. ";./?.lua;./?/init.lua"

local theme = require("themes.penrose") -- Change Theme
local repo = os.getenv("HOME") .. "/Dev/penrose-dotfiles" -- Change directory path

local render_template = require("render")

local files = {
	{
		template = "../config/i3/config.template",
		output = "../generated/i3/config",
		comment_style = "hash",
	},
	{
		template = "../config/polybar/config.template.ini",
		output = "../generated/polybar/config.ini",
		comment_style = "semicolon",
	},
	{
		template = "../config/rofi/config.template.rasi",
		output = "../generated/rofi/config.rasi",
		comment_style = "css", 
	},
	{
		template = "../config/desktop/wallpaper.template.sh",
		output = "../generated/desktop/wallpaper.sh",
		comment_style = "hash", 
	},
}

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
