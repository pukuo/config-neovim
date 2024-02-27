return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- disable netrw at the very start of your init.lua
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- optionally enable 24-bit colour
    vim.opt.termguicolors = true
    require("nvim-tree").setup ({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    })
    -- 设置 nvim-tree 的快捷键绑定
    local map = vim.api.nvim_set_keymap

    -- 例如，将 <Leader>t 设置为打开/关闭 nvim-tree 文件浏览器
    map('n', '<Leader>t', ':NvimTreeToggle<CR>', {noremap = true})

    -- 或者将 F2 键设置为刷新 nvim-tree
    map('n', '<F2>', ':NvimTreeRefresh<CR>', {noremap = true})
  end,
}