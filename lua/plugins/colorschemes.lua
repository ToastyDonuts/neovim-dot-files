return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
    opts = {
      default_integrations = true,
      integrations = {
        bufferline = true,
        mason = true
      }
    }
	},
	{
  		"folke/tokyonight.nvim",
  		lazy = false,
  		priority = 1000,
  		opts = {},
	}
}
