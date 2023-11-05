local status, lualine = pcall(require, "lualine")
if not status then
	return
end


local colors = {
  sumiInk0 = "#16161D",
  fujiWhite = "#DCD7BA",
  springGreen = "#98BB6C",
  crystalBlue = "#7E9CD8",
  springViolet1 = "#938AA9",
  springViolet2 = "#9CABCA",
  sakuraPink = "#D27E99",
}

local function icon()
  return [[󰥳]]
end

local function isDarkMode()
    local _, darkModeStatus = pcall(function()
        return vim.fn.system('defaults read -g AppleInterfaceStyle')
    end)
    return darkModeStatus == "Dark\n"
end

local colorscheme = isDarkMode() and "alduin" or "kanagawa-wave"

if colorscheme == "kanagawa-wave" then
  require("lualine").setup({
    options = {
      icons_enabled = true,
      theme = {
        normal = {
          a = { fg = colors.sumiInk0, bg = colors.springGreen },
          b = { fg = colors.springViolet1, bg = colors.sumiInk0 },
          c = { fg = colors.fujiWhite, bg = colors.sumiInk0 },
          z = { fg = colors.fujiWhite, bg = colors.sumiInk0 },
        },
        insert = {
          a = { fg = colors.sumiInk0, bg = colors.fujiWhite },
          z = { fg = colors.fujiWhite, bg = colors.sumiInk0 },
        },
        visual = {
          a = { fg = colors.sumiInk0, bg = colors.springViolet2 },
          z = { fg = colors.fujiWhite, bg = colors.sumiInk0 },
        },
        replace = {
          a = { fg = colors.sumiInk0, bg = colors.sakuraPink },
          z = { fg = colors.fujiWhite, bg = colors.sumiInk0 },
        },
      },
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      },
    },
    sections = {
      lualine_a = { {"mode", icons_enabled = true, padding = 2 } },
      lualine_b = { "branch", "diff", "diagnostics" },
      lualine_c = { "filename" },
      lualine_x = { "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = { "location" },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {},
  })
else
  require("lualine").setup({
    options = {
      icons_enabled = true,
      theme = 'spaceduck',
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      },
    },
    sections = {
      lualine_a = { {"mode", icons_enabled = true, padding = 2 } },
      lualine_b = { "branch", "diff", "diagnostics" },
      lualine_c = { "filename" },
      lualine_x = { "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = { "location" },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {},
  })
end
