vim.lsp.config("*", {
  capabilities = vim.lsp.protocol.make_client_capabilities(),
  on_attach = function()
    vim.keymap.set("n", "<leader>vws", "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>", { desc = "Search workspace symbols" })
    vim.keymap.set("n", "<leader>vd", "<cmd>lua vim.lsp.diagnostic.open_float()<CR>", { desc = "Show line diagnostics" })
    vim.keymap.set("n", "<leader>vca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "Show code actions" })
    -- vim.keymap.set("n", "<leader>vrr", "<cmd>lua vim.lsp.buf.references()<CR>", { desc = "Show references" }) - use default grr
    -- vim.keymap.set("n", "<leader>vrn", "<cmd>lua vim.lsp.buf.rename()<CR>", { desc = "Rename symbol" }) - use default grn
    vim.keymap.set("n", "<C-h>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", { desc = "Show signature help" }) 

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', { desc = "Show hover information" })
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', { desc = "Go to definition" })
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', { desc = "Go to declaration" })
    -- vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts) - use default gri
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', { desc = "Go to type definition" })
    -- vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts) - use default grr
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', { desc = "Show signature help" })
    -- vim.keymap.set('n', 'mic', '<cmd>lua vim.lsp.buf.rename()<cr>', opts) - use default grn
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', { desc = "Format code" })
  end,
})

return {
    {
      "mason-org/mason.nvim",
      opts = {}
    },

    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        dependencies = {
            {'L3MON4D3/LuaSnip'},
        },
        config = function()
            local cmp = require('cmp')
            local cmp_select = {behavior = cmp.SelectBehavior.Select}

            cmp.setup({
                sources = {
                    {name = 'nvim_lsp'},
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                    ['<C-j>'] = cmp.mapping.complete(),
                    -- ['<C-u>'] = cmp.mapping.scroll_docs(-4),
                    -- ['<C-d>'] = cmp.mapping.scroll_docs(4),
                }),
                snippet = {
                    expand = function(args)
                        vim.snippet.expand(args.body)
                    end,
                },
            })
        end
    },

    -- LSP
    {
        'mason-org/mason-lspconfig.nvim',
        opts = {
          ensure_installed = {
            "ts_ls",
            "eslint",
            "lua_ls",
            "rust_analyzer"
          },
        },
        dependencies = {
            {'hrsh7th/cmp-nvim-lsp'},
            { "mason-org/mason.nvim", opts = {} },
            {"neovim/nvim-lspconfig"},
        },
    }
}

