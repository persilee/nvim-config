require("nvchad.configs.lspconfig").defaults()

-- 设置常用的 LSP 服务器
local lspconfig = require "lspconfig"
local servers = {
  "html",
  "cssls",
  "lua_ls", -- Lua 语言服务器
  "pylsp",  -- Python 语言服务器 (已安装)
}

-- 配置 LSP 服务器
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = require("nvchad.configs.lspconfig").on_attach,
    on_init = require("nvchad.configs.lspconfig").on_init,
    capabilities = require("nvchad.configs.lspconfig").capabilities,
  }
end

-- 特殊配置 Python LSP
lspconfig.pylsp.setup {
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = { enabled = false }, -- 禁用 pycodestyle 检查
        mccabe = { enabled = false },      -- 禁用复杂度检查
        pyflakes = { enabled = true },     -- 启用语法检查
        autopep8 = { enabled = false },    -- 禁用自动格式化
        yapf = { enabled = false },        -- 禁用 yapf 格式化
      },
    },
  },
}
