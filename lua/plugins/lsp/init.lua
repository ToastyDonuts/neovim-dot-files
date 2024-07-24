return {
  {
    'williamboman/mason.nvim',
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    priority = 500,
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {},
    priority = 480,
    config = function ()
      local default = {
        on_attach = function(client, bufnr)

        end,
        -- local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require("cmp_nvim_lsp").default_capabilities()
      }
      require("plugins.lsp.servers.lua").setup(default)
      require("plugins.lsp.servers.c").setup(default)
      require("plugins.lsp.servers.javascript").setup(default)
    end
  },
  {
    "williamboman/mason-lspconfig.nvim"},
    opts = {
      automatic_installation = true
    },
    priority = 490
  },
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    priority = 470,
    opts = {
      enabled = true,
      library = {
        -- Library items can be absolute paths
        -- "~/projects/my-awesome-lib",
        -- Or relative, which means they will be resolved as a plugin
        -- "LazyVim",
        -- When relative, you can also provide a path to the library in the plugin dir
        "luvit-meta/library", -- see below
      },
  },
  { "Bilal2453/luvit-meta", lazy = true, priority = 470 },
}
