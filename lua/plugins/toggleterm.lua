return {
  -- amongst your other plugins
  {
    'akinsho/toggleterm.nvim',
    version = "v2.*",
    opts = {
      open_mapping = [[<c-t>]],
      -- direction = 'float',
      -- direction = 'vertical',
    },
    config = function(_, opts)
      require("toggleterm").setup(opts)

      vim.keymap.set("n", "<c-t>", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Open Terminal" })
      vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Float Terminal" })
      -- vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>", { desc = "Horizontal Terminal" })
      vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>", { desc = "Vertical Terminal" })
    end
  }
}
