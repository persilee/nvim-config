require "nvchad.options"

-- 键盘延迟优化
vim.opt.timeoutlen = 100
vim.opt.ttimeoutlen = 1
vim.opt.ttimeout = true
vim.opt.updatetime = 250

-- sync system clipboard
vim.opt.clipboard = 'unnamedplus'

-- search ignoring case
vim.opt.ignorecase = true

-- disable "ignorecase" option if the search pattern contains upper case characters
vim.opt.smartcase = true

-- show line number
vim.opt.number = true

-- show relative line number
vim.opt.relativenumber = true

vim.opt.termguicolors = true
vim.opt.signcolumn = 'yes'
