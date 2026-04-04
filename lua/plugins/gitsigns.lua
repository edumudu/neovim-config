return {
  {
    "lewis6991/gitsigns.nvim",
    -- We use the `opts` table to merge our changes with AstroNvim's defaults
    opts = {
      update_debounce = 100,
      current_line_blame = true,
    },
  },
  {
    "chojs23/ec",
    keys = {
      { "<leader>ge", ":Ec<CR>", desc = "Open ec" },
    },
  },
}
