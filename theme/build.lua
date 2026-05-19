-- theme/build.lua

package.path = package.path .. ";./?.lua;./?/init.lua"

-- local theme = require("penrose")

local repo = os.getenv("HOME") .. "/Dev/penrose_dotfiles"

local themes = repo .. "/theme/themes"
local theme = require("themes.juggernaut") -- CHANGE HERE TO APPLY NEW THEME

local generators = {
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
}

local function mkdir_p(path)
  os.execute(string.format("mkdir -p %q", path))
end

local function dirname(path)
  return path:match("(.+)/[^/]+$")
end

local function write_file(path, content)
  mkdir_p(dirname(path))

  local file = assert(io.open(path, "w"))
  file:write(content)
  file:close()
end

for _, gen in ipairs(generators) do
  local generate = require(gen.module)
  local content = generate(theme)

  write_file(gen.output, content)
  print("generated " .. gen.name .. " -> " .. gen.output)
end
