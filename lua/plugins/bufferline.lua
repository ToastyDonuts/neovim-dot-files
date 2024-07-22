return {
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
    config = function ()
      local mocha = require("catppuccin.palettes").get_palette "mocha"
      require("bufferline").setup({
        highlights = {
          fill = {
            bg = mocha.mantle
          }
        },
        options = {
          offsets = {
            {
              filetype = "neo-tree",
              text = "File Explorer",
              text_align = "center",
              separator = false,
            }
          }
        }
      })
    end
  }
}
