-- ========================公共配置========================
-- 映射 jj 到 ESC 退出插入模式
vim.keymap.set('i', 'jj', '<ESC>', {
  noremap = true,
  silent = true,
  desc = 'Exit insert mode with jj'
})

-- 设置 Vim 键位映射，修改基本的移动键位
-- 在普通模式(n)和可视模式(v)下重新映射方向键
-- 将 'j' 键映射为 'h'（向左移动）
vim.keymap.set({ 'n', 'v' }, 'j', 'h')
-- 将 'k' 键映射为 'j'（向下移动）
vim.keymap.set({ 'n', 'v' }, 'k', 'j')
-- 将 'l' 键映射为 'k'（向上移动）
vim.keymap.set({ 'n', 'v' }, 'l', 'k')
-- 将 ';' 键映射为 'l'（向右移动）
vim.keymap.set({ 'n', 'v' }, ';', 'l')

-- 将 ';' 键映射为 '
vim.keymap.set('n', '\'', ';')

-- paste without overwriting
vim.keymap.set('v', 'p', 'P')

-- redo
vim.keymap.set('n', 'U', '<C-r>')

-- 单行或多行移动
vim.keymap.set('v', 'K', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'L', ':m \'<-2<CR>gv=gv')

-- clear search highlighting
vim.keymap.set('n', '<Esc>', ':nohlsearch<cr>')

