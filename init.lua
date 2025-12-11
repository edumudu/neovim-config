if vim.g.vscode then
    require("edumudu.remap")

    vim.keymap.set('n', 'gd',  ":call VSCodeNotify('editor.action.revealDefinition')<CR>", { noremap = true, silent = true })
    vim.keymap.set('n', 'gri',  ":call VSCodeNotify('editor.action.goToImplementation')<CR>", { noremap = true, silent = true })
    vim.keymap.set('n', 'gD', ":call VSCodeNotify('editor.action.peekDefinition')<CR>", { noremap = true, silent = true })
    vim.keymap.set('n', 'grt',  ":call VSCodeNotify('editor.action.goToTypeDefinition')<CR>", { noremap = true, silent = true })
    vim.keymap.set('n', 'grr',  ":call VSCodeNotify('editor.action.referenceSearch.trigger')<CR>", { noremap = true, silent = true })
    vim.keymap.set('n', 'gR',  ":call VSCodeNotify('references-view.findReferences')<CR>", { noremap = true, silent = true })

    vim.keymap.set('n', "<leader>t","<cmd>lua require('vscode').action('workbench.action.terminal.toggleTerminal')<CR>")
    vim.keymap.set('n', '<leader>ff', "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>")

    -- paste registry to system clipboard
    vim.keymap.set("n", "<Leader>xp", ":call setreg('+', getreg('@'))<CR>", opts)
    -- copy current path + line number to system clipboard
    vim.keymap.set("n", "<Leader>xc", ":call setreg('+', expand('%:.') .. ':' .. line('.'))<CR>", opts)
    -- open current copied path with :e (+ vim-fetch to go to the line number)
    -- vim.keymap.set("n", "<Leader>xo", ":e <C-r>+<CR>", { noremap = true, desc = "Go to location in clipboard" })

    --Replace word under cursor
    vim.keymap.set("v", "<leader>re", '"hy:%s/<C-r>h/<C-r>h/gc<left><left><left>', nosilent)
    vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

    vim.keymap.set({ "n", "v" }, "grn", function()
        vim.fn.VSCodeNotify("editor.action.rename")
    end, { noremap = true, silent = true })

    vim.keymap.set("n", "<leader>ha", ":call VSCodeNotify('cursor-harpoon.addEditor')<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>hm", ":call VSCodeNotify('cursor-harpoon.editorQuickPick')<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>he", ":call VSCodeNotify('cursor-harpoon.editEditors')<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>h1", ":call VSCodeNotify('cursor-harpoon.gotoEditor1')<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>h2", ":call VSCodeNotify('cursor-harpoon.gotoEditor2')<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>h3", ":call VSCodeNotify('cursor-harpoon.gotoEditor3')<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>h4", ":call VSCodeNotify('cursor-harpoon.gotoEditor4')<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>h5", ":call VSCodeNotify('cursor-harpoon.gotoEditor5')<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>h6", ":call VSCodeNotify('cursor-harpoon.gotoEditor6')<CR>", { noremap = true, silent = true })
else
    require("edumudu")
    require("config.lazy")

    vim.cmd("colorscheme rose-pine")
end
