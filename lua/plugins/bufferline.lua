return {
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
    config = function ()
      local mocha = require("catppuccin.palettes").get_palette("mocha")

      vim.opt.termguicolors = true
      require("bufferline").setup({
        highlights = require("catppuccin.groups.integrations.bufferline").get({
          styles = { "italic", "bold" },
          custom = {
            all = {
              -- Hint
              hint = { fg = mocha.rosewater },
              hint_visible = { fg = mocha.rosewater },
              hint_selected = { fg = mocha.rosewater },
              hint_diagnostic = { fg = mocha.rosewater },
              hint_diagnostic_visible = { fg = mocha.rosewater },
              hint_diagnostic_selected = { fg = mocha.rosewater },
            },
				},
        }),
        options = {
          offsets = {
            {
              filetype = "neo-tree",
              text = "File Explorer",
              text_align = "center",
              separator = true,
            }
          }
        }
      })
    end
  }
}
