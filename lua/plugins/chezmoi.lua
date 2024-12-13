return {
  {
    'xvzc/chezmoi.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
    },
    opts = {},
    config = function(_, opts)
      vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {
        pattern = { os.getenv 'HOME' .. '/.local/share/chzomi/*' },
        callback = function(ev)
          local bufnr = ev.buf
          vim.schedule(function()
            require('chezmoi.commands.__edit').watch(bufnr)
          end)
        end,
      })
      require("chezmoi").setup(opts)
      require('telescope').load_extension 'chezmoi'
    end,
  },
}
