
return {
  "nvim-lualine/lualine.nvim",
  priority = 500,
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
    -- winbar = {
    --   lualine_c = {
    --     {
    --       "navic",
    --       color_correction = nil,
    --       navic_opts = nil
    --     }
    --   }
    -- }
  },
}
