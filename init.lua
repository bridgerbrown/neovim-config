require("bridger.plugins-setup")
require("bridger.core.options")
require("bridger.core.keymaps")
require("bridger.core.colorscheme")
require("kanagawa")
vim.opt.termguicolors = true
require("bufferline").setup({
	options = {
		tab_size = 13,
		separator_style = "slant",
		hover = {
			enabled = true,
			delay = 200,
			reveal = { 'close' },
		},
	},
})
require("bridger.plugins.comment")
require("bridger.plugins.nvim-tree")
require("bridger.plugins.lualine")
require("bridger.plugins.telescope")
require("bridger.plugins.nvim-cmp")
require("bridger.plugins.lsp.mason")
require("bridger.plugins.lsp.lspsaga")
require("bridger.plugins.lsp.lspconfig")
require("bridger.plugins.lsp.null-ls")
require("bridger.plugins.autopairs")
require("bridger.plugins.treesitter")
require("bridger.plugins.gitsigns")
