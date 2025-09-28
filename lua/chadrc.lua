local M = {}

M.base46 = {
  theme = "catppuccin",
  transparency = true,
  hl_override = {
    StatusLine = { bg = "none" },
    StatusLineNC = { bg = "none" },
    StlSeparator = { bg = "none" },
    StlSeparatorNC = { bg = "none" },
  },
}

M.ui = {
  theme = "catppuccin",
  transparency = true,
  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
  },
}

return M
