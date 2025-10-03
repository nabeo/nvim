--- @type vim.lsp.Config
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#yamlls
return {
  settings = {
    yaml = {
      schemaStore = {
        enable = true,
        url = "https://www.schemastore.org/api/json/catalog.json",
      },
      schemas = {
        ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
      },
      format = {
        enable = true,
        singleQuote = true,
        backetSpacing = true,
      },
      validate = true,
      hover = true,
      completion = true,
    },
  },
}
