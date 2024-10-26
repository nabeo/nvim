return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    { "williamboman/mason.nvim" },
    {
      "neovim/nvim-lspconfig",
      dependencies = {
        -- `lazydev` configures Lua LSP for Neovim config, runtime and plugins
        -- used for completion, annotations and signatures of Neovim apis
        -- https://github.com/nvim-lua/kickstart.nvim/pull/1040
        {
          'folke/lazydev.nvim',
          ft = 'lua',
          opts = {
            library = {
              -- Load luvit types when the `vim.uv` word is found
              { path = 'luvit-meta/library', words = { 'vim%.uv' }, },
            },
          },
        },
        { 'Bilal2453/luvit-meta', lazy = true },
      }
    },
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

    -- Lua
    -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#lua_ls
    require'lspconfig'.lua_ls.setup {
       on_init = function(client)
          if client.workspace_folders then
             local path = client.workspace_folders[1].name
             if vim.uv.fs_stat(path..'/.luarc.json') or vim.uv.fs_stat(path..'/.luarc.jsonc') then
                return
             end
          end
        client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
          runtime = { verstion = 'LuaJIT' },
          workspace = {
            checkThirdParty = false,
            library = {
              vim.env.VIMRUNTIME,
            },
          },
        })
       end,
       settings = {
          Lua = {}
       }
    }

    -- Typescript
    require("lspconfig").ts_ls.setup {
       init_options = {
       },
      filetypes = {
        "javascript",
        "typescript",
      },
    }

    -- Terraform
    -- https://github.com/hashicorp/terraform-ls/blob/main/docs/USAGE.md
    require("lspconfig").terraformls.setup {}

    -- Go
    -- https://github.com/golang/tools/blob/master/gopls/doc/vim.md
    require("lspconfig").gopls.setup {}
  end
}
