--- @type vim.lsp.Config
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#yamlls
return {
  filteypes = { 'yaml', 'yaml.docker-compose' },
  root_makers = { '.git' },
  settings = {
    redhat = {
      telemetry = false,
    },
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
  on_init = function(client)
    --- https://github.com/neovim/nvim-lspconfig/pull/4016
    client.server_capabilities.documentFormattingProvider = true
  end,
}
