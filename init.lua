---@diagnostic disable: different-requires
-- 在 init.lua 开头添加
package.path = package.path .. ";/usr/local/bin/lua"
package.cpath = package.cpath .. ";/usr/local/lib/lua/5.1/?.so"
vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  install = { colorscheme = { "catppuccin", } },
  checker = { enabled = true },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "autocmds"

vim.schedule(function()
  require "mappings"
end)

-- flash
vim.api.nvim_set_hl(0, 'FlashLabel', {
  bg = '#e11684',
  fg = 'white'
})

vim.api.nvim_set_hl(0, 'FlashMatch', {
  bg = '#7c634c',
  fg = 'white'
})

vim.api.nvim_set_hl(0, 'FlashCurrent', {
  bg = '#7c634c',
  fg = 'white'
})

-- 额外透明化处理
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    -- 透明化所有窗口和弹窗
    -- 设置普通文本区域的背景为透明
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- 设置浮动窗口的背景为透明
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    -- 设置浮动窗口边框的背景为透明
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
    -- 设置 Telescope 窗口边框的背景为透明
    vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
    -- 设置 NvimTree 文件树窗口的背景为透明
    vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
    -- 设置 WhichKey 浮动窗口的背景为透明
    vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = "none" })
    -- 设置通知窗口的背景为透明
    vim.api.nvim_set_hl(0, "NotifyBackground", { bg = "none" })
  end,
})
