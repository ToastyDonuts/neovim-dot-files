return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    local configs = require("nvim-treesitter.configs")

    vim.filetype.add({
      pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
    })

    configs.setup({
      ignore_install = {},
      modules = {},
      auto_install = true,
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
      sync_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
