vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open file explorer" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste without overwriting the default register" })

vim.keymap.set("n", "<leader>y", "\"+y", { desc = "Copy to system clipboard" })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = "Copy to system clipboard" })
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = "Copy entire line to system clipboard" })


vim.keymap.set("n", "gp", "\"0p")
vim.keymap.set("n", "gP", "\"0P")

vim.keymap.set("n", "<leader>d", "\"_d", { desc = "Delete without copying to register" })
vim.keymap.set("v", "<leader>d", "\"_d", { desc = "Delete without copying to register" })

