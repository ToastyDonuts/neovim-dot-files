return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    'DaikyXendo/nvim-material-icon'
  },
  opts = {
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    update_focused_file = {
      enable = true,
      update_cwd = false
    },
    sort = {
      sorter = "case_sensitive",
    },
    view = {
      width = 35,
    },
    renderer = {
      group_empty = true,
      indent_markers = {
        enable = true,
        inline_arrows = true
      }
    },
    filters = {
      dotfiles = true,
    },
  },
}
