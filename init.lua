vim.o.number = true
vim.o.termguicolors = true
vim.o.ignorecase = true
vim.g.mapleader = " "
vim.g.maplocalleader = " "
require('options')
require("osc52").setup()
require('keymaps')
require('config.lazy')
