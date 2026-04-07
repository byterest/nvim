-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- 推荐使用 stable 分支
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 现在调用 setup
require("lazy").setup({
  spec = {
    -- 自动导入 lua/plugins/ 目录下所有 .lua 文件
    { import = "plugins" },
  },
  -- 可选的全局配置
  install = { colorscheme = { "habamax" } },
  checker = { enabled = true },        -- 自动检查插件更新
  performance = {
    rtp = {
      disabled_plugins = { "netrwPlugin" }, -- 禁用不需要的内置插件
    },
  },
})
