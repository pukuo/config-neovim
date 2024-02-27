-- 在你的 init.lua 或者单独的 keybindings.lua 文件中添加以下内容
local map = vim.api.nvim_set_keymap

-- 为 nvim-tree 设置快捷键
map("n", "<M-m>", ":NvimTreeToggle<CR>", {noremap = true})

-- 上面的命令表示在普通模式（n）下按下 Alt+m 时执行 NvimTreeToggle 命令
