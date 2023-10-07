local function isDarkMode()
    local _, darkModeStatus = pcall(function()
        return vim.fn.system('defaults read -g AppleInterfaceStyle')
    end)
    return darkModeStatus == "Dark\n"
end

local colorscheme = isDarkMode() and "fahrenheit" or "kanagawa-wave"

if colorscheme == "spaceduck" then
    if vim.fn.exists('+termguicolors') then
        vim.o.t_8f = "\27[38;2;%lu;%lu;%lum"
        vim.o.t_8b = "\27[48;2;%lu;%lu;%lum"
        vim.opt.termguicolors = true
    end
end

local status, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status then
    print("Colorscheme not found!")
    return
end
