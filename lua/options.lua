vim.o.laststatus = 3
vim.o.showmode = false
vim.opt.shell = "nu"

vim.o.cursorline = true
vim.o.cursorlineopt = "number"
vim.o.scrolloff = 8
vim.o.wrap = false
vim.o.termguicolors = true
vim.o.colorcolumn = "80"

vim.opt.fillchars = { eob = " " }
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.mouse = "a"

vim.o.signcolumn = "yes"
vim.opt.isfname:append "@-@"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.timeoutlen = 400
vim.o.updatetime = 250

-- Buffer
vim.opt.hidden = true
vim.opt.autoread = true
vim.opt.autowrite = true
vim.opt.bsdir = "buffer"

-- Indenting
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.softtabstop = 2

-- Numbers
vim.o.number = true
vim.o.relativenumber = true
vim.o.ruler = false

-- Swap & Undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
