return {
  "folke/tokyonight.nvim",
  opts = {
    -- 主题风格选择：storm, moon, night, day
    style = "night",

    -- 透明背景
    transparent = true,

    -- 终端颜色
    terminal_colors = true,

    -- 主题配置
    styles = {
      -- 关键字样式
      keywords = { italic = true },
      -- 函数名样式
      functions = { italic = false },
      -- 变量名样式
      variables = { italic = false },
      -- 注释样式
      comments = { italic = true, bold = false },
      -- 字符串样式
      strings = { italic = false },
      -- 数字样式
      numbers = { italic = false },
      -- 布尔值样式
      booleans = { italic = true },
      -- 属性样式
      properties = { italic = false },
      -- 类型样式
      types = { italic = false, bold = true },
      sidebars = "transparent", -- style for sidebars, see below
      floats = "transparent",   -- style for floating windows
    },

    -- 侧边栏配置
    sidebars = {
      "qf",
      "help",
      "terminal",
      "packer",
      "NvimTree",
      "TelescopePrompt",
      "TelescopeResults",
    },

    -- 高亮配置
    on_highlights = function(hl, c)
      -- 自定义高亮组
      hl.CursorLine = { bg = c.bg_highlight }
      hl.LineNr = { fg = c.fg_gutter, bg = c.bg }
      hl.LineNrAbove = { fg = c.fg_gutter, bg = c.bg }
      hl.LineNrBelow = { fg = c.fg_gutter, bg = c.bg }
      hl.StatusLine = { bg = c.bg, fg = c.fg }
      hl.StatusLineNC = { bg = c.bg, fg = c.fg_dark }
    end,
  },
}
