# Neovim 配置使用指南

## 环境状态 ✅
- **Neovim 版本**: 0.11.4
- **插件管理器**: Lazy.nvim
- **主题**: NvChad v2.5
- **语言服务器**: 已配置 Python (pylsp), Lua (lua_ls), HTML, CSS

## 重要快捷键

### 基础操作
- **Leader 键**: `空格`
- **保存文件**: `<leader>s` 或 `:w`
- **打开配置**: `<leader>c` (打开 init.lua)
- **打开快捷键配置**: `<leader>m` (打开 mappings.lua)

### 自定义移动键位 (JKLS 布局)
- `j` → 左移 (h)
- `k` → 下移 (j) 
- `l` → 上移 (k)
- `;` → 右移 (l)
- `\` → 重复上次搜索 (;)

### 编辑操作
- **撤销**: `u`
- **重做**: `U` (映射为 Ctrl+r)
- **粘贴不覆盖**: `p` (在 visual 模式下)
- **移动选中行**: `K` (向下), `L` (向上)
- **清除搜索高亮**: `Esc`

### Flash.nvim 快速跳转
- 安装了 flash.nvim 插件用于快速文本跳转
- 自定义了高亮颜色 (粉红色标签，棕色匹配)

## LSP 功能
- **Python**: pylsp 服务器已配置，支持语法检查
- **Lua**: lua_ls 服务器支持 Neovim API
- **Web**: HTML/CSS 语言服务器已启用

## 系统集成
- ✅ 系统剪贴板已启用 (`clipboard=unnamedplus`)
- ✅ 行号显示 (number + relativenumber)
- ✅ 智能搜索 (ignorecase + smartcase)
- ✅ 真彩色支持 (termguicolors)
- ✅ 始终显示符号列 (signcolumn=yes)

## VS Code 集成
- 配置包含 vscode-multi-cursor.nvim 插件
- 大量 VS Code 命令映射 (仅在 VS Code 环境下生效)
- 支持代码导航、搜索、重构等功能

## 故障排除

### 如果插件未加载
```bash
# 进入 Neovim，同步插件
nvim
:Lazy sync
```

### 如果 LSP 不工作
```bash
# 检查 LSP 状态
:LspInfo

# 安装语言服务器 (通过 Mason)
:Mason
```

### 重新安装插件
```bash
# 删除插件缓存
rm -rf ~/.local/share/nvim/lazy/
# 重新打开 Neovim，插件会自动安装
```

## 配置文件结构
```
~/.config/nvim/
├── init.lua              # 主配置文件
├── lua/
│   ├── options.lua       # Vim 选项配置
│   ├── mappings.lua      # 键位映射
│   ├── autocmds.lua      # 自动命令
│   ├── chadrc.lua        # NvChad 配置
│   ├── configs/
│   │   ├── lazy.lua      # Lazy.nvim 配置
│   │   ├── lspconfig.lua # LSP 服务器配置
│   │   └── conform.lua   # 代码格式化配置
│   └── plugins/
│       └── init.lua      # 插件定义
└── lazy-lock.json        # 插件版本锁定
```

最后更新：2024年9月26日