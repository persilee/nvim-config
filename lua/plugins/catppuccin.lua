return {
  "catppuccin/nvim",
  name = "catppuccin",
  opts = {
    -- 选择主题风格：latte（浅）、frappe（中浅）、macchiato（中深）、mocha（深）
    flavour = "mocha",

    -- 透明背景
    transparent_background = true,

    -- 终端颜色
    term_colors = true,

    -- 暗淡未激活窗口
    dim_inactive = {
      enabled = false,
      shade = "dark",
      percentage = 0.15,
    },

    -- 组件样式
    styles = {
      comments = { "italic" },
      conditionals = { "italic" },
      loops = {},
      functions = {},
      keywords = {},
      strings = {},
      variables = {},
      numbers = {},
      booleans = {},
      properties = {},
      types = {},
      operators = {},
    },

    -- 集成插件
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      telescope = true,
      notify = false,
      mini = false,
      -- 可以添加更多集成...
    },

    -- 颜色覆盖
    color_overrides = {
      mocha = {
        base = "#000000",     -- 基础背景色（透明背景下建议设为接近终端背景的颜色）
        mantle = "#000000",   -- 边框背景色
        crust = "#000000",    -- 最外层背景色
        text = "#ffffff",     -- 文本颜色
        subtext1 = "#e0e0e0", -- 次要文本颜色
        subtext0 = "#d0d0d0", -- 更次要文本颜色
        overlay2 = "#b0b0b0", -- 覆盖层颜色
        overlay1 = "#a0a0a0", -- 覆盖层颜色
        overlay0 = "#909090", -- 覆盖层颜色
        surface2 = "#808080", -- 表面层颜色
        surface1 = "#707070", -- 表面层颜色
        surface0 = "#606060", -- 表面层颜色
      },
    },

    -- 高亮覆盖
    highlight_overrides = {
      mocha = function(mocha)
        return {
          -- 自定义高亮组
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none", fg = mocha.overlay0 },
          TelescopeBorder = { bg = "none", fg = mocha.overlay0 },
          TelescopeNormal = { bg = "none" },
          TelescopePromptNormal = { bg = "none" },
          TelescopeResultsNormal = { bg = "none" },
          TelescopePreviewNormal = { bg = "none" },
          NvimTreeNormal = { bg = "none" },
          NvimTreeWinSeparator = { bg = "none", fg = mocha.overlay0 },
          StatusLine = { bg = "none", fg = mocha.text },
          StatusLineNC = { bg = "none", fg = mocha.subtext0 },
          CursorLine = { bg = mocha.surface0 .. "20" }, -- 半透明
          CursorLineNr = { fg = mocha.text, bg = "none" },
          LineNr = { fg = mocha.overlay0, bg = "none" },
        }
      end,
    },
  },
}
