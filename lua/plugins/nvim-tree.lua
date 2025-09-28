return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    -- 其他配置...

    -- 高亮配置
    renderer = {
      highlight_git = true,
      highlight_opened_files = "name",
      highlight_modified = "name",
    },

    -- UI 配置
    view = {
      width = 20,
      side = "left",
      adaptive_size = true,
      cursorline = true,
    },

    -- 事件配置
    on_attach = function(bufnr)
      local api = require("nvim-tree.api")

      -- 默认映射
      api.config.mappings.default_on_attach(bufnr)

      -- 你可以在这里添加自定义映射
    end,
  },

  -- 配置高亮组
  config = function(_, opts)
    require("nvim-tree").setup(opts)

    -- 设置 nvim-tree 选中行背景
    vim.api.nvim_set_hl(0, "NvimTreeCursorLine", {
      bg = "#3b4252",
      fg = "#ffffff",
      blend = 50,
    })

    -- 设置 nvim-tree 正常行背景（可选，用于对比）
    vim.api.nvim_set_hl(0, "NvimTreeNormal", {
      bg = "none", -- 透明背景
      fg = "#e5e9f0",
    })

    -- 设置 nvim-tree 根目录背景
    vim.api.nvim_set_hl(0, "NvimTreeRootFolder", {
      bg = "none",
      fg = "#81a1c1",
      bold = true,
    })

    -- 设置 nvim-tree 文件夹背景
    vim.api.nvim_set_hl(0, "NvimTreeFolderName", {
      bg = "none",
      fg = "#81a1c1",
    })

    -- 设置 nvim-tree 文件背景
    vim.api.nvim_set_hl(0, "NvimTreeFileName", {
      bg = "none",
      fg = "#e5e9f0",
    })

    -- 设置 nvim-tree 图标背景
    vim.api.nvim_set_hl(0, "NvimTreeFileIcon", {
      bg = "none",
      fg = "#81a1c1",
    })
  end,
}
