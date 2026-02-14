return {
  "olimorris/codecompanion.nvim",
  tag = "v17.33.0",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    -- NOTE: The log_level is in `opts.opts`
    ignore_warnings = true,
    opts = {
      log_level = "TRACE", -- or "TRACE"
    },
  },
}

