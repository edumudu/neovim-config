return {
    {
        'mbbill/undotree',
        config = function() 
            vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle undo tree" })
        end
    },
    {
        'tpope/vim-fugitive',
        config = function()
            vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Open Git status" })
        end

    },
    {
      "OXY2DEV/markview.nvim",
      branch = "main",
      lazy = false
    }
}
