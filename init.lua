if vim.g.vscode then
    require("edumudu.remap")

    vim.keymap.set('n', 'gd',  ":call VSCodeNotify('editor.action.revealDefinition')<CR>", { noremap = true, silent = true })
    vim.keymap.set('n', 'gi',  ":call VSCodeNotify('editor.action.goToImplementation')<CR>", { noremap = true, silent = true })
    vim.keymap.set('n', 'gD', ":call VSCodeNotify('editor.action.peekDefinition')<CR>", { noremap = true, silent = true })
    vim.keymap.set('n', 'gt',  ":call VSCodeNotify('editor.action.goToTypeDefinition')<CR>", { noremap = true, silent = true })
    vim.keymap.set('n', 'gr',  ":call VSCodeNotify('editor.action.referenceSearch.trigger')<CR>", { noremap = true, silent = true })
    vim.keymap.set('n', 'gR',  ":call VSCodeNotify('references-view.findReferences')<CR>", { noremap = true, silent = true })

    vim.keymap.set('n', "<leader>t","<cmd>lua require('vscode').action('workbench.action.terminal.toggleTerminal')<CR>")
    vim.keymap.set('n', '<leader>ff', "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>")
else
    require("edumudu")
    require("config.lazy")

    vim.cmd("colorscheme rose-pine")
end
