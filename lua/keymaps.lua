local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '

-- Fast saving with <leader> and s
map('n', '<leader>s', '<CMD>w<CR>')

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':qa!<CR>')

-- Visual Indenting, Preserving Visual Block

map('v', '>', '>gv')
map('v', '<', '<gv')


