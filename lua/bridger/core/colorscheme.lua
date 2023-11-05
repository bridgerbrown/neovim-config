local function isDarkMode()
    local _, darkModeStatus = pcall(function()
        return vim.fn.system('defaults read -g AppleInterfaceStyle')
    end)
    return darkModeStatus == "Dark\n"
end

vim.g.alduin_Shout_Become_Ethereal = 1
vim.g.alduin_Shout_Animal_Allegiance = 1

local colorscheme = isDarkMode() and "alduin" or "kanagawa-wave"


local status, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status then
    print("Colorscheme not found!")
    return
end
