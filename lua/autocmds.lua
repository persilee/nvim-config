-- require "nvchad.autocmds"

-- open config
vim.cmd('nmap <leader>c :e ~/.config/nvim/init.lua<cr>')

-- open mappings
vim.cmd('nmap <leader>m :e ~/.config/nvim/lua/mappings.lua<cr>')

-- save
vim.cmd('nmap <leader>s :w<cr>')

-- skip folds (down, up)
vim.cmd('nmap k gj')
vim.cmd('nmap l gk')
