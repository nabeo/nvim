return {
  "neovim/nvim-lspconfig",
  config = function()
    -- Lua
    vim.lsp.enable('lua_ls')

    -- Typescript
    vim.lsp.enable('ts_ls')

    -- Terraform
    -- https://github.com/hashicorp/terraform-ls/blob/main/docs/USAGE.md
    vim.lsp.enable('terraformls')
    vim.lsp.enable('tflint')

    -- Go
    -- https://github.com/golang/tools/blob/master/gopls/doc/editor/vim.md
    vim.lsp.enable('gopls')

    -- markdown (marksman)
    -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#marksman
    vim.lsp.enable('marksman')

    -- Rust (rust-analyzer)
    vim.lsp.enable('rust_analyzer')

    -- Json (vscode-json-language-server from vscode-langservers-extracted)
    -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#jsonls
    vim.lsp.enable('jsonls')

    -- Yaml (yaml-language-server)
    -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#yamlls
    vim.lsp.enable('yamlls')

    -- dockerfile (dockerfile-language-server-nodejs)
    -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#dockerls
    vim.lsp.enable('dockerls')

    -- TOML (taplo)
    -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#taplo
    vim.lsp.enable('taplo')

    -- GraphQL
    -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#graphqls
    vim.lsp.enable('graphql')

    -- Kotlin (kotlin-lsp)
    vim.lsp.enable('kotlin_lsp')

    -- Ruby (ruby-lsp)
    vim.lsp.enable('ruby_lsp')
  end
}
