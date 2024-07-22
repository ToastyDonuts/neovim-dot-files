local g = vim.g -- Global
local opt = vim.opt -- Options
local o = vim.o

vim.cmd([[nnoremap \ :Neotree reveal<cr>]])

opt.signcolumn="yes"
opt.tabstop=2
opt.shiftwidth=2
opt.smarttab=true
opt.expandtab=true
opt.number=true
opt.autoindent=true
opt.wrap=false
opt.swapfile = false

o.termguicolors = true

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

vim.diagnostic.config({
  update_in_insert = true
})


opt.undodir="/home/super/.stuff/nvim_undo/"
opt.undofile=true

