local status, _ = pcall(vim.cmd, "colorscheme noirbuddy")
if not status then
	print("Colorscheme not found!")
	return
end
