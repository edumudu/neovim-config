---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.recipes.vscode" },
  { import = "astrocommunity.recipes.picker-lsp-mappings" },

  -- Ai Completion
  { import = "astrocommunity.recipes.ai" },
}
