return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.filesystem.hijack_netrw_behavior = "open_current"
    opts.filesystem.filtered_items = {
      visible = false,
      hide_dotfiles = true,
      hide_gitignored = true,
    }
    opts.source_selector.sources = {
      { source = "filesystem", display_name = "󰉓 Files" },
    }
  end,
}
