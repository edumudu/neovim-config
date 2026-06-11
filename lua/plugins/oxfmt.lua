-- Oxfmt formatter, served over LSP (`oxfmt --lsp`), mirroring the astrocommunity oxlint pack.
-- It only attaches in projects oxfmt is configured for: .oxfmtrc.json(c) / oxfmt.config.ts,
-- a package.json depending on oxfmt, or a vite-plus vite.config.ts with a `fmt` field.
-- A project-local node_modules/.bin/oxfmt is preferred over the Mason install.

---@type LazySpec
return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "oxfmt" })
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "oxfmt" })
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "oxfmt" })
    end,
  },
}
