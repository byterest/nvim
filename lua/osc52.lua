local M = {}

function M.setup()
  vim.g.clipboard = {
    name = 'osc52',
    copy = {
      ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
      ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
    },
    paste = {
      ['+'] = function()
        return { vim.fn.getreg('"') }, vim.fn.getregtype('"')
      end,
      ['*'] = function()
        return { vim.fn.getreg('"') }, vim.fn.getregtype('"')
      end,
    },
  }
end

return M
