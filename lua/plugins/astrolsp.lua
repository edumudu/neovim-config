-- AstroLSP allows you to customize the features in AstroNvim's LSP configuration engine
-- Configuration documentation can be found with `:h astrolsp`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    formatting = {
      format_on_save = {
        enabled = true, -- enable or disable format on save globally
      },
      disabled = {
        "vtsls", -- Let Eslint/Prettier/oxc whatever is configured to format the file alone
      },
      filter = function(client)
        -- When oxfmt is attached to the buffer, it is the only formatter allowed;
        -- in projects without oxfmt, other servers (jsonls, cssls, html, ...) still format.
        local oxfmt_attached = next(vim.lsp.get_clients { name = "oxfmt", bufnr = vim.api.nvim_get_current_buf() })
          ~= nil
        return not oxfmt_attached or client.name == "oxfmt"
      end,
    },
  },
}
