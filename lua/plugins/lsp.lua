return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    { "williamboman/mason.nvim" },
    { "neovim/nvim-lspconfig" },
  },
  config = function()
    require("mason").setup()

    -- https://github.com/williamboman/mason.nvim/issues/1309#issuecomment-1555018732
    local registry = require "mason-registry"
    local packages = {
      "typescript-language-server",
    }
    registry.refresh(function()
      for _, pkg_name in ipairs(packages) do
        local pkg = registry.get_package(pkg_name)
        if not pkg:is_installed() then
          pkg:install()
        end
      end
    end)

    require("mason-lspconfig").setup()

    require("lspconfig").ts_ls.setup {
      init_options = {
      },
      filetypes = {
        "javascript",
        "typescript",
      },
    }
    require("lspconfig").terraformls.setup {}
    require("lspconfig").gopls.setup {}
  end
}
