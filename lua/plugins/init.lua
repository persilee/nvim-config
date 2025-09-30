return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- NvChad
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins"
  },

  -- 这是一个用于 VSCode 环境的多光标操作插件
  {
    'vscode-neovim/vscode-multi-cursor.nvim',
    event = 'VeryLazy',
    cond = not not vim.g.vscode,
    opts = {},
  },

  {
    "tpope/vim-surround",
    event = "VeryLazy",   -- 懒加载，在需要时才加载
    dependencies = {
      "tpope/vim-repeat", -- 可选，用于支持 . 命令重复 surround 操作
    },
  },

  {
    "michaeljsmith/vim-indent-object",
    event = "VeryLazy", -- 懒加载，在需要时才加载
  },

  -- flash
  'folke/flash.nvim',
}
