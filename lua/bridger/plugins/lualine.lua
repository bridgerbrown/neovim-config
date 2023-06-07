local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- get lualine nightfly theme
local lualine_nightfly = require("lualine.themes.nightfly")

-- new colors for theme
local new_colors = {
	blue = "#9cabca",
	light_green = "#dcd7ba",
	green = "#e6c384",
	red = "#e46876",
	purple = "#957fb8",
	dark_blue = "#2a2a37",
	yellow = "#e6c384",
	black = "#000000",
}

-- change nightlfy theme colors
lualine_nightfly.normal.a.bg = new_colors.blue
lualine_nightfly.normal.b.bg = new_colors.dark_blue
lualine_nightfly.normal.c.bg = new_colors.dark_blue

lualine_nightfly.insert.a.bg = new_colors.green
lualine_nightfly.insert.b.bg = new_colors.dark_blue

lualine_nightfly.visual.a.bg = new_colors.purple
lualine_nightfly.visual.b.bg = new_colors.dark_blue

lualine_nightfly.replace.a.bg = new_colors.red
lualine_nightfly.replace.b.bg = new_colors.dark_blue

lualine_nightfly.command = {
	a = {
		gui = "bold",
		bg = new_colors.yellow,
		fg = new_colors.black, -- black
	},
}

-- configure lualine with modified theme
lualine.setup({
	options = {
		theme = lualine_nightfly,
	},
})
