if vim.g.vscode then
    require("edumudu.remap")
else
    require("edumudu")
    require("config.lazy")

    vim.cmd("colorscheme rose-pine")
end
