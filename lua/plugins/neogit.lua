return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",     -- 可选，增强 diff 查看
      "nvim-telescope/telescope.nvim", -- 可选
    },
    cmd = "Neogit",
    keys = {
      { "<leader>gg", "<cmd>Neogit<CR>", desc = "Open Neogit" },
    },
    config = true,  -- 使用默认配置
  },
}
