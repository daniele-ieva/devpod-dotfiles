local opt = vim.opt

-- set tab size and options
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
-- disable line wrap
opt.wrap = false
-- enable line number
opt.number = true
-- show cursor line
opt.cursorline = true
-- search options (ignores case unless using mixed case)
opt.ignorecase = true
opt.smartcase = true

-- Enable termguicolors
opt.termguicolors = true

-- Use relative line number instead of absolute
vim.wo.relativenumber = true

-- enable scrolloff
opt.scrolloff = 15

opt.hlsearch = true

opt.clipboard = "unnamedplus"
