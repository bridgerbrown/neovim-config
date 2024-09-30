vim.opt.nu = true
vim.opt.relativenumber = true

-- tabs & indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- line wrapping
vim.opt.wrap = false

-- appearance
vim.opt.cursorline = true
vim.opt.termguicolors = true

-- swapping
vim.opt.swapfile = false
vim.opt.backup = false

-- undodir
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.g.mapleader = " "