if vim.g.vscode then
  -- ========================VS Code 配置======================
  local cursors = require('vscode-multi-cursor')

  vim.keymap.set({ 'n', 'x', 'i' }, '<c-d>', function()
    cursors.addSelectionToNextFindMatch()
  end)

  vim.keymap.set({ 'n', 'x', 'i' }, '<cs-d>', function()
    cursors.addSelectionToPreviousFindMatch()
  end)

  vim.keymap.set({ 'n', 'x', 'i' }, '<cs-l>', function()
    cursors.selectHighlights()
  end)

  local opts = {
    noremap = true,
    silent = true
  }

  local mappings = {
    --[[单词导航]]
    { 'n', 'w', 'cursorWordPartRight' },       -- 下一个单词部分
    { 'n', 'b', 'cursorWordPartLeft' },        -- 上一个单词部分
    { 'v', 'w', 'cursorWordPartRightSelect' }, -- 选择到下一个单词部分
    { 'v', 'b', 'cursorWordPartLeftSelect' },  -- 选择到上一个单词部分

    --[[代码导航]]
    { 'n', '<leader>gd', 'editor.action.revealDefinition' },   -- 跳转到定义
    { 'n', '<leader>gy', 'editor.action.goToTypeDefinition' }, -- 跳转到类型定义
    { 'n', '<leader>gi', 'editor.action.goToImplementation' }, -- 跳转到实现
    { 'n', '<leader>gr', 'editor.action.goToReferences' },     -- 跳转到引用
    { 'n', '<leader>gs', 'workbench.action.gotoSymbol' },      -- 跳转到符号
    { 'n', '<leader>gl', 'workbench.action.gotoLine' },        -- 跳转到行

    --[[历史导航]]
    { 'n', '<leader>nf', 'workbench.action.navigateForward' },            -- 向前导航
    { 'n', '<leader>nb', 'workbench.action.navigateBack' },               -- 向后导航
    { 'n', '<leader>je', 'workbench.action.navigateToLastEditLocation' }, -- 跳转到上次编辑位置

    --[[查找相关]]
    { 'n', '<leader>ss', 'workbench.action.showAllSymbols' },      -- 显示所有符号
    { 'n', '<leader>sa', 'workbench.action.showCommands' },        -- 显示命令
    { 'n', '<leader>sf', 'workbench.action.quickOpen' },           -- 快速打开
    { 'n', '<leader>ff', 'actions.find' },                         -- 查找
    { 'n', '<leader>fr', 'editor.action.startFindReplaceAction' }, -- 查找替换
    { 'n', '<leader>fg', 'workbench.action.findInFiles' },         -- 在文件中查找
    { 'n', '<leader>rg', 'workbench.action.replaceInFiles' },      -- 在文件中替换

    --[[代码查看]]
    { 'n', '<leader>vd', 'editor.action.peekDefinition' },          -- 查看定义
    { 'n', '<leader>vi', 'editor.action.peekImplementation' },      -- 查看实现
    { 'n', '<leader>vt', 'editor.action.peekTypeDefinition' },      -- 查看类型定义
    { 'n', '<leader>vh', 'editor.action.showHover' },               -- 显示悬停信息
    { 'n', '<leader>fr', 'references-view.findReferences' },        -- 查看引用
    { 'n', '<leader>sr', 'editor.action.referenceSearch.trigger' }, -- 触发引用搜索

    --[[代码操作]]
    { 'n', '<leader>re', 'editor.action.rename' },                  -- 重命名
    { 'n', '<leader>rf', 'editor.action.refactor' },                -- 重构
    { 'n', '<leader>qf', 'editor.action.quickFix' },                -- 快速修复
    { 'n', '<leader>sg', 'editor.action.triggerSuggest' },          -- 触发代码建议
    { { 'n', 'v' }, '<leader>dd', 'codegeex.askcodegeex.comment' }, -- CodeGeeX注释
    { { 'n', 'v' }, '<leader>g', 'workbench.view.scm' },            -- 查看git面板

    --[[编辑器操作]]
    { 'n', '<leader>lu', 'editor.action.copyLinesUpAction' },   -- 向上复制行
    { 'n', '<leader>ld', 'editor.action.copyLinesDownAction' }, -- 向下复制行
    { 'n', '<leader>mu', 'editor.action.moveLinesUpAction' },   -- 向上移动行
    { 'n', '<leader>md', 'editor.action.moveLinesDownAction' }, -- 向下移动行
    { 'n', '<leader>fm', 'editor.action.formatDocument' },      -- 格式化文档
    { 'n', '<leader>oi', 'editor.action.organizeImports' },     -- 整理导入
    { 'n', '<leader>en', 'editor.action.marker.next' },         -- 下一个标记
    { 'n', '<leader>ep', 'editor.action.marker.prev' },         -- 上一个标记

    --[[文件操作]]
    { 'n', '<leader>cp', 'copyFilePath' },                           -- 复制文件路径
    { 'n', '<leader>cr', 'copyRelativeFilePath' },                   -- 复制相对文件路径
    { 'n', '<leader>rl', 'workbench.action.openRecent' },            -- 打开最近文件
    { 'n', '<leader>nf', 'workbench.action.files.newUntitledFile' }, -- 新建无标题文件
    { 'n', '<leader>cf', 'workbench.action.closeActiveEditor' },     -- 关闭当前编辑器
    { 'n', '<leader>fa', 'workbench.action.closeAllEditors' },       -- 关闭所有编辑器
    { 'n', '<leader>of', 'workbench.action.files.openFile' },        -- 打开文件
    { 'n', '<leader>rw', 'workbench.action.reloadWindow' },          -- 重载窗口

    --[[设置相关]]
    { 'n', '<leader>os', 'workbench.action.openSettingsJson' },          -- 打开设置
    { 'n', '<leader>ks', 'workbench.action.openGlobalKeybindings' },     -- 打开全局快捷键
    { 'n', '<leader>kj', 'workbench.action.openGlobalKeybindingsFile' }, -- 打开全局快捷键文件
    { 'n', '<leader>nn', 'notifications.showList' },                     -- 显示通知列表

    --[[编辑器操作]]
    { 'n', '<leader>wv', 'workbench.action.splitEditor' },     -- 垂直分割编辑器
    { 'n', '<leader>wh', 'workbench.action.splitEditorDown' }, -- 水平分割编辑器
    { 'n', '<leader>ww', 'workbench.action.joinTwoGroups' },   -- 合并两个编辑器组
    { 'n', '<leader>wa', 'workbench.action.evenEditorWidths' } -- 均等编辑器宽度
  }

  for _, mapping in ipairs(mappings) do
    local mode, key, command = mapping[1], mapping[2], mapping[3]

    vim.keymap.set(mode, key, function()
      vim.fn.VSCodeNotify(command)
    end, opts)
  end
else
  -- ========================Neovim 配置========================
  -- 使用 nvchad 的默认映射
  require "nvchad.mappings"

  -- 设置一个键盘映射，用于在普通模式下使用 Ctrl+d 快捷键
  -- 该快捷键会执行一系列操作：标记当前位置，执行搜索
  vim.keymap.set('n', '<c-d>', 'mciw*:nohl<cr>', {
    remap = true -- 允许此映射被递归调用，即可以重新映射此映射
  })

  -- 退出当前窗口
  vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "退出当前窗口", noremap = true, silent = true })

  -- 强制退出当前窗口
  vim.keymap.set("n", "<leader>Q", "<cmd>q!<CR>", { desc = "强制退出当前窗口", noremap = true, silent = true })

  -- 退出所有窗口
  vim.keymap.set("n", "<leader>qq", "<cmd>qa<CR>", { desc = "退出所有窗口", noremap = true, silent = true })

  -- 强制退出所有窗口
  vim.keymap.set("n", "<leader>QQ", "<cmd>qa!<CR>", { desc = "强制退出所有窗口", noremap = true, silent = true })
end
