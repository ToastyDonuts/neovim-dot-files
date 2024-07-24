local server = {}

server.setup = function (defaults)
  local opts = {}
  require'lspconfig'.clangd.setup(vim.tbl_deep_extend('force', defaults, opts))
end

return server


