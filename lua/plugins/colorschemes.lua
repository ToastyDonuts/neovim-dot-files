return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
    opts = {
      default_integrations = true,
      integrations = {
        bufferline = true,
        mason = true,
        navic = {
          enabled = true,
          custom_bg = "lualine"
        }
      }
    },
    config = function()
      vim.cmd [[colorscheme catppuccin]]
    end
	},
	{
  		"folke/tokyonight.nvim",
  		lazy = false,
  		priority = 1000,
  		opts = {},
	}
}
