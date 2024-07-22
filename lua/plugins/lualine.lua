return {
  "nvim-lualine/lualine.nvim",
  opts = {
    extensions = {
      'neo-tree',
    },
    {
      function()
        return vim.g.remote_neovim_host and ("Remote: %s"):format(vim.uv.os_gethostname()) or ""
      end,
      padding = { right = 1, left = 1 },
      separator = { left = "", right = "" },
    },
  },
  config = true
}
