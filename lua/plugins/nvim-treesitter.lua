return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "vue",
        "javascript",
        "typescript",
        "css",
        "html",
        "json",
        "lua"
      },
      auto_install = true,

      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",    -- a function: 选择整个函数
            ["if"] = "@function.inner",    -- inner function: 选择函数内部内容
            ["ac"] = "@class.outer",       -- a class: 选择整个类
            ["ic"] = "@class.inner",       -- inner class: 选择类内部内容
            ["ai"] = "@conditional.outer", -- a conditional: 选择整个条件语句
            ["ii"] = "@conditional.inner", -- inner conditional: 选择条件语句内部内容
            ["al"] = "@loop.outer",        -- a loop: 选择整个循环
            ["il"] = "@loop.inner",        -- inner loop: 选择循环内部内容
            ["am"] = "@call.outer",        -- a method call: 选择整个方法调用
            ["im"] = "@call.inner",        -- inner method call: 选择方法调用内部内容
            ["ab"] = "@block.outer",       -- a block: 选择整个代码块
            ["ib"] = "@block.inner",       -- inner block: 选择代码块内部内容
            ["aa"] = "@parameter.outer",   -- a argument: 选择整个参数
            ["ia"] = "@parameter.inner",   -- inner argument: 选择参数内部内容
            ["a/"] = "@comment.outer",     -- a comment: 选择整个注释
            ["i/"] = "@comment.inner",     -- inner comment: 选择注释内部内容
            ["as"] = "@statement.outer",   -- a statement: 选择整个语句
            ["ga="] = "@assignment.outer", -- goto assignment: 选择整个赋值语句
            ["gi="] = "@assignment.inner", -- goto inner: 选择赋值语句内部内容
            ["gl="] = "@assignment.lhs",   -- goto left: 选择赋值语句左侧
            ["gr="] = "@assignment.rhs",   -- goto right: 选择赋值语句右侧
            ["ar"] = "@return.outer",      -- a return: 选择整个返回语句
            ["ir"] = "@return.inner",      -- inner return: 选择返回语句内部内容
            ["az"] = "@regex.outer",       -- a regex: 选择整个正则表达式
            ["iz"] = "@regex.inner",       -- inner regex: 选择正则表达式内部内容
          },
        },

        move = {
          enable = true,
          goto_next_start = {
            ["]f"] = "@function.outer",    -- ]f: 跳转到下一个函数开始
            ["]c"] = "@class.outer",       -- ]c: 跳转到下一个类开始
            ["]i"] = "@conditional.outer", -- ]i: 跳转到下一个条件语句开始
            ["]l"] = "@loop.outer",        -- ]l: 跳转到下一个循环开始
            ["]m"] = "@call.outer",        -- ]m: 跳转到下一个方法调用开始
            ["]b"] = "@block.outer",       -- ]b: 跳转到下一个代码块开始
            ["]a"] = "@parameter.inner",   -- ]a: 跳转到下一个参数
            ["]/"] = "@comment.outer",     -- ]/: 跳转到下一个注释开始
            ["]s"] = "@statement.outer",   -- ]s: 跳转到下一个语句开始
            ["]="] = "@assignment.outer",  -- ]=: 跳转到下一个赋值语句开始
            ["]r"] = "@return.outer",      -- ]r: 跳转到下一个返回语句开始
          },
          goto_next_end = {
            ["]F"] = "@function.outer",    -- ]F: 跳转到下一个函数结束
            ["]C"] = "@class.outer",       -- ]C: 跳转到下一个类结束
            ["]I"] = "@conditional.outer", -- ]I: 跳转到下一个条件语句结束
            ["]L"] = "@loop.outer",        -- ]L: 跳转到下一个循环结束
            ["]M"] = "@call.outer",        -- ]M: 跳转到下一个方法调用结束
            ["]B"] = "@block.outer",       -- ]B: 跳转到下一个代码块结束
            ["]A"] = "@parameter.inner",   -- ]A: 跳转到下一个参数结束
          },
          goto_previous_start = {
            ["[f"] = "@function.outer",    -- [f: 跳转到上一个函数开始
            ["[c"] = "@class.outer",       -- [c: 跳转到上一个类开始
            ["[i"] = "@conditional.outer", -- [i: 跳转到上一个条件语句开始
            ["[l"] = "@loop.outer",        -- [l: 跳转到上一个循环开始
            ["[m"] = "@call.outer",        -- [m: 跳转到上一个方法调用开始
            ["[b"] = "@block.outer",       -- [b: 跳转到上一个代码块开始
            ["[a"] = "@parameter.inner",   -- [a: 跳转到上一个参数
            ["[/"] = "@comment.outer",     -- [/: 跳转到上一个注释开始
            ["[s"] = "@statement.outer",   -- [s: 跳转到上一个语句开始
            ["[="] = "@assignment.outer",  -- [=: 跳转到上一个赋值语句开始
            ["[r"] = "@return.outer",      -- [r: 跳转到上一个返回语句开始
          },
          goto_previous_end = {
            ["[F"] = "@function.outer",    -- [F: 跳转到上一个函数结束
            ["[C"] = "@class.outer",       -- [C: 跳转到上一个类结束
            ["[I"] = "@conditional.outer", -- [I: 跳转到上一个条件语句结束
            ["[L"] = "@loop.outer",        -- [L: 跳转到上一个循环结束
            ["[M"] = "@call.outer",        -- [M: 跳转到上一个方法调用结束
            ["[B"] = "@block.outer",       -- [B: 跳转到上一个代码块结束
            ["[A"] = "@parameter.inner",   -- [A: 跳转到上一个参数结束
          },
        },

        swap = {
          enable = true,
          swap_next = {
            ["<leader>na"] = "@parameter.inner", -- <leader>na: 交换到下一个参数
            ["<leader>nf"] = "@function.outer",  -- <leader>nf: 交换到下一个函数
            ["<leader>nb"] = "@block.outer",     -- <leader>nb: 交换到下一个代码块
          },
          swap_previous = {
            ["<leader>pa"] = "@parameter.inner", -- <leader>pa: 交换到上一个参数
            ["<leader>pf"] = "@function.outer",  -- <leader>pf: 交换到上一个函数
            ["<leader>pb"] = "@block.outer",     -- <leader>pb: 交换到上一个代码块
          },
        },
      },
    })

    -- Make movements repeatable with ' and ,
    local ts_repeat_move = require("nvim-treesitter.textobjects.repeatable_move")
    vim.keymap.set({ "n", "x", "o" }, "'", ts_repeat_move.repeat_last_move_next)
    vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_previous)
  end
}
