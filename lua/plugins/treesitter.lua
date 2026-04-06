return {
  {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    main = 'nvim-treesitter',
    envent = { 'BufReadPost', 'BufNewfile' },
    build = function()
      require('nvim-treesitter.install').update({ with_sync = true })
    end,
    init = function ()
      vim.api.nvim_create_autocmd('FileType', {
        callback = function ()
          --- Enable treesitter highlighting and disable regex syntax
          pcall(vim.treesitter.start)
          --- Enable treesitter-based indentionn
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
      local ensureInstalled = {
        'bash',
        'lua',
        'diff',
        'graphql',
        'hcl',
        'html',
        'java',
        'javascript',
        'jsdoc',
        'json',
        'jsonc',
        'jsonnet',
        'kotlin',
        'lua',
        'luadoc',
        'luap',
        'markdown',
        'markdown_inline',
        'printf',
        'python',
        'query',
        'regex',
        'terraform',
        'toml',
        'tsx',
        'typescript',
        'vim',
        'vimdoc',
        'xml',
        'yaml',
      }
      local alreadyInstalled = require('nvim-treesitter.config').get_installed()
      local parsersToInstall = vim.iter(ensureInstalled)
        :filter(function (parser)
          return not vim.tbl_contains(alreadyInstalled, parser)
        end)
        :totable()
      require('nvim-treesitter').install(parsersToInstall)
    end,
    config = function()
      require('nvim-treesitter').setup({
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
          },
        },
        textobjects = {
          move = {
            enable = true,
            goto_next_start = { ["]f"] = "@function.outer", ["]c"] = "@class.outer", ["]a"] = "@parameter.inner" },
            goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer", ["]A"] = "@parameter.inner" },
            goto_previous_start = { ["[f"] = "@function.outer", ["[c"] = "@class.outer", ["[a"] = "@parameter.inner" },
            goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer", ["[A"] = "@parameter.inner" },
          },
        },
      })
    end,
  },
}
