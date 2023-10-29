local function isDarkMode()
    local _, darkModeStatus = pcall(function()
        return vim.fn.system('defaults read -g AppleInterfaceStyle')
    end)
    return darkModeStatus == "Dark\n"
end

local colorscheme = isDarkMode() and "kanagawa-wave" or "kanagawa-wave"

local status, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status then
    print("Colorscheme not found!")
    return
end
