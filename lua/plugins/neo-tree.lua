return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  keys = {
    {
      "<leader>e",
      function()
        require("neo-tree.command").execute({
          toggle = true,
          dir = vim.loop.cwd(), -- 可选，打开当前工作目录
        })
      end,
      desc = "Explorer NeoTree (cwd)",
    },
    -- 可选：打开当前文件所在目录
    {
      "<leader>E",
      function()
        require("neo-tree.command").execute({
          toggle = true,
          reveal = true,
        })
      end,
      desc = "Explorer NeoTree (reveal file)",
    },
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        follow_current_file = {
          enabled = true,
        },
      },
      window = {
        width = 30,
      },
    })
  end,
}
