local function isDarkMode()
    local _, darkModeStatus = pcall(function()
        return vim.fn.system('defaults read -g AppleInterfaceStyle')
    end)
    return darkModeStatus == "Dark\n"
end

local colorScheme = isDarkMode() and "kanagawa" or "kanagawa"


local status, _ = pcall(vim.cmd, "colorscheme " .. colorScheme)
if not status then
	print("Colorscheme not found!")
	return
end
